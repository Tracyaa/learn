import React from 'react'

const MoreButton = (props) => {
    return <button onClick={() => props.buttonClicked()}>
            More sushi!
          </button>
}

export default MoreButton
