const mysql = require('mysql2');
const inquirer = require('inquirer');

const questions = [{
    type: 'list',
    name: 'first_prompt',
    message: 'What would you like to do?', 
    choices: ['view all departments', 'view all roles', 'view all emplyees', 'add a department', 'add a role', 'add and update employee', 'quit']
}
];
function init() { 
    return inquirer.prompt(questions)
        .then((res) => {

            if (res.first_prompt == 'view all departments')
            // display departments () {
                else if (res.first_prompt == 'view all roles')
                // display roles {
                    else if (res.first_prompt == 'view all employees')
                    // display employee table
                        else if (res.first_prompt == 'add a department')
                })
            
            };

init();
//  I'll need to use "as aliases" and join in order to update data based on inquirer user input