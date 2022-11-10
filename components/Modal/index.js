import React from "react";
// import
import { Button, Modal } from "react-bootstrap";
import styles from '../Modal/styles.module.css'
import aboutDiagram from '../../public/aboutdiagram.svg'
import Image from "next/image";

export default function showModal() {
    const [show, setShow] = React.useState(false);

// const clickOnIt = 'click'
// const tapOnIt = 'tap'

const handleShow = () => {
    setShow(true);
};

const handleGo = () => {
    setShow(false);
};

const clickOnIt = 'click'
const tapOnIt = 'tap'

return (
    <div className={styles.modal}>
        <Button variant="primary" onClick={handleShow}>
        About
        </Button>
        <Modal show={show} onHide={handleGo}>
            <Modal.Header closeButton>
                <Modal.Title className={styles.aboutFAS}>
                    About
                </Modal.Title>
            </Modal.Header>
            <div className={styles.infoSection}>
            <Modal.Body>
                <Image src={aboutDiagram}/>
                {/* This system has been developed to provide advice to Farmers.

                To use the app, choose <span className={styles.highlight}>categories</span> relevent to your problem until a list of questions appear.

                When choosing a question, <span className={styles.clickShow}>{clickOnIt}</span><span className={styles.tapShow}>{tapOnIt}</span> on it to reveal the answer.

                If the answer provided doesn't help, you can go back using the browser and look at answers to other questions.

                If none of the answers help, then you can send an email to the Admin who'll answer your question within 48 Hours.  */}
            </Modal.Body>
            </div>
            <Button className={styles.close} variant="secondary" onClick={handleGo}>
                Close
            </Button>
        </Modal>
        </div>
)
}


