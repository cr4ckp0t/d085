# Policyfile.rb - Describe how you want Chef Infra Client to build your system.
#
# For more information on the Policyfile feature, visit
# https://docs.chef.io/policyfile.html

# A name that describes what the system you're building with Chef does.
name 'd085'

# Where to find external cookbooks:
default_source :supermarket

# run_list: chef-client will run these recipes in the order specified.
run_list 'd085::default'
named_run_list 'core', 'd085::core'
named_run_list 'db', 'd085::db'
named_run_list 'micropayment', 'd085::db'
named_run_list 'web_back', 'd085::web_back'
named_run_list 'web_front', 'd085::web_front'

# Specify a custom source for a single cookbook:
cookbook 'd085', path: '.'
cookbook 'nginx', '~> 10.0.1', :supermarket