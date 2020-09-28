
--Coffees töflur--
INSERT INTO Coffees_cid_cn_cm(cid, cn, cm)
SELECT DISTINCT cid, cn, cm
FROM coffees;

INSERT INTO Coffees_did_dn_ds(did, dn, ds)
SELECT DISTINCT did, dn, ds
FROM coffees;

INSERT INTO Coffees_did_hid(did, hid)
SELECT DISTINCT did, hid
FROM coffees;

INSERT INTO Coffees_did_hid(did, hid)
SELECT DISTINCT did, hid
FROM coffees;

--Customers töflur--
INSERT INTO customers_cz_cc(cz, cc)
SELECT DISTINCT cz, cc
FROM customers;

INSERT INTO customers_cid_cn_cs_cnr_cz_eid(cid, cn, cs, cnr, cz, eid)
SELECT DISTINCT cid, cn, cs, cnr, cz, eid
FROM customers;

--Projects töflur--
INSERT INTO projects_mid_mn(mid, mn)
SELECT DISTINCT mid, mn
FROM projects;

INSERT INTO projects_id_mid(id, mid)
SELECT DISTINCT id, mid
FROM projects;

INSERT INTO projects_sid_sn(sid, sn)
SELECT DISTINCT sid, sn
FROM projects;

INSERT INTO projects_pid_pn(pid, pn)
SELECT DISTINCT pid, pn
FROM projects;

INSERT INTO projects_id_pid_sid(id, pid, sid)
SELECT DISTINCT id, pid, sid
FROM projects;

--Rentals töflur--
INSERT INTO rentals_hz_hc(hz, hc)
SELECT DISTINCT hz, hc
FROM rentals;

INSERT INTO rentals_hid_hs_hz(hid, hs, hz)
SELECT DISTINCT hid, hs, hz
FROM rentals;

INSERT INTO rentals_pid_pn(pid, pn)
SELECT DISTINCT pid, pn
FROM rentals;

INSERT INTO rentals_pid_hid_s(pid, hid, s)
SELECT DISTINCT pid, hid, s
FROM rentals;
