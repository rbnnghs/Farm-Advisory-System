import '../styles/globals.css'
import styles from '../styles/Home.module.css'

import React from 'react'
import useSWR from 'swr'

import Navbar from '../components/Navbar'
import Tests from '../pages/tests'
 
import DataContext from '../DataContext'

// import HeroSection from '../components/HeroSection'
// import { useEffect } from 'react'

const fetcher = (url) => fetch(url).then((res) => res.json());

function MyApp({Component, pageProps}) {
  const {data, error} = useSWR('/api/hello', fetcher)

  return (
    <> 
    <Navbar/>
  <DataContext.Provider value={data}>
      <Component {...pageProps} />
    </DataContext.Provider>
    </>
    
  )
} 

export default MyApp