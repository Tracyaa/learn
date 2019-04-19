import React, { Component } from 'react';
import BurgerList from './BurgerList'
import BurgerFilter from './BurgerFilter'

export default class BurgerContainer extends Component {

  state = {
    filterTerm: 'All',
    deleted: false
  }

  changeFilterTerm = (value) => {
    this.setState({
      filterTerm: value
    })
  }

  filteredBurgers = () => {
    if (this.state.filterTerm === 'All') {
      return this.props.burgers
    } else {
      return this.props.burgers.filter(burger => burger.category === this.state.filterTerm)
    }
  }

  deleteBurger = () => {
    console.log('asd')
  }

  render(){
    return (
      <div className="BurgerContainer">
        <BurgerFilter changeFilterTerm={this.changeFilterTerm} />
        <BurgerList handleShowBurger={this.props.handleShowBurger} burgers={this.filteredBurgers()} hideBurger={this.props.hideBurger}/>

      </div>
    )
  }
}
