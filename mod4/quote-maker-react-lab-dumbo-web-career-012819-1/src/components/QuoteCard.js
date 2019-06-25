import React from 'react';
import {connect} from 'react-redux';
// import {removeWizard}

const QuoteCard = (props) =>
  <div>
    <div className="card card-inverse card-success card-primary mb-3 text-center">
      <div className="card-block">
        <blockquote className="card-blockquote">
          {props.content}
          {<footer>- author <cite title="Source Title">{props.author}</cite></footer>}
        </blockquote>
      </div>
      <div className="float-right">
        <div className="btn-group btn-group-sm" role="group" aria-label="Basic example">
          <button
            type="button"
            className="btn btn-primary"
          >
            Upvote
          </button>
          <button
            type="button"
            className="btn btn-secondary"
          >
            Downvote
          </button>
          <button
            type="button"
            className="btn btn-danger"
          >
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        {/* <div>Votes: {Render Quote Votes}</div> */}
      </div>
    </div>
  </div>;

const mapDispatchToProps = (dispatch) => {
  return {
    removeQuote: (name) => {dispatch({type: "REMOVE_QUOTE", payload: name})}
  }
}

export default QuoteCard;
