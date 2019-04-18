import React, { Component } from 'react';
import StockContainer from './StockContainer'
import PortfolioContainer from './PortfolioContainer'
import SearchBar from '../components/SearchBar'

class MainContainer extends Component {

  state = {
    stocks: [],
    myPortfolio: [],
    filterTerm: 'All',
    sortTerm: 'none'
  }


  sortStocks = () => {
    switch (this.state.sortTerm) {
      case 'Alphabetically':
        return this.state.stocks.sort((a, b) => (a.name > b.name) ? 1 : -1)
      case 'Price':
        return this.state.stocks.sort((a, b) => (a.price < b.price) ? 1 : -1)
      default:
        return this.state.stocks
    }
  }



  changeFilterTerm = (filterTerm) => {
    this.setState({filterTerm})
  }

  componentDidMount() {
    fetch('http://localhost:3000/stocks')
    .then(resp => resp.json())
    .then(stocks => {
      this.setState({stocks})
    })
  }

  handleClick = (id) => {
    let stockCard = this.state.stocks.find(stock => stock.id === id)
    this.setState({
      myPortfolio: [...this.state.myPortfolio, stockCard]
    })
  }

  sellClick = (id) => {
    let remainMyStocks = this.state.myPortfolio.filter(stock => stock.id !== id)
    this.setState({
      myPortfolio: remainMyStocks
    })
  }

  changeSortTerm = (sortTerm) => {
    this.setState({sortTerm})
  }


  render() {

    return (
      <div>
        <SearchBar changeSortTerm={this.changeSortTerm} changeFilterTerm={this.changeFilterTerm} sortTerm={this.state.sortTerm}/>

          <div className="row">
            <div className="col-8">

              <StockContainer sortTerm={this.state.sortTerm} filterTerm={this.state.filterTerm} stocks={this.sortStocks()} handleClick={this.handleClick}/>

            </div>
            <div className="col-4">

              <PortfolioContainer myStocks={this.state.myPortfolio} sellClick={this.sellClick}/>

            </div>
          </div>
      </div>
    );
  }

}

export default MainContainer;
