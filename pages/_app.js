import '../styles/globals.css'

import React from 'react'
import useSWR from 'swr'

import DataContext from '../DataContext'

const fetcher = (url) => fetch(url).then((res) => res.json());

function MyApp({Component, pageProps}) {
  const {data, error} = useSWR('/api/hello', fetcher)

  return (
    <>
    <header>FAS</header>
    <DataContext.Provider value={data}>
      <Component {...pageProps} />
    </DataContext.Provider>
    </>
    
  )
} 

export default MyApp