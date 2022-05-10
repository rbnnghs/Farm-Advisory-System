import React, { useState, useEffect } from 'react';
import { animateScroll as scroll } from 'react-scroll';
import styles from '../Options/styles.module.css'

const Options = ({ toggle, props }) => {
  const [scrollopt, setscrollopt] = useState(false);
  const [doEdit, setdoEdit] = useState(false);

  const localPart = 'me'

  const changeopt = () => {
    if (window.scrollY >= 80) {
      setscrollopt(true);
    } else {
      setscrollopt(false);
    }
  };

  useEffect(() => {
    window.addEventListener('scroll', changeopt);
  }, []);

  const toggleHome = () => {
    scroll.scrollToTop();
  };

  return (
    <>
        <div className={styles.opt} scrollopt={scrollopt}>
        <div className={styles.optContainer}>
          {/* <p>Was this helpful?</p> */}
          <div className={styles.objProperties}>
          <a href='/'>
        <div onClick={toggleHome} className={styles.solved}>
              ✅
            </div>
            </a> 
            <a href="mailto:click.to.reveal@email.com" target="_blank" onClick={e => (window.location.href = `mailto:${localPart}@${process.env.NEXT_PUBLIC_DOMAIN}`, e.preventDefault())}>
            <div className={styles.failed}>
            ❌
            </div>
            </a>
              </div>
              </div>
              </div>
    </>
  );
};

export default Options;