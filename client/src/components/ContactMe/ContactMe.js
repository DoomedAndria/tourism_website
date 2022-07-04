import React from "react";
import "./ContactMe.css"
import deco from "../../media/images/contactme_deco.png"
import emailjs from "emailjs-com"

export default function ContactMe(props) {

    function sendEmail(e){
        e.preventDefault();

        emailjs.sendForm('service_xj5ycr9', 'template_pdbqfoi', e.target, 'U4OGZR5B3UHu2rHl9')
            .then((result) => {
                console.log(result.text);
            }, (error) => {
                console.log(error.text);
            });
        e.target.reset()
    }

    return(
        <div id="contactme" className="contact-me">
            <h1>{props.lang === "en"?"Contact Me":"დამიკავშირდი"}</h1>
            <div className="contact-me-container">
                <div className="image">
                    <img src={deco} alt="decoration"/>
                </div>

                    <div className="form">
                        <form onSubmit={sendEmail}>
                            <input name='name'type="text" placeholder={props.lang === "en"?"name":"სახელი"}/>
                            <input name='email' type="text" placeholder="email"/>
                            <input name='phone_number'type="text" placeholder={props.lang === "en"?"phone number":"ტელეფონის ნომერი"}/>
                            <input name='subject'type="text" placeholder={props.lang === "en"?"subject":"თემა"}/>
                            <textarea name='message' id="message"  placeholder={props.lang === "en"?"message":"გზავნილი"}/>
                            {/*<button onClick={sendEmail}>{props.lang === "en"?"Send":"გაგზავნა"}</button>*/}
                            <input className="button" type="submit" value={props.lang === "en"?"Send":"გაგზავნა"}/>
                        </form>
                    </div>

            </div>

        </div>
    )
}