import React, {useState,useEffect} from 'react'
import "./Gallery.css"
import GalleryCard from "../GalleryCard/GalleryCard";
import Axios from "axios";


export default function Gallery(props) {
    const[gallery,set_gallery] = useState([])

    useEffect(()=>{
        Axios.get('http://localhost:3001/api/gallery').then((response)=>{
            set_gallery(response.data)
        })
    },[])

    return(
        <div id="gallery" className="gallery">
            <h1>{props.lang==="en"?"Gallery":"გალერეა"}</h1>
            <div className="gallery-cards">
                {gallery.map((obj)=>{
                    return <GalleryCard lang={props.lang} gallery_card={obj}/>
                })}
            </div>
        </div>
    )
}