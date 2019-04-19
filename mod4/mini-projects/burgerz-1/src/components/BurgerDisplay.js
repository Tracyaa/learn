// import React, { Component } from 'react';
import React from 'react';
import ControlledForm from './ControlledForm'

const BurgerDisplay = (props) => {


  return (
    <div className="BurgerDisplay">
      <img src={props.burger.imgURL} alt={props.burger.name}/>
      <br/>
      <h1>{props.burger.name}</h1>
      <br/>
        <select value={props.burger.category} onChange={(e) => props.onChangeCategory(e.target.value, props.burger.id)}>
          <option value="Relatable">Relatable</option>
          <option value="Bougie">Bougie</option>
        </select>
        <ControlledForm />

    </div>
  )
}

BurgerDisplay.defaultProps = {
  burger: {
    imgURL: ''
  }
}

export default BurgerDisplay
