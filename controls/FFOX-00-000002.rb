control "FFOX-00-000002" do                        
    tag severity: 'high'
    tag stig_id: 'FFOX-00-000002'

    describe file("#{input('install_dir')}/distribution/policies.json") do
        its('content') { should match '"SSLVersionMin": "tls1.2"' }
    end

  end
