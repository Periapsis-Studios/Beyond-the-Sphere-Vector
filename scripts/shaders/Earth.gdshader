shader_type spatial;

uniform sampler2D tex_day;
uniform sampler2D tex_night;
uniform sampler2D tex_overlay;
uniform vec3 light_dir;
uniform float end0;
uniform float end1;
varying vec3 vert;

void vertex() {
	vert = VERTEX;
}

void fragment() {
    // Calculate the position of the vertex on the surface of the sphere.
    vec3 pos = normalize(vert);

    // Calculate the dot product between the surface normal and the light direction.
    // This will be used to determine how much light is hitting the surface.
    float light = dot(pos, light_dir);

    ALBEDO = texture(tex_day, UV).rgb + texture(tex_overlay, UV).rgb;
    
    // Calculate the fade factor using the smoothstep() function.
    // This will be used to fade between the day and night textures.
    float fade = smoothstep(end0, end1, light);

    // Use the fade factor to blend between the day and night textures.
    ALBEDO = mix(ALBEDO, texture(tex_night, UV).xyz, fade);
}