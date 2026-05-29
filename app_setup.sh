npm create vite@latest GiphySearch -- --template react
cd GiphySearch
npm install gh-pages --save-dev
# added following object to defineConfig function in vite.config.js
# base: '/GiphySearch/',
# added homepage to the root of the JSON in
# package.json as well as two additional 
# values to scripts section of that file
# {
#  "name": "giphysearch",
#  "homepage": "https://For-Quick-Start.github.io/GiphySearch", # added this
#  "private": true,
#  "version": "0.0.0",
#  "type": "module",
#  "scripts": {
#    "dev": "vite",
#    "build": "vite build",
#    "predeploy": "npm run build", # added this
#    "deploy": "gh-pages -d dist", # added this
#    "lint": "eslint .",
#    "preview": "vite preview"
#  },
# then the deploy command ensures that the right artifacts are 
# output for serving via GitHub pages
npm run deploy
# select gh-pages branch and /root folder when setting up pages
git init
git add .
git commit -m "Initial commit"
git remote add origin git@github.com:For-Quick-Start/GiphySearch.git
git push -u origin main
git add UserStory1.md
git commit -m "added UserStory1"
git push origin main
git add UserStory2.md
git commit -m "added UserStory2"
git push origin main
git add UserStory3.md
git commit -m "added UserStory3"
git push origin main
git status
# created giphy acct and got beta api key
# added API key to .env file as var VITE_GIPHY_API_KEY=
git add .env
git commit -m "added vite env variable continaing giphy API key"
git push origin main
git add GiphySearch.drawio
git add GiphySearch.png
git commit -m "added wireframe in original draw.io format and also as a PNG file"
git push origin main
git add src/App.css src/index.css
git commit -m "removed auto-generated boilerplate styles from src/index.css & App.css so we can start with a clean slate as we build the initial structure"
git add README.md
git commit -m "updated README to better reflect the project"
git push origin main
git add README.md
git commit -m "another README update"
git push origin main
git add .
git commit -m "cleaned up assets directory of unneeded template artifacts"
git commit -m "cleaned up public directory of unneeded template artifacts"
git push origin main
git add .
git commit -m "cleaned up public directory of unneeded template artifacts"
git push origin main
git add .
git commit -m "updated App component and created SearchBar and GifGrid components to have empty elements, to be populated later"
git push origin main
git add .
git commit -m "added Google font Rye links to header of index.html"
git push origin main
git add .
git commit -m "fleshed out the App.jsx file"
git push origin main
git add .
git commit -m "added some font styling to the App.css file for H1 elements"
git push origin main
git add .
git commit -m "updates to SearchBar component"
git add .
git commit -m "updates to GifGrid component"
git push origin main
git add .
git commit -m "updates to index.css for most styles"
git push origin main
