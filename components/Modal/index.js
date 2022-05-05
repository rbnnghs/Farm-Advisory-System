import React from "react";
// import
import { Button, Modal } from "react-bootstrap";

export default function showModal() {
    const [show, setShow] = React.useState(false);

const handleShow = () => {
    setShow(true);
};

const handleGo = () => {
    setShow(false);
};

return (
    <div>
        <Button variant="primary" onClick={handleShow}>
        Learn More
        </Button>
    </div>
)


}


