import React from 'react'

const TodoItem = props => (
  <li>
    <p>{props.todoItem.content} | <span style={{color: "red"}}>{props.todoItem.dueDate}</span></p>
  </li>
)

export default TodoItem
