const mysql = require('mysql');
const inquirer = require('inquirer');
// create the connection information for the sql database
const db = require('./db');
// begin prompting user
const afterConnection = () => {
  // questionsMain();
  searchArtist();
};


const viewAllDepartments = async () => {
    const departments = await db.viewAllDepartments();
    console.table(departments);
}

const addDepartment = async () => {
    const department = await inquirer.prompt ([
        {
            name: "name",
            type: "input",
            message: "What is the department name?"
        }
    ]);
    await db.addDepartment(department)
    viewAllDepartments();
}

addDepartment();
