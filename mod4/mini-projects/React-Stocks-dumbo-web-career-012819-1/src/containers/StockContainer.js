import React, { Component } from 'react';
import Stock from '../components/Stock'

class StockContainer extends Component {

  filteredStocks = () => {
    const stocks = this.props.stocks
    if (this.props.filterTerm === 'All') {
      return stocks.map((stock, idx) => <Stock handleClick={this.props.handleClick} stock={stock} key={idx}/>)
    } else {
      let filteredStocks = stocks.filter(stock => stock.type === this.props.filterTerm)
      return filteredStocks.map((stock, idx) => <Stock handleClick={this.props.handleClick} stock={stock} key={idx}/>)
    }
  }
 //  sortStocks = (sortTerm) => {
 //    switch (sortTerm) {
 //      case 'Alphabetically':
 //        return this.props.stocks.sort(compareAsc(a, b))
 //      case 'Price':
 //        return this.props.stocks.sort(stock => stock.price)
 //      default:
 //        return this.props.stock
 //    }
 //  }
 //
 //  compareAsc = (a, b) => {
 //   const keyA = a.name.toUpperCase();
 //   const keyB = b.name.toUpperCase();
 //
 //   let comparison = 0;
 //   if (keyA > keyB) {
 //     comparison = 1;
 //   } else if (keyA < keyB) {
 //     comparison = -1;
 //   }
 //   return comparison;
 // }
  // sortStocks = () => {

  render() {

    return (
      <div>
        <h2>Stocks</h2>
        {
          this.filteredStocks()
        }
      </div>
    );
  }

}

export default StockContainer;
