import React, { Fragment } from 'react'
import MoreButton from '../components/MoreButton'
import Sushi from '../components/Sushi'

class SushiContainer extends React.Component {
  state = {
    startIdx: 0,
    endIdx: 4
  }


  buttonClicked = () => {
    this.setState({
      startIdx: this.state.startIdx + 4,
      endIdx: this.state.endIdx + 4
    })
  }



  render() {

    let fourSushis = this.props.sushis.slice(this.state.startIdx, this.state.endIdx).map(sushi => <Sushi sushi={sushi} onClickSushi={this.props.onClickSushi} reduceRemaining={this.props.reduceRemaining}/>)

    return (
      <Fragment>
        <div className="belt">
          {
            fourSushis
          }
          <MoreButton buttonClicked={this.buttonClicked}/>
        </div>
      </Fragment>
    )
  }
}


export default SushiContainer
