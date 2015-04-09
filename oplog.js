config = {_id: 'msrs', members: [{_id: 0, host: 'localhost:27017'}, {_id: 1, host: 'localhost:27016'}, {_id: 2, host: 'localhost:27015'}]};
rs.initiate(config);
rs.status();
config = rs.conf();
config.members[0].priority = 1;
config.members[1].priority = 0.5;
config.members[2].priority = 0.5;
rs.reconfig(config, { force: true });
db.isMaster();
