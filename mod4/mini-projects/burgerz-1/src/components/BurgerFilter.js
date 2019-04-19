// import React, { Component } from 'react';
import React from 'react';

const BurgerFilter = (props) => {
  return (
    <div className="BurgerFilter">
      <select onChange={(e) => props.changeFilterTerm(e.target.value)}>
        <option value="All">All</option>
        <option value="Relatable">Relatable</option>
        <option value="Bougie">Bougie</option>
      </select>
    </div>
  )
}

export default BurgerFilter
