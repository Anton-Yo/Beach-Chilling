// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:2865,x:32719,y:32712,varname:node_2865,prsc:2|emission-1041-RGB,alpha-4424-OUT;n:type:ShaderForge.SFN_Color,id:1041,x:32427,y:32812,ptovrint:False,ptlb:node_1041,ptin:_node_1041,varname:node_1041,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Subtract,id:4424,x:32408,y:33047,varname:node_4424,prsc:2|A-2096-OUT,B-3485-OUT;n:type:ShaderForge.SFN_Multiply,id:2096,x:32038,y:32983,varname:node_2096,prsc:2|A-9102-OUT,B-5563-A;n:type:ShaderForge.SFN_VertexColor,id:5563,x:31794,y:33227,varname:node_5563,prsc:2;n:type:ShaderForge.SFN_Tex2d,id:1631,x:31253,y:32889,ptovrint:False,ptlb:Foam,ptin:_Foam,varname:node_1631,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:55e743f71f373c04eab68d3ace48124c,ntxv:0,isnm:False|UVIN-362-UVOUT;n:type:ShaderForge.SFN_Panner,id:362,x:30948,y:32868,varname:node_362,prsc:2,spu:0,spv:0.07|UVIN-8755-OUT;n:type:ShaderForge.SFN_Append,id:8755,x:30604,y:32904,varname:node_8755,prsc:2|A-3234-U,B-5106-OUT;n:type:ShaderForge.SFN_TexCoord,id:3234,x:30154,y:32792,varname:node_3234,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Add,id:5106,x:30405,y:32963,varname:node_5106,prsc:2|A-3234-V,B-7242-OUT;n:type:ShaderForge.SFN_Vector1,id:7242,x:30191,y:33084,varname:node_7242,prsc:2,v1:0.9;n:type:ShaderForge.SFN_Multiply,id:9102,x:31704,y:32973,varname:node_9102,prsc:2|A-9037-OUT,B-2319-OUT;n:type:ShaderForge.SFN_ComponentMask,id:9037,x:31484,y:32926,varname:node_9037,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-1631-R;n:type:ShaderForge.SFN_Slider,id:2319,x:31254,y:33199,ptovrint:False,ptlb:Normal Strength,ptin:_NormalStrength,varname:node_2319,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.4529915,max:1;n:type:ShaderForge.SFN_Slider,id:3485,x:32027,y:33212,ptovrint:False,ptlb:Opacity,ptin:_Opacity,varname:node_3485,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.4,max:1;proporder:1041-1631-2319-3485;pass:END;sub:END;*/

Shader "Shader Forge/Foam" {
    Properties {
        _node_1041 ("node_1041", Color) = (1,1,1,1)
        _Foam ("Foam", 2D) = "white" {}
        _NormalStrength ("Normal Strength", Range(0, 1)) = 0.4529915
        _Opacity ("Opacity", Range(0, 1)) = 0.4
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define _GLOSSYENV 1
            #pragma multi_compile_instancing
            #include "UnityCG.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma target 3.0
            uniform sampler2D _Foam; uniform float4 _Foam_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float4, _node_1041)
                UNITY_DEFINE_INSTANCED_PROP( float, _NormalStrength)
                UNITY_DEFINE_INSTANCED_PROP( float, _Opacity)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float2 uv0 : TEXCOORD0;
                float4 vertexColor : COLOR;
                UNITY_FOG_COORDS(1)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
////// Lighting:
////// Emissive:
                float4 _node_1041_var = UNITY_ACCESS_INSTANCED_PROP( Props, _node_1041 );
                float3 emissive = _node_1041_var.rgb;
                float3 finalColor = emissive;
                float4 node_1818 = _Time;
                float2 node_362 = (float2(i.uv0.r,(i.uv0.g+0.9))+node_1818.g*float2(0,0.07));
                float4 _Foam_var = tex2D(_Foam,TRANSFORM_TEX(node_362, _Foam));
                float _NormalStrength_var = UNITY_ACCESS_INSTANCED_PROP( Props, _NormalStrength );
                float _Opacity_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Opacity );
                fixed4 finalRGBA = fixed4(finalColor,(((_Foam_var.r.r*_NormalStrength_var)*i.vertexColor.a)-_Opacity_var));
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "Meta"
            Tags {
                "LightMode"="Meta"
            }
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_META 1
            #define _GLOSSYENV 1
            #pragma multi_compile_instancing
            #include "UnityCG.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #include "UnityMetaPass.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma target 3.0
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float4, _node_1041)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 vertex : POSITION;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                UNITY_VERTEX_INPUT_INSTANCE_ID
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST );
                return o;
            }
            float4 frag(VertexOutput i) : SV_Target {
                UNITY_SETUP_INSTANCE_ID( i );
                UnityMetaInput o;
                UNITY_INITIALIZE_OUTPUT( UnityMetaInput, o );
                
                float4 _node_1041_var = UNITY_ACCESS_INSTANCED_PROP( Props, _node_1041 );
                o.Emission = _node_1041_var.rgb;
                
                float3 diffColor = float3(0,0,0);
                o.Albedo = diffColor;
                
                return UnityMetaFragment( o );
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
