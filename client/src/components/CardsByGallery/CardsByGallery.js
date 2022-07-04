import React, {useEffect, useState} from 'react'
import "../Catalog/Catalog.css"
import Card from "../Card/Card";
import {useLocation} from "react-router-dom";
import Axios from "axios";

export default function CardsByGallery(props) {
    const[cards,setCards] = useState([])
    const location = useLocation()

    function isValid(card){
        return card.galery_id===location.state.id
    }

    useEffect(()=>{
        Axios.get('http://localhost:3001/api/cards').then((response)=>{
            setCards(response.data.filter(isValid))
        })
    },[])

    return(
        <div>
            <div id="catalog" className="title">
            </div>
            <div className="grid">
                {cards.map((card)=>{
                    return <Card lang={props.lang} data={card}/>

                })}
            </div>
        </div>


    )
}