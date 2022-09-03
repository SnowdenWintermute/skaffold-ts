export { subFoo } from "./sub-folder";

const clonedeep = require("lodash.clonedeep");

export const cloneObject = (obj: Object) => {
  return clonedeep(obj);
};
