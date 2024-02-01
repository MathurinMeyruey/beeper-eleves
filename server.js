import "dotenv/config";
import express from "express";
import expressauth from "express-openid-connect";
const { auth, requiresAuth } = expressauth;
import { queryNormalized } from "./api/db/connection-pool.js";
import bodyParser from "body-parser";

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

app.use(bodyParser.json());

app.use(express.static("web/page"));
app.use(express.static("web"));

app.use(async (req, res, next) => {
  const users = await queryNormalized("SELECT * FROM users WHERE auth0_id=$1", [
    req.oidc.user.sub,
  ]);
  req.user = users[0];
  next();
});

app.get("/api/home", async (req, res) => {
  const userId = req.user.id;
  const beeps = await queryNormalized(
    `
  SELECT
    users.name AS author_name,
    users.id AS author_id,
    users.picture AS author_picture,
    beep.id,
    beep.content,
    beep.like_count,
    beep.created_at,
    liked.id IS NOT NULL AS liked
  FROM beep 
  JOIN users ON users.id = beep.author_id
  LEFT JOIN liked ON liked.beep_id=beep.id AND liked.liker_id=$1
  ORDER BY created_at DESC
  LIMIT 10`,
    [userId]
  );
  res.json(beeps);
});

app.post("/api/beep", async (req, res) => {
  const dbRes = await queryNormalized(
    `
    INSERT INTO beep(content, author_id) VALUES($1, $2) RETURNING *;
  `,
    [req.body.content, req.user.id]
  );
  res.json(dbRes[0]);
});

app.listen(3000);
