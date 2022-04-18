import useLevelInfo from "../useLevelInfo"
import LevelInfoLink from "./LevelInfoLink"

const LevelInfo = ({id, level=0}) => {
    const levelInfo = useLevelInfo(id)

    if(!levelInfo) return <span>Loading...</span>

    const children = levelInfo.children.map(id => <p><LevelInfoLink id={id}/></p>)

    const isQuestion = !!levelInfo.answerText
    const hasAnswers = !!levelInfo.answerText
    const needsQuestions = !isQuestion && !children.length
    const needsAnswers = isQuestion && !children.length

    // if(isQuestion) comment = hasAnswers ? 'This has answers' : 'This needs answers'
    let comment = ''
    // if(!isQuestion) comment = children.length ? 'This is a category' : 'This needs questions'
    

    return <div key={id} className={`level-${level}`}>
        <h1>{levelInfo.choiceText}</h1>
        <p>{comment}</p>
        {isQuestion ? levelInfo.answerText : children}
    </div>
}

export default LevelInfo