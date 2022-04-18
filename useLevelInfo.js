import { useContext, useMemo } from "react"
import DataContext from "./DataContext";

export default id => {
    const data = useContext(DataContext)

    return useMemo(() => data?.find(({id: _id}) => id === _id), [id, data])
}
