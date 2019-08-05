

Before do
  page.driver.browser.manage.window.maximize
end

After do
  page.driver.browser.manage.delete_all_cookies
end


