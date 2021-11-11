import { Pool } from "pg";

export const db = new Pool({
	user: "postgres",
	host: "lacava_db",
	database: "postgres",
	password: "lacavastudios",
	port: 5432,
});

db.connect();
