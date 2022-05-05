import Link from "next/link";
import useLevelInfo from "../useLevelInfo";
import styles from "../styles/Home.module.css"
import { Button } from "react-scroll/modules";

const LevelInfoLink = ({id}) => {
    const {choiceText="???"} = useLevelInfo(id)
    const doesContain = choiceText.includes('?')

    function handleAnswer(e) {
        e.target.style.background = "#36e18b"
    }

    return (
        <>
    <div className={styles.wrapperCard}>
    <Link href={`/${id}`}>
    <div
    onClick=''
    className={doesContain ? styles.questionCard : styles.card}
    >
    {choiceText}
    </div>
    </Link>
    </div>
    </>
    )
}

    
    // onMouseOver={()=> {
    //     if (choiceText.includes("?")) {
    //         <div clasName=
    //         {styles.questionCard}>
    //         </div>
    //         console.log('includes ?')
    //     }
    //     else 
    //     <div className={styles.questionCard}/>
    // }}>
            {/* // this.style.background = 'gray';
            // this.style.backgroundColor= '#36e18b';
            // {styles.card.backgroundColor = $`{hoverAnswer}`}
            // styles={color: `${hoverAnswer}`}}
            // this.target.style.background = '#36e18b' 
            // console.log('ans')
            // styles.card.backgroundColor = "#36e18b"
            // {this.state.backgroundColor = "#36e18b"}
            // background */}

export default LevelInfoLink;