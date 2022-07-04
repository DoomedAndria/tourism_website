import React from "react";
import "./Card.css"
import { useNavigate } from 'react-router-dom';

export default function Card(props) {
    const navigate = useNavigate();

    return(
        <div className="card-container">
            <h2>{props.lang==="en"?props.data.title_en:props.data.title_ge}</h2>
            <div className="img">
                <img src={props.data.image}></img>
            </div>
            <div className="description">
                <p>{props.lang==="en"?props.data.describtion_en:props.data.describtion_ge}</p>
            </div>

            <div className="buy">
                <h3>{props.data.price}₾</h3>
                <button onClick={()=>{
                    navigate("/full_card", {state:{
                            extended_description_en : props.data.extended_description_en,
                            extended_description_ge : props.data.extended_description_ge,
                            describtion_en : props.data.describtion_en,
                            describtion_ge : props.data.describtion_ge,
                            image:props.data.image,
                            title_en:props.data.title_en,
                            title_ge:props.data.title_ge,
                            start_date:props.data.start_date
                        }})
                }}>Book now</button>
            </div>
        </div>
    )
}