import React, {useState} from "react";
import "./Register.css"
import Axios from 'axios'


export default function Register(props) {

    const[name,set_name] = useState('')
    const[surname,set_surname] = useState('')
    const[phone_number,set_phone_number] = useState('')
    const[email,set_email] = useState('')
    const[password,set_password] = useState('')

    const submit = ()=>{
        Axios.post('http://localhost:3001/api/users/insert',{
            name:name,
            surname:surname,
            phone_number:phone_number,
            email:email,
            password:password
        }).then(()=>{
            alert('succesful insertion')
        })
    }
    return(
        <div className="register-overlay">
            <div className="form-container">
                <button className="close-button" onClick={()=>{props.close()}} > X </button>
                <form action="">

                    <h2>{props.lang==="en"?"register":"რეგისტრაცია"}</h2>

                    <input onChange={(e)=>{set_name(e.target.value)}} type="text" placeholder={props.lang==="en"?"name":"სახელი"}/>

                    <input onChange={(e)=>{set_surname(e.target.value)}} type="text" placeholder={props.lang==="en"?"surname":"გვარი"}/>

                    <input onChange={(e)=>{set_phone_number(e.target.value)}} type="number" placeholder={props.lang==="en"?"phone number":"ტელეფონის ნომერი"}/>

                    <input onChange={(e)=>{set_email(e.target.value)}} type="email"  placeholder="email"/>

                    <input onChange={(e)=>{set_password(e.target.value)}} type="password"  placeholder={props.lang==="en"?"password":"პაროლი"}/>

                    <input type="password"  placeholder={props.lang==="en"?"repeat password":"გაიმეორე პაროლი"}/>

                    <button onClick={submit}>{props.lang==="en"?"Register now":"რეგისტრაცია"}</button>

                    <p>{props.lang==="en"?"already have an account?":"უკვე გაქვთ ანგარიში?"} <a href="#">{props.lang==="en"?"login now":"გაიარე ავტორიზაცია"}</a></p>
                </form>
            </div>
        </div>
    )
}