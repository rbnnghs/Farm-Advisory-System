import React, { useState, useEffect } from 'react';
import { animateScroll as scroll } from 'react-scroll';
import Link from 'next/dist/client/link';
import styles from '../Navbar/styles.module.css'

const Navbar = ({ toggle }) => {
  const [scrollnav, setscrollnav] = useState(false);
  const [doEdit, setdoEdit] = useState(false);
  const [opened, setOpened] = useState(false);

  const handleClose = () => setOpened(false);
  const handleShow = () => setOpened(true);

  const changeNav = () => {
    if (window.scrollY >= 80) {
      setscrollnav(true);
    } else {
      setscrollnav(false);
    }
  };

  useEffect(() => {
    window.addEventListener('scroll', changeNav);
    import('bootstrap/dist/js/bootstrap');
  }, []);

  const toggleHome = () => {
    scroll.scrollToTop();
  };

  return (
    <>
        <div className={styles.nav} scrollnav={scrollnav}>
          <div className={styles.navbarContainer}>
            <div className={styles.navLogo} onClick={toggleHome} to='/'>
            <Link href='/'>
            FAS 🧑‍🌾
            </Link>
            </div>
              </div>
              </div>
    </>
  );
};

export default Navbar;