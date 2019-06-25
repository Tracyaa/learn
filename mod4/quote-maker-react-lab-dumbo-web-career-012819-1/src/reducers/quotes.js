// reducer
export default (state = [], action) => {

  switch (action.type) {
    
    case "ADD_QUOTE":
      let newQuote = action.payload
      let newArr = [newQuote, ...state.quotes]
      return {...state, quotes: newArr} // only changing the one of the keys

    case "REMOVE_QUOTE":
      let name = action.payload
      let filteredArray = state.quotes.filter(quote => quote.name !== name)
      return {...state, quotes: filteredArray}

    default:
      return state;
  }
}
