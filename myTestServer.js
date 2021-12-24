// Use the strict mode
'use strict';

// Get express framework for web application
const express = require('express');

// Constants for port and host
const PORT = 9000;
const HOST = '0.0.0.0';

// Application
const app = express();
app.get('/', (req, res) => {
  res.send('Welcome to Yichong Yang\'s world!');
});

app.listen(PORT, HOST);
console.log(`Node app running on http://${HOST}:${PORT}`);
