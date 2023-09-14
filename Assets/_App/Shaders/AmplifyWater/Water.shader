// Made with Amplify Shader Editor v1.9.2
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Water"
{
	Properties
	{
		_WavesSpeed("Waves Speed", Float) = 1
		_WaveTile("Wave Tile", Float) = 1
		_WaveStretch("Wave Stretch", Vector) = (0.23,0.01,0,0)
		_WaveHeight("Wave Height", Float) = 1
		_Smoothness("Smoothness", Float) = 0.9
		_ShallowWater("Shallow Water", Color) = (0.25178,0.5294456,0.7735849,0)
		_DeepWater("Deep Water", Color) = (0.2153792,0.6362712,0.8301887,0)
		_EdgePower("Edge Power", Range( 0 , 1)) = 1
		_EdgeDistance("Edge Distance", Float) = 1
		_NormalMap("Normal Map", 2D) = "white" {}
		_NormalStrength("Normal Strength", Range( 0 , 1)) = 0
		_NormalTile("Normal Tile", Float) = 1
		_NormalSpeed("Normal Speed", Float) = 1
		_SeaFoam("Sea Foam", 2D) = "white" {}
		_EdgeFoamTile("Edge Foam Tile", Float) = 1
		[HideInInspector] __dirty( "", Int ) = 1
	}

	SubShader
	{
		Tags{ "RenderType" = "Opaque"  "Queue" = "Geometry+0" "IsEmissive" = "true"  }
		Cull Back
		CGPROGRAM
		#include "UnityShaderVariables.cginc"
		#include "UnityStandardUtils.cginc"
		#include "UnityCG.cginc"
		#include "Tessellation.cginc"
		#pragma target 4.6
		#pragma surface surf Standard keepalpha noshadow vertex:vertexDataFunc tessellate:tessFunction 
		struct Input
		{
			float3 worldPos;
			float4 screenPos;
		};

		uniform float _WaveHeight;
		uniform float _WavesSpeed;
		uniform float2 _WaveStretch;
		uniform float _WaveTile;
		uniform sampler2D _NormalMap;
		uniform float _NormalSpeed;
		uniform float _NormalTile;
		uniform float _NormalStrength;
		uniform float4 _DeepWater;
		uniform float4 _ShallowWater;
		UNITY_DECLARE_DEPTH_TEXTURE( _CameraDepthTexture );
		uniform float4 _CameraDepthTexture_TexelSize;
		uniform float _EdgeDistance;
		uniform sampler2D _SeaFoam;
		uniform float _EdgeFoamTile;
		uniform float _EdgePower;
		uniform float _Smoothness;


		float3 mod2D289( float3 x ) { return x - floor( x * ( 1.0 / 289.0 ) ) * 289.0; }

		float2 mod2D289( float2 x ) { return x - floor( x * ( 1.0 / 289.0 ) ) * 289.0; }

		float3 permute( float3 x ) { return mod2D289( ( ( x * 34.0 ) + 1.0 ) * x ); }

		float snoise( float2 v )
		{
			const float4 C = float4( 0.211324865405187, 0.366025403784439, -0.577350269189626, 0.024390243902439 );
			float2 i = floor( v + dot( v, C.yy ) );
			float2 x0 = v - i + dot( i, C.xx );
			float2 i1;
			i1 = ( x0.x > x0.y ) ? float2( 1.0, 0.0 ) : float2( 0.0, 1.0 );
			float4 x12 = x0.xyxy + C.xxzz;
			x12.xy -= i1;
			i = mod2D289( i );
			float3 p = permute( permute( i.y + float3( 0.0, i1.y, 1.0 ) ) + i.x + float3( 0.0, i1.x, 1.0 ) );
			float3 m = max( 0.5 - float3( dot( x0, x0 ), dot( x12.xy, x12.xy ), dot( x12.zw, x12.zw ) ), 0.0 );
			m = m * m;
			m = m * m;
			float3 x = 2.0 * frac( p * C.www ) - 1.0;
			float3 h = abs( x ) - 0.5;
			float3 ox = floor( x + 0.5 );
			float3 a0 = x - ox;
			m *= 1.79284291400159 - 0.85373472095314 * ( a0 * a0 + h * h );
			float3 g;
			g.x = a0.x * x0.x + h.x * x0.y;
			g.yz = a0.yz * x12.xz + h.yz * x12.yw;
			return 130.0 * dot( m, g );
		}


		float4 tessFunction( appdata_full v0, appdata_full v1, appdata_full v2 )
		{
			return UnityDistanceBasedTess( v0.vertex, v1.vertex, v2.vertex, 0.0,40.0,( _WaveHeight * 8.0 ));
		}

		void vertexDataFunc( inout appdata_full v )
		{
			float temp_output_6_0 = ( _Time.y * _WavesSpeed );
			float2 _WaveDirection = float2(1,0);
			float3 ase_worldPos = mul( unity_ObjectToWorld, v.vertex );
			float4 appendResult9 = (float4(ase_worldPos.z , ase_worldPos.x , 0.0 , 0.0));
			float4 World_Space_Tile10 = appendResult9;
			float4 Wave_Tile_UV19 = ( ( World_Space_Tile10 * float4( _WaveStretch, 0.0 , 0.0 ) ) * _WaveTile );
			float2 panner3 = ( temp_output_6_0 * _WaveDirection + Wave_Tile_UV19.xy);
			float simplePerlin2D1 = snoise( panner3 );
			simplePerlin2D1 = simplePerlin2D1*0.5 + 0.5;
			float2 panner21 = ( temp_output_6_0 * _WaveDirection + ( Wave_Tile_UV19 * float4( 0.01,0.01,0,0 ) ).xy);
			float simplePerlin2D22 = snoise( panner21 );
			simplePerlin2D22 = simplePerlin2D22*0.5 + 0.5;
			float temp_output_25_0 = ( simplePerlin2D1 + simplePerlin2D22 );
			float3 Wave_Height34 = ( ( float3(0,1,0) * _WaveHeight ) * temp_output_25_0 );
			v.vertex.xyz += Wave_Height34;
			v.vertex.w = 1;
		}

		void surf( Input i , inout SurfaceOutputStandard o )
		{
			float3 ase_worldPos = i.worldPos;
			float4 appendResult9 = (float4(ase_worldPos.z , ase_worldPos.x , 0.0 , 0.0));
			float4 World_Space_Tile10 = appendResult9;
			float4 temp_output_61_0 = ( World_Space_Tile10 * _NormalTile );
			float2 panner64 = ( 1.0 * _Time.y * ( float2( 1,0 ) * _NormalSpeed ) + temp_output_61_0.xy);
			float2 panner65 = ( 0.09 * _Time.y * ( float2( -1,0 ) * ( _NormalSpeed * 1.0 ) ) + ( temp_output_61_0 * ( _NormalTile * 1.0 ) ).xy);
			float3 Normals75 = BlendNormals( UnpackScaleNormal( tex2D( _NormalMap, panner64 ), _NormalStrength ) , UnpackScaleNormal( tex2D( _NormalMap, panner65 ), _NormalStrength ) );
			o.Normal = Normals75;
			float temp_output_6_0 = ( _Time.y * _WavesSpeed );
			float2 _WaveDirection = float2(1,0);
			float4 Wave_Tile_UV19 = ( ( World_Space_Tile10 * float4( _WaveStretch, 0.0 , 0.0 ) ) * _WaveTile );
			float2 panner3 = ( temp_output_6_0 * _WaveDirection + Wave_Tile_UV19.xy);
			float simplePerlin2D1 = snoise( panner3 );
			simplePerlin2D1 = simplePerlin2D1*0.5 + 0.5;
			float2 panner21 = ( temp_output_6_0 * _WaveDirection + ( Wave_Tile_UV19 * float4( 0.01,0.01,0,0 ) ).xy);
			float simplePerlin2D22 = snoise( panner21 );
			simplePerlin2D22 = simplePerlin2D22*0.5 + 0.5;
			float temp_output_25_0 = ( simplePerlin2D1 + simplePerlin2D22 );
			float Wave_Pattern28 = temp_output_25_0;
			float clampResult44 = clamp( Wave_Pattern28 , 0.0 , 1.0 );
			float4 lerpResult42 = lerp( _DeepWater , _ShallowWater , clampResult44);
			float4 Albedo99 = lerpResult42;
			float4 temp_output_112_0 = Albedo99;
			o.Albedo = temp_output_112_0.rgb;
			float4 ase_screenPos = float4( i.screenPos.xyz , i.screenPos.w + 0.00000000001 );
			float4 ase_screenPosNorm = ase_screenPos / ase_screenPos.w;
			ase_screenPosNorm.z = ( UNITY_NEAR_CLIP_VALUE >= 0 ) ? ase_screenPosNorm.z : ase_screenPosNorm.z * 0.5 + 0.5;
			float screenDepth45 = LinearEyeDepth(SAMPLE_DEPTH_TEXTURE( _CameraDepthTexture, ase_screenPosNorm.xy ));
			float distanceDepth45 = abs( ( screenDepth45 - LinearEyeDepth( ase_screenPosNorm.z ) ) / ( _EdgeDistance ) );
			float4 clampResult53 = clamp( ( ( ( 1.0 - distanceDepth45 ) + tex2D( _SeaFoam, ( ( World_Space_Tile10 / 10.0 ) * _EdgeFoamTile ).xy ) ) * _EdgePower ) , float4( 0,0,0,0 ) , float4( 1,1,1,0 ) );
			float4 Edge51 = clampResult53;
			o.Emission = Edge51.rgb;
			o.Smoothness = _Smoothness;
			o.Alpha = 1;
		}

		ENDCG
	}
	CustomEditor "ASEMaterialInspector"
}
/*ASEBEGIN
Version=19200
Node;AmplifyShaderEditor.CommentaryNode;136;-1851.916,-446.3544;Inherit;False;1017.934;746.2225;Comment;5;135;16;132;133;134;Tesselation;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;123;-1203.141,-4656.658;Inherit;False;1964.725;620;Comment;9;113;114;116;115;117;118;119;121;120;Refraction;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;111;-5362.754,-3052.436;Inherit;False;2200.956;664.6514;Comment;13;98;93;94;95;97;96;91;104;105;103;106;109;110;Sea Foam;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;100;-1096.417,-1321.95;Inherit;False;1121.501;635.9086;Comment;6;42;39;41;44;43;99;Albedo;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;89;-4843.977,-4039.795;Inherit;False;1289.683;796.6094;Comment;7;79;82;84;83;86;87;85;Edge Foam;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;78;-4172.424,-4680.033;Inherit;False;1843.669;389.4949;Comment;8;48;51;46;45;53;49;88;90;Edge;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;77;236.9831,-2657.777;Inherit;False;2703.742;1455.622;Comment;19;57;63;54;61;62;60;65;56;38;64;66;68;67;71;72;69;73;74;75;Normals;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;36;-2686.969,-1903.613;Inherit;False;1377.964;1047.252;;11;14;11;12;15;19;13;18;17;33;34;32;Wave UVs and Height;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;29;-3958.52,-721.8732;Inherit;False;1942.535;975.217;;13;5;7;6;4;24;1;21;3;22;23;20;25;28;Wave Pattern;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;26;-4156.739,-2221.524;Inherit;False;928.2268;329.6406;World Space UVs;3;8;9;10;;1,1,1,1;0;0
Node;AmplifyShaderEditor.StandardSurfaceOutputNode;0;0,0;Float;False;True;-1;6;ASEMaterialInspector;0;0;Standard;Water;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;Back;0;False;;0;False;;False;0;False;;0;False;;False;0;Opaque;0.5;True;False;0;False;Opaque;;Geometry;All;12;all;True;True;True;True;0;False;;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;True;2;15;10;25;False;0.5;False;0;0;False;;0;False;;0;0;False;;0;False;;0;False;;0;False;;0;False;0;0,0,0,0;VertexOffset;True;False;Cylindrical;False;True;Relative;0;;-1;-1;-1;0;0;False;0;0;False;;-1;0;False;;0;0;0;False;0.1;False;;0;False;;False;16;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0;False;9;FLOAT;0;False;10;FLOAT;0;False;13;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
Node;AmplifyShaderEditor.WorldPosInputsNode;8;-4106.739,-2171.524;Inherit;True;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.DynamicAppendNode;9;-3765.111,-2145.884;Inherit;True;FLOAT4;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;10;-3502.511,-2141.983;Inherit;False;World Space Tile;-1;True;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.SimpleTimeNode;5;-3869.141,-211.9419;Inherit;True;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;7;-3859.842,15.22307;Inherit;False;Property;_WavesSpeed;Waves Speed;0;0;Create;True;0;0;0;False;0;False;1;0.1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;6;-3509.131,-198.6577;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.Vector2Node;4;-3886.41,-478.9596;Inherit;True;Constant;_WaveDirection;Wave Direction;0;0;Create;True;0;0;0;False;0;False;1,0;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.GetLocalVarNode;24;-3642.302,140.3437;Inherit;False;19;Wave Tile UV;1;0;OBJECT;;False;1;FLOAT4;0
Node;AmplifyShaderEditor.NoiseGeneratorNode;1;-2870.642,-646.7866;Inherit;True;Simplex2D;True;False;2;0;FLOAT2;0,0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.PannerNode;21;-3092.421,-302.7941;Inherit;False;3;0;FLOAT2;0,0;False;2;FLOAT2;0,0;False;1;FLOAT;1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.PannerNode;3;-3065.203,-631.3402;Inherit;False;3;0;FLOAT2;0,0;False;2;FLOAT2;0,0;False;1;FLOAT;1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.NoiseGeneratorNode;22;-2877.061,-362.5216;Inherit;True;Simplex2D;True;False;2;0;FLOAT2;0,0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;23;-3267.902,-34.05539;Inherit;True;2;2;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0.01,0.01,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.GetLocalVarNode;20;-3908.52,-671.8732;Inherit;False;19;Wave Tile UV;1;0;OBJECT;;False;1;FLOAT4;0
Node;AmplifyShaderEditor.SimpleAddOpNode;25;-2525.109,-531.8225;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;14;-1854.335,-1843.47;Inherit;False;2;2;0;FLOAT4;0,0,0,0;False;1;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.GetLocalVarNode;11;-2636.969,-1853.613;Inherit;False;10;World Space Tile;1;0;OBJECT;;False;1;FLOAT4;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;12;-2216.667,-1837.671;Inherit;False;2;2;0;FLOAT4;0,0,0,0;False;1;FLOAT2;0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RangedFloatNode;15;-2108.152,-1648.876;Inherit;False;Property;_WaveTile;Wave Tile;1;0;Create;True;0;0;0;False;0;False;1;0.03;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;19;-1551.005,-1839.415;Inherit;False;Wave Tile UV;-1;True;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.Vector2Node;13;-2622.476,-1577.243;Inherit;False;Property;_WaveStretch;Wave Stretch;2;0;Create;True;0;0;0;False;0;False;0.23,0.01;0.23,0.01;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;18;-2128.659,-1119.478;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.Vector3Node;17;-2411.659,-1141.478;Inherit;False;Constant;_WaveUp;Wave Up;3;0;Create;True;0;0;0;False;0;False;0,1,0;0,0,0;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;33;-1855.441,-995.6552;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;34;-1645.476,-969.361;Inherit;False;Wave Height;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;32;-2538.158,-991.6671;Inherit;False;Property;_WaveHeight;Wave Height;3;0;Create;True;0;0;0;False;0;False;1;8.5;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;37;-561.6477,97.32971;Inherit;False;Property;_Smoothness;Smoothness;4;0;Create;True;0;0;0;False;0;False;0.9;0.99;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;31;-614.8655,280.5899;Inherit;False;34;Wave Height;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;28;-2289.987,-492.2777;Inherit;False;Wave Pattern;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;52;-297.5391,48.59064;Inherit;False;51;Edge;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;76;-330.5026,-78.78589;Inherit;False;75;Normals;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;57;286.983,-2467.949;Inherit;True;10;World Space Tile;1;0;OBJECT;;False;1;FLOAT4;0
Node;AmplifyShaderEditor.TexturePropertyNode;54;383.4725,-1889.954;Inherit;True;Property;_NormalMap;Normal Map;9;0;Create;True;0;0;0;False;0;False;None;c993fdaad6cf2fd4ea4b85323f3f122a;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;61;728.3658,-2449.224;Inherit;True;2;2;0;FLOAT4;0,0,0,0;False;1;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;60;1092.266,-1868.124;Inherit;True;2;2;0;FLOAT4;0,0,0,0;False;1;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.SamplerNode;56;1786.699,-2042.373;Inherit;True;Property;_TextureSample1;Texture Sample 0;5;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;True;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;38;1708.16,-2431.362;Inherit;True;Property;_TextureSample0;Texture Sample 0;5;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;True;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.PannerNode;64;1412.949,-2607.777;Inherit;True;3;0;FLOAT2;0,0;False;2;FLOAT2;0,0;False;1;FLOAT;1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.Vector2Node;66;1052.469,-2422.055;Inherit;True;Constant;_PanD1;PanD1;10;0;Create;True;0;0;0;False;0;False;1,0;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;68;1251.802,-2468.74;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.Vector2Node;67;901.3691,-1504.154;Inherit;True;Constant;_PanD2;PanD2;10;0;Create;True;0;0;0;False;0;False;-1,0;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;72;1372.95,-1701.394;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.BlendNormalsNode;73;2372.394,-2292.594;Inherit;False;0;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;75;2698.725,-2282.536;Inherit;False;Normals;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;69;1188.102,-2091.739;Inherit;False;Property;_NormalSpeed;Normal Speed;12;0;Create;True;0;0;0;False;0;False;1;0.1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;63;295.1565,-2170.958;Inherit;True;Property;_NormalTile;Normal Tile;11;0;Create;True;0;0;0;False;0;False;1;0.01;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;74;1503.093,-2163.194;Inherit;False;Property;_NormalStrength;Normal Strength;10;0;Create;True;0;0;0;False;0;False;0;0.099;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;71;1356.602,-1992.738;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;51;-2570.756,-4504.115;Inherit;False;Edge;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;48;-2952.178,-4554.897;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;49;-3259.637,-4549.14;Inherit;False;Property;_EdgePower;Edge Power;7;0;Create;True;0;0;0;False;0;False;1;0.107;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ClampOpNode;53;-2823.12,-4546.657;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;COLOR;1,1,1,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;88;-3382.222,-4383.359;Inherit;False;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.OneMinusNode;90;-3536.271,-4501.93;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;46;-4122.425,-4630.033;Inherit;False;Property;_EdgeDistance;Edge Distance;8;0;Create;True;0;0;0;False;0;False;1;70.33;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.TexturePropertyNode;79;-4351.419,-3989.795;Inherit;True;Property;_SeaFoam;Sea Foam;13;0;Create;True;0;0;0;False;0;False;None;55e743f71f373c04eab68d3ace48124c;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.SamplerNode;82;-3871.297,-3881.948;Inherit;True;Property;_TextureSample2;Texture Sample 2;14;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.DepthFade;45;-3784.567,-4621.875;Inherit;False;True;False;True;2;1;FLOAT3;0,0,0;False;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;83;-4784.697,-3755.248;Inherit;True;10;World Space Tile;1;0;OBJECT;;False;1;FLOAT4;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;86;-4376.977,-3621.251;Inherit;False;2;0;FLOAT4;0,0,0,0;False;1;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;85;-4148.642,-3627.186;Inherit;False;2;2;0;FLOAT4;0,0,0,0;False;1;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RangedFloatNode;84;-4548.083,-3356.186;Inherit;False;Property;_EdgeFoamTile;Edge Foam Tile;14;0;Create;True;0;0;0;False;0;False;1;0.5;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;87;-4793.977,-3498.251;Inherit;False;Constant;_Float0;Float 0;14;0;Create;True;0;0;0;False;0;False;10;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;39;-928.0311,-1271.95;Inherit;False;Property;_DeepWater;Deep Water;6;0;Create;True;0;0;0;False;0;False;0.2153792,0.6362712,0.8301887,0;0.2153791,0.6362711,0.8301887,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;41;-981.8221,-1079.934;Inherit;False;Property;_ShallowWater;Shallow Water;5;0;Create;True;0;0;0;False;0;False;0.25178,0.5294456,0.7735849,0;0.2517799,0.5294456,0.7735849,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ClampOpNode;44;-723.2166,-847.0416;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;43;-1046.417,-830.6202;Inherit;False;28;Wave Pattern;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;99;-216.9152,-903.5476;Inherit;False;Albedo;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;42;-489.4047,-1171.528;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;98;-3403.798,-2925.204;Inherit;False;Sea Foam;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;93;-5312.754,-2987.786;Inherit;True;10;World Space Tile;1;0;OBJECT;;False;1;FLOAT4;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;94;-4896.612,-2935.263;Inherit;False;2;0;FLOAT4;0,0,0,0;False;1;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;95;-4650.158,-2963.545;Inherit;False;2;2;0;FLOAT4;0,0,0,0;False;1;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RangedFloatNode;97;-5260.23,-2636.286;Inherit;False;Constant;_Float1;Float 0;14;0;Create;True;0;0;0;False;0;False;10;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;96;-4902.047,-2753.247;Inherit;False;Property;_SeaFoamTile;Sea Foam Tile;15;0;Create;True;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;91;-4272.855,-3002.436;Inherit;True;Property;_TextureSample3;Texture Sample 3;15;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.NoiseGeneratorNode;104;-4240.531,-2575.754;Inherit;False;Simplex2D;True;False;2;0;FLOAT2;0,0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;105;-4990.545,-2529.585;Inherit;False;2;2;0;FLOAT4;0,0,0,0;False;1;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.PannerNode;103;-4655.833,-2564.154;Inherit;False;3;0;FLOAT2;0,0;False;2;FLOAT2;0.15,0.15;False;1;FLOAT;1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;109;-3831.779,-2736.589;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ClampOpNode;110;-3611.711,-2826.457;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;106;-5284.945,-2500.785;Inherit;False;Property;_FoamMask;Foam Mask;16;0;Create;True;0;0;0;False;0;False;0.004;0.004;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GrabScreenPosition;113;-1153.141,-4604.705;Inherit;False;0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ComponentMaskNode;114;-745.4161,-4606.658;Inherit;False;True;True;True;True;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;116;-577.4161,-4240.658;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;115;-962.4162,-4271.658;Inherit;False;Constant;_RefractAmount;Refract Amount;17;0;Create;True;0;0;0;False;0;False;0.1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;117;-946.4162,-4149.658;Inherit;False;75;Normals;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;118;-292.4161,-4392.658;Inherit;False;2;2;0;FLOAT4;0,0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.ScreenColorNode;119;-39.41611,-4405.658;Inherit;False;Global;_GrabScreen0;Grab Screen 0;17;0;Create;True;0;0;0;False;0;False;Object;-1;False;False;False;False;2;0;FLOAT2;0,0;False;1;FLOAT;0;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode;121;519.5839,-4288.658;Inherit;False;Refraction;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ClampOpNode;120;269.5839,-4341.658;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;COLOR;1,1,1,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ClampOpNode;126;63.89689,-5051.338;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;127;424.8968,-4961.338;Inherit;False;Depth;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;128;251.2068,-301.161;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;112;-142.8241,-474.2315;Inherit;False;99;Albedo;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;129;-39.2985,-218.5401;Inherit;False;127;Depth;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;130;-47.29411,-349.1342;Inherit;False;121;Refraction;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.DepthFade;124;-456.0589,-5081.91;Inherit;False;True;False;True;2;1;FLOAT3;0,0,0;False;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;131;-163.3968,-5049.233;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;125;-729.9234,-5087.399;Inherit;False;Property;_Depth;Depth;17;0;Create;True;0;0;0;False;0;False;-4;315.23;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;135;-1341.338,-396.3544;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;16;-1801.916,-358.4337;Inherit;False;Constant;_Tesselation;Tesselation;3;0;Create;True;0;0;0;False;0;False;8;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.DistanceBasedTessNode;132;-1107.983,-3.85872;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RangedFloatNode;133;-1552.047,-41.69669;Inherit;False;Constant;_Float2;Float 2;18;0;Create;True;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;134;-1552.528,186.8682;Inherit;False;Constant;_Float3;Float 3;18;0;Create;True;0;0;0;False;0;False;40;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;62;763.4659,-1862.922;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.PannerNode;65;1590.867,-1837.302;Inherit;True;3;0;FLOAT2;0,0;False;2;FLOAT2;0,0;False;1;FLOAT;0.09;False;1;FLOAT2;0
WireConnection;0;0;112;0
WireConnection;0;1;76;0
WireConnection;0;2;52;0
WireConnection;0;4;37;0
WireConnection;0;11;31;0
WireConnection;0;14;132;0
WireConnection;9;0;8;3
WireConnection;9;1;8;1
WireConnection;10;0;9;0
WireConnection;6;0;5;0
WireConnection;6;1;7;0
WireConnection;1;0;3;0
WireConnection;21;0;23;0
WireConnection;21;2;4;0
WireConnection;21;1;6;0
WireConnection;3;0;20;0
WireConnection;3;2;4;0
WireConnection;3;1;6;0
WireConnection;22;0;21;0
WireConnection;23;0;24;0
WireConnection;25;0;1;0
WireConnection;25;1;22;0
WireConnection;14;0;12;0
WireConnection;14;1;15;0
WireConnection;12;0;11;0
WireConnection;12;1;13;0
WireConnection;19;0;14;0
WireConnection;18;0;17;0
WireConnection;18;1;32;0
WireConnection;33;0;18;0
WireConnection;33;1;25;0
WireConnection;34;0;33;0
WireConnection;28;0;25;0
WireConnection;61;0;57;0
WireConnection;61;1;63;0
WireConnection;60;0;61;0
WireConnection;60;1;62;0
WireConnection;56;0;54;0
WireConnection;56;1;65;0
WireConnection;56;5;74;0
WireConnection;38;0;54;0
WireConnection;38;1;64;0
WireConnection;38;5;74;0
WireConnection;64;0;61;0
WireConnection;64;2;68;0
WireConnection;68;0;66;0
WireConnection;68;1;69;0
WireConnection;72;0;67;0
WireConnection;72;1;71;0
WireConnection;73;0;38;0
WireConnection;73;1;56;0
WireConnection;75;0;73;0
WireConnection;71;0;69;0
WireConnection;51;0;53;0
WireConnection;48;0;88;0
WireConnection;48;1;49;0
WireConnection;53;0;48;0
WireConnection;88;0;90;0
WireConnection;88;1;82;0
WireConnection;90;0;45;0
WireConnection;82;0;79;0
WireConnection;82;1;85;0
WireConnection;45;0;46;0
WireConnection;86;0;83;0
WireConnection;86;1;87;0
WireConnection;85;0;86;0
WireConnection;85;1;84;0
WireConnection;44;0;43;0
WireConnection;99;0;42;0
WireConnection;42;0;39;0
WireConnection;42;1;41;0
WireConnection;42;2;44;0
WireConnection;98;0;110;0
WireConnection;94;0;93;0
WireConnection;94;1;97;0
WireConnection;95;0;94;0
WireConnection;95;1;96;0
WireConnection;91;0;79;0
WireConnection;91;1;95;0
WireConnection;104;0;103;0
WireConnection;105;0;93;0
WireConnection;105;1;106;0
WireConnection;103;0;105;0
WireConnection;109;0;91;1
WireConnection;109;1;104;0
WireConnection;110;0;109;0
WireConnection;114;0;113;0
WireConnection;116;0;115;0
WireConnection;116;1;117;0
WireConnection;118;0;114;0
WireConnection;118;1;116;0
WireConnection;119;0;118;0
WireConnection;121;0;120;0
WireConnection;120;0;119;0
WireConnection;126;0;131;0
WireConnection;127;0;126;0
WireConnection;128;0;112;0
WireConnection;128;1;130;0
WireConnection;128;2;129;0
WireConnection;124;0;125;0
WireConnection;131;0;124;0
WireConnection;135;0;32;0
WireConnection;135;1;16;0
WireConnection;132;0;135;0
WireConnection;132;1;133;0
WireConnection;132;2;134;0
WireConnection;62;0;63;0
WireConnection;65;0;60;0
WireConnection;65;2;72;0
ASEEND*/
//CHKSM=BC508615B89F30924CBDEB05FE6955B467B09348