// import React, { Component } from 'react';
import React from 'react';
import BurgerItem from './BurgerItem'

const BurgerList = (props) => {

  const burgerCards = props.burgers.map((burger, idx) => <BurgerItem burger={burger} key={idx} handleShowBurger={props.handleShowBurger} hideBurger={props.hideBurger}/>)

  return (
    <div className="BurgerList">
      {burgerCards}
    </div>
  )
}

export default BurgerList
