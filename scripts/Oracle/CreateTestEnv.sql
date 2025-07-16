
-- Create user test man to build a PoC env.

create user testman identified by nutanix quota unlimited on users;

grant connect,resource to testman;

create sequence testman.TestSeqIns;

CREATE TABLE testman.TestIns (
  eventid NUMBER PRIMARY KEY,
  eventdate DATE
);


