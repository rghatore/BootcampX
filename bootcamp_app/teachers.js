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
const input = process.argv[2];

pool.query(`
SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort
FROM teachers
JOIN assistance_requests ON teacher_id = teachers.id
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name LIKE '%${input}%'
ORDER BY teacher;
`).then(response => {
  // console.log(response.rows);
  response.rows.forEach(item => {
    console.log(`${item.cohort}: ${item.teacher}`);
  })
}).catch(err => console.log('query error', err.stack));