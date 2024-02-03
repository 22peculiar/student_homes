const express = require('express');
const bodyParser = require('body-parser');
const mysql = require('mysql2');
const path = require('path');

const app = express();
const port = process.env.PORT || 3000;

// Creating a MySQL connection
const connection = mysql.createConnection({
    host: '127.0.0.1',
    user: 'thomas',
    password: '',
    database: 'shms',
    port: 3306, // Check and adjust the port as needed
});

connection.connect((err) => {
    if (err) {
        console.error('Error connecting to MySQL: ', err);
    } else {
        console.log('Connected to MySQL database');
    }
});

// Set the 'views' directory and use Pug as the view engine
app.set('views',path.join(__dirname,'views'));
app.set('view engine', 'pug');


app.use(bodyParser.json()); 
app.use(bodyParser.urlencoded({ extended: true})) 


app.get('/', (req, res) => {
    res.render('index');
});

app.get('/login', (req, res) => {
    res.render('login');
});

app.get('/aboutus', (req, res) => {
    res.render('aboutus');
});

app.get('/contactus', (req, res) => {
    res.render('contactus');
});

app.get('/register', (req, res) => {
    res.render('register');
});

app.get('/dashboard', (req, res) => {
    res.render('dashboard', { data: students });
});


app.post('/login', async (req, res) => {
    const { username, password } = req.body;
  
    try {
      // Find user by username
      const query = 'SELECT * FROM users WHERE username = ?';
      connection.query(query, [username], async (error, results) => {
        if (error) {
          console.error(error);
          res.status(500).send('Internal Server Error');
          return;
        }
  
        if (results.length > 0) {
          const user = results[0];
          // Compare hashed password
          const isPasswordMatch = await bcrypt.compare(password, user.password);
  
          if (isPasswordMatch) {
            // Login successful
            res.send('Login successful!');
          } else {
            // Invalid password
            res.send('Invalid password');
          }
        } else {
          // User not found
          res.send('Invalid username');
        }
      });
    } catch (error) {
      console.error(error);
      res.status(500).send('Internal Server Error');
    }
  });
  
  app.post('/register', async (req, res) => {
    const { username, password } = req.body;
  
    try {
      // Hash the password
      const hashedPassword = await bcrypt.hash(password, 10);
  
      // Insert a new user with the hashed password
      const query = 'INSERT INTO users (username, password) VALUES (?, ?)';
      connection.query(query, [username, hashedPassword], (error) => {
        if (error) {
          console.error(error);
          res.status(500).send('Internal Server Error');
          return;
        }
  
        res.send('Registration successful!');
      });
    } catch (error) {
      console.error(error);
      res.status(500).send('Internal Server Error');
    }
  });

app.post('/dashboard', (req, res) => { 
	const name = req.body.name 
	const rollNo = req.body.rollNo 
	const dateOfBirth = req.body.dateOfBirth 
	const city = req.body.city 
	const number = req.body.number 
	const fatherNumber = req.body.fatherNumber 
	const roomNo = req.body.roomNo 
	const hostelName = req.body.hostelName 

	students.push({ 
		name: name, 
		rollNo: rollNo, 
		dateOfBirth: dateOfBirth, 
		city: city, 
		number: number, 
		fatherNumber: fatherNumber, 
		roomNo: roomNo, 
		hostelName: hostelName 
	}) 

	res.render('dashboard', { 
		data: students 
	}) 
}) 

app.post('/information', (req, res) => { 
	var requestedRollNo = req.body.rollNo; 
	students.forEach(student => { 
		if (student.rollNo == requestedRollNo) { 
			res.json(student) 
		} 
	}) 
}) 

app.post('/update', (req, res) => { 
	var requestedRollNo = req.body.rollNo; 
	var newRoomNo = req.body.newroomno; 
	students.forEach(student => { 
		if (student.rollNo == requestedRollNo) { 
			student.roomNo = newRoomNo; 
		} 
	}) 
	res.render('dashboard', { 
		data: students 
	}) 
}) 

app.post('/delete', (req, res) => { 
	var requestedRollNo = req.body.rollNo; 
	var j = 0; 
	students.forEach(student => { 
		j = j + 1; 
		if (student.rollNo === requestedRollNo) { 
			students.splice((j - 1), 1) 
		} 
	}) 
	res.render('dashboard', { 
		data: students 
	}) 
}) 

app.use(express.static(path.join(__dirname, 'public')));
app.use('/node_modules', express.static(path.join(__dirname, 'node_modules')));
app.use('/uploads', express.static(path.join(__dirname, 'uploads')));

// Start the server
app.listen(port, () => {
    console.log(`Server is running at http://localhost:${port}`);
  });
