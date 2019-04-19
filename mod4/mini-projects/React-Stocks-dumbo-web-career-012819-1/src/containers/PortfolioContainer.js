import React, { Component } from 'react';
import Stock from '../components/Stock'
import MyStock from '../components/MyStock'

class PortfolioContainer extends Component {

  render() {
    const myStockCards = this.props.myStocks.map((stock, idx) => <MyStock sellClick={this.props.sellClick} stock={stock} key={idx}/>)
    return (
      <div>
        <h2>My Portfolio</h2>
          {
            myStockCards
          }
      </div>
    );
  }

}

export default PortfolioContainer;
