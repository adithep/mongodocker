db.isMaster();
use admin;
db.createUser({'user': 'oplogger', pwd: 'PASSWORD', "roles" : [{"role" : "read", "db" : "local"}]});
db.runCommand({ createRole: "oplogger", privileges: [   { resource: { db: 'local', collection: 'system.replset'}, actions: ['find']}, ], roles: [{role: 'read', db: 'local'}] });
db.runCommand({ grantRolesToUser: 'oplogger', roles: ['oplogger']});
