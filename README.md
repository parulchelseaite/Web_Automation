# Web_Automation

**What framework has been chosen to build this?**

This project has been built using Robot Framework (RF). The library used for this project's autuomation is **SeleniumLibrary** provided by RF.
The underlying language used is **Python**. All of the tests has been written in **BDD** language format.
Ths project built using this framework is eBAY product purchase.

More information on the framework can be seen here https://robotframework.org/

**What are the pre-requisites to run the framework?**

The user would need to download and install as below
1) Python2
2) Chromedriver (added to executable PATH)
3) GITHUB
4) PyCharm (IDE)  [Optional]

**How can a user run the project?**

There are 2 options. The user can run from IDE if they have installed PyCharm. Else, Command line can be used as below. The command is as below

cd ${path_to_project_local}

_pabot --processes 1 --include login_addCart  --variablefile %cd%/Core/EnvironmentConfigs/PROD.py -d %cd%/Results  %cd%_

Explanation of each command is as below
1) **pabot** -- Library for execution of tests in RF. The user can do parallel test executions using pabot
2) **--processes**   This allows user to execute test suites parallely. For our project, we are using 1 instance of Chrome to be spinned up at a time
3) **--include**    This allows user to control tests based on tagging. For our porject, we are running the test that has been tagged with "login_addCart"
4) **--variablefile**   This allows user to provide the environment variable file on the fly. 
5) **-d**  This allows user to specify where the results need to be saved

**What logs does this framework provide?**

RF provides us with very good logging and generates 3 files on each run. For this project, the files are in the **Results** folder
1) log.html
2) output.xml
3) report.html

_Screenshot of how a log file looks like_
![Alt text](Results/Images/Log_File.png?raw=true "LOG FILE")


**Does this framework captures screenshots on FAILURE?**

Yes. For ex, the test failed when eBAY started asking for CAPTCHA as below

![Alt text](Results/Failed_Screenshot_1.png?raw=true "Optional Title")


**Snapshot of how a project structure looks like?**
![Alt text](Results/Images/Project_Structure.png?raw=true "Optional Title")






