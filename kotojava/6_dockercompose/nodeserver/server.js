// NodeJS
// Timecode: 3:42
// Link: https://www.youtube.com/watch?v=87qdu6-dXag&list=PLvjGcAdDu5utraOVR4akDAUthmgjVt0V5&index=3
const http = require('http');

function generateRandomString(length) {
	return [...Array(length)].map(()=> Math.floor(Math.random()*16).toString(16)).join('');
}

http.createServer((_, res) => { 
	res.writeHead(200, {'Content-Type': 'application/json'});
	res.end(JSON.stringify({uuid: generateRandomString(36)}));

}).listen(8080, ()=>{ 
	console.log('Server running on http://localhost:8080');
});

