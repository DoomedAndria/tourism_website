import React, { useState } from "react";
import "./Navbar.css";
import logo from "../../media/images/logo.png";
import {Link} from 'react-scroll';
import {useNavigate} from "react-router-dom";

export default function Navbar (props){
    const [opened,setOpened] = useState(false);
    const [lang,setLang] = useState("en");
    return(
        <div>
            <nav>
                <div className={!opened?'hamburger is-active':'hamburger'}
                onClick={()=> setOpened(!opened)}>
                    <span></span>
                    <span></span>
                    <span></span>
                </div>

                <img className="logo" src={logo}></img>

                <ul style={{left: `${!opened ? '0': '-100%'}`}}>
                    <li><a href="/">{lang==="en"?"Home":"მთავარი"}</a></li>
                    <li><Link className="a" to="gallery" spy={true} smooth={true} offset={-80} duration={500} delay={100} >{lang==="en"?"gallery":"გალერეა"}</Link></li>
                    <li><Link className="a" to="catalog" spy={true} smooth={true} offset={-80} duration={500} delay={100} >{lang==="en"?"catalog":"კატალოგი"}</Link></li>
                    <li><Link className="a" to="contactme" spy={true} smooth={true} offset={-80} duration={500} delay={100} >{lang==="en"?"contact me":"დამიკავშირდი"}</Link></li>
                    <li><select onChange={(e)=>{
                        setLang(e.target.value)
                        props.setLan(e.target.value)
                    }}>
                        <option value="en">english</option>
                        <option value="ge">georgian</option>
                    </select></li>
                    <button onClick={props.openLogin} className="signin">{lang==="en"?"Sign in":"შესვლა"}</button>
                    <button onClick={props.openRegister} className="register">{lang==="en"?"Register":"რეგისტრაცია"}</button>
                </ul>
            </nav>

        </div>
    )
}
