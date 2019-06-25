import React, { Component } from 'react'

class NavBar extends Component {

  render() {
    return (
      this.props.currentUser ?
        <a href="#currentUser">{this.props.currentUser.username}</a>
        :
        <a href="#login">login</a> 
    )
  }
}

export default NavBar
