import { useState } from 'react'
import reactLogo from './assets/react.svg'
import viteLogo from '/vite.svg'
import './App.css'
import Hello from './components/hello'
import Welcome from './components/welcome'
import ToDoList from './components/ToDolist'
import MovieList from './components/MovieList'
import BookList from './components/BookList'
import {Greeting, ArrowGreeting, ShinyButton} from './components/Week 3/React-Demo-1'
import {RainOrShine, Rainy} from './components/Week 3/React-Demo-2'
import { Rainy1, Sunny1, RainOrShine1 } from './components/Week 3/React-Demo-3'

function App() {
  const [count, setCount] = useState(0)

  return (
    <>
    <h1>React Demo 1</h1>
    <Greeting/>
    <ArrowGreeting/>
    <ShinyButton/>
    <h1>React Demo 2</h1>
    <Rainy/>
    <RainOrShine/>
    <h1>React Demo 3</h1>
    <Rainy1/>
    <Sunny1/>
    <RainOrShine1/>
    <h1>React Demo 4</h1>
    </>
  ) 
}
export default App
