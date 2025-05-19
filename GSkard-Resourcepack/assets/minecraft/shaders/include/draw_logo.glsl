bool drawLine(vec2 uv, vec2 p0, vec2 p1, float thickness, float progress) {
    vec2 dir = p1 - p0;
    float len = length(dir);
    if (len == 0.0) return false;

    dir /= len;
    vec2 perp = vec2(-dir.y, dir.x);

    vec2 toPoint = uv - p0;
    float distAlong = dot(toPoint, dir);
    float distPerp = dot(toPoint, perp);

    if (abs(distPerp) > thickness) return false;

    float maxLength = len * clamp(progress, 0.0, 1.0);
    if (distAlong < -thickness || distAlong > maxLength + thickness) return false;

    if (distAlong < 0.0) {
        return length(uv - p0) <= thickness;
    }
    if (distAlong > maxLength) {
        vec2 endpoint = p0 + dir * maxLength;
        return length(uv - endpoint) <= thickness;
    }

    return true;
}

bool drawBoxedLine(vec2 uv, vec2 p0, vec2 p1, float thickness, float progress, vec2 resolution, float scale) {
    float aspect = resolution.x / resolution.y;

    vec2 boxUV = uv;

    if (aspect > 1.0) {
        float boxWidth = resolution.y / resolution.x;
        float margin = (1.0 - boxWidth) / 2.0;
        boxUV.x = (uv.x - margin) / boxWidth;
    } else {
        float boxHeight = resolution.x / resolution.y;
        float margin = (1.0 - boxHeight) / 2.0;
        boxUV.y = (uv.y - margin) / boxHeight;
    }

    if (any(lessThan(boxUV, vec2(0.0))) || any(greaterThan(boxUV, vec2(1.0)))) {
        return false;
    }

    boxUV = (boxUV - 0.5) / scale + 0.5;

    if (any(lessThan(boxUV, vec2(0.0))) || any(greaterThan(boxUV, vec2(1.0)))) {
        return false;
    }

    return drawLine(boxUV, p0, p1, thickness / scale, progress);
}

bool drawBoxedDot(vec2 uv, vec2 p0, float thickness, float progress, vec2 resolution) {
    float aspect = resolution.x / resolution.y;

    vec2 boxUV = uv;

    if (aspect > 1.0) {
        float boxWidth = resolution.y / resolution.x;
        float margin = (1.0 - boxWidth) / 2.0;
        boxUV.x = (uv.x - margin) / boxWidth;
    } else {
        float boxHeight = resolution.x / resolution.y;
        float margin = (1.0 - boxHeight) / 2.0;
        boxUV.y = (uv.y - margin) / boxHeight;
    }

    if (any(lessThan(boxUV, vec2(0.0))) || any(greaterThan(boxUV, vec2(1.0)))) {
        return false;
    }

    return distance(boxUV, p0) <= thickness * progress;
}

bool drawBoxedDiamond(vec2 uv, vec2 center, float size, float thickness, float progress, vec2 resolution, float scale) {
    float aspect = resolution.x / resolution.y;

    vec2 boxUV = uv;

    if (aspect > 1.0) {
        float boxWidth = resolution.y / resolution.x;
        float margin = (1.0 - boxWidth) / 2.0;
        boxUV.x = (uv.x - margin) / boxWidth;
    } else {
        float boxHeight = resolution.x / resolution.y;
        float margin = (1.0 - boxHeight) / 2.0;
        boxUV.y = (uv.y - margin) / boxHeight;
    }

    if (any(lessThan(boxUV, vec2(0.0))) || any(greaterThan(boxUV, vec2(1.0)))) {
        return false;
    }

    boxUV = (boxUV - 0.5) / scale + 0.5;

    if (any(lessThan(boxUV, vec2(0.0))) || any(greaterThan(boxUV, vec2(1.0)))) {
        return false;
    }

    // Transform to diamond space (rotate 45 degrees by using Manhattan distance)
    vec2 toPoint = boxUV - center;
    float diamondDist = abs(toPoint.x) + abs(toPoint.y); // Manhattan distance for diamond
    float scaledSize = size * clamp(progress, 0.0, 1.0) / scale;
    float scaledThickness = thickness / scale;

    // Check if within diamond bounds (with thickness)
    return diamondDist <= scaledSize + scaledThickness;
}

bool drawMain(vec2 uv, vec2 resolution, float progress) {
    float thickness = 0.01;
    float scale = progress / 4.0 + 0.75;

    float cardWidth = 0.4;
    float cardHeight = 0.56;
    vec2 center = vec2(0.5, 0.5);

    vec2 topLeft = center + vec2(-cardWidth / 2.0, cardHeight / 2.0);
    vec2 topRight = center + vec2(cardWidth / 2.0, cardHeight / 2.0);
    vec2 bottomLeft = center + vec2(-cardWidth / 2.0, -cardHeight / 2.0);
    vec2 bottomRight = center + vec2(cardWidth / 2.0, -cardHeight / 2.0);

    if (drawBoxedLine(uv, topLeft, topRight, thickness, progress, resolution, scale)) return true;
    if (drawBoxedLine(uv, bottomLeft, bottomRight, thickness, progress, resolution, scale)) return true;
    if (drawBoxedLine(uv, topLeft, bottomLeft, thickness, progress, resolution, scale)) return true;
    if (drawBoxedLine(uv, topRight, bottomRight, thickness, progress, resolution, scale)) return true;

    float cornerRadius = thickness * 1.5;
    if (drawBoxedDot(uv, topLeft, cornerRadius, progress, resolution)) return true;
    if (drawBoxedDot(uv, topRight, cornerRadius, progress, resolution)) return true;
    if (drawBoxedDot(uv, bottomLeft, cornerRadius, progress, resolution)) return true;
    if (drawBoxedDot(uv, bottomRight, cornerRadius, progress, resolution)) return true;

    // Draw central diamond
    float diamondSize = 0.05; // Size of the diamond (adjust as needed)
    if (drawBoxedDiamond(uv, center, diamondSize, thickness, progress, resolution, scale)) return true;

    return false;
}