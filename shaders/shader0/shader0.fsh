varying vec2 v_vTexcoord;
varying vec4 v_vColour;
varying vec2 v_vScreenPos;


uniform vec4 u_fLightPositionRadius;        // x=lightx, y=lighty, z=light radius, w=unused
void main()
{
    // Work out vector from room location to the light
    vec2 vect = v_vScreenPos.xy-u_fLightPositionRadius.xy;

    // work out the length of this vector
    float dist = sqrt(vect.x*vect.x + vect.y*vect.y);

    // if in range use the shadow texture, if not it's black.
    if( dist < u_fLightPositionRadius.z ){
		float falloff = dist/u_fLightPositionRadius.z;
        gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
		gl_FragColor = mix( gl_FragColor, vec4(0.0, 0.0, 0.0, 0.7), falloff);
    }else{
        gl_FragColor = vec4(0.0, 0.0, 0.0, 0.7);
    }
	
}
