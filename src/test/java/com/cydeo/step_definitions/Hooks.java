package com.cydeo.step_definitions;


import com.cydeo.utilities.Driver;
import io.cucumber.java.After;
import org.junit.AfterClass;

public class Hooks {


    @After
    public static void tearDownScenario(){

        Driver.closeDriver();
    }



}