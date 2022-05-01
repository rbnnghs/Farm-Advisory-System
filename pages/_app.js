import '../styles/globals.css'
import styles from '../styles/Home.module.css'

import React from 'react'
import useSWR from 'swr'

import Navbar from '../components/Navbar'

import DataContext from '../DataContext'

import HeroSection from '../components/HeroSection'

const fetcher = (url) => fetch(url).then((res) => res.json());

function MyApp({Component, pageProps}) {
  const {data, error} = useSWR('/api/hello', fetcher)

  return (
    <>
    {/* <div className={styles.windowFull}> */}
  <Navbar/>
  {/* <div className={styles.windowFrame}> */}
    {/* <HeroSection/>
    <div className={styles.windowFrameLeft}> */}
  <DataContext.Provider value={data}>
      <Component {...pageProps} />
    </DataContext.Provider>
    {/* </div> */}
    {/* </div>
    </div> */}
    </>
    
  )
} 

export default MyApp