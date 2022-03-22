import { useState } from "react";
import styles from '../styles/Home.module.css'
import Link from "next/link";
// import ReactDOM from "react-dom";

export default function MyForm() {
  const [inputs, setInputs] = useState({});

  const handleChange = (event) => {
    const name = event.target.name;
    const value = event.target.value;
    setInputs(values => ({...values, [name]: value}))
  }

  const handleSubmit = (event) => {
    event.preventDefault();
    alert(inputs);
  }

  return (
    <div className={styles.container}>

      <main className={styles.main}>

    <form onSubmit={handleSubmit}>
      <h2>Enter your E-mail address:
      <input 
        type="text" 
        name="username" 
        value={inputs.username || ""} 
        onChange={handleChange}
      />
      </h2>
      <h2>Enter your Question:
        <input 
          type="text" 
          name="age" 
          value={inputs.age || ""} 
          onChange={handleChange}
        />
        </h2>
        <input type="submit" />
    </form>
    <Link href="/">
              <div
            className={styles.cardFill}
          >
              Try Again
              </div>
              </Link>
    </main>

    </div>
  )
}

// ReactDOM.render(<MyForm />, document.getElementById('root'));
  