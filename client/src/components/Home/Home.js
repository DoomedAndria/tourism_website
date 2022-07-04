import React from 'react';
import vid from "../../media/videos/vid-2.mp4";
import "./Home.css";
import logo from "../../media/images/logo.png";

export default function Home() {


    return(
        <>
            <div className="home">
                {/*<div className="content">*/}
                {/*    <img src={logo}></img>*/}
                {/*</div>*/}

                <div><video src={vid} id="video-slider" loop autoPlay muted></video></div>
            </div>
        </>

    )
}
