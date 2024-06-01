# About
A small script that randomly generates words from dictionary files using system
nanoseconds.

# Install

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

You can use the -n option to generate a name instead:
<pre><code>
./rwg.sh -n
</pre></code>

You can generate any number of random words, and the sequence is not predictable:
<pre><code>
./rwg.sh 20
./rwg.sh -n 10
</pre></code>
