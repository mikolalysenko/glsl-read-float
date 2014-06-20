highp vec4 nvjs_encode_float(highp float v) {
  highp vec4 c = vec4(0.0, 0.0, 0.0, 0.0);
  if (v < 0.0) {
    c[0] += 64.0;
    v = -v;
  }
  highp float f = 0.0;
  highp float e = ceil(log2(v));
  highp float m = v * exp2(-e);
  if (e < 0.0) {
    e = -e;
    c[0] += 128.0;
  }
  c[0] += e;
  m *= 255.0;
  f = floor(m);
  c[1] = f;
  m  -= f;
  m *= 255.0;
  f = floor(m);
  c[2] = f;
  m  -= f;
  m *= 255.0;
  c[3] = floor(m);
  return c * 0.003921569;
}

#pragma glslify: export(nvjs_encode_float)