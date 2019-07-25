const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  host: 'localhost',
  password: '123',
  database: 'vagrant'
});

const cohortsName = [process.argv[2] || 'JUL02'];

pool.query(`SELECT teachers.name AS teacher, MAX(cohorts.name) AS cohorts FROM assistance_requests
JOIN teachers ON teachers.id = teacher_id
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name = $1
GROUP BY teachers.name
ORDER BY teachers.name;
`,cohortsName).then(res => {
  console.log(res.rows);
}).catch(err => console.error('query error', err.stack));