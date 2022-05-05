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
        Learn More
        </Button>
        <Modal show={show} onHide={handleGo}>
            <Modal.Header closeButton>
                <Modal.Title>
                    About the Farmer Advice System
                </Modal.Title>
            </Modal.Header>
            <Modal.Body>
                ddjdj
            </Modal.Body>
            <Button variant="secondary" onClick={handleGo}>
                Close
            </Button>
        </Modal>
    </div>
)


}


