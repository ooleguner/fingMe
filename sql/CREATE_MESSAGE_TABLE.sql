 CREATE TABLE MESSAGE(
  ID NUMBER,
  CONSTRAINT ID_MESSAGE PRIMARY KEY (ID),
  TEXT VARCHAR(150) NOT NULL,
  DATE_SENT  TIMESTAMP,
  DATE_READ TIMESTAMP,
  USER_FROM_ID NUMBER,
  CONSTRAINT USER_FROM_ID_FK FOREIGN KEY (USER_FROM_ID) REFERENCES USER_TABLE(ID),
  USER_TO_ID NUMBER,
  CONSTRAINT USER_TO_ID_FK FOREIGN KEY (USER_TO_ID) REFERENCES USER_TABLE(ID));