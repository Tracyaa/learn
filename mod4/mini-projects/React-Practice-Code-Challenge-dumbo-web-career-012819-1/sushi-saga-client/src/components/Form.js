import React, { Component } from 'react'

class Form extends Component {
  state = {
    addAmount: ''
  }

  onChangeAmount = (e) => {
    this.setState({
      addAmount: e.target.value
    })
  }

  render() {
    return (
      <div>
        <form onChange={(e) => this.onChangeAmount(e)} onSubmit={(e) => this.props.addRemaining(e, this.state.addAmount)}>
          <input type="number" placeholder="sushis are expensive" name="addAmount" value={this.state.addAmount}/>
          <input type="submit" name="Submit"/>
        </form>
      </div>
    )

  }
}


export default Form
