const { Pool } = require('pg');

//  connceting to postgres using pool
const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  port: 5432,             // default port for postgres
  database: 'bootcampx'
});

// getting user input
const input = process.argv.slice(2);
// console.log(input);

// setting up query with placeholders
const queryString = `
SELECT students.id, students.name AS student_name, cohorts.name AS cohort_name
FROM students
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name LIKE $1
LIMIT $2;
`;

// setting up values for placeholders
const values = [`%${input[0]}%`, `${input[1] || 5}`];

// querying the database
pool.query(queryString, values).then(response => {
  // console.log(response.rows);
  response.rows.forEach(user => {
    console.log(`${user.student_name} has an id of ${user.id} and was in the ${user.cohort_name} cohort`);
  })
}).catch(err => console.log('query error', err.stack));