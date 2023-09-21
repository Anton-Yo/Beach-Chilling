// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:3,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:2865,x:32719,y:32712,varname:node_2865,prsc:2|diff-6490-OUT,spec-358-OUT,gloss-1813-OUT,normal-6610-OUT,alpha-4541-OUT;n:type:ShaderForge.SFN_Slider,id:358,x:32250,y:32780,ptovrint:False,ptlb:Metallic,ptin:_Metallic,varname:node_358,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:1813,x:32250,y:32882,ptovrint:False,ptlb:Gloss,ptin:_Gloss,varname:_Metallic_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.95,max:1;n:type:ShaderForge.SFN_Color,id:5675,x:31286,y:32241,ptovrint:False,ptlb:Color (Deep),ptin:_ColorDeep,varname:node_5675,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0.3,c3:0.2,c4:1;n:type:ShaderForge.SFN_Color,id:369,x:31286,y:32417,ptovrint:False,ptlb:Color (Shallow),ptin:_ColorShallow,varname:node_369,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.483277,c2:0.8305784,c3:1,c4:1;n:type:ShaderForge.SFN_Lerp,id:7768,x:32165,y:32452,varname:node_7768,prsc:2|A-5675-RGB,B-369-RGB,T-9002-OUT;n:type:ShaderForge.SFN_Fresnel,id:9002,x:31581,y:32630,varname:node_9002,prsc:2|NRM-9047-OUT,EXP-9615-OUT;n:type:ShaderForge.SFN_NormalVector,id:9047,x:31286,y:32593,prsc:2,pt:True;n:type:ShaderForge.SFN_ConstantClamp,id:9615,x:31430,y:32908,varname:node_9615,prsc:2,min:0,max:4|IN-5388-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5388,x:31085,y:32928,ptovrint:False,ptlb:Color Fernel,ptin:_ColorFernel,varname:node_5388,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1.3;n:type:ShaderForge.SFN_Tex2d,id:7158,x:31158,y:33511,varname:node_7158,prsc:2,ntxv:0,isnm:False|UVIN-643-OUT,TEX-9932-TEX;n:type:ShaderForge.SFN_Tex2d,id:9286,x:31145,y:33912,varname:node_9286,prsc:2,ntxv:0,isnm:False|UVIN-7225-OUT,TEX-9932-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:9932,x:30778,y:33640,ptovrint:False,ptlb:Normal Map,ptin:_NormalMap,varname:node_9932,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Slider,id:4615,x:31368,y:34354,ptovrint:False,ptlb:Normal Blend Strength,ptin:_NormalBlendStrength,varname:node_4615,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_FragmentPosition,id:3326,x:29277,y:32110,varname:node_3326,prsc:2;n:type:ShaderForge.SFN_Append,id:9974,x:29518,y:32025,varname:node_9974,prsc:2|A-3326-X,B-3326-Z;n:type:ShaderForge.SFN_Divide,id:8498,x:29697,y:32030,varname:node_8498,prsc:2|A-9974-OUT,B-7741-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7741,x:29518,y:32220,ptovrint:False,ptlb:UV Scale,ptin:_UVScale,varname:node_7741,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Set,id:4819,x:30020,y:32031,varname:_worldUV,prsc:2|IN-8498-OUT;n:type:ShaderForge.SFN_Set,id:8858,x:30055,y:32367,varname:_UV1,prsc:2|IN-7137-OUT;n:type:ShaderForge.SFN_Set,id:2305,x:30044,y:32742,varname:_UV2,prsc:2|IN-5721-OUT;n:type:ShaderForge.SFN_Get,id:3246,x:28641,y:32477,varname:node_3246,prsc:2|IN-4819-OUT;n:type:ShaderForge.SFN_Vector4Property,id:4486,x:29121,y:32326,ptovrint:False,ptlb:UV 1 Animator,ptin:_UV1Animator,varname:node_4486,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:0,v3:0,v4:0;n:type:ShaderForge.SFN_Vector4Property,id:6718,x:29132,y:32917,ptovrint:False,ptlb:UV 2 Animator,ptin:_UV2Animator,varname:_UV1Animator_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:0,v3:0,v4:0;n:type:ShaderForge.SFN_ComponentMask,id:6117,x:29397,y:32539,varname:node_6117,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-1068-OUT;n:type:ShaderForge.SFN_ComponentMask,id:6088,x:29397,y:32712,varname:node_6088,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-8397-OUT;n:type:ShaderForge.SFN_Time,id:819,x:29121,y:32556,varname:node_819,prsc:2;n:type:ShaderForge.SFN_Multiply,id:2321,x:29386,y:32254,varname:node_2321,prsc:2|A-4486-X,B-819-TSL;n:type:ShaderForge.SFN_Multiply,id:8859,x:29397,y:32404,varname:node_8859,prsc:2|A-4486-Y,B-819-TSL;n:type:ShaderForge.SFN_Add,id:3033,x:29637,y:32288,varname:node_3033,prsc:2|A-2321-OUT,B-6117-R;n:type:ShaderForge.SFN_Add,id:6064,x:29637,y:32434,varname:node_6064,prsc:2|A-8859-OUT,B-6117-G;n:type:ShaderForge.SFN_Append,id:7137,x:29788,y:32333,varname:node_7137,prsc:2|A-3033-OUT,B-6064-OUT;n:type:ShaderForge.SFN_Multiply,id:1930,x:29405,y:32887,varname:node_1930,prsc:2|A-6718-X,B-819-TSL;n:type:ShaderForge.SFN_Multiply,id:2059,x:29405,y:33020,varname:node_2059,prsc:2|A-6718-Y,B-819-TSL;n:type:ShaderForge.SFN_Add,id:389,x:29657,y:32842,varname:node_389,prsc:2|A-6088-R,B-1930-OUT;n:type:ShaderForge.SFN_Add,id:1198,x:29661,y:32966,varname:node_1198,prsc:2|A-6088-G,B-2059-OUT;n:type:ShaderForge.SFN_Append,id:5721,x:29865,y:32904,varname:node_5721,prsc:2|A-389-OUT,B-1198-OUT;n:type:ShaderForge.SFN_Multiply,id:1068,x:28927,y:32496,varname:node_1068,prsc:2|A-3246-OUT,B-4699-OUT;n:type:ShaderForge.SFN_Multiply,id:8397,x:28927,y:32653,varname:node_8397,prsc:2|A-3246-OUT,B-8101-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4699,x:28662,y:32585,ptovrint:False,ptlb:UV 1 Tiling,ptin:_UV1Tiling,varname:node_4699,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:8101,x:28662,y:32717,ptovrint:False,ptlb:UV 2 Tiling,ptin:_UV2Tiling,varname:node_8101,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Get,id:643,x:30902,y:33526,varname:node_643,prsc:2|IN-8858-OUT;n:type:ShaderForge.SFN_Get,id:7225,x:30861,y:33959,varname:node_7225,prsc:2|IN-2305-OUT;n:type:ShaderForge.SFN_ComponentMask,id:9292,x:31353,y:33511,varname:node_9292,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-7158-RGB;n:type:ShaderForge.SFN_Multiply,id:3282,x:31535,y:33511,varname:node_3282,prsc:2|A-9292-OUT,B-1916-OUT;n:type:ShaderForge.SFN_Append,id:3802,x:31727,y:33511,varname:node_3802,prsc:2|A-3282-OUT,B-6135-OUT;n:type:ShaderForge.SFN_Slider,id:1916,x:31106,y:33701,ptovrint:False,ptlb:Normal Map 1 Strength,ptin:_NormalMap1Strength,varname:node_1916,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Lerp,id:9768,x:32000,y:33637,varname:node_9768,prsc:2|A-3802-OUT,B-1596-OUT,T-4615-OUT;n:type:ShaderForge.SFN_ComponentMask,id:3463,x:31337,y:33912,varname:node_3463,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-9286-RGB;n:type:ShaderForge.SFN_Multiply,id:4691,x:31528,y:33912,varname:node_4691,prsc:2|A-3463-OUT,B-9665-OUT;n:type:ShaderForge.SFN_Append,id:1596,x:31712,y:33912,varname:node_1596,prsc:2|A-4691-OUT,B-5495-OUT;n:type:ShaderForge.SFN_Slider,id:9665,x:31130,y:34131,ptovrint:False,ptlb:Normal Map 2 Strength,ptin:_NormalMap2Strength,varname:node_9665,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Vector1,id:6135,x:31263,y:33822,varname:node_6135,prsc:2,v1:1;n:type:ShaderForge.SFN_Vector1,id:5495,x:31387,y:34228,varname:node_5495,prsc:2,v1:1;n:type:ShaderForge.SFN_Color,id:9211,x:31885,y:32678,ptovrint:False,ptlb:Foam Color,ptin:_FoamColor,varname:node_9211,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Lerp,id:6382,x:32366,y:32534,varname:node_6382,prsc:2|A-9211-RGB,B-7768-OUT,T-2167-OUT;n:type:ShaderForge.SFN_ValueProperty,id:1707,x:31638,y:33011,ptovrint:False,ptlb:Color Fernel (Foam),ptin:_ColorFernelFoam,varname:node_1707,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ConstantClamp,id:6191,x:31828,y:32967,varname:node_6191,prsc:2,min:0,max:4|IN-1707-OUT;n:type:ShaderForge.SFN_Fresnel,id:2167,x:32013,y:32829,varname:node_2167,prsc:2|NRM-7013-OUT,EXP-6191-OUT;n:type:ShaderForge.SFN_NormalVector,id:7013,x:31620,y:32824,prsc:2,pt:True;n:type:ShaderForge.SFN_Slider,id:4541,x:32231,y:33134,ptovrint:False,ptlb:Opacity,ptin:_Opacity,varname:node_4541,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.710035,max:1;n:type:ShaderForge.SFN_Set,id:2487,x:32291,y:33711,varname:Normals,prsc:2|IN-9768-OUT;n:type:ShaderForge.SFN_Get,id:6610,x:32435,y:32985,varname:node_6610,prsc:2|IN-2487-OUT;n:type:ShaderForge.SFN_SceneDepth,id:549,x:32163,y:31619,varname:node_549,prsc:2;n:type:ShaderForge.SFN_ScreenPos,id:3485,x:32163,y:31853,varname:node_3485,prsc:2,sctp:0;n:type:ShaderForge.SFN_Subtract,id:2785,x:32482,y:31796,varname:node_2785,prsc:2|A-549-OUT,B-3485-V;n:type:ShaderForge.SFN_Divide,id:7579,x:32760,y:31774,varname:node_7579,prsc:2|A-2785-OUT,B-2205-OUT;n:type:ShaderForge.SFN_Clamp,id:171,x:33004,y:31749,varname:node_171,prsc:2|IN-7579-OUT,MIN-8938-OUT,MAX-4172-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2205,x:32408,y:32037,ptovrint:False,ptlb:Distance,ptin:_Distance,varname:node_2205,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Vector1,id:8938,x:32782,y:31607,varname:node_8938,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:4172,x:32736,y:31686,varname:node_4172,prsc:2,v1:1;n:type:ShaderForge.SFN_Get,id:2336,x:32458,y:32125,varname:node_2336,prsc:2|IN-8858-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:4328,x:32458,y:32251,ptovrint:False,ptlb:Foam,ptin:_Foam,varname:node_4328,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:c993fdaad6cf2fd4ea4b85323f3f122a,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Tex2d,id:2615,x:32766,y:32162,varname:node_2615,prsc:2,tex:c993fdaad6cf2fd4ea4b85323f3f122a,ntxv:0,isnm:False|UVIN-2336-OUT,TEX-4328-TEX;n:type:ShaderForge.SFN_Lerp,id:7591,x:33124,y:32236,varname:node_7591,prsc:2|A-171-OUT,B-2615-RGB,T-2343-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2343,x:32852,y:32386,ptovrint:False,ptlb:node_2343,ptin:_node_2343,varname:node_2343,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Lerp,id:6490,x:33013,y:32477,varname:node_6490,prsc:2|A-7591-OUT,B-6382-OUT,T-9702-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9702,x:32759,y:32564,ptovrint:False,ptlb:node_9702,ptin:_node_9702,varname:node_9702,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;proporder:358-1813-5388-5675-369-9932-4615-7741-4486-4699-6718-8101-1916-9665-9211-1707-4541-2205-4328-2343-9702;pass:END;sub:END;*/

Shader "Shader Forge/Water" {
    Properties {
        _Metallic ("Metallic", Range(0, 1)) = 0
        _Gloss ("Gloss", Range(0, 1)) = 0.95
        _ColorFernel ("Color Fernel", Float ) = 1.3
        _ColorDeep ("Color (Deep)", Color) = (0,0.3,0.2,1)
        _ColorShallow ("Color (Shallow)", Color) = (0.483277,0.8305784,1,1)
        _NormalMap ("Normal Map", 2D) = "bump" {}
        _NormalBlendStrength ("Normal Blend Strength", Range(0, 1)) = 0
        _UVScale ("UV Scale", Float ) = 1
        _UV1Animator ("UV 1 Animator", Vector) = (0,0,0,0)
        _UV1Tiling ("UV 1 Tiling", Float ) = 0
        _UV2Animator ("UV 2 Animator", Vector) = (0,0,0,0)
        _UV2Tiling ("UV 2 Tiling", Float ) = 0
        _NormalMap1Strength ("Normal Map 1 Strength", Range(0, 1)) = 0
        _NormalMap2Strength ("Normal Map 2 Strength", Range(0, 1)) = 0
        _FoamColor ("Foam Color", Color) = (1,1,1,1)
        _ColorFernelFoam ("Color Fernel (Foam)", Float ) = 0
        _Opacity ("Opacity", Range(0, 1)) = 0.710035
        _Distance ("Distance", Float ) = 1
        _Foam ("Foam", 2D) = "bump" {}
        _node_2343 ("node_2343", Float ) = 0
        _node_9702 ("node_9702", Float ) = 0
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
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #pragma multi_compile_instancing
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma target 3.0
            uniform sampler2D _CameraDepthTexture;
            uniform sampler2D _NormalMap; uniform float4 _NormalMap_ST;
            uniform sampler2D _Foam; uniform float4 _Foam_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float, _Metallic)
                UNITY_DEFINE_INSTANCED_PROP( float, _Gloss)
                UNITY_DEFINE_INSTANCED_PROP( float4, _ColorDeep)
                UNITY_DEFINE_INSTANCED_PROP( float4, _ColorShallow)
                UNITY_DEFINE_INSTANCED_PROP( float, _ColorFernel)
                UNITY_DEFINE_INSTANCED_PROP( float, _NormalBlendStrength)
                UNITY_DEFINE_INSTANCED_PROP( float, _UVScale)
                UNITY_DEFINE_INSTANCED_PROP( float4, _UV1Animator)
                UNITY_DEFINE_INSTANCED_PROP( float4, _UV2Animator)
                UNITY_DEFINE_INSTANCED_PROP( float, _UV1Tiling)
                UNITY_DEFINE_INSTANCED_PROP( float, _UV2Tiling)
                UNITY_DEFINE_INSTANCED_PROP( float, _NormalMap1Strength)
                UNITY_DEFINE_INSTANCED_PROP( float, _NormalMap2Strength)
                UNITY_DEFINE_INSTANCED_PROP( float4, _FoamColor)
                UNITY_DEFINE_INSTANCED_PROP( float, _ColorFernelFoam)
                UNITY_DEFINE_INSTANCED_PROP( float, _Opacity)
                UNITY_DEFINE_INSTANCED_PROP( float, _Distance)
                UNITY_DEFINE_INSTANCED_PROP( float, _node_2343)
                UNITY_DEFINE_INSTANCED_PROP( float, _node_9702)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float2 uv1 : TEXCOORD0;
                float2 uv2 : TEXCOORD1;
                float4 posWorld : TEXCOORD2;
                float3 normalDir : TEXCOORD3;
                float3 tangentDir : TEXCOORD4;
                float3 bitangentDir : TEXCOORD5;
                float4 projPos : TEXCOORD6;
                UNITY_FOG_COORDS(7)
                #if defined(LIGHTMAP_ON) || defined(UNITY_SHOULD_SAMPLE_SH)
                    float4 ambientOrLightmapUV : TEXCOORD8;
                #endif
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                #ifdef LIGHTMAP_ON
                    o.ambientOrLightmapUV.xy = v.texcoord1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
                    o.ambientOrLightmapUV.zw = 0;
                #elif UNITY_SHOULD_SAMPLE_SH
                #endif
                #ifdef DYNAMICLIGHTMAP_ON
                    o.ambientOrLightmapUV.zw = v.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
                #endif
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 _UV1Animator_var = UNITY_ACCESS_INSTANCED_PROP( Props, _UV1Animator );
                float4 node_819 = _Time;
                float _UVScale_var = UNITY_ACCESS_INSTANCED_PROP( Props, _UVScale );
                float2 _worldUV = (float2(i.posWorld.r,i.posWorld.b)/_UVScale_var);
                float2 node_3246 = _worldUV;
                float _UV1Tiling_var = UNITY_ACCESS_INSTANCED_PROP( Props, _UV1Tiling );
                float2 node_6117 = (node_3246*_UV1Tiling_var).rg;
                float2 _UV1 = float2(((_UV1Animator_var.r*node_819.r)+node_6117.r),((_UV1Animator_var.g*node_819.r)+node_6117.g));
                float2 node_643 = _UV1;
                float3 node_7158 = UnpackNormal(tex2D(_NormalMap,TRANSFORM_TEX(node_643, _NormalMap)));
                float _NormalMap1Strength_var = UNITY_ACCESS_INSTANCED_PROP( Props, _NormalMap1Strength );
                float _UV2Tiling_var = UNITY_ACCESS_INSTANCED_PROP( Props, _UV2Tiling );
                float2 node_6088 = (node_3246*_UV2Tiling_var).rg;
                float4 _UV2Animator_var = UNITY_ACCESS_INSTANCED_PROP( Props, _UV2Animator );
                float2 _UV2 = float2((node_6088.r+(_UV2Animator_var.r*node_819.r)),(node_6088.g+(_UV2Animator_var.g*node_819.r)));
                float2 node_7225 = _UV2;
                float3 node_9286 = UnpackNormal(tex2D(_NormalMap,TRANSFORM_TEX(node_7225, _NormalMap)));
                float _NormalMap2Strength_var = UNITY_ACCESS_INSTANCED_PROP( Props, _NormalMap2Strength );
                float _NormalBlendStrength_var = UNITY_ACCESS_INSTANCED_PROP( Props, _NormalBlendStrength );
                float3 Normals = lerp(float3((node_7158.rgb.rg*_NormalMap1Strength_var),1.0),float3((node_9286.rgb.rg*_NormalMap2Strength_var),1.0),_NormalBlendStrength_var);
                float3 normalLocal = Normals;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float2 sceneUVs = (i.projPos.xy / i.projPos.w);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = 1;
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float _Gloss_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Gloss );
                float gloss = _Gloss_var;
                float perceptualRoughness = 1.0 - _Gloss_var;
                float roughness = perceptualRoughness * perceptualRoughness;
                float specPow = exp2( gloss * 10.0 + 1.0 );
/////// GI Data:
                UnityLight light;
                #ifdef LIGHTMAP_OFF
                    light.color = lightColor;
                    light.dir = lightDirection;
                    light.ndotl = LambertTerm (normalDirection, light.dir);
                #else
                    light.color = half3(0.f, 0.f, 0.f);
                    light.ndotl = 0.0f;
                    light.dir = half3(0.f, 0.f, 0.f);
                #endif
                UnityGIInput d;
                d.light = light;
                d.worldPos = i.posWorld.xyz;
                d.worldViewDir = viewDirection;
                d.atten = attenuation;
                #if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON)
                    d.ambient = 0;
                    d.lightmapUV = i.ambientOrLightmapUV;
                #else
                    d.ambient = i.ambientOrLightmapUV;
                #endif
                #if UNITY_SPECCUBE_BLENDING || UNITY_SPECCUBE_BOX_PROJECTION
                    d.boxMin[0] = unity_SpecCube0_BoxMin;
                    d.boxMin[1] = unity_SpecCube1_BoxMin;
                #endif
                #if UNITY_SPECCUBE_BOX_PROJECTION
                    d.boxMax[0] = unity_SpecCube0_BoxMax;
                    d.boxMax[1] = unity_SpecCube1_BoxMax;
                    d.probePosition[0] = unity_SpecCube0_ProbePosition;
                    d.probePosition[1] = unity_SpecCube1_ProbePosition;
                #endif
                d.probeHDR[0] = unity_SpecCube0_HDR;
                d.probeHDR[1] = unity_SpecCube1_HDR;
                Unity_GlossyEnvironmentData ugls_en_data;
                ugls_en_data.roughness = 1.0 - gloss;
                ugls_en_data.reflUVW = viewReflectDirection;
                UnityGI gi = UnityGlobalIllumination(d, 1, normalDirection, ugls_en_data );
                lightDirection = gi.light.dir;
                lightColor = gi.light.color;
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float LdotH = saturate(dot(lightDirection, halfDirection));
                float _Metallic_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Metallic );
                float3 specularColor = _Metallic_var;
                float specularMonochrome;
                float _Distance_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Distance );
                float node_171 = clamp(((max(0, LinearEyeDepth(SAMPLE_DEPTH_TEXTURE(_CameraDepthTexture, sceneUVs)) - _ProjectionParams.g)-(sceneUVs * 2 - 1).g)/_Distance_var),0.0,1.0);
                float2 node_2336 = _UV1;
                float3 node_2615 = UnpackNormal(tex2D(_Foam,TRANSFORM_TEX(node_2336, _Foam)));
                float _node_2343_var = UNITY_ACCESS_INSTANCED_PROP( Props, _node_2343 );
                float4 _FoamColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _FoamColor );
                float4 _ColorDeep_var = UNITY_ACCESS_INSTANCED_PROP( Props, _ColorDeep );
                float4 _ColorShallow_var = UNITY_ACCESS_INSTANCED_PROP( Props, _ColorShallow );
                float _ColorFernel_var = UNITY_ACCESS_INSTANCED_PROP( Props, _ColorFernel );
                float _ColorFernelFoam_var = UNITY_ACCESS_INSTANCED_PROP( Props, _ColorFernelFoam );
                float _node_9702_var = UNITY_ACCESS_INSTANCED_PROP( Props, _node_9702 );
                float3 diffuseColor = lerp(lerp(float3(node_171,node_171,node_171),node_2615.rgb,_node_2343_var),lerp(_FoamColor_var.rgb,lerp(_ColorDeep_var.rgb,_ColorShallow_var.rgb,pow(1.0-max(0,dot(normalDirection, viewDirection)),clamp(_ColorFernel_var,0,4))),pow(1.0-max(0,dot(normalDirection, viewDirection)),clamp(_ColorFernelFoam_var,0,4))),_node_9702_var); // Need this for specular when using metallic
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, specularColor, specularColor, specularMonochrome );
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = abs(dot( normalDirection, viewDirection ));
                float NdotH = saturate(dot( normalDirection, halfDirection ));
                float VdotH = saturate(dot( viewDirection, halfDirection ));
                float visTerm = SmithJointGGXVisibilityTerm( NdotL, NdotV, roughness );
                float normTerm = GGXTerm(NdotH, roughness);
                float specularPBL = (visTerm*normTerm) * UNITY_PI;
                #ifdef UNITY_COLORSPACE_GAMMA
                    specularPBL = sqrt(max(1e-4h, specularPBL));
                #endif
                specularPBL = max(0, specularPBL * NdotL);
                #if defined(_SPECULARHIGHLIGHTS_OFF)
                    specularPBL = 0.0;
                #endif
                half surfaceReduction;
                #ifdef UNITY_COLORSPACE_GAMMA
                    surfaceReduction = 1.0-0.28*roughness*perceptualRoughness;
                #else
                    surfaceReduction = 1.0/(roughness*roughness + 1.0);
                #endif
                specularPBL *= any(specularColor) ? 1.0 : 0.0;
                float3 directSpecular = attenColor*specularPBL*FresnelTerm(specularColor, LdotH);
                half grazingTerm = saturate( gloss + specularMonochrome );
                float3 indirectSpecular = (gi.indirect.specular);
                indirectSpecular *= FresnelLerp (specularColor, grazingTerm, NdotV);
                indirectSpecular *= surfaceReduction;
                float3 specular = (directSpecular + indirectSpecular);
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float nlPow5 = Pow5(1-NdotL);
                float nvPow5 = Pow5(1-NdotV);
                float3 directDiffuse = ((1 +(fd90 - 1)*nlPow5) * (1 + (fd90 - 1)*nvPow5) * NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += gi.indirect.diffuse;
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                float _Opacity_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Opacity );
                fixed4 finalRGBA = fixed4(finalColor,_Opacity_var);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #pragma multi_compile_instancing
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdadd
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma target 3.0
            uniform sampler2D _CameraDepthTexture;
            uniform sampler2D _NormalMap; uniform float4 _NormalMap_ST;
            uniform sampler2D _Foam; uniform float4 _Foam_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float, _Metallic)
                UNITY_DEFINE_INSTANCED_PROP( float, _Gloss)
                UNITY_DEFINE_INSTANCED_PROP( float4, _ColorDeep)
                UNITY_DEFINE_INSTANCED_PROP( float4, _ColorShallow)
                UNITY_DEFINE_INSTANCED_PROP( float, _ColorFernel)
                UNITY_DEFINE_INSTANCED_PROP( float, _NormalBlendStrength)
                UNITY_DEFINE_INSTANCED_PROP( float, _UVScale)
                UNITY_DEFINE_INSTANCED_PROP( float4, _UV1Animator)
                UNITY_DEFINE_INSTANCED_PROP( float4, _UV2Animator)
                UNITY_DEFINE_INSTANCED_PROP( float, _UV1Tiling)
                UNITY_DEFINE_INSTANCED_PROP( float, _UV2Tiling)
                UNITY_DEFINE_INSTANCED_PROP( float, _NormalMap1Strength)
                UNITY_DEFINE_INSTANCED_PROP( float, _NormalMap2Strength)
                UNITY_DEFINE_INSTANCED_PROP( float4, _FoamColor)
                UNITY_DEFINE_INSTANCED_PROP( float, _ColorFernelFoam)
                UNITY_DEFINE_INSTANCED_PROP( float, _Opacity)
                UNITY_DEFINE_INSTANCED_PROP( float, _Distance)
                UNITY_DEFINE_INSTANCED_PROP( float, _node_2343)
                UNITY_DEFINE_INSTANCED_PROP( float, _node_9702)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float2 uv1 : TEXCOORD0;
                float2 uv2 : TEXCOORD1;
                float4 posWorld : TEXCOORD2;
                float3 normalDir : TEXCOORD3;
                float3 tangentDir : TEXCOORD4;
                float3 bitangentDir : TEXCOORD5;
                float4 projPos : TEXCOORD6;
                LIGHTING_COORDS(7,8)
                UNITY_FOG_COORDS(9)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 _UV1Animator_var = UNITY_ACCESS_INSTANCED_PROP( Props, _UV1Animator );
                float4 node_819 = _Time;
                float _UVScale_var = UNITY_ACCESS_INSTANCED_PROP( Props, _UVScale );
                float2 _worldUV = (float2(i.posWorld.r,i.posWorld.b)/_UVScale_var);
                float2 node_3246 = _worldUV;
                float _UV1Tiling_var = UNITY_ACCESS_INSTANCED_PROP( Props, _UV1Tiling );
                float2 node_6117 = (node_3246*_UV1Tiling_var).rg;
                float2 _UV1 = float2(((_UV1Animator_var.r*node_819.r)+node_6117.r),((_UV1Animator_var.g*node_819.r)+node_6117.g));
                float2 node_643 = _UV1;
                float3 node_7158 = UnpackNormal(tex2D(_NormalMap,TRANSFORM_TEX(node_643, _NormalMap)));
                float _NormalMap1Strength_var = UNITY_ACCESS_INSTANCED_PROP( Props, _NormalMap1Strength );
                float _UV2Tiling_var = UNITY_ACCESS_INSTANCED_PROP( Props, _UV2Tiling );
                float2 node_6088 = (node_3246*_UV2Tiling_var).rg;
                float4 _UV2Animator_var = UNITY_ACCESS_INSTANCED_PROP( Props, _UV2Animator );
                float2 _UV2 = float2((node_6088.r+(_UV2Animator_var.r*node_819.r)),(node_6088.g+(_UV2Animator_var.g*node_819.r)));
                float2 node_7225 = _UV2;
                float3 node_9286 = UnpackNormal(tex2D(_NormalMap,TRANSFORM_TEX(node_7225, _NormalMap)));
                float _NormalMap2Strength_var = UNITY_ACCESS_INSTANCED_PROP( Props, _NormalMap2Strength );
                float _NormalBlendStrength_var = UNITY_ACCESS_INSTANCED_PROP( Props, _NormalBlendStrength );
                float3 Normals = lerp(float3((node_7158.rgb.rg*_NormalMap1Strength_var),1.0),float3((node_9286.rgb.rg*_NormalMap2Strength_var),1.0),_NormalBlendStrength_var);
                float3 normalLocal = Normals;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float2 sceneUVs = (i.projPos.xy / i.projPos.w);
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float _Gloss_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Gloss );
                float gloss = _Gloss_var;
                float perceptualRoughness = 1.0 - _Gloss_var;
                float roughness = perceptualRoughness * perceptualRoughness;
                float specPow = exp2( gloss * 10.0 + 1.0 );
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float LdotH = saturate(dot(lightDirection, halfDirection));
                float _Metallic_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Metallic );
                float3 specularColor = _Metallic_var;
                float specularMonochrome;
                float _Distance_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Distance );
                float node_171 = clamp(((max(0, LinearEyeDepth(SAMPLE_DEPTH_TEXTURE(_CameraDepthTexture, sceneUVs)) - _ProjectionParams.g)-(sceneUVs * 2 - 1).g)/_Distance_var),0.0,1.0);
                float2 node_2336 = _UV1;
                float3 node_2615 = UnpackNormal(tex2D(_Foam,TRANSFORM_TEX(node_2336, _Foam)));
                float _node_2343_var = UNITY_ACCESS_INSTANCED_PROP( Props, _node_2343 );
                float4 _FoamColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _FoamColor );
                float4 _ColorDeep_var = UNITY_ACCESS_INSTANCED_PROP( Props, _ColorDeep );
                float4 _ColorShallow_var = UNITY_ACCESS_INSTANCED_PROP( Props, _ColorShallow );
                float _ColorFernel_var = UNITY_ACCESS_INSTANCED_PROP( Props, _ColorFernel );
                float _ColorFernelFoam_var = UNITY_ACCESS_INSTANCED_PROP( Props, _ColorFernelFoam );
                float _node_9702_var = UNITY_ACCESS_INSTANCED_PROP( Props, _node_9702 );
                float3 diffuseColor = lerp(lerp(float3(node_171,node_171,node_171),node_2615.rgb,_node_2343_var),lerp(_FoamColor_var.rgb,lerp(_ColorDeep_var.rgb,_ColorShallow_var.rgb,pow(1.0-max(0,dot(normalDirection, viewDirection)),clamp(_ColorFernel_var,0,4))),pow(1.0-max(0,dot(normalDirection, viewDirection)),clamp(_ColorFernelFoam_var,0,4))),_node_9702_var); // Need this for specular when using metallic
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, specularColor, specularColor, specularMonochrome );
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = abs(dot( normalDirection, viewDirection ));
                float NdotH = saturate(dot( normalDirection, halfDirection ));
                float VdotH = saturate(dot( viewDirection, halfDirection ));
                float visTerm = SmithJointGGXVisibilityTerm( NdotL, NdotV, roughness );
                float normTerm = GGXTerm(NdotH, roughness);
                float specularPBL = (visTerm*normTerm) * UNITY_PI;
                #ifdef UNITY_COLORSPACE_GAMMA
                    specularPBL = sqrt(max(1e-4h, specularPBL));
                #endif
                specularPBL = max(0, specularPBL * NdotL);
                #if defined(_SPECULARHIGHLIGHTS_OFF)
                    specularPBL = 0.0;
                #endif
                specularPBL *= any(specularColor) ? 1.0 : 0.0;
                float3 directSpecular = attenColor*specularPBL*FresnelTerm(specularColor, LdotH);
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float nlPow5 = Pow5(1-NdotL);
                float nvPow5 = Pow5(1-NdotV);
                float3 directDiffuse = ((1 +(fd90 - 1)*nlPow5) * (1 + (fd90 - 1)*nvPow5) * NdotL) * attenColor;
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                float _Opacity_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Opacity );
                fixed4 finalRGBA = fixed4(finalColor * _Opacity_var,0);
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
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #pragma multi_compile_instancing
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #include "UnityMetaPass.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma target 3.0
            uniform sampler2D _CameraDepthTexture;
            uniform sampler2D _Foam; uniform float4 _Foam_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float, _Metallic)
                UNITY_DEFINE_INSTANCED_PROP( float, _Gloss)
                UNITY_DEFINE_INSTANCED_PROP( float4, _ColorDeep)
                UNITY_DEFINE_INSTANCED_PROP( float4, _ColorShallow)
                UNITY_DEFINE_INSTANCED_PROP( float, _ColorFernel)
                UNITY_DEFINE_INSTANCED_PROP( float, _UVScale)
                UNITY_DEFINE_INSTANCED_PROP( float4, _UV1Animator)
                UNITY_DEFINE_INSTANCED_PROP( float, _UV1Tiling)
                UNITY_DEFINE_INSTANCED_PROP( float4, _FoamColor)
                UNITY_DEFINE_INSTANCED_PROP( float, _ColorFernelFoam)
                UNITY_DEFINE_INSTANCED_PROP( float, _Distance)
                UNITY_DEFINE_INSTANCED_PROP( float, _node_2343)
                UNITY_DEFINE_INSTANCED_PROP( float, _node_9702)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float2 uv1 : TEXCOORD0;
                float2 uv2 : TEXCOORD1;
                float4 posWorld : TEXCOORD2;
                float3 normalDir : TEXCOORD3;
                float4 projPos : TEXCOORD4;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i) : SV_Target {
                UNITY_SETUP_INSTANCE_ID( i );
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float2 sceneUVs = (i.projPos.xy / i.projPos.w);
                UnityMetaInput o;
                UNITY_INITIALIZE_OUTPUT( UnityMetaInput, o );
                
                o.Emission = 0;
                
                float _Distance_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Distance );
                float node_171 = clamp(((max(0, LinearEyeDepth(SAMPLE_DEPTH_TEXTURE(_CameraDepthTexture, sceneUVs)) - _ProjectionParams.g)-(sceneUVs * 2 - 1).g)/_Distance_var),0.0,1.0);
                float4 _UV1Animator_var = UNITY_ACCESS_INSTANCED_PROP( Props, _UV1Animator );
                float4 node_819 = _Time;
                float _UVScale_var = UNITY_ACCESS_INSTANCED_PROP( Props, _UVScale );
                float2 _worldUV = (float2(i.posWorld.r,i.posWorld.b)/_UVScale_var);
                float2 node_3246 = _worldUV;
                float _UV1Tiling_var = UNITY_ACCESS_INSTANCED_PROP( Props, _UV1Tiling );
                float2 node_6117 = (node_3246*_UV1Tiling_var).rg;
                float2 _UV1 = float2(((_UV1Animator_var.r*node_819.r)+node_6117.r),((_UV1Animator_var.g*node_819.r)+node_6117.g));
                float2 node_2336 = _UV1;
                float3 node_2615 = UnpackNormal(tex2D(_Foam,TRANSFORM_TEX(node_2336, _Foam)));
                float _node_2343_var = UNITY_ACCESS_INSTANCED_PROP( Props, _node_2343 );
                float4 _FoamColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _FoamColor );
                float4 _ColorDeep_var = UNITY_ACCESS_INSTANCED_PROP( Props, _ColorDeep );
                float4 _ColorShallow_var = UNITY_ACCESS_INSTANCED_PROP( Props, _ColorShallow );
                float _ColorFernel_var = UNITY_ACCESS_INSTANCED_PROP( Props, _ColorFernel );
                float _ColorFernelFoam_var = UNITY_ACCESS_INSTANCED_PROP( Props, _ColorFernelFoam );
                float _node_9702_var = UNITY_ACCESS_INSTANCED_PROP( Props, _node_9702 );
                float3 diffColor = lerp(lerp(float3(node_171,node_171,node_171),node_2615.rgb,_node_2343_var),lerp(_FoamColor_var.rgb,lerp(_ColorDeep_var.rgb,_ColorShallow_var.rgb,pow(1.0-max(0,dot(normalDirection, viewDirection)),clamp(_ColorFernel_var,0,4))),pow(1.0-max(0,dot(normalDirection, viewDirection)),clamp(_ColorFernelFoam_var,0,4))),_node_9702_var);
                float specularMonochrome;
                float3 specColor;
                float _Metallic_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Metallic );
                diffColor = DiffuseAndSpecularFromMetallic( diffColor, _Metallic_var, specColor, specularMonochrome );
                float _Gloss_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Gloss );
                float roughness = 1.0 - _Gloss_var;
                o.Albedo = diffColor + specColor * roughness * roughness * 0.5;
                
                return UnityMetaFragment( o );
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
