const PORT = 80;
const express = require("express");
const app = express();
const server = require("http").createServer(app);
// import { cloneObject } from "../../utils";
import { subFoo } from "../../utils";

// const testInterval1: NodeJS.Timer = setInterval(() => console.log(cloneObject({ ayy: "lmao" })), 3000);
const testInterval2: NodeJS.Timer = setInterval(() => console.log(subFoo()), 3000);

server.listen(PORT, () => console.log("node server listening on port " + PORT));
