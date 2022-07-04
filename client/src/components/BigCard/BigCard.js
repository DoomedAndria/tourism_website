import React, {useEffect, useState} from "react";
import "./BigCard.css"
import{useLocation} from "react-router-dom";

export default function BigCard(props) {
    const location = useLocation()

    const [dt,stdt] = useState(calculateDate())

    function calculateDate(){
        let ms = new Date(location.state.start_date) - new Date()
        let days = Math.floor(ms/ (1000*60*60*24))
        let hours = Math.floor(ms%(1000*60*60*24) /(1000*60*60))
        let mins = Math.floor(ms%(1000*60*60)/(1000*60))
        let secs = Math.floor(ms%(1000*60)/(1000))
        // console.log(new Date())
        return ' '.repeat(2)+days + (props.lang==="en"?" days":" დღე") +' '.repeat(2)+ hours + (props.lang==="en"?" hours":" საათი") +
            ' '.repeat(2)+ mins + (props.lang==="en"?" minutes":" წუთი")+' '.repeat(2)+ secs + (props.lang==="en"?" seconds":" წამი")
    }

    useEffect(()=>{
        setInterval(()=>{stdt(calculateDate())},1000)
    })

    return(
        <>
            <div className="empty-space"></div>

            <div className="bigcard-container">
                <h1>{props.lang === "en" ? location.state.title_en : location.state.title_ge}</h1>
                <div>
                    <div className="bigcard-img">
                        <img src={location.state.image}></img>
                    </div>
                    <div className="bigcard-extended">
                        <p>{props.lang==="en"?location.state.extended_description_en:location.state.extended_description_ge}</p>
                    </div>
                </div>

                <div>
                    <div className="date">
                        <h1 style={{color:'#FF5403'}}>{props.lang==="en"?"time before tour starts":"ტურამდე დარჩენილია "}:{dt}</h1>
                    </div>
                </div>

                <div>
                    <div className="bigcard-description">
                        <p>{props.lang==="en"?location.state.describtion_en:location.state.describtion_ge}</p>
                    </div>
                </div>

                <div>
                    <div className="button-container">
                        <button>BOOK NOW</button>
                    </div>
                </div>
            </div>
        </>
    )
}