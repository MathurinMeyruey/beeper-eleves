import "dotenv/config";
import express from "express";
import expressauth from "express-openid-connect";
const { auth, requiresAuth } = expressauth;
import { queryNormalized } from "./api/db/connection-pool.js";

const app = express();

// auth router attaches /login, /logout, and /callback routes to the baseURL
app.use(
  auth({
    authRequired: false,
    auth0Logout: true,
    secret: process.env.AUTH0_SECRET,
    baseURL: process.env.BASE_URL,
    clientID: process.env.AUTH0_CLIENT_ID,
    issuerBaseURL: "https://" + process.env.AUTH0_DOMAIN,
  })
);

app.use(requiresAuth());

app.use(express.static("web/page"));

app.get("/api/home", async (req, res) => {
  const beeps = await queryNormalized("SELECT * FROM beep LIMIT 10");
  res.json(beeps);
});

app.listen(3000);
