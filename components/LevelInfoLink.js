import Link from "next/link";
import useLevelInfo from "../useLevelInfo";

const LevelInfoLink = ({id}) => {
    const {choiceText="???"} = useLevelInfo(id)

    return <Link href={`/${id}`}><a> {choiceText}</a></Link>
}

export default LevelInfoLink