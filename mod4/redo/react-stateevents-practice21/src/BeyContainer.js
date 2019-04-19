import React from "react";
import BeyCard from "./BeyCard"

class BeyContainer extends React.Component {
  render() {
    const beyCards = this.props.beys.map((bey, idx) => <BeyCard bey={bey} handleClick={this.props.handleClick} key={idx} />)
    return (
      <div className="index">
        <h1>Index</h1>
        {beyCards}
      </div>
    );
  }
}

export default BeyContainer;
