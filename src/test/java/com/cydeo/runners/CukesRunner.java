package com.cydeo.runners;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(
        plugin = {
                "json:target/cucumber.json"
        },

        features = "src/test/resources/features",
        glue = "com/cydeo/step_definitions",
        dryRun =false,
        tags = "@FID10-310"
)
public class CukesRunner {
}