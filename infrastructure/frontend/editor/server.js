var express = require('express')
var bodyParser = require('body-parser')
var fs = require('fs')

var app = express()

app.use(bodyParser.json())
app.use(express.static('public'))
app.post('/metadata/:pageId', function (req, res) {
    fs.writeFile(`/metadata/${req.params.pageId}.json`, JSON.stringify(req.body), function (error) {
        if (error) {
            res.send(500)
        } else {
            res.send(200)
        }
    })
})
app.get('/metadata', function (req, res) {
    let pages = []
    if (!fs.existsSync('/metadata')) {
        fs.mkdirSync('/metadata')
    }
    let err, files = fs.readdirSync('/metadata')
    if (!err) {
        for (let f of files) {
            pages.push(JSON.parse(fs.readFileSync(`/metadata/${f}`, 'utf-8')))
        }
    }
    res.send(pages)
})
app.listen(3000)