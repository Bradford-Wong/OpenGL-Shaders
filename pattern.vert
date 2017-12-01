#version 330 compatibility

uniform float	uTime;		// "Time", from Animate( )
uniform float	uS0;
uniform float	uT0;

uniform float	uA;
uniform float	uB;
uniform float	uC;
uniform float	uD;
uniform float	uSinT;
uniform float	uCosT;
uniform float	uTanT;
uniform bool	uDistort;
uniform float	uX;
uniform float	uY;
out vec2  	vST;		// texture coords

const float PI = 	3.14159265;
const float AMP = 	0.2;		// amplitude
const float W = 	2.;		// frequency

void
main( )
{ 

	vST = gl_MultiTexCoord0.st;
	vec3 vert = gl_Vertex.xyz;
	//if(vert.x > .9)
	//if(uDistort){
		//vert.x = vert.x +  uSinT * .5;
		//vert.y = vert.y + uSinT * .6;
		//vert.z = vert.z - uTanT*.4;
	//}
		if(vert.x > .9)
		vert.x = vert.x +  uSinT * .5;
		if(vert.x < -.9)
		vert.x = vert.x -  uSinT * .5;
		if(vert.y > .9)
		vert.y = vert.y +  uSinT * .5;
		if(vert.y < -.9)
		vert.y = vert.y -  uSinT * .5;
		if(vert.z > .9)
		vert.z = vert.z +  uSinT * .5;
		if(vert.z < -.9)
		vert.z = vert.z -  uSinT * .5;
		/*
		if(vert.y > .9 || vert.y < .1)
		vert.y = vert.y + uSinT * .6;
		if(vert.z < .1)
		vert.z = vert.z - uSinT*.4;*/
	//vert.x = 1;
	//vert.y = 1;
	//vert.z = 1;
	gl_Position = gl_ModelViewProjectionMatrix * vec4( vert, 1. );

}
