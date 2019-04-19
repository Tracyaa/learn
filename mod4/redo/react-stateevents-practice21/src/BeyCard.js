import React from "react";

const BeyCard = (props) => {
  return (
    <div>
      <h3>{props.bey.name}</h3>
      <img onClick={(e) => (props.handleClick(props.bey.id))} src={props.bey.img} alt={props.bey.name}/>
    </div>
  );
};

export default BeyCard;
