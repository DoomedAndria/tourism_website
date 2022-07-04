import React from "react";
import "./Login.css"

export default function Login(props) {
    return(
        <div className="login-overlay">
            <div className="form-container">
                <button className="close-button" onClick={()=>{props.close()}} > X </button>
                <form action="">

                    <h2>{props.lang==="en"?"login":"ავტორიზაცია"}</h2>

                    <input type="email" className="box" placeholder={props.lang==="en"?"enter your email":"შეიყვანეთ თქვენი email"}/>
                    <input type="password" className="box" placeholder={props.lang==="en"?"enter your password":"შეიყვანეთ თქვენი პაროლი"}/>
                    <button>{props.lang==="en"?"Login now":"შესვლა"}</button>
                    <p>{props.lang==="en"?"don't have and account?":"არ გაქვს ანგარიში?"} <a href="#">{props.lang==="en"?"register now":"დარეგისტრირდი ახლა"}</a></p>
                </form>
            </div>
        </div>
    )
}