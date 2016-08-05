'use strict'

const koa = require('koa')
const pkg = require('./package.json')

const app = koa()

app.use(function * (next) {
  if (this.path === '/healthcheck') {
    return this.staus = 200
  }
  if (this.path === '_exit') {
    console.error('will be exit!')
    process.exit(0)
  }
  yield next
})

app.use(function * (next) {
  this.body = 'hello ranche foo !'
})

app.listen(8008)

console.info(`${pkg.name}@${pkg.version} is listening 8080!`)
