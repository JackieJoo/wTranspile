
# module::Transpile  [![status](https://github.com/Wandalen/wTranspile/workflows/publish/badge.svg)](https://github.com/Wandalen/wTranspile/actions?query=workflow%3Apublish) [![experimental](https://img.shields.io/badge/stability-experimental-orange.svg)](https://github.com/emersion/stability-badges#experimental)

Aggregator of strategies to transpile JS code. It provides unified programmatic and CL interfaces to transpile/optimize/minimize/beautify code by one or several transpilers in series. More strategies could be added as plugins. Default options of transpilation can be written into a config file to avoid retyping. Use the module to utilize the power of open source transpilation tools in single package.

## Supports such tranpilation strategies

- Uglify
- Babel
- Prepack
- Closure

## Try out from the repository
```
git clone https://github.com/Wandalen/wTranspile
cd wTranspile
npm install
node sample/trivial/Sample.s
```

## To add to your project
```
npm add 'wtranspile@alpha'
```


## Try out
```
npm -g install wtranspile@alpha
ts .
ts .config.define debug:0 minification:0 optimization:9
ts .config.read
```

## Try out
```
npm -g install wtranspile
ts .config.define debug:0 minification:7 optimization:9
ts .config.define strategies:[ Babel, Uglify, Babel ]
ts .transpile inputPath:sample/trivial/Sample.s outputPath:temp.tmp/Sample.s
ts .config.define verbosity:3
ts .transpile inputPath:sample/Sample2.js outputPath:temp.tmp/Sample2.js debug:1
```
