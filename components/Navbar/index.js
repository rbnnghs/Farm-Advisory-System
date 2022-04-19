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
          <div className={styles.navbarContainer}>
            <div className={styles.navLogo} onClick={toggleHome} to='/'>
            <Link href='/'>
            FAS
            </Link>
              </div>

              
              <div></div>
              <ul className={styles.guide}>
              <li className={styles.outerGuide}>
              <div className={styles.innerGuide}
                  to='/projects'
                  smooth={true}
                  duration={500}
                  
                  exact='true'
                  offset={-80}
                  >
                  {/* <Link href="/projects"> */}
                  <a href="" className={styles.linked} aria-label="selected projects">
        <Folder className={styles.icon} />
      </a>
      {/* </Link> */}
                </div>
                </li>
              <li className={styles.outerGuide}>
              <div className={styles.innerGuide}
                  to='/post'
                  smooth={true}
                  duration={500}
                  
                  exact='true'
                  offset={-80}
                  >
                  {/* <Link href="/post"> */}
                  <a href="" className={styles.linked} aria-label="posts">
        <Edit className={styles.icon} />
      </a>
      {/* </Link> */}
      </div>
      </li>
              <li className={styles.outerGuide}>
              <div className={styles.innerGuide}
                //   to='/resume'
                  smooth={true}
                  duration={500}
                  
                  exact='true'
                  offset={-80}
                  >
                  {/* <Link href="/resume"> */}
                  <a href="" className={styles.linked} aria-label="c-v">
        <Paperclip className={styles.icon} />
      </a>
      {/* </Link> */}
                </div>
                </li>
                </ul>
                </div>
                </div>
    </>
  );
};

export default Navbar;