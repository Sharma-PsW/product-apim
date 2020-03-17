IF NOT  EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[AM_API_CATEGORIES]') AND TYPE IN (N'U'))
CREATE TABLE AM_API_CATEGORIES (
  UUID VARCHAR(50),
  NAME VARCHAR(255),
  DESCRIPTION VARCHAR(1024),
  TENANT_ID INTEGER DEFAULT -1,
  UNIQUE (NAME,TENANT_ID),
  PRIMARY KEY (UUID)
);

ALTER TABLE AM_SYSTEM_APPS
ADD TENANT_DOMAIN VARCHAR(255) DEFAULT 'carbon.super';