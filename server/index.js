const express = require('express')
const bodyparser = require('body-parser')
const mysql = require('mysql')
const cors = require('cors')
const app = express()


const db = mysql.createPool({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'final_project'
})

app.use(cors())
app.use(express.json())
app.use(bodyparser.urlencoded({extended:true}))


//insert user into database
app.post('/api/users/insert',(req,res)=>{
    const name = req.body.name
    const surname = req.body.surname
    const phone_number = req.body.phone_number
    const email = req.body.email
    const password = req.body.password

    const sqlInsert = "INSERT INTO user (name,surname,phone_number,email,password) VALUES (?,?,?,?,?)"
    db.query(sqlInsert,[name,surname,phone_number,email,password],(err,result)=>{
        console.log(result)
    })
})

//fetching card information
app.get('/api/cards',(req,res)=>{
    const sqlFetch = "SELECT * FROM card"
    db.query(sqlFetch,(err,result)=>{
        res.send(result)
    })
})

// fetching gallery information
app.get('/api/gallery',(req,res)=>{
    const sqlFetch = "SELECT * FROM galery"
    db.query(sqlFetch,(err,result)=>{
        res.send(result)
    })
})

app.get('/',(req,res)=>{
    res.send('hello')
})

app.listen(3001,()=>{
    console.log("hello")
})