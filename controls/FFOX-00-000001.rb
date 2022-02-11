control "FFOX-00-000001" do                        
    tag severity: 'high'
    tag stig_id: 'FFOX-00-000001'

    describe file("#{input('install_dir')}/application.ini") do
        its('content') { should match "^Version=#{input('firefox_version')}$" }
    end

  end