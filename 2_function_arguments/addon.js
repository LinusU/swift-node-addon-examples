var addon = require('./.build/release/FunctionArguments.node')

console.log('This should be eight:', addon.add(3, 5))
