vec4 nvjs_encode_float(float v) {
  vec4 c = vec4(0.0, 0.0, 0.0, 0.0);
  if (v < 0.0) {
    c[0] += 64.0;
    v = -v;
  }
  float f = 0.0;
  float e = ceil(log2(v));
  float m = v * exp2(-e);
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
  return c * 3.921569E-03;
}

#pragma glslify: export(nvjs_encode_float)