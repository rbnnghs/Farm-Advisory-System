import { useRouter } from 'next/router'

import LevelInfo from '../../components/LevelInfo'

const LevelInfoPage = (props) => {
  const router = useRouter()
  const {id} = router.query
  const idAsNumber = + id
  return <LevelInfo id={idAsNumber} />
  // return "Page"
}

export default LevelInfoPage