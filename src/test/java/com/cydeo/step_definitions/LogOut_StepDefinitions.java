
package com.cydeo.step_definitions;

import com.cydeo.pages.LogOutPage;
import com.cydeo.pages.LoginPage;
import com.cydeo.utilities.BrowserUtils;
import com.cydeo.utilities.ConfigurationReader;
import com.cydeo.utilities.Driver;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class LogOut_StepDefinitions {
    LoginPage loginPage = new LoginPage();
    LogOutPage logOutPage = new LogOutPage();

    @Given("user goes to login page")
    public void user_goes_to_login_page() {
        Driver.getDriver().get(ConfigurationReader.getProperty("url"));
    }

    @When("user enters {string} as username")
    public void user_enters_as_username(String username) {
        loginPage.username.sendKeys(username);
    }

    @When("enters {string} as password")
    public void enters_as_password(String password) {
        loginPage.password.sendKeys(password);
    }

    @Then("user clicks to login button and should be on the home page")
    public void user_clicks_to_login_button_and_should_be_on_the_home_page() {
        loginPage.loginButton.click();
        loginPage.dashboardMessage.isDisplayed();
    }

    @Then("user should see the logout option from dropdowns by clicking the profile icon.")
    public void user_should_see_the_logout_option_from_dropdowns_by_clicking_the_profile_icon() {
        logOutPage.profileIcon.click();
        logOutPage.logOutButton.isDisplayed();
    }

    @Then("user should be able to click the logout button and land back on the login page.")
    public void user_should_be_able_to_click_the_logout_button_and_land_back_on_the_login_page() {
        logOutPage.logOutButton.click();
        loginPage.loginPageTitle.isDisplayed();
    }


    @When("user navigate back user should see the expired message")
    public void userNavigateBackUserShouldSeeTheExpiredMessage() {
        Driver.getDriver().navigate().back();
        logOutPage.sessionExpiredText.isDisplayed();

    }
}








