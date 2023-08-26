//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 color = texture2D(gm_BaseTexture, v_vTexcoord);
    color.rgb = 1.6 - color.rgb; // Invert color
    gl_FragColor = color;
}

