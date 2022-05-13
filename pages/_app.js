import 'bootstrap/dist/css/bootstrap.min.css';
import '../styles/globals.css'
import styles from '../styles/Home.module.css'


import React from 'react'
import useSWR from 'swr'

import Navbar from '../components/Navbar'
 
import DataContext from '../DataContext'
import Modal from '../components/Modal'
import Head from 'next/head';

const fetcher = (url) => fetch(url).then((res) => res.json());

function MyApp({Component, pageProps}) {
  const {data, error} = useSWR('/api/hello', fetcher)

  return (
    <> 
    <Head>
      <title>FAS 🧑‍🌾 - Improve your yield!</title>
      <link rel='apple-touch-icon' sizes='128x128' href='fas.png'/>
      <link rel='icon' sizes='192x192' href='fas.png'/>
    </Head>
    <Navbar/>
    <Modal/>
  <DataContext.Provider value={data}>
      <Component {...pageProps} />
    </DataContext.Provider>
    </>
    
  )
} 

export default MyApp