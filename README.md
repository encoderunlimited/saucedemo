# saucedemo

**Python Installation**
    Install Python: Robot Framework is implemented with Python, so you need to install Python first. You can download it from the official Python website.
    Verion Should be Python "3.11.4"

**1. Install Robot Framework** 
Once Python is installed, you can install Robot Framework using pip, which is Python's package manager. Open your terminal and type
    pip install robotframework
    **Note** : if required need to update the pip else current version is 24.0
    python.exe -m pip install --upgrade pip
    
**2. Install SeleniumLibrary**
SeleniumLibrary is a web testing library for Robot Framework. You can install it using pip
    pip install --upgrade robotframework-seleniumlibrary

**Note**: if want to skip 1,2 point can install by using the requirements.txt file by using the command
    pip install -r requirements.txt

How to Run cases
    Run at once
        1. Navigate to the folder named test_cases 
        2. run the command robot .\test.robot (by running this command you will see the report and log file in same folder)
        3. if you want to see the log and report file in reports directory redirect to the folder results and run the command 
                robot ..\test_cases\test.robot
        

