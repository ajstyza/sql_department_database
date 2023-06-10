const mysql = require('mysql2');
const inquirer = require('inquirer');

navigate = [{
    type: 'list',
    name: 'first_prompt',
    message: 'What would you like to do?', 
    choices: ['view all departments', 'view all roles', 'view all emplyees', 'add a department', 'add a role', 'add and update employee']

}];

require.prompt(navigate);