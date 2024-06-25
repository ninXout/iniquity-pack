uniform vec2 center; 
uniform vec2 resolution;
uniform float time;
uniform vec2 mouse; 
uniform float pulse1;
uniform float pulse2;
uniform float pulse3; 


void main(){
    vec2 uv =  (2.0 * vec2(gl_FragCoord) - resolution.xy) / min(resolution.x, resolution.y);

    for(float i = 1.0; i < 10.0; i++){
        uv.x += 0.6 / i * cos(i * 2.5* uv.y + time);
        uv.y += 0.6 / i * cos(i * 1.5 * uv.x + time);
    }
    
    gl_FragColor = vec4(vec3(0.1)/abs(sin(time-uv.y-uv.x)),1.0);
}