export class BrowserUtility {

    static async sleep(seconds){
        await new Promise((resolve) => setTimeout(resolve, seconds * 1000));
    }

    // ADD YOUR OWN BROWSER UTILITY FUNCTIONS HERE...

    static async verifyMessages(expected, actual) {
        return new Promise((resolve) => {
                resolve(expected.toString === actual.toString());
        });
    }
      
    

}