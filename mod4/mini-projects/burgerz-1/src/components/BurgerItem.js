// import React, { Component } from 'react';
import React from 'react';


const BurgerItem = ({burger, handleShowBurger, hideBurger}) => {
// const BurgerItem = (props) => {

  return (
    <div>
      <div className="BurgerItem">
        {burger.name}
      </div>
      <div className="BurgerBottomBun">
        <button onClick={() => handleShowBurger(burger.id)}>Show</button>
        <button onClick={() => hideBurger(burger.id)}>Delete</button>
      </div>
    </div>
  )
}

export default BurgerItem
