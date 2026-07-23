import express from "express";
import { showHomePage } from "./index.js";
import { showProjectsPage, showProjectDetailsPage } from "./projects.js";
import { showOrganizationsPage } from "./organizations.js";
import { showCategoriesPage } from "./categories.js";
import { testErrorPage } from "./errors.js";
import { showOrganizationDetailsPage } from "./organizations.js";

const router = express.Router();

// Define routes
router.get("/", showHomePage);
router.get("/organizations", showOrganizationsPage);
router.get("/organization/:id", showOrganizationDetailsPage);
router.get("/projects", showProjectsPage);
router.get("/project/:id", showProjectDetailsPage);
router.get("/categories", showCategoriesPage);

// error-handling routes
router.get("/error", testErrorPage);

export default router;