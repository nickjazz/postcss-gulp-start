autoprefixer      = require 'autoprefixer'
pFor              = require 'postcss-for'
pMath             = require 'postcss-math'
pNested           = require 'postcss-nested'
pImport           = require 'postcss-import'
pVars             = require 'postcss-simple-vars'
colorFunction     = require("postcss-color-function")
csswring          = require 'csswring'

processors = [
  autoprefixer({browsers: ['> 5%']}),
  pFor,
  pNested,
  csswring,
  pVars,
  pImport,
  pMath,
  colorFunction
]

module.exports = processors
