import React, {useEffect, useState} from 'react'
import "./Catalog.css"
import Card from "../Card/Card";
import Axios from "axios";

export default function Catalog(props) {
    const[cards,setCards] = useState([])
    const [sort,setSort] = useState("name")

    function name_comparator(a,b){
        if(a.title_en<b.title_en)
            return -1
        else
            return 1
    }

    function price_comparator(a,b){
        return a.price - b.price
    }

    function srt(){
        if(sort==="name"){
            setCards(cards.sort(name_comparator))
        }
        else
            setCards(cards.sort(price_comparator))
    }
    useEffect(()=>{
        Axios.get('http://localhost:3001/api/cards').then((response)=>{
            setCards(response.data)

        })
    },[])
    return(
        <div id="catalog">
            <select onChange={(e)=>{
                setSort(e.target.value)
                srt()
            }}>
                <option value="name" >{props.lang==="en"?"sort by price":"დალაგება ფასის მიხედვით"}</option>
                <option value="price" >{props.lang==="en"?"sort by name":"დალაგება სახელის მიხედვით"}</option>
            </select>
            <div  className="title">
                <h1>{props.lang==="en"?"Catalog":"კატალოგი"}</h1>
            </div>
            <div className="grid">
                {
                    cards.map((card)=>{
                    return <Card lang={props.lang} data={card}/>
                })}
            </div>
        </div>


    )
}