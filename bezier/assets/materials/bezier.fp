varying mediump vec2 var_texcoord0;

uniform lowp sampler2D tex0;
uniform lowp vec4 tint;

void main()
{
    // Pre-multiply alpha since all runtime textures already are
    lowp vec4 tint_pm = vec4(tint.xyz * tint.w, tint.w);
    gl_FragColor = texture2D(tex0, var_texcoord0.xy) * tint_pm;    
}