import React from 'react'
import TodoItem from './TodoItem'

import { connect } from 'react-redux'

import {createTodo} from './reduxActions'

class Todo extends React.Component {
    handleSubmit = e => {
      const todoData = {
        content: this.refs.content.value,
        dueDate: this.refs.dueDate.value
      }

      this.props.createTodo(todoData)
    }

    render() {
      console.log(this.props)
      return (
        <div className="App">
        <h1>Todo List</h1>
        <ul>
        {
          this.props.todoItems.map( todoItem => <TodoItem todoItem={todoItem} /> )
        }
        </ul>
        <input ref="content" type="text" placeholder="content" />
        <input ref="dueDate" type="text" placeholder="due date" />
        <button onClick={this.handleSubmit}>Submit</button>
        </div>
      );

    }

}

const mapDispatchToProps = dispatch => {
  return {
    createTodo: function(todoData) {
      dispatch({type: "HI", payload: "BYE"});
      dispatch(createTodo(todoData));
    }
  }
}


const mapStateToProps = state => {
  return {
    todoItems: state.todoItems
  }
}


// higher order component
export default connect(mapStateToProps, mapDispatchToProps)(Todo);
