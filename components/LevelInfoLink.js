import Link from "next/link";
import useLevelInfo from "../useLevelInfo";
import styles from "../styles/Home.module.css"
import { Button } from "react-scroll/modules";

const LevelInfoLink = ({id}) => {
    const {choiceText="???"} = useLevelInfo(id)
    const doesContainQuestionMark = choiceText.includes('?');
    const doesContainFullStop = choiceText.includes('.');
    const doesContainComma = choiceText.includes(',')
    const doesContainWhat = choiceText.includes('What', 'Where', 'When', 'How')
    const doesContainHow = choiceText.includes('How')
    const doesContainMy = choiceText.includes('My')
    const doesContainPig = choiceText.includes('piglets')
    const doesContain448 = choiceText.includes('How long will it take for a sow to come on heat after weaning')
    const doesContain438 = choiceText.includes('What precaution should I take in housing farrowing sow and the piglet')
    const doesContain485 = choiceText.includes('I want to go into piggery but not knowledgeable on what should constitute their feed')
    const doesContain515 = choiceText.includes('What should be the marketing age of pigs')
    const doesContain300 = choiceText.includes('should')
    const doesContain290 = choiceText.includes('Can I keep, raise birds of different ages in the same house')


    const containsConditions = 
    doesContainQuestionMark + 
    doesContainFullStop + 
    doesContainComma +
    doesContainWhat +
    doesContainMy  +
    doesContainHow +
    doesContainPig + 
    doesContain448 + 
    doesContain438 + 
    doesContain485 +
    doesContain515 +
    doesContain300 +
    doesContain290

    return (
        <>
    <div className={styles.wrapperCard}>
    <Link href={`/${id}`}>
    <div
    onclick=""
    className={containsConditions ? styles.questionCard : styles.card}
    >
    {choiceText}
    </div>
    </Link>
    </div>
    </>
    )
}

export default LevelInfoLink;