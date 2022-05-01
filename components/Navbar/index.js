import React, { useState, useEffect } from 'react';
import { animateScroll as scroll } from 'react-scroll';
import Link from 'next/dist/client/link';
import { Paperclip, Folder, Edit } from 'react-feather'
import styles from '../Navbar/styles.module.css'
// import { render } from 'react-dom';

const Navbar = ({ toggle }) => {
  const [scrollnav, setscrollnav] = useState(false);
  const [doEdit, setdoEdit] = useState(false);

  const changeNav = () => {
    if (window.scrollY >= 80) {
      setscrollnav(true);
    } else {
      setscrollnav(false);
    }
  };

  useEffect(() => {
    window.addEventListener('scroll', changeNav);
  }, []);

  const toggleHome = () => {
    scroll.scrollToTop();
  };

  <style jsx global>
  {`
      body {
          background: var(--moonlight);
       }
   `}
</style>

  return (
    <>
        <div className={styles.nav} scrollnav={scrollnav}>
          {/* <div className={styles.navbarContainer}> */}
            <div className={styles.navLogo} onClick={toggleHome} to='/'>
            <Link href='/'>
            FAS
            </Link>
              </div>
              </div>
              {/* </div> */}
    </>
  );
};

export default Navbar;