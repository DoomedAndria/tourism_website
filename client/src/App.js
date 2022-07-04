import React, {useEffect, useState} from "react";
import "./App.css";
import Navbar from "./components/Navbar/Navbar";
import Footer from "./components/Footer/Footer";
import Register from "./components/Register/Register";
import Login from "./components/Login/Login";
import Main from "./components/Main"
import BigCard from "./components/BigCard/BigCard"
import {BrowserRouter as Router,Route,Routes} from "react-router-dom"
import CardsByGallery from "./components/CardsByGallery/CardsByGallery";


function App() {

    const[lang,setLang] = useState("en");
    const[openLogin,setOpenLogin] = useState(false)
    const[openRegister,setOpenRegister] = useState(false)

    return (

            <div className="App">
                <Navbar setLan={(l)=>{
                      setLang(l)
                }}
                openLogin={()=>{
                    setOpenLogin(true)
                }}
                openRegister={()=>{
                    setOpenRegister(true)
                }}/>

                {openLogin && <Login close={() => {
                    setOpenLogin(false)
                }}
                lang={lang}/>}

                {openRegister && <Register close={() => {
                    setOpenRegister(false)
                }}
                lang={lang}/>}
                <Router>
                    <Routes>

                        <Route exact path="/" element={<Main lang={lang}/>}/>

                        <Route exact path="/full_card" element={<BigCard lang={lang}/>}/>

                        <Route exact path="/gallery" element={<CardsByGallery lang={lang}/>}/>

                    </Routes>
                </Router>
                <Footer lang={lang}/>

            </div>

    );
}

export default App;

