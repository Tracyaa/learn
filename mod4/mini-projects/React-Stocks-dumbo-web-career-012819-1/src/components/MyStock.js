import React from 'react'

const MyStock = (props) => (
  <div>

    <div className="card">
      <div className="card-body" onClick={(e) => props.sellClick(props.stock.id)}>
        <h5 className="card-title">{
            props.stock.name
          }</h5>
        <p className="card-text">{
            props.stock.price
          }</p>
      </div>
    </div>


  </div>
);

export default MyStock
