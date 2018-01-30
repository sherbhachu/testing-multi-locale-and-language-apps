describe 'r18n' do

context 'r18n test' do

  it 'It should print the r18n string..' do

    puts "Locale code now: #{r18n.locale.code}"
    expect(r18n.locale.code).to eql(ENV['SET_LANG'])

    puts "Locale test for title: #{t.app_title}"
    expect(t.app_title).to eql("The Amazing Automation App!")

    puts "Is this string translated (we know its not, will return false)...#{t.app_address.translated?}"
    expect(t.app_address.translated?).to be false

    puts "Ony available in french...#{t.landing_page.french_specific_button}"
    if ENV['SET_LANG'] == 'fr'
      expect(t.landing_page.french_specific_button).to match "Allo Allo"
    else
      expect(t.landing_page.french_specific_button).to be_instance_of R18n::Untranslated
    end

    puts "This is not in the fr.yml file, so will default to the en.yml one: #{t.about.client_about_title("#{CUSTOM[:company]}")}"
    expect(t.about.client__about_title("#{CUSTOM[:company]}")).to eql("About My English Company")
  end
end

end
