class LandingScreen

  def username_field_locator
    # Example of a basic web css locator
    "form#something .class"
  end

  def password_field_locator
    # Example of what an Appium iOS xpath locator looks like...this could also be *similar* to a web page xpath.
    "//*[@name='#{t.landing_page.password_field_placeholder_text}']/following-sibling::XCUIElementTypeStaticText"
  end

  def signin_button_locator
    # Example of what an Appium iOS/Android, simple 'find' or 'finds' locator looks like...
  "#{t.landing_page.signin_button_text}"
  end

  def forgot_password_locator
    # Example of what an Appium Android UiSelector locator looks like...
  "new UiSelector().className('android.widget.TextView').textStartsWith('#{t.landing_page.password_field_placeholder_text}')"
  end

  #Another example of a locator...(This one is actually a Calabash example for Android)
  def another_button
    "button id:'client__sign_in_form_button_sign_in' text:'#{t.landing_page.french_specific_button}'"
  end

end