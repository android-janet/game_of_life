<h1>The Game of Life</h1>

<strong>OBJECTIVE</strong></br>
In the Game of Life, it's all about who you surround yourself with. However, there are a few rules to the game "...if you want to live" (https://youtu.be/T-2FkSlShqoThe, Terminator 2: Judgement Day, 1991).</br>

A live cell is denoted by '1', and a dead cell is '0'.</br>

For any live cell,</br>
• If there are less than 2 surrounding live cells, the live cell converts to a dead cell. (Underpopulation Rule)</br>
• If there are exactly 2 or 3 surrounding live cells, the live cell continues on living. (Survival Rule)</br>
• If there are more than 3 surrounding live cells, the live cell converts to a dead cell. (Overcrowding Rule)</br>

For any dead cell,</br>
• If there are exactly 3 surrounding dead cells, the dead cell rebirths to a live cell. (Reproduction Rule)</br>




<strong>Technologies Used</strong></br>
<h2>Ruby</h2> 2.3.0</br>
<h2>Rspec</h2> 3.5.4</br>


<strong>GETTING STARTED</strong></br>
<strong>Install Ruby</strong></br>
1. Check your current version of Ruby by running 'ruby -v' from your command line. If needed, you can install/update your Ruby version here https://www.ruby-lang.org/en/documentation/installation/.</br>

<strong>Set up the Game of Life</strong></br>
1. Create a Ruby file name game.rb.</br>
2. </br>

<strong>Set up GitHub repository for your program</strong></br>
1. Create a new repository in GitHub.</br>
2. Run 'git clone <insert your HTTPS URL>' on the command line. The HTTPS URL can be found in your repository.</br>

<strong>Install Rspec</strong></br>
1. Run 'gem install bundler'</br>
2. Run 'touch Gemfile'</br>
3. Open the Gemfile, and add 'source 'https://rubygems.org'' and 'gem 'rspec'.'</br>
4. Run bundle install</br>
5. The Gemfile.lock will generate, which includes a quick list of dependencies, their versions, and platforms.</br>
6. Check to make sure you have a generated spec_helper file. Otherwise, run 'rspec --init'. The spec_helper file will generate with the proper configuration to run rspec.</br>

Create a spec folder with a spec file for the file that is being tested. In this case, we will be testing game.rb using the spec/game_spec.rb file. Include a spec/spec_helper.rb file, which is essentially a configuration file for running your specs. Check to see if Rspec is properly installed by running 'rspec spec' in the command line. If you see something like '0 examples, 0 failures' and 'No examples found,' you are ready to get started testing the program.</br>
