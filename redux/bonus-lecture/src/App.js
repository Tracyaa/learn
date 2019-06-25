import React, { Component } from 'react';
import './App.css';

import Todo from './Todo'
import NavBar from './NavBar'

class App extends Component {
  state = {
    currentUser: {

    }
  }
  render() {
    return (

      <div>
        <NavBar />
        <Todo />
      </div>
    )
  }
}

export default App;
