# About
A small script that randomly generates words from dictionary files using system
nanoseconds.

# Install

**This script does not work with z shell** because it uses readarray in order to make the
dictionary accesible to the script. In its current form, it's a linux only application
for bash interpreters. You can use the <code>chsh</code> command to change your default
shell:

<pre><code>
git clone https://github.com/LEDparty/bash-rwg
cd bash-rwg
chmod +x rwg.sh
</pre></code>

# How To Use

Within the bash-rwg folder, executing the command without arguments generates one random
word:
<pre><code>
./rwg.sh
</pre></code>

If you are using z shell as your primary shell, but don't want to change your default 
settings, you can run this command from the bash-rwg folder you installed:

<pre><code>
bash rwg.sh
</pre></code>

You can use the -n option to generate a name instead:
<pre><code>
./rwg.sh -n
</pre></code>

You can generate any number of random words, and the sequence is not predictable:
<pre><code>
./rwg.sh 20
./rwg.sh -n 10
</pre></code>
