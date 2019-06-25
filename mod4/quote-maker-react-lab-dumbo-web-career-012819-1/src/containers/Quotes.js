import React, { Component } from 'react';
import { connect } from 'react-redux';
import QuoteCard from '../components/QuoteCard';

class Quotes extends Component {

  render() {

    let {quotes} = this.props
    // so we can do {quote.name}
    // let quotes = this.props.quotes

    return (
      <div>
        <hr />
        <div className="row justify-content-center">
          <h2>Quotes</h2>
        </div>
        <hr />
        <div className="container">
          <div className="row">
            <div className="col-md-4">
              {quotes.map(quote=> <QuoteCard quote={quote}/>)}
            </div>
          </div>
        </div>
      </div>
    );
  }
}

const mapStateToProps = (state) => {
  return {
    quotes: state.quotes
  }
}
const mapDispatchToProps = ({quotes}) => {
  return {
    quotes
  }
}
console.log(mapStateToProps);
//add arguments to connect as needed
export default connect(mapStateToProps)(Quotes);
