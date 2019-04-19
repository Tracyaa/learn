import React, { Component } from 'react';
import SushiContainer from './containers/SushiContainer';
import Table from './containers/Table';
import Form from './components/Form';
// Endpoint!
const API = "http://localhost:3000/sushis"

class App extends Component {

  state = {
    sushis: [],
    remaining: 1000,
    emptyPlates: []
  }

  componentDidMount() {
    fetch(API)
    .then(resp => resp.json())
    .then(sushis => {
      sushis = sushis.map(sushi => {
        return {...sushi, eaten: false}
      })
      this.setState({sushis})
    })
  }

  onClickSushi = (id) => {
    // if(!this.state.emptyPlates.includes(id)) {
      let sushi = this.state.sushis.find(sushi => sushi.id === id)
      let damnSushis = [...this.state.sushis].filter(sushi => !this.state.emptyPlates.includes(sushi.id))
      // let updatedSushis = this.state.sushis.map(sushi => {
      //   if (sushi.id === id) {
      //     return {...sushi, eaten: true}
      //   } else {
      //     return {...sushi}
      //   }
      //   // arr.filter(element => element.id !== id)
      // })
      this.setState({
        sushis: damnSushis,
        remaining: this.state.remaining - sushi.price,
        emptyPlates: [...this.state.emptyPlates, id]
      })
    // }
  }

  addRemaining = (e, amount) => {
    e.preventDefault()
    let newAmount = parseInt(amount)
    this.setState({remaining: this.state.remaining + newAmount})
  }

  render() {
    return (
      <div className="app">
        <Form addRemaining={this.addRemaining}/>
        <SushiContainer sushis={this.state.sushis} onClickSushi={this.onClickSushi} />
        <Table remaining={this.state.remaining} emptyPlates={this.state.emptyPlates}/>
      </div>
    );
  }
}

export default App;
