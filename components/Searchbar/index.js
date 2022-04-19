import fasDataJson from '../../fasData.json'
import styles from '../Searchbar/styles.module.css'
import {useState} from 'react'

function Searchbar() {
    
    const [searchItem, setSearchItem] = useState('');

    return (
        <div className={styles.searchBar}>
        <input type="text" placeholder="Specify your results.." onChange={event => {setSearchItem(event.target.value)}}></input>
        <div className={styles.jsonHandle}>{fasDataJson.filter((val) => {
            if (searchItem == '') {
                return val
            } 
            else if (val.choiceText.toLowerCase().includes(searchItem)) {
                return val
            }
            else if (val.choiceText.toUpperCase().includes(searchItem.toLowerCase)) {
                return val
            }
        }).map((val, key) => {
            return ( 
            <div className='user' key={key}>
            <p>{val.choiceText}</p>
            </div>
            );
        })};
        </div>
        </div>
    );
    }

export default Searchbar;
