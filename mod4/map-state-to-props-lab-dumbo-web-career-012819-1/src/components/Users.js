import React, { Component } from 'react';
import {connect} from 'react-redux'

class Users extends Component {

  render() {
    console.log(this.props);
    const user = this.props.users.map(user => <li>{user.username}</li>)
    return (
      <div>
        <ul>
          {user}
        </ul>
        <p>{this.props.users.length}</p>
      </div>
    )
  }
}

//add mapStateToProps here
const mapStateToProps = (state) => {
  return {users: state.users}
}

export default connect(mapStateToProps)(Users)
