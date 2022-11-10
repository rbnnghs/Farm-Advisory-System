import React, { useState, useEffect } from 'react';
import { animateScroll as scroll } from 'react-scroll';
import Link from 'next/dist/client/link';
// import Image from 'next/image';
import styles from '../Navbar/styles.module.css'
// import fas from '../../public/fas.svg'

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
            🧑‍🌾
             {/* <Image src={fas} width={100} height={100}/> */}
            </Link>
            </div>
              </div>
              </div>
    </>
  );
};

export default Navbar;