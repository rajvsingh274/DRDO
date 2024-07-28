const express = require("express");
const mysql = require("mysql");
const bodyParser = require("body-parser");

const app = express();
app.use(bodyParser.urlencoded({ extended: true }));

// Create a connection to the database
const db = mysql.createConnection({
  host: "localhost",
  user: "root", 
  password: "rajvsingh", 
  database: "DRDO",
});

// Connect to the database
db.connect((err) => {
  if (err) {
    console.error("Error connecting to the database:", err);
    return;
  }
  console.log("Connected to the database");
});

// Serve the HTML form
app.get("/", (req, res) => {
  res.sendFile(__dirname + "/index.html"); // Ensure index.html is in the same directory
});

// Handle form submission
app.post("/submit", (req, res) => {
  const {
    sr_no,
    project_number,
    project_title,
    pi_name,
    contact_details,
    email_pd,
    type_of_project,
    objectives,
    deliverables,
    initial_sanctioned_cost,
    total_expenditure,
    date_of_sanction,
    pdc_month,
    date_of_completion,
    pdc_extension_1,
    pdc_extension_2,
    pdc_extension_3,
    drds,
    drtc,
    sanction_year,
    current_status,
    date_of_closure,
  } = req.body;

  const sql = `
    INSERT INTO your_table_name (
      sr_no, project_number, project_title, pi_name, contact_details, email_pd,
      type_of_project, objectives, deliverables, initial_sanctioned_cost,
      total_expenditure, date_of_sanction, pdc_month, date_of_completion,
      pdc_extension_1, pdc_extension_2, pdc_extension_3, drds, drtc,
      sanction_year, current_status, date_of_closure
    )
    VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
  `;

  const values = [
    sr_no,
    project_number,
    project_title,
    pi_name,
    contact_details,
    email_pd,
    type_of_project,
    objectives,
    deliverables,
    initial_sanctioned_cost,
    total_expenditure,
    date_of_sanction,
    pdc_month,
    date_of_completion,
    pdc_extension_1,
    pdc_extension_2,
    pdc_extension_3,
    drds,
    drtc,
    sanction_year,
    current_status,
    date_of_closure,
  ];

  db.query(sql, values, (err, result) => {
    if (err) {
      console.error("Error inserting data:", err);
      res.send("Error inserting data");
      return;
    }
    res.send("Data inserted successfully");
  });
});


const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});