import React, { Component } from "react";
import BeyContainer from "./BeyContainer"
import Favorites from "./Favorites"
// import logo from "./logo.svg";
import "./App.css";

class App extends Component {

  state = {
    beys: []
  }

  componentDidMount() {
    fetch("http://localhost:4000/beys")
    .then(resp => resp.json())
    .then(beys => {
      this.setState({
        beys: beys
      })
    })
  }

  addBeys = (id) => {
    const copyBeys = this.state.beys.slice()
    const foundBey = copyBeys.find(bey => bey.id === id)
    foundBey.favorite = true
    this.setState({
      beys: copyBeys
    })
  }

  removeBeys = (id) => {
    const copyBeys = this.state.beys.slice()
    const foundBey = copyBeys.find(bey => bey.id === id)
    foundBey.favorite = false
    this.setState({
      beys: copyBeys
    })
  }


  favoritedBeys = () => {
    return this.state.beys.filter(bey => bey.favorite)
  }

  render() {
    return (
      <div className="container">
        <BeyContainer beys={this.state.beys} handleClick={this.addBeys}/>
        <Favorites beys={this.favoritedBeys()} handleClick={this.removeBeys}/>
      </div>
    )
  }
}

export default App;
