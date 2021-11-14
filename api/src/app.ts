import { Application, Request, Response } from "express";
import { db } from "./db";
import express from "express";
// import cors from "cors";

export const app: Application = express();

// app.use(cors());

app.get("/products", async (req: Request, res: Response) => {
	try {
		res.send("Hello World!");
	} catch (error) {
		console.log("Error processing your request:", error);
	}
});

app.get("/db", async (req: Request, res: Response) => {
	try {
		await db.query("SELECT * FROM products");
	} catch (error) {
		console.log("Error processing your request:", error);
	}
});

app.post("/create", async (req: Request, res: Response) => {
	try {
		const newProd = await db.query(
			"INSERT INTO products(name, description) VALUES ('test name', 'test description')"
		);
		console.log("prod", newProd);

		res.send(newProd);
	} catch (error) {
		console.log("Error processing your request:", error);
	}
});
