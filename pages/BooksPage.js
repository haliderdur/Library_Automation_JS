import { BasePage } from "./BasePage.js";

export class BooksPage extends BasePage {

  // ADD YOUR LOCATORS HERE...
   /**
   * @param {import('playwright').Page} page
   */
   constructor(page){
    super(page);
    this.bookCategoriesDropdown = page.locator("//select[@id='book_categories']");
  }

    /**
   * Get the total number of book category options
   * @returns {Promise<number>}
   */
    async getTotalBookOptions() {
      return await this.bookCategoriesDropdown.locator("option").count();
    }

  /**
   * Check if a specific category is present in the dropdown
   * @param {string} category - The category to check for
   * @returns {Promise<boolean>}
   */
  async isCategoryPresent(category) {
    const OPTIONS = await this.bookCategoriesDropdown.locator("option").allInnerTexts();
    return OPTIONS.includes(category);
  }
  

}
