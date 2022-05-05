import React, { useState } from "react";
import Axios from 'axios'

export default function FormulateSubmit() {
    const url = "https://farm-advisory-system.vercel.app/api/data"
    const [data, setData] = useState({
        email: "",
        question: ""
    })

    function submission(e) {
        e.preventDefault();
        Axios.post(url, {
            email: data.email,
            question: data.question
        })
        .then(res=>{
            console.log(res.data)
        })
    }
        
    function formulate(e) {
        const submittedData = { ...data }
        submittedData[e.target.id] = e.target.value
        setData(submittedData)
        const newHead = JSON.stringify(data);
        console.log(newHead);
        console.log(submittedData)
    }

    return (
        <div>
            <form onSubmit={(e)=> submission(e)}>
                <input onChange={(e)=> formulate(e)}
                id='email'
                value={data.email}
                placeholder="Email Address"
                type='text'
                />
                <input onChange={(e)=> formulate(e)}
                id='question'
                value={data.question}
                placeholder="What is your Question?"
                type='text'
                />
                <button>Submit</button>
            </form>
        </div>
    )
}