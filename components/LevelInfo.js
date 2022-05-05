import useLevelInfo from "../useLevelInfo"
import LevelInfoLink from "./LevelInfoLink"
import styles from "../styles/Home.module.css"
import Options from "./Options"

const LevelInfo = ({id, level=0}) => {
    const levelInfo = useLevelInfo(id)

    if(!levelInfo) return <span className={styles.loadText}>Loading...</span>

    const children = levelInfo.children.map(id => <p><LevelInfoLink id={id}/></p>)

    const isQuestion = !!levelInfo.answerText
    const hasAnswers = !!levelInfo.answerText
    const needsQuestions = !isQuestion && !children.length
    const needsAnswers = isQuestion && !children.length

    let comment = ''

    const doesContain = levelInfo.choiceText.includes('?')

    if (!isQuestion) comment = children.length ? '' :
    <div className={styles.naWrapper}>
    <a href='/nullform'>
    <h1>Currently there are no questions or answers for this subject. If you'd like to be the first to ask, press on this item.</h1>
    </a>
    </div>

    // if(!hasAnswers) com = children.length ? '' : 
    // <div className={styles.aWrapper}>
    // <h1>Answers</h1>
    // </div>
    // 'This is a category' : 'This needs questions'
    

    return <div className={styles.main}><div key={id} className={`level-${level}`}>
        <h1 className={doesContain ? styles.parentIdH1Ans : styles.parentIdH1}>{levelInfo.choiceText}</h1>
        <p>{comment}</p>
        <div className={styles.lvlAnswer}>{isQuestion ? levelInfo.answerText : children}</div>
        {/* {if(!!isQuestion) comment = children.length ? '' : */}
        {/* <Options></Options> */}
    </div>
    </div>
}

export default LevelInfo