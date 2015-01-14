var testName = "App Launch";
UIALogger.logStart("Running Test: " + testName);

var target = UIATarget.localTarget();
var appWindow = target.frontMostApp().mainWindow();

var appName = appWindow.name();
UIALogger.logMessage("App Name: " + appName);

var inputField = appWindow.textFields()["Party Person"];
inputField.setValue("hi");

if (inputField.value() != "hi") UIALogger.logFail("The Input Field was NOT able to be set with the string!");
else UIALogger.logPass("The Input Field was able to be set with the string!");


