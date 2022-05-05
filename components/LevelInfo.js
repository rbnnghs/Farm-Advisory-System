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
    const localPart = 'me'

    const doesContain = levelInfo.choiceText.includes('?')

    if (!isQuestion) comment = children.length ? '' :
    <div 
    onclick
    className={styles.naWrapper}>
    <a href="mailto:click.to.reveal@email.com" onClick={e => (window.location.href = `mailto:${localPart}@${process.env.NEXT_PUBLIC_DOMAIN}`, e.preventDefault())}>
    <h1>No questions or answers for this category. If you'd like to be the first to ask. 
        Press on this item to send an email.</h1>
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
        <div className={doesContain ? styles.lvlAnswer : styles.lvlAnswerNoBg}>{isQuestion ? levelInfo.answerText : children}</div>
        {/* {if(!!isQuestion) comment = children.length ? '' : */}
        {/* <Options></Options> */}
    </div>
    </div>
}

export default LevelInfo