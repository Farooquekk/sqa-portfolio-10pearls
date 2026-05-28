import { defineConfig } from "cypress";

export default defineConfig({
  viewportWidth: 1366,
  viewportHeight: 768,

  video: true,
  screenshotOnRunFailure: true,

  e2e: {
    baseUrl: "https://www.saucedemo.com",

    setupNodeEvents(on, config) {
      return config;
    }
  }
});