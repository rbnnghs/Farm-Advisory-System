import useLevelInfo from "../useLevelInfo"
import LevelInfoLink from "./LevelInfoLink"
import styles from "../styles/Home.module.css"


const LevelInfo = ({id, level=0}) => {
    const levelInfo = useLevelInfo(id)

    if(!levelInfo) return <span className={styles.loadText}>Loading...</span>

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
        <div className={styles.lvlAnswer}>
                    <style>
              {`
                  .lvlAnswer {
                      background: white;
                   }
               `}
            </style>
        </div>
        </div> 
        else if (!isQuestion) comment = children.length ? '' :
        <div className={styles.naWrapper}>
        <h1>Currently there are no questions or answers for this subject. If you'd like to be the first to ask, press on this item.</h1>
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