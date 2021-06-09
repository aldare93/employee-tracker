const connection = require('./connection');
class DB {
    constructor (connection) {
        this.connection = connection
    }

    viewAllDepartments() {
        return this.connection.query(
            `
        SELECT
            department.id,
            department.name
        FROM 
            department
            `
        )
    }

    addDepartment(department) {
        return this.connection.query(
            `INSERT INTO department
            SET ?`, department
        )
    }
} 


module.exports= new DB(connection);