const express = require('express');
const mysql = require('mysql2');

// the port we are using to run the server locally
const PORT = process.env.PORT || 3000;
const app = express();

app.use(express.urlencoded({ extended: false }));
app.use(express.json());

const db = mysql.createConnection(
  {
    host: 'localhost',
    user: 'root',
    password: 'vnnnhm28',
    database: 'department_db'
  },
  console.log(`Connected to the department_db database.`)
);
// will probably have to use db.query to interact with inquirer prompts
db.query('SELECT * FROM departments_db', function (err, results) {
  console.log(results);
});

app.use((req, res) => {
  res.status(404).end();
});

app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
