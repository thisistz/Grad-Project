// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "ice"
{
	Properties
	{
		_snow("snow", Color) = (0,0,0,0)
		_Albedo("Albedo", Color) = (0,0,0,0)
<<<<<<< HEAD
		_Spread("Spread", Range( 0 , 0.5)) = 0
		_position("position", Range( 0 , 5)) = 0
=======
		_Spread("Spread", Range( 0 , 1)) = 0
		_position("position", Range( 1.5 , 2.5)) = 0
>>>>>>> c56c2f3b4b37ec7202ac4201fa85c0e9313126c3
		[HideInInspector] __dirty( "", Int ) = 1
	}

	SubShader
	{
		Tags{ "RenderType" = "Opaque"  "Queue" = "Geometry+0" "IsEmissive" = "true"  }
		Cull Back
		CGPROGRAM
		#pragma target 3.0
		#pragma surface surf Standard keepalpha addshadow fullforwardshadows 
		struct Input
		{
			float3 worldPos;
		};

		uniform float4 _Albedo;
		uniform float4 _snow;
		uniform float _Spread;
		uniform float _position;

		void surf( Input i , inout SurfaceOutputStandard o )
		{
			o.Albedo = _Albedo.rgb;
			float3 ase_worldPos = i.worldPos;
<<<<<<< HEAD
			float4 lerpResult12 = lerp( float4( 0,0,0,0 ) , _snow , ( (0.0 + (ase_worldPos.y - 0.0) * (1.0 - 0.0) / (1.0 - 0.0)) * _Spread ));
			float4 clampResult19 = clamp( ( lerpResult12 + ( 1.0 - _position ) ) , float4( 0,0,0,0 ) , float4( 1,1,1,0 ) );
			o.Emission = clampResult19.rgb;
=======
			float4 lerpResult12 = lerp( _snow , float4( 0,0,0,0 ) , ( ( ( ase_worldPos.y * ( ( _Spread - 1.0 ) * 0.1 ) ) + _position ) * 0.5 ));
			o.Emission = lerpResult12.rgb;
>>>>>>> c56c2f3b4b37ec7202ac4201fa85c0e9313126c3
			o.Alpha = 1;
		}

		ENDCG
	}
	Fallback "Diffuse"
	CustomEditor "ASEMaterialInspector"
}
/*ASEBEGIN
Version=17000
<<<<<<< HEAD
-1414;5;1426;797;1687.318;394.8452;1;True;False
Node;AmplifyShaderEditor.WorldPosInputsNode;5;-1276.21,-254.1645;Float;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.TFHCRemapNode;17;-1080.65,-198.0896;Float;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;3;FLOAT;0;False;4;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;7;-1369.638,12.9528;Float;False;Property;_Spread;Spread;2;0;Create;True;0;0;False;0;0;0.065;0;0.5;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;8;-808.6668,-18.8876;Float;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;10;-1098.415,212.5938;Float;False;Property;_position;position;3;0;Create;True;0;0;False;0;0;1.48;0;5;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;2;-796.8964,-408.2446;Float;False;Property;_snow;snow;0;0;Create;True;0;0;False;0;0,0,0,0;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.OneMinusNode;18;-553.4155,158.7646;Float;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;12;-545.536,-41.04722;Float;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;9;-346.8158,49.36444;Float;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;1;-518.0889,-388.3156;Float;False;Property;_Albedo;Albedo;1;0;Create;True;0;0;False;0;0,0,0,0;0.4704965,0.7791734,0.9150943,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ClampOpNode;19;-183.2063,68.66852;Float;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;COLOR;1,1,1,0;False;1;COLOR;0
Node;AmplifyShaderEditor.StandardSurfaceOutputNode;0;0,0;Float;False;True;2;Float;ASEMaterialInspector;0;0;Standard;ice;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;Back;0;False;-1;0;False;-1;False;0;False;-1;0;False;-1;False;0;Opaque;0.5;True;True;0;False;Opaque;;Geometry;All;True;True;True;True;True;True;True;True;True;True;True;True;True;True;True;True;True;0;False;-1;False;0;False;-1;255;False;-1;255;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;False;2;15;10;25;False;0.5;True;0;0;False;-1;0;False;-1;0;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;0;0,0,0,0;VertexOffset;True;False;Cylindrical;False;Relative;0;;-1;-1;-1;-1;0;False;0;0;False;-1;-1;0;False;-1;0;0;0;False;0.1;False;-1;0;False;-1;16;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0;False;9;FLOAT;0;False;10;FLOAT;0;False;13;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
WireConnection;17;0;5;2
WireConnection;8;0;17;0
WireConnection;8;1;7;0
WireConnection;18;0;10;0
WireConnection;12;1;2;0
WireConnection;12;2;8;0
WireConnection;9;0;12;0
WireConnection;9;1;18;0
WireConnection;19;0;9;0
=======
33;94;1440;786;1789.462;654.3715;1.558619;True;False
Node;AmplifyShaderEditor.RangedFloatNode;7;-1297.967,-1.385113;Float;False;Property;_Spread;Spread;2;0;Create;True;0;0;False;0;0;0.55;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;17;-1172.566,65.7108;Float;False;Constant;_Float0;Float 0;4;0;Create;True;0;0;False;0;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;16;-1028.729,-24.68926;Float;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;19;-1019.503,65.7108;Float;False;Constant;_Float1;Float 1;4;0;Create;True;0;0;False;0;0.1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.WorldPosInputsNode;5;-1001.089,-181.3156;Float;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;18;-834.0284,22.06935;Float;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;8;-659.9354,-13.44719;Float;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;10;-946.9199,196.1944;Float;False;Property;_position;position;3;0;Create;True;0;0;False;0;0;2;1.5;2.5;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;21;-824.6764,290.1515;Float;False;Constant;_Float2;Float 2;4;0;Create;True;0;0;False;0;0.5;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;9;-497.0289,36.4528;Float;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;2;-541.0889,-199.3157;Float;False;Property;_snow;snow;0;0;Create;True;0;0;False;0;0,0,0,0;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;20;-368.0019,120.2621;Float;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;1;-518.0889,-388.3156;Float;False;Property;_Albedo;Albedo;1;0;Create;True;0;0;False;0;0,0,0,0;0.6710573,0.9254776,0.9811321,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LerpOp;12;-226.536,-10.04722;Float;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.StandardSurfaceOutputNode;0;0,0;Float;False;True;2;Float;ASEMaterialInspector;0;0;Standard;ice;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;Back;0;False;-1;0;False;-1;False;0;False;-1;0;False;-1;False;0;Opaque;0.5;True;True;0;False;Opaque;;Geometry;All;True;True;True;True;True;True;True;True;True;True;True;True;True;True;True;True;True;0;False;-1;False;0;False;-1;255;False;-1;255;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;False;2;15;10;25;False;0.5;True;0;0;False;-1;0;False;-1;0;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;0;0,0,0,0;VertexOffset;True;False;Cylindrical;False;Relative;0;;-1;-1;-1;-1;0;False;0;0;False;-1;-1;0;False;-1;0;0;0;False;0.1;False;-1;0;False;-1;16;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0;False;9;FLOAT;0;False;10;FLOAT;0;False;13;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
WireConnection;16;0;7;0
WireConnection;16;1;17;0
WireConnection;18;0;16;0
WireConnection;18;1;19;0
WireConnection;8;0;5;2
WireConnection;8;1;18;0
WireConnection;9;0;8;0
WireConnection;9;1;10;0
WireConnection;20;0;9;0
WireConnection;20;1;21;0
WireConnection;12;0;2;0
WireConnection;12;2;20;0
>>>>>>> c56c2f3b4b37ec7202ac4201fa85c0e9313126c3
WireConnection;0;0;1;0
WireConnection;0;2;19;0
ASEEND*/
<<<<<<< HEAD
//CHKSM=86C5E1BDE175E84140C5A7A837DAD764ABEC65D9
=======
//CHKSM=A4DC5F51854521A4893597104152E838307907AC
>>>>>>> c56c2f3b4b37ec7202ac4201fa85c0e9313126c3
