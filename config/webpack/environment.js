const { environment } = require('@rails/webpacker')
const svelte = require('./loaders/svelte')

environment.plugins.delete('CaseSensitivePaths')
environment.loaders.prepend('svelte', svelte)

module.exports = environment
