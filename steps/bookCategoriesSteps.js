import { Given, When, Then } from '@cucumber/cucumber';
import { expect } from '@playwright/test';
import { BrowserUtility } from '../utilities/BrowserUtility.js';
import { PageManager } from "../globalPagesSetup.js";

When('user clicks the Books section', async function () {
  await PageManager.dashboardPage.booksLink.click();
});

When('user clicks books category dropdown', async function () {
  await PageManager.booksPage.bookCategoriesDropdown.click();
});

Then('user should see all {int} book categories in the dropdown', async function (int) {
  expect(await PageManager.booksPage.getTotalBookOptions()).toBe(int);
});

Then('book category name {string} should be inlcuded in the categories', async function (bookCategoryName) {
    expect(await PageManager.booksPage.isCategoryPresent(bookCategoryName)).toBeTruthy();
});
