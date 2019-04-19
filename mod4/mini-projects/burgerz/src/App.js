import React, { Component } from 'react';
// import logo from './logo.svg';
import './App.css';
import BurgerContainer from './components/BurgerContainer'
import BurgerDisplay from './components/BurgerDisplay'
import burgerAdapter from './adapters/burgerAdapter'

class App extends Component {
  state = {
    burgers: [],
    burgerId: null
  }

  handleShowBurger = (burgerId) => {
    this.setState({burgerId})
  }

  displayBurger = () => {
    return this.state.burgers.find(burger => burger.id === this.state.burgerId)
  }

  hideBurger = (burgerId) => {
    const hiddenBurg = this.state.burgers.filter(burger => burger.id !== burgerId)
    this.setState({
      burgers: hiddenBurg
    })
  }
  // updateBurger
  onChangeCategory = (value, id) => {
    console.log(value, id)
    fetch(`http://localhost:3001/burgers/${id}`, {
      method: 'PATCH',
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json' // THIS is not necessary
      },
      body: JSON.stringify({
        category: value
      })
    }).then(this.updateFrontEnd(value, id))
    .then(this.displayBurger(id))
  }


  // updateBurgerApi = (e, burgerId) => {
  //   const category = e.target.value
  //   fetch(`http://localhost:3001/burgers/${burgerId}`, {
  //     method: 'PATCH',
  //     headers: {
  //       'Content-Type': 'application/json'
  //     },
  //     body: JSON.stringify({category})
  //   })
  // }
  //
  // updateBurgerState = (burgerObj) => {
  //   const newBurgers = this.state.burgers.map(burger => {
  //     if (burger.id === burgerObj.id) {
  //       return {...burger, category: burgerObj.category}
  //     } else {
  //       return {...burger}
  //     }
  //   })
  //   this.setState({
  //     burgers: newBurgers
  //   })
  // }

  updateFrontEnd = (value, id) => {
    let burgers = this.state.burgers.map(burger => {
      if (burger.id !== id) {
        return {...burger}
      } else {
        return {...burger, category: value}
      }
    })
    this.setState({burgers})
  }

  componentDidMount() {
    burgerAdapter.getBurgers()
    .then(burgers => {
      this.setState({
        burgers: burgers
      })
    })
  }

  render() {
    return (
      <div id="App">
        <BurgerContainer handleShowBurger={this.handleShowBurger} burgers={this.state.burgers} hideBurger={this.hideBurger}/>
        <BurgerDisplay burger={this.displayBurger()} onChangeCategory={this.onChangeCategory}/>
      </div>
    );
  }
}

export default App;
