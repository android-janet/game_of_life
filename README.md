The Game of Life --  

OBJECTIVE
In the Game of Life, it's all about who you surround yourself with. However, there are a few rules to the game "...if you want to live" (The Terminator, 1984).

A live cell is denoted by '1', and a dead cell is '0'.

For any live cell,
• If there are less than 2 surrounding live cells, the live cell converts to a dead cell. (Underpopulation Rule)
• If there are exactly 2 or 3 surrounding live cells, the live cell continues on living. (Survival Rule)
• If there are more than 3 surrounding live cells, the live cell converts to a dead cell. (Overcrowding Rule)

For any dead cell,
• If there are exactly 3 surrounding dead cells, the dead cell rebirths to a live cell. (Reproduction Rule)




Technologies Used
• Ruby 2.3.0
• Rspec 3.5.4


GETTING STARTED
Install Ruby
1. Check your current version of Ruby by running 'ruby -v' from your command line. If needed, you can install/update your Ruby version here https://www.ruby-lang.org/en/documentation/installation/.

Set up the Game of Life
1. Create a Ruby file name game.rb.
2.

Set up GitHub repository for your program
1. Create a new repository in GitHub.
2. Run 'git clone <insert your HTTPS URL>' on the command line. The HTTPS URL can be found in your repository.

Install Rspec
1. Run 'gem install bundler'
2. Run 'touch Gemfile'
3. Open the Gemfile, and add 'source 'https://rubygems.org'' and 'gem 'rspec'.'
4. Run bundle install
5. The Gemfile.lock will generate, which includes a quick list of dependencies, their versions, and platforms.

Create a spec folder with a spec file for the file that is being tested. In this case, we will be testing game.rb using the spec/game_spec.rb file. Include a spec/spec_helper.rb file, which is essentially a configuration file for running your specs. Check to see if Rspec is properly installed by running 'rspec spec' in the command line. If you see something like '0 examples, 0 failures' and 'No examples found,' you are ready to get started testing the program.
