import { Application, Request, Response } from "express";
// import { db } from "./db";
import express from "express";
// import cors from "cors";

export const app: Application = express();

// app.use(cors());

app.get("/products", async (req: Request, res: Response) => {
	try {
		res.send("Hello World1");
	} catch (error) {
		console.log("Error processing your request:", error);
	}
});
