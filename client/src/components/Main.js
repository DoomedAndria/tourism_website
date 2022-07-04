import React from 'react';
import Home from "../components/Home/Home";
import ContactMe from "../components/ContactMe/ContactMe";
import Catalog from "../components/Catalog/Catalog";
import Gallery from "./Gallery/Gallery";

export default function Main(props) {

    return(
        <>
            <Home/>
            <Gallery lang={props.lang}/>
            <Catalog lang={props.lang}/>
            <ContactMe lang={props.lang}/>
        </>
    )
}