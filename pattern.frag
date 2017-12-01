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
in vec2  	vST;		// texture coords

void
main( )
{
	vec3 myColor = vec3(1, 0, 0);
	/*
	if(uA-.5 <= vST.s && vST.s <= uA + .5 && uB - .5 <= vST.t && vST.t <= uB + .5){
		myColor = vec3(0., 0., 1.);
	}*/
	/*
	if( uTime > 0.5 )
	{
		myColor = vec3(0, 1, 1);
	}else{
		myColor = vec3(.5, .5, 0);
	}*/

	if(vST.s > uCosT && vST.t > uTime){
		myColor = vec3(0, 0., 1.);
	}else{
		myColor = vec3(1 - uTime, uTime, 0);
	}

	gl_FragColor = vec4( myColor,  1. );
}