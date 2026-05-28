import React, { useState, useEffect } from 'react';
import SearchBar from './SearchBar';
import GifGrid from './GifGrid';
import './App.css'

function App() {
  const [query, setQuery] = useState('');
  const [gifs, setGifs] = useState([]);
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState(null);

  const fetchGifs = async (searchTerm) => {
    if (!searchTerm) return;
    
    setLoading(true);
    setError(null);
    
    try {
      const API_KEY = import.meta.env.VITE_GIPHY_API_KEY; 
      const limit = 12;
      
      const response = await fetch(
        `https://api.giphy.com/v1/gifs/search?q=${searchTerm}&api_key=${API_KEY}&limit=${limit}`
      );
      
      const data = await response.json();
      
      if (data.error) {
        throw new Error(data.message);
      }
      setGifs(data.data);
    } catch (err) {
      setError(err.message);
    } finally {
      setLoading(false);
    }
  };

  const handleSearch = (term) => {
    setQuery(term);
    fetchGifs(term);
  };

  return (
    <div className="App">
      <h1>Giphy Search</h1>
      <SearchBar onSearch={handleSearch} />
      {loading && <p>Loading...</p>}
      {error && <p style={{color: 'red'}}>Error: {error}</p>}
      {!loading && gifs.length > 0 && (<GifGrid gifs={gifs} />)}
    </div>
  );
}

export default App
