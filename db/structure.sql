CREATE TABLE "schema_migrations" ("version" varchar NOT NULL PRIMARY KEY);
CREATE TABLE "ar_internal_metadata" ("key" varchar NOT NULL PRIMARY KEY, "value" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar, "email" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "password_digest" varchar, "remember_digest" varchar, "admin" boolean DEFAULT 'f', "activation_digest" varchar, "activated" boolean DEFAULT 'f', "activated_at" datetime, "reset_digest" varchar, "reset_sent_at" datetime);
CREATE UNIQUE INDEX "index_users_on_email" ON "users" ("email");
INSERT INTO "schema_migrations" (version) VALUES
('20180325074750'),
('20180325081857'),
('20180325082226'),
('20180327142331'),
('20180402140246'),
('20180415041254'),
('20180429090858');


