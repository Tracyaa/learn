import React, { Component } from 'react';


class ControlledForm extends Component {
  state = {
    name: '',
    email: ''
  }

  handleChange = (e) => {
    // console.log(e.target.name);
    const letter = e.target.value.toUpperCase()
    this.setState({
      [e.target.name]: letter
    })
  }

  handleSubmit = (e) => {
    e.preventDefault(e)
    burgerAdapter.postBurger(this.state)
  }

  render() {

    return (
        <form onSubmit={this.handleSubmit}>
          <input type="text" onChange={this.handleChange} name='name' value={this.state.name} placeholder="name" />
          <input type="text" onChange={this.handleChange} name='email' value={this.state.email} placeholder="email" />
          <input type="submit" value="Submit" />
        </form>
    )
  }
}






export default ControlledForm
