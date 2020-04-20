#define de objetos

class LoginPage < SitePrism::Page
  set_url 'http://automationpractice.com/index.php?controller=authentication&back=my-account'
  element :signInbtn, :xpath, '//*[@id="header"]/div[2]/div/div/nav/div[1]/a'
  element :emailUser, :xpath, '//*[@id="email"]'
  element :passUser, :xpath, '//*[@id="passwd"]'
  element :submitLogin, '#SubmitLogin'
  element :loginErrormsg, :xpath, '//*[@id="center_column"]/div[1]'
end
