import pg from "pg";
import camelcaseKeys from "camelcase-keys";

export const pool = new pg.Pool({
  connectionString: process.env.POSTGRE_CONNECTION_STRING,
});

export async function queryNormalized(...args) {
  const res = await pool.query(...args);
  return camelcaseKeys(res.rows);
}
