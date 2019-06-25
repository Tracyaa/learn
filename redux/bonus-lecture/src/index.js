import React from 'react';
import ReactDOM from 'react-dom';
import './index.css';
import App from './App';
import * as serviceWorker from './serviceWorker';

import { createStore } from 'redux'
import { Provider } from 'react-redux'


const initalState = {
  todoItems: [
    {
      content: 'Walk Dog',
      dueDate: 'Tonight'
    },
    {
      content: 'Shower',
      dueDate: 'Tonight'
    },
    {
      content: 'Eat Dinner',
      dueDate: 'Tonight'
    }
  ]
}

const reducer = (state = initalState, action) => {

  if (action.type === "CREATE_TODO") {
    console.log(action, "HELLO FROM CREATE_TODO")
    const todoItems = [...state.todoItems, action.payload]
    return { ...state, todoItems }
  }
  else if (action.type === "UPDATE_TODO") {
    // return some state
  }
  else if (action.type === "DELETE_TODO") {
    // return some state
  }

  else if (action.type === "LOGIN_USER") {

  }
  else if (action.type ==="HI") {
    console.log(action, "HELLO FROM HI")
    return state
  }
  else {
    return state
  }
}

const store = createStore(reducer)

console.log(store.getState())


ReactDOM.render(
  <Provider store={store}>
    <App />
  </Provider>,
  document.getElementById('root'));

// If you want your app to work offline and load faster, you can change
// unregister() to register() below. Note this comes with some pitfalls.
// Learn more about service workers: https://bit.ly/CRA-PWA
serviceWorker.unregister();
