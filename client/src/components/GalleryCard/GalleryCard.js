import React from "react";
import "./GalleryCard.css"
import {useNavigate} from "react-router-dom";

export default function GalleryCard(props) {
    const navigate = useNavigate()

    return(
        <div className="gallery-card" onClick={()=>{
            navigate("/gallery",{state:{id: props.gallery_card.id}})
        }}>
            <div className="gallery-img">
                <img src={props.gallery_card.image}/>
            </div>
            <div className="gallery-overlay">
                <h3>{props.lang==="en"?props.gallery_card.title_en:props.gallery_card.title_ge}</h3>
            </div>
        </div>
    )

}