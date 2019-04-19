import React, { Component } from "react";
import BeyCard from "./BeyCard"

export default class Favorites extends Component {
  render() {
    const beyCards = this.props.beys.map((bey, idx) => <BeyCard bey={bey} handleClick={this.props.handleClick} key={idx} />)
    return (
      <div className="favorites">
        <h1>Favorites</h1>
        {beyCards}
      </div>
    );
  }
}
