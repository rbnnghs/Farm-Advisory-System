import Link from "next/link";
import useLevelInfo from "../useLevelInfo";
import styles from "../styles/Home.module.css"
import { Button } from "react-scroll/modules";

const LevelInfoLink = ({id}) => {
    const {choiceText="???"} = useLevelInfo(id)
    const doesContain = choiceText.includes('?' || '.' || '')

    // choiceText.replace('.', '?')

    function handleAnswer(e) {
        e.target.style.background = "#36e18b"
    }

    return (
        <>
    <div className={styles.wrapperCard}>
    <Link href={`/${id}`}>
    <div
    className={doesContain ? styles.questionCard : styles.card}
    >
    {choiceText}
    </div>
    </Link>
    </div>
    </>
    )
}

export default LevelInfoLink;