import { Grid } from "react-feather";
import styles from '../styles/Home.module.css'

export default function newSum() {
    return (
        <>
        <div className={styles.buttonBasic}>
        <button>Top-Level 1</button>
        <button>Top-Level 2</button>
        <button>Top-Level 3</button>
        <button>Top-Level 4</button>
        </div>
        </>
    )
}