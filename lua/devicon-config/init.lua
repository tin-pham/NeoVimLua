local web_devicons = require('nvim-web-devicons')

local green = '#87af87'
local darkYellow = '#d1bd74'
local skin = '#FFEACA'
local blue = '#519aba'
local lightBlue = '#84a9ac'
local darkBlue = '#41535b'
local pink = '#cc6699'
local red = '#cb3837'
local orangeYellow = '#F0A500'
local darkOrange = '#D67D3E'
local purple = '#7A4988'

web_devicons.set_icon {
  zsh = {icon = "", color = green, name = "Zsh"},
  css = {icon = "", color = blue, name = 'css'},
  scss = {icon = "", color = pink, name = 'sass'},
  html = {icon = "", color = red, name = 'html'},
  http = {icon = "", color = green, name = 'http'},
  txt = {icon = "", color = lightBlue, name = 'txt'},
  md = {icon = "", color = darkBlue, name = 'markdown'},
  js = {icon = "", color = darkYellow, name = "javascript"},
  tsx = {icon = "ﯤ", color = blue, name = 'reacttypescript'},
  csv = {icon = "", color = green, name = "csv"},
  json = {icon = "ﬥ", color = darkYellow, name = "json"},
  handlebars = {icon = "", color = darkOrange, name = "handlebars"},
  Dockerfile = {icon = "", color = blue, name = "docker"},
  ['.dockerignore'] = {icon = "", color = darkBlue, name = "dockerignore"},
  ['yarn.lock'] = {icon = "", color = darkBlue, name = "yarnlock"},

  -- Custom extension
  ['.env'] = {icon = "", color = darkYellow, name = "dotenv"},
  ['.env.development'] = {icon = "", color = darkYellow, name = "dotenvdevelopment"},
  ['.env.production'] = {icon = "", color = darkYellow, name = "dotenvproduction"},
  ['.test.env'] = {icon = "漣", color = red, name = "dotenvtest"},
  ['config.js'] = {icon = '', color = darkYellow, name = "configjs"},
  ['test.js'] = {icon = 'ﭧ', color = orangeYellow, name = "javascripttesting"},
  ['test.ts'] = {icon = '', color = blue, name = "typescripttesting"},
  ['jest.config.js'] = {icon = 'ﭧ', color = red, name = "jestconfig"},
  ['controller.js'] = {icon = '', color = darkYellow, name = "javascriptcontroller"},
  ['controller.ts'] = {icon = '', color = blue, name = "typescriptcontroller"},
  ['service.js'] = {icon = '', color = darkYellow, name = "javascriptservice"},
  ['usecase.js'] = {icon = '', color = darkYellow, name = "javascriptusecase"},
  ['usecase.ts'] = {icon = '', color = blue, name = "typescriptusecase"},
  ['repository.js'] = {icon = '', color = darkYellow, name = "javascriptrepository"},
  ['repository.ts'] = {icon = '', color = blue, name = "typescriptrepository"},
  ['model.js'] = {icon = '', color = darkYellow, name = "javascriptmodel"},
  ['model.ts'] = {icon = '', color = blue, name = "typescriptmodel"},
  ['types.ts'] = {icon = 'ﴯ', color = blue, name = "typescripttypes"},
  ['errors.js'] = {icon = '', color = darkYellow, name = "javascripterrors"},
  ['router.js'] = {icon = '', color = darkYellow, name = "javascriptrouter"},
  ['router.ts'] = {icon = '', color = blue, name = "typescriptrouter"},
  ['handler.js'] = {icon = 'ﳅ', color = darkYellow, name = "javascripteventhandler"},
  ['constant.js'] = {icon = '', color = darkYellow, name = 'javascriptconstant'},
  ['hook.js'] = {icon = 'ﯠ', color = darkYellow, name = "javascripthook"},
  ['mongo.js'] = {icon = '', color = green, name = "javascriptmongo"},
  ['schema.js'] = {icon = '', color = green, name = "javascriptschema"},
  ['schema.ts'] = {icon = '', color = blue, name = "typescriptschema"},
  ['validator.js'] = {icon = '', color = darkYellow, name = "javascriptvalidator"},
  ['api.js'] = {icon = '', color = darkYellow, name = "javascriptapi"},
  ['client.js'] = {icon = '', color = darkYellow, name = "javascriptviews"},
  ['server.js'] = {icon = '', color = darkYellow, name = "javascriptserver"},
  ['server.ts'] = {icon = '', color = blue, name = "typescriptserver"},
  ['app.js'] = {icon = '', color = green, name = "nodejs"},
  ['app.ts'] = {icon = '', color = blue, name = "nodets"},
  ['webpack.config.js'] = {icon = 'ﰩ', color = lightBlue, name = "webpack"},
  ['styles.jsx'] = {icon = '💅', color = pink, name = 'stylescomponent'},
  ['store.js'] = {icon = 'ﰆ', color = purple, name = 'redux'},
  ['firebase.utils.js'] = {icon = '', color = darkYellow, name = 'firebase'},
  ['tsconfig.json'] = {icon = 'ﬥ', color = blue, name = 'tsconfig'}
}
