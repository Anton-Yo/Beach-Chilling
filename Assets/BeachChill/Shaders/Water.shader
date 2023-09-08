// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:3,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:2865,x:32719,y:32712,varname:node_2865,prsc:2|diff-7768-OUT,spec-358-OUT,gloss-1813-OUT,normal-1417-OUT,alpha-352-OUT;n:type:ShaderForge.SFN_Slider,id:358,x:32250,y:32780,ptovrint:False,ptlb:Metallic,ptin:_Metallic,varname:node_358,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:1813,x:32250,y:32882,ptovrint:False,ptlb:Gloss,ptin:_Gloss,varname:_Metallic_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.95,max:1;n:type:ShaderForge.SFN_Color,id:5675,x:31885,y:32489,ptovrint:False,ptlb:Color (Deep),ptin:_ColorDeep,varname:node_5675,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0.3,c3:0.2,c4:1;n:type:ShaderForge.SFN_Color,id:369,x:31885,y:32715,ptovrint:False,ptlb:Color (Shallow),ptin:_ColorShallow,varname:node_369,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.483277,c2:0.8305784,c3:1,c4:1;n:type:ShaderForge.SFN_Lerp,id:7768,x:32236,y:32552,varname:node_7768,prsc:2|A-5675-RGB,B-369-RGB,T-9002-OUT;n:type:ShaderForge.SFN_Fresnel,id:9002,x:31885,y:32898,varname:node_9002,prsc:2|NRM-9047-OUT,EXP-9615-OUT;n:type:ShaderForge.SFN_NormalVector,id:9047,x:31575,y:32899,prsc:2,pt:True;n:type:ShaderForge.SFN_ConstantClamp,id:9615,x:31575,y:33087,varname:node_9615,prsc:2,min:0,max:4|IN-5388-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5388,x:31307,y:33126,ptovrint:False,ptlb:Color Fernel,ptin:_ColorFernel,varname:node_5388,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1.3;n:type:ShaderForge.SFN_Tex2d,id:7158,x:31780,y:33314,varname:node_7158,prsc:2,ntxv:0,isnm:False|UVIN-643-OUT,TEX-9932-TEX;n:type:ShaderForge.SFN_Tex2d,id:9286,x:31859,y:33511,varname:node_9286,prsc:2,ntxv:0,isnm:False|UVIN-7225-OUT,TEX-9932-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:9932,x:31324,y:33350,ptovrint:False,ptlb:Normal Map,ptin:_NormalMap,varname:node_9932,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Lerp,id:1417,x:32122,y:33356,varname:node_1417,prsc:2|A-7158-RGB,B-9286-RGB,T-4615-OUT;n:type:ShaderForge.SFN_Slider,id:4615,x:31702,y:33743,ptovrint:False,ptlb:Normal Blend Strength,ptin:_NormalBlendStrength,varname:node_4615,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Time,id:9267,x:31038,y:33551,varname:node_9267,prsc:2;n:type:ShaderForge.SFN_FragmentPosition,id:3326,x:30002,y:32487,varname:node_3326,prsc:2;n:type:ShaderForge.SFN_Append,id:9974,x:30243,y:32402,varname:node_9974,prsc:2|A-3326-X,B-3326-Z;n:type:ShaderForge.SFN_Divide,id:8498,x:30422,y:32407,varname:node_8498,prsc:2|A-9974-OUT,B-7741-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7741,x:30243,y:32597,ptovrint:False,ptlb:UV Scale,ptin:_UVScale,varname:node_7741,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Set,id:4819,x:30745,y:32408,varname:_worldUV,prsc:2|IN-8498-OUT;n:type:ShaderForge.SFN_Set,id:8858,x:30780,y:32744,varname:_UV1,prsc:2|IN-7137-OUT;n:type:ShaderForge.SFN_Set,id:2305,x:30769,y:33119,varname:_UV2,prsc:2|IN-5721-OUT;n:type:ShaderForge.SFN_Get,id:3246,x:29366,y:32854,varname:node_3246,prsc:2|IN-4819-OUT;n:type:ShaderForge.SFN_Vector4Property,id:4486,x:29846,y:32703,ptovrint:False,ptlb:UV 1 Animator,ptin:_UV1Animator,varname:node_4486,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:0,v3:0,v4:0;n:type:ShaderForge.SFN_Vector4Property,id:6718,x:29857,y:33294,ptovrint:False,ptlb:UV 2 Animator,ptin:_UV2Animator,varname:_UV1Animator_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:0,v3:0,v4:0;n:type:ShaderForge.SFN_ComponentMask,id:6117,x:30122,y:32916,varname:node_6117,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-1068-OUT;n:type:ShaderForge.SFN_ComponentMask,id:6088,x:30122,y:33089,varname:node_6088,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-8397-OUT;n:type:ShaderForge.SFN_Time,id:819,x:29846,y:32933,varname:node_819,prsc:2;n:type:ShaderForge.SFN_Multiply,id:2321,x:30111,y:32631,varname:node_2321,prsc:2|A-4486-X,B-819-TSL;n:type:ShaderForge.SFN_Multiply,id:8859,x:30122,y:32781,varname:node_8859,prsc:2|A-4486-Y,B-819-TSL;n:type:ShaderForge.SFN_Add,id:3033,x:30362,y:32665,varname:node_3033,prsc:2|A-2321-OUT,B-6117-R;n:type:ShaderForge.SFN_Add,id:6064,x:30362,y:32811,varname:node_6064,prsc:2|A-8859-OUT,B-6117-G;n:type:ShaderForge.SFN_Append,id:7137,x:30513,y:32710,varname:node_7137,prsc:2|A-3033-OUT,B-6064-OUT;n:type:ShaderForge.SFN_Multiply,id:1930,x:30130,y:33264,varname:node_1930,prsc:2|A-6718-X,B-819-TSL;n:type:ShaderForge.SFN_Multiply,id:2059,x:30130,y:33397,varname:node_2059,prsc:2|A-6718-Y,B-819-TSL;n:type:ShaderForge.SFN_Add,id:389,x:30382,y:33219,varname:node_389,prsc:2|A-6088-R,B-1930-OUT;n:type:ShaderForge.SFN_Add,id:1198,x:30386,y:33343,varname:node_1198,prsc:2|A-6088-G,B-2059-OUT;n:type:ShaderForge.SFN_Append,id:5721,x:30590,y:33281,varname:node_5721,prsc:2|A-389-OUT,B-1198-OUT;n:type:ShaderForge.SFN_Multiply,id:1068,x:29652,y:32873,varname:node_1068,prsc:2|A-3246-OUT,B-4699-OUT;n:type:ShaderForge.SFN_Multiply,id:8397,x:29652,y:33030,varname:node_8397,prsc:2|A-3246-OUT,B-8101-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4699,x:29387,y:32962,ptovrint:False,ptlb:UV 1 Tiling,ptin:_UV1Tiling,varname:node_4699,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:8101,x:29387,y:33094,ptovrint:False,ptlb:UV 2 Tiling,ptin:_UV2Tiling,varname:node_8101,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Slider,id:352,x:32146,y:33062,ptovrint:False,ptlb:Opacity,ptin:_Opacity,varname:node_352,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Get,id:643,x:31511,y:33458,varname:node_643,prsc:2|IN-8858-OUT;n:type:ShaderForge.SFN_Get,id:7225,x:31474,y:33602,varname:node_7225,prsc:2|IN-2305-OUT;proporder:358-1813-5388-5675-369-9932-4615-7741-4486-4699-6718-8101-352;pass:END;sub:END;*/

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
        _Opacity ("Opacity", Range(0, 1)) = 1
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
            uniform sampler2D _NormalMap; uniform float4 _NormalMap_ST;
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
                UNITY_DEFINE_INSTANCED_PROP( float, _Opacity)
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
                UNITY_FOG_COORDS(6)
                #if defined(LIGHTMAP_ON) || defined(UNITY_SHOULD_SAMPLE_SH)
                    float4 ambientOrLightmapUV : TEXCOORD7;
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
                float _UV2Tiling_var = UNITY_ACCESS_INSTANCED_PROP( Props, _UV2Tiling );
                float2 node_6088 = (node_3246*_UV2Tiling_var).rg;
                float4 _UV2Animator_var = UNITY_ACCESS_INSTANCED_PROP( Props, _UV2Animator );
                float2 _UV2 = float2((node_6088.r+(_UV2Animator_var.r*node_819.r)),(node_6088.g+(_UV2Animator_var.g*node_819.r)));
                float2 node_7225 = _UV2;
                float3 node_9286 = UnpackNormal(tex2D(_NormalMap,TRANSFORM_TEX(node_7225, _NormalMap)));
                float _NormalBlendStrength_var = UNITY_ACCESS_INSTANCED_PROP( Props, _NormalBlendStrength );
                float3 normalLocal = lerp(node_7158.rgb,node_9286.rgb,_NormalBlendStrength_var);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
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
                float4 _ColorDeep_var = UNITY_ACCESS_INSTANCED_PROP( Props, _ColorDeep );
                float4 _ColorShallow_var = UNITY_ACCESS_INSTANCED_PROP( Props, _ColorShallow );
                float _ColorFernel_var = UNITY_ACCESS_INSTANCED_PROP( Props, _ColorFernel );
                float3 diffuseColor = lerp(_ColorDeep_var.rgb,_ColorShallow_var.rgb,pow(1.0-max(0,dot(normalDirection, viewDirection)),clamp(_ColorFernel_var,0,4))); // Need this for specular when using metallic
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
            uniform sampler2D _NormalMap; uniform float4 _NormalMap_ST;
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
                UNITY_DEFINE_INSTANCED_PROP( float, _Opacity)
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
                LIGHTING_COORDS(6,7)
                UNITY_FOG_COORDS(8)
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
                float _UV2Tiling_var = UNITY_ACCESS_INSTANCED_PROP( Props, _UV2Tiling );
                float2 node_6088 = (node_3246*_UV2Tiling_var).rg;
                float4 _UV2Animator_var = UNITY_ACCESS_INSTANCED_PROP( Props, _UV2Animator );
                float2 _UV2 = float2((node_6088.r+(_UV2Animator_var.r*node_819.r)),(node_6088.g+(_UV2Animator_var.g*node_819.r)));
                float2 node_7225 = _UV2;
                float3 node_9286 = UnpackNormal(tex2D(_NormalMap,TRANSFORM_TEX(node_7225, _NormalMap)));
                float _NormalBlendStrength_var = UNITY_ACCESS_INSTANCED_PROP( Props, _NormalBlendStrength );
                float3 normalLocal = lerp(node_7158.rgb,node_9286.rgb,_NormalBlendStrength_var);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
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
                float4 _ColorDeep_var = UNITY_ACCESS_INSTANCED_PROP( Props, _ColorDeep );
                float4 _ColorShallow_var = UNITY_ACCESS_INSTANCED_PROP( Props, _ColorShallow );
                float _ColorFernel_var = UNITY_ACCESS_INSTANCED_PROP( Props, _ColorFernel );
                float3 diffuseColor = lerp(_ColorDeep_var.rgb,_ColorShallow_var.rgb,pow(1.0-max(0,dot(normalDirection, viewDirection)),clamp(_ColorFernel_var,0,4))); // Need this for specular when using metallic
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
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float, _Metallic)
                UNITY_DEFINE_INSTANCED_PROP( float, _Gloss)
                UNITY_DEFINE_INSTANCED_PROP( float4, _ColorDeep)
                UNITY_DEFINE_INSTANCED_PROP( float4, _ColorShallow)
                UNITY_DEFINE_INSTANCED_PROP( float, _ColorFernel)
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
                return o;
            }
            float4 frag(VertexOutput i) : SV_Target {
                UNITY_SETUP_INSTANCE_ID( i );
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                UnityMetaInput o;
                UNITY_INITIALIZE_OUTPUT( UnityMetaInput, o );
                
                o.Emission = 0;
                
                float4 _ColorDeep_var = UNITY_ACCESS_INSTANCED_PROP( Props, _ColorDeep );
                float4 _ColorShallow_var = UNITY_ACCESS_INSTANCED_PROP( Props, _ColorShallow );
                float _ColorFernel_var = UNITY_ACCESS_INSTANCED_PROP( Props, _ColorFernel );
                float3 diffColor = lerp(_ColorDeep_var.rgb,_ColorShallow_var.rgb,pow(1.0-max(0,dot(normalDirection, viewDirection)),clamp(_ColorFernel_var,0,4)));
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
