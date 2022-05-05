import React from "react";
// import
import { Button, Modal } from "react-bootstrap";
import styles from '../Modal/styles.module.css'

export default function showModal() {
    const [show, setShow] = React.useState(false);

const handleShow = () => {
    setShow(true);
};

const handleGo = () => {
    setShow(false);
};

return (
    <div className={styles.modal}>
        <Button variant="primary" onClick={handleShow}>
        About
        </Button>
        <Modal show={show} onHide={handleGo}>
            <Modal.Header closeButton>
                <Modal.Title>
                    About FAS
                </Modal.Title>
            </Modal.Header>
            <div className={styles.infoSection}>
            <Modal.Body>
                This system has been developed to provide advice to Farmers.

                To use the app, choose categories relevent to your problem until a list of questions appear.

                When choosing a relevent question, press on it to reveal the answer.

                If the answer provided doesn't help, you can go back using the your browser and look at answers to other questions.

                If none of the answers help, then you can send an email to the Admin who'll answer your question within 48 Hours. 
            </Modal.Body>
            </div>
            <Button className={styles.close} variant="secondary" onClick={handleGo}>
                Close
            </Button>
        </Modal>
        </div>
)
}


