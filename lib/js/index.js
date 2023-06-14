const mysql = require('mysql2');
const inquirer = require('inquirer');

const questions = [{
    type: 'list',
    name: 'first_prompt',
    message: 'What would you like to do?', 
    choices: ['view all departments', 'view all roles', 'view all employees', 'add a department', 'add a role', 'add and update employee', 'quit']
}
];
function init() { 
    return inquirer.prompt(questions)
        .then((res) => {

                    if (res.first_prompt == 'view all departments') {
                         showDepartments();
                    }
                    else if (res.first_prompt == 'view all roles') {
                        showRoles();
                     }
                    else if (res.first_prompt == 'view all employees') {
                        showEmployees();
                    }
                    else if (res.first_prompt == 'add a department') {
                    createDepartment();
                    }
                    else if (res.first_prompt == 'add a role'){
                        addRole();
                    }
                    else if (res.first_prompt == 'add and update employee') {
                    addEmployee();
                    }
                    })

                };

init();
//  I'll need to use "as aliases" and join in order to update data based on inquirer user input


// all functions to be called in conditional logic:
function showDepartments (){
db.query('SELECT * FROM departments;'), (err) => { if(err) {console.error(err)} 
    else console.log("showing all departments")}

    init();
};
function showRoles(){
db.query('SELECT * FROM roles;'), (err) => { if(err) {console.error(err)} 
else console.log("showing all roles")}

init();
}

function showEmployees(){
db.query('SELECT * FROM employees;'), (err) => { if(err) {console.error(err)} 
else console.log("showing all employees")}

init();
}

function createDepartment() {
    inquirer.prompt 
    ([
       {
        type:'input',
        name: 'department',
        message: 'what do you want to name the department?'
       } 
    ])
    .then((res) => {
        db.query(`INSERT INTO departments (department_name) VALUES ("${res.department}")`,
        (err) => { if(err) {console.error(err) } 
        else console.log("deparment added")}
        
    )})
    init();
    };
    function addRole(){
        inquirer.prompt 
        ((
            {
            type: 'input',
            name: 'roles',
            message: 'what role would you like to add?'
        }
        ))
        .then((res) =>{
            db.query(`INSERT INTO roles (title, salary, department_id) VALUES ("${title}", ${salary}, ${department_id})" `)
        })

    }
    function addEmployee(){

        inquirer.prompt((
            {
                type: 'input',
                names: 'employee',
                message: 'add first name, last name, and '
            }
        ))
        .then((res) => {
            db.query(`INSERT INTO employees (first_name, last_name, role_id) VALUES ("${first_name}", "${last_name}", ${role_id})`)
        })
    };