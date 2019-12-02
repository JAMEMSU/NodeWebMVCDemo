const express = require("express");
const route = express.Router();

const blogController = require("../controller/blog");

route.get("/list", (req, res) => blogController.list(req, res));
route.get("/list/id/:id", (req, res) => blogController.listid(req, res));
route.put("/update/:id", (req, res) => blogController.update(req, res));
route.post("/create", blogController.validate("create"), (req, res) =>
  blogController.create(req, res)
);
route.delete("/delete/:id", async (req, res) =>
  blogController.delete(req, res)
);

module.exports = route;
