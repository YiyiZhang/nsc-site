# NSC Site

### This is the NSC website.

#### Setup steps
  1. clone repo
  2. run `bundle install` 
  3. run `bundle exec rake db:migrate`
  4. run `rails s`
  
##### Troubleshooting
  1. Do you have postgres installed?
    - Ensure psql is installed and running.
    - Ensure the current user has full psql privleges
  2. Are you using RVM?
    - Using the wrong Ruby version will cause problems. Install RVM or Rbenv to manage rubies. 
