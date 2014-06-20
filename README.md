glsl-read-float
===============
Workaround for reading floating point values back from the GPU using GLSL.

## Example

```javascript
```

## Install

```
npm install glsl-read-float
```

## API

### GLSL

```glsl
#pragma glslify: packFloat = require(glsl-read-float)
```

#### `vec4 packed = packFloat(float f)`
Packs a floating point number into an 8bit RGBA color vector, which can be written to the display using `gl_FragColor`, for example.

* `f` is a `float` number

**Returns** A packed `vec4` encoding the value of `f`

### JavaScript

```javascript
var unpackFloat = require("glsl-read-float")
```

#### `var f = readFloat(x, y, z, w)`
Unpacks a packed `vec4` into a single floating point value.

* `x` is the first component of the packed float
* `y` is the second component of the packed float
* `z` is the third component of the packed float
* `w` is the fourth component of the packed float

**Returns** A number which is the unpacked value of the floating point input.

## Credits

This routine was originally written by @ultraist.  You can find his blog here: http://ultraist.hatenablog.com/

The post describing this code was published here:

[WebGL GPGPUでfloatの結果を得る](http://ultraist.hatenablog.com/entry/20110608/1307539319)

The npm entry and glslify packaging are currently maintained by Mikola Lysenko.