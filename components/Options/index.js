import React, { useState, useEffect } from 'react';
import { useHistory } from "react-router-dom";
import { animateScroll as scroll } from 'react-scroll';
import styles from '../Options/styles.module.css'
// import { render } from 'react-dom';

const Options = ({ toggle, props }) => {
  const [scrollopt, setscrollopt] = useState(false);
  const [doEdit, setdoEdit] = useState(false);

  const changeopt = () => {
    if (window.scrollY >= 80) {
      setscrollopt(true);
    } else {
      setscrollopt(false);
    }
  };

  const pageBefore = () => {
    let history = useHistory();
    // return (
      history.goBack();
    // )
  }

  useEffect(() => {
    window.addEventListener('scroll', changeopt);
  }, []);

  const toggleHome = () => {
    scroll.scrollToTop();
  };

  return (
    <>
        <div className={styles.opt} scrollopt={scrollopt}>
        {/* <div className={styles.optContainer}> */}
            <div className={styles.optLogo} onClick={toggleHome} to='/'>
             <a href='/'>
              <div className={styles.solved}>
            Solved
            </div>
            </a> 
            <div className={styles.space}></div>
            <a href='/failForm'>
            <div className={styles.failed}>
              Failed
            </div>
            </a>
              </div>
              {/* </div> */}
              </div>
    </>
  );
};

export default Options;