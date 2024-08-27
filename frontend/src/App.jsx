import { useState, useEffect } from "react"

function App() {
  const [message, setMessage] = useState("")

  useEffect(() => {
    fetch("http://localhost:8000/api/hello/")
      .then((response) => response.json())
      .then((data) => setMessage(data.message))
  }, [])

  return (
    <div className="App">
      <h1>My Django-React App with Vite</h1>
      <p>{message}</p>
    </div>
  )
}

export default App
