express = require('express')
app = express()
bodyParser = require('body-parser')
routes = require('./routes')

app.use(bodyParser.json())
app.use(bodyParser.urlencoded({ extended: true }))
app.use(express.static('./public'))
app.use(require('./app/middlewares/current_user'))
routes(app)
models = require('./app/models/index')

app.listen 3000, ->
  console.log "Express running on port #{3000}"