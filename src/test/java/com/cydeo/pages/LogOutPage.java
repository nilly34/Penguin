package com.cydeo.pages;

import com.cydeo.utilities.Driver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class LogOutPage {

    public LogOutPage() {
        PageFactory.initElements(Driver.getDriver(),this);
    }

    @FindBy(xpath = "//*[@id='oe_main_menu_navbar']/div[2]/ul[2]/li/ul/li[6]/a")
    public WebElement logOutButton;

    @FindBy(xpath = "//h4[@class='modal-title']")
    public WebElement sessionExpiredText;

    @FindBy(xpath = "//li[@class='o_user_menu']")
    public WebElement profileIcon;


}

