import 'bootstrap/dist/css/bootstrap.min.css';
import '../styles/globals.css'
import styles from '../styles/Home.module.css'


import React from 'react'
import useSWR from 'swr'

import Navbar from '../components/Navbar'
import Tests from '../pages/tests'
 
import DataContext from '../DataContext'
import Modal from '../components/Modal'
import Head from 'next/head';

// import HeroSection from '../components/HeroSection'
// import { useEffect } from 'react'

const fetcher = (url) => fetch(url).then((res) => res.json());

function MyApp({Component, pageProps}) {
  const {data, error} = useSWR('/api/hello', fetcher)

  return (
    <> 
    <Head>
      <link rel='FAS' href='/fas.ico'/>
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