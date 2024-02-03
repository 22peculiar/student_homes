const express = require('express');
const bodyParser = require('body-parser');
const db = require('./db');
const path = require('path');
// const students = [{ 
// 	name: "Thomas James", 
// 	rollNo: 413020, 
// 	dateOfBirth: "22/03/2001", 
// 	city: "Rock", 
// 	number: 6388339966, 
// 	fatherNumber: 6388339977, 
// 	roomNo: 23, 
// 	hostelName: "BH-2"
// }];




const app = express(); 
const port = process.env.PORT || 3000;

// Set the 'views' directory and use Pug as the view engine
app.set('views',path.join(__dirname,'views'));
app.set('view engine', 'pug');


app.use(bodyParser.json()); 
app.use(bodyParser.urlencoded({ extended: true})) 
app.use(express.static(path.join(__dirname, 'public')));
app.use('/node_modules', express.static(path.join(__dirname, 'node_modules')));
app.use('/uploads', express.static(path.join(__dirname, 'uploads')));


app.get('/', (req, res) => {
    res.render('index');
});

app.get('/home', (req, res) => {
    res.render('home');
});

app.post('/', (req, res) => { 
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

	res.render('home', { 
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
	res.render('home', { 
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
	res.render('home', { 
		data: students 
	}) 
}) 

// Start the server
app.listen(port, () => {
    console.log(`Server is running at http://localhost:${port}`);
  });
