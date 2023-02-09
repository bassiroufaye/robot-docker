*** Settings ***
Library  SeleniumLibrary
*** Test Cases ***


TestCase2
    Log   Starting automatical test of Aquadvance Water Network

TestProcess
    ${chrome_options}    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome_options}    add_argument    --ignore-certificate-errors    
    Create Webdriver    Chrome    chrome    chrome_options=${chrome_options}    
    Go To  https://sefrapp00591.fr.green.local:17200/

    
Check the applicatif portal of Aquadvance Water Network : FrontEnd 2
    ${chrome_options}    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome_options}    add_argument    --ignore-certificate-errors    
    Create Webdriver    Chrome    chrome    chrome_options=${chrome_options}  
    Go To  https://fe.aqdv.suezsmartsolutions.com/aquadvanced/  
    Maximize Browser Window

    #Getr the login and the password
    Get WebElement  name:UserName
    Get WebElement  name:Password
    #Get the login and the password
    Input Text  name:UserName  zdc339
    Input Text  name:Password  printfFr003@
    #Click to the button Connexion 
    Click Element   //*[@class="button white"]
    #Test diffents instances
    Click Element    //*[@id="AQUAVESC"]
    Sleep   2
    #Open an instance
    Click Element    id:button-select-site
    Sleep   25
    #Lock out
    Click Element   //*[@class="aqvz-btn-lite aqvz-btn-lite--medium"]
    Sleep   2
    Click Element   //*[@href="../../Home/LogOff"]
    Sleep   5


Check the applicatif portal of Aquadvance Water Network : FrontEnd 1
    ${chrome_options}    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome_options}    add_argument    --ignore-certificate-errors    
    Create Webdriver    Chrome    chrome    chrome_options=${chrome_options}  
    Go To  https://sefrapp00594.fr.green.local
    Maximize Browser Window

    #Getr the login and the password
    Get WebElement  name:UserName
    Get WebElement  name:Password
    #Get the login and the password
    Input Text  name:UserName  zdc339
    Input Text  name:Password  printfFr003@
    #Click to the button Connexion 
    Click Element   //*[@class="button white"]
    #Test diffents instances
    Click Element    //*[@id="AQUAVESC"]
    Sleep   2
    #Open an instance
    Click Element    id:button-select-site
    Sleep   25
    #Lock out
    Click Element   //*[@class="aqvz-btn-lite aqvz-btn-lite--medium"]
    Sleep   2
    Click Element   //*[@href="../../Home/LogOff"]
    Sleep   5

