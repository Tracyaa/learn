// TODO: Create action creators as defined in tests
export const addQuote = (quoteObj) => {
  return {type: "ADD_QUOTE", quoteObj}
}

export const removeQuote = (quoteId) => {
  return {type: "REMOVE_QUOTE", quoteId}
}

export const upvoteQuote = (quoteId) => {
  return {type: "UPVOTE_QUOTE", quoteId}
}

export const downvoteQuote = (quoteId) => {
  return {type: "DOWNVOTE_QUOTE", quoteId}
}
