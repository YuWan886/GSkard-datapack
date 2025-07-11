#version 150

// Can't moj_import in things used during startup, when resource packs don't exist.
// This is a copy of dynamicimports.glsl
layout(std140) uniform DynamicTransforms {
    mat4 ModelViewMat;
    vec4 ColorModulator;
    vec3 ModelOffset;
    mat4 TextureMat;
    float LineWidth;
};

in vec4 vertexColor;

out vec4 fragColor;

bool isLoadingScreen(vec4 color) {
    return (color.r == 239.0 / 255.0);
}

void main() {
    vec4 color = vertexColor;
    if (color.a == 0.0) {
        discard;
    }
    fragColor = color * ColorModulator;
    if (isLoadingScreen(fragColor)) {
        float progress = vertexColor.a;
        progress = clamp(progress*3-2,0,1);
        fragColor = vec4(0.2,0.2,0.2,progress);
    }
}