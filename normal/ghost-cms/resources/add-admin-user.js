// Load the Ghost environment require('../../../ghost');

const UserModel = require('/var/lib/ghost/current/core/server/models/user');
const { Command } = require('commander');
const program = new Command();

program.command('add-admin-user').description('Addanewadminuser').option('--email<email>','Email').option('--name<name>','Name').option('--password<password>','Password').action(
  async(options) => {
    const{
      email,
      name,
      password
    } = options;
    constadminRoleId=1;

    try {
      await UserModel.User.add(
        {
          email,
          name,
          password,
          roles: [adminRoleId],
        },
        {}
      );
      console.log('Admin user added successfully.');
    } catch (err) {
      console.error('Error adding admin user:', err);
    }
  }
);
// Parse CLI arguments and run the command program.parse(process.argv);
