import React, { useState } from 'react';

function SearchBar({ onSearch }) {
  const [inputValue, setInputValue] = useState('');

  const handleSubmit = (e) => {
    e.preventDefault();
    if (inputValue.trim()) {
      onSearch(inputValue.trim());
    }
  };

  return (
    <form onSubmit={handleSubmit} className="search-bar">
      <input
        type="text"
        value={inputValue}
        onChange={(e) => setInputValue(e.target.value)}
        placeholder="Search for GIFs..."
      />
      <button type="submit">Search</button>
    </form>
  );
}

export default SearchBar;   
