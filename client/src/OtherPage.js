import React from 'react';
import { Link } from 'react-router-dom';

export default () => {
  return (
    <div>
      <h3>I'm some other page</h3>
      <Link to="/">Go back to home page!</Link>
    </div>
  );
};
