local web_devicons = require('nvim-web-devicons')

local green = '#87af87'
local darkYellow = '#d1bd74'
local skin = '#FFEACA'
local blue = '#01579b'
local lightBlue = '#84a9ac'
local pink = '#cc6699'
local red = '#cb3837'
local orangeYellow = '#F0A500'
local darkOrange = '#D67D3E'

web_devicons.set_icon {
  zsh = {icon = "", color = green, name = "Zsh"},
  css = {icon = "", color = blue, name = 'css'},
  scss = {icon = "", color = pink, name = 'sass'},
  html = {icon = "", color = red, name = 'html'},
  http = {icon = "", color = green, name = 'http'},
  txt = {icon = "", color = lightBlue, name = 'txt'},
  md = {icon = "", color = lightBlue, name = 'markdown'},
  js = {icon = "", color = darkYellow, name = "javascript"},
  csv = {icon = "", color = green, name = "csv"},
  handlebars = {icon = "", color = darkOrange, name = "handlebars"},
  Dockerfile = {icon = "", color = blue, name = "docker"},
  ['.dockerignore'] = {icon = "", color = lightBlue, name = "dockerignore"},

  -- Custom extension
  ['.env'] = {icon = "漣", color = lightBlue, name = "dotenv"},
  ['.test.env'] = {icon = "漣", color = red, name = "dotenvtest"},
  ['config.js'] = {icon = '', color = darkYellow, name = "configjs"},
  ['test.js'] = {icon = 'ﭧ', color = orangeYellow, name = "javascripttesting"},
  ['jest.config.js'] = {icon = 'ﭧ', color = red, name = "jestconfig"},
  ['controller.js'] = {icon = '', color = darkYellow, name = "javascriptcontroller"},
  ['service.js'] = {icon = '', color = darkYellow, name = "javascriptservice"},
  ['model.js'] = {icon = '', color = darkYellow, name = "javascriptmodel"},
  ['router.js'] = {icon = '', color = darkYellow, name = "javascriptrouter"},
  ['mongo.js'] = {icon = '', color = green, name = "javascriptmongo"},
  ['validator.js'] = {icon = '', color = darkYellow, name = "javascriptvalidator"},
  ['api.js'] = {icon = '', color = darkYellow, name = "javascriptapi"},
  ['client.js'] = {icon = '', color = darkYellow, name = "javascriptviews"},
  ['server.js'] = {icon = '', color = darkYellow, name = "javascriptserver"},
  ['app.js'] = {icon = '', color = green, name = "nodejs"},
  ['webpack.config.js'] = {icon = 'ﰩ', color = lightBlue, name = "webpack"}

}
