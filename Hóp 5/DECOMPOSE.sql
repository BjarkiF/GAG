
-- Coffees töflur--
CREATE TABLE Coffees_cid_cn_cm(
  cid integer NOT NULL UNIQUE,
  cn varchar NOT NULL,
  cm varchar NOT NULL,
  PRIMARY KEY (cid)
);

CREATE TABLE Coffees_did_dn_ds(
  did integer NOT NULL UNIQUE,
  dn varchar NOT NULL,
  ds varchar NOT NULL,
  PRIMARY KEY (did)
);

CREATE TABLE Coffees_did_hid(
  did integer NOT NULL,
  hid integer NOT NULL,
  PRIMARY KEY (did, hid),
  FOREIGN KEY (did) REFERENCES Coffees_did_dn_ds(did)
);

CREATE TABLE Coffees_did_cid(
  did INT NOT NULL,
  cid INT NOT NULL,
  PRIMARY KEY (did, cid),
  FOREIGN KEY (cid) REFERENCES Coffees_cid_cn_cm(cid)
);

--Customers töflur--
CREATE TABLE Customers_cz_cc(
  cz integer NOT NULL UNIQUE,
  cc varchar NOT NULL,
  PRIMARY KEY (cz)
);

CREATE TABLE Customers_cid_cn_cs_cnr_cz_eid(
  cid integer NOT NULL UNIQUE,
  cn varchar NOT NULL,
  cs varchar NOT NULL,
  cnr integer NOT NULL,
  cz integer NOT NULL,
  eid integer NOT NULL,
  PRIMARY KEY (cid),
  FOREIGN KEY (cz) REFERENCES Customers_cz_cc(cz)
);

--Projects töflur--
CREATE TABLE Projects_mid_mn(
  mid integer NOT NULL UNIQUE,
  mn varchar NOT NULL,
  PRIMARY KEY (mid)
);

CREATE TABLE Projects_id_mid(
  id integer NOT NULL UNIQUE,
  mid integer NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (mid) REFERENCES Projects_mid_mn(mid)
);

CREATE TABLE Projects_sid_sn(
  sid integer NOT NULL UNIQUE,
  sn varchar NOT NULL,
  PRIMARY KEY (sid)
);

CREATE TABLE Projects_pid_pn(
  pid integer NOT NULL UNIQUE,
  pn varchar NOT NULL,
  PRIMARY KEY (pid)
);

CREATE TABLE Projects_id_pid_sid(
  id integer NOT NULL,
  pid integer NOT NULL,
  sid integer NOT NULL,
  PRIMARY KEY (id, pid, sid),
  FOREIGN KEY (pid) REFERENCES Projects_pid_pn(pid),
  FOREIGN KEY (sid) REFERENCES Projects_sid_sn(sid),
  FOREIGN KEY (id) REFERENCES Projects_id_mid(id)
);

--Rentals töflur--
CREATE TABLE Rentals_hz_hc(
  hz integer NOT NULL UNIQUE,
  hc varchar,
  PRIMARY KEY (hz)
);

CREATE TABLE Rentals_hid_hs_hz(
  hid integer NOT NULL UNIQUE,
  hs varchar NOT NULL,
  hz integer NOT NULL,
  PRIMARY KEY (hid),
  FOREIGN KEY (hz) REFERENCES Rentals_hz_hc(hz)
);

CREATE TABLE Rentals_pid_pn(
  pid integer NOT NULL UNIQUE,
  pn varchar NOT NULL,
  PRIMARY KEY (pid)
);

CREATE TABLE Rentals_pid_hid_s(
  pid integer NOT NULL,
  hid integer NOT NULL,
  s integer NOT NULL,
  PRIMARY KEY (pid, hid),
  FOREIGN KEY (hid) REFERENCES Rentals_hid_hs_hz(hid),
  FOREIGN KEY (pid) REFERENCES Rentals_pid_pn(pid)
);
