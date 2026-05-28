import React from 'react';

function GifGrid({ gifs }) {
  return (
    <div className="gif-grid">
      {gifs.map((gif) => (
        <div key={gif.id} className="gif-item">
          <a href={gif.url} target="_blank" rel="noopener noreferrer">
            {/* Use fixed_width_downsampled for better performance */}
            <img 
              src={gif.images.fixed_width_downsampled.url} 
              alt={gif.title || "GIF"} 
            />
          </a>
          <p>{gif.title || "Untitled GIF"}</p>
        </div>
      ))}
    </div>
  );
}

export default GifGrid;   
