import '../styles/globals.css'
import styles from '../styles/Home.module.css'

import React from 'react'
import useSWR from 'swr'

import Navbar from '../components/Navbar'

import DataContext from '../DataContext'

const fetcher = (url) => fetch(url).then((res) => res.json());

function MyApp({Component, pageProps}) {
  const {data, error} = useSWR('/api/hello', fetcher)

  return (
    <>
  <Navbar/>
  <div className={styles.windowFrame}>
    <div className={styles.windowFrameLower}>
  <DataContext.Provider value={data}>
      <Component {...pageProps} />
    </DataContext.Provider>
    </div>
    </div>
    </>
    
  )
} 

export default MyApp