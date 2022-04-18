import useLevelInfo from "../useLevelInfo"
import LevelInfoLink from "./LevelInfoLink"
import styles from "../styles/Home.module.css"


const LevelInfo = ({id, level=0}) => {
    const levelInfo = useLevelInfo(id)

    if(!levelInfo) return <span>Loading...</span>

    const children = levelInfo.children.map(id => <p><LevelInfoLink id={id}/></p>)

    const isQuestion = !!levelInfo.answerText
    const hasAnswers = !!levelInfo.answerText
    const needsQuestions = !isQuestion && !children.length
    const needsAnswers = isQuestion && !children.length

    // if(isQuestion) comment = hasAnswers ? 'This has answers' : 'This needs answers'
    // let comment = ''
    // let com =''
    // if(!!isQuestion) comment = children.length ? '' :
    // <div className={styles.qWrapper}>
    // <h1>Question</h1>
    // </div> 

    // const showQuestion = () => {
        let comment = ''

        if(!!isQuestion) comment = children.length ? '' :
        <div className={styles.qWrapper}>
        <h1>Answer</h1>
        </div> 

    // if(!hasAnswers) com = children.length ? '' : 
    // <div className={styles.aWrapper}>
    // <h1>Answers</h1>
    // </div>
    // 'This is a category' : 'This needs questions'
    

    return <div className={styles.main}><div key={id} className={`level-${level}`}>
        <h1 className={styles.parentIdH1}>{levelInfo.choiceText}</h1>
        <p>{comment}</p>
        <div className={styles.lvlAnswer}>{isQuestion ? levelInfo.answerText : children}</div>
    </div>
    </div>
}

export default LevelInfo