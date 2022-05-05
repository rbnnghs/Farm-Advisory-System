import React, { useState } from "react";
import Axios from 'axios'
// import mongoose from "mongoose";

export default function FormulateSubmit() {
    const url = ""
    const [data, setData] = useState({
        email: "",
        question: ""
    })

    // const mongoose = require('mongoose');
    // const Schema = mongoose.Schema;

    // const postSchema = new Schema({
    //     email: { type: String, required: true},
    //     question: { type: String, required: true},
    // });

    // var PostN = mongoose.model('Post',
    // postSchema);
    // module.exports = PostN;

    // const express = require('express');
    // const router = express.Router();
    // var Post = requir('../models/post')

    // router.post('/new', (req, res)=> {
    //     var post = new Post(req.body);

    //     post.save(function(err,user){
    //         if(err) console.log(err);
    //         return res.send("Success")
    //     })
    // })

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
        // const produce = JSON.stringify(data);
        // fs.writeFileSync('produced_data.json', produce)
        // console.log(produce);
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