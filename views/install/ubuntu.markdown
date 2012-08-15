## install

### Installing on Linux

installing ruby on linux is easy!

## run the rails ready script
then you can run the rails ready installation script from the terminal with this command:

```text
wget --no-check-certificate \
https://raw.github.com/joshfng/railsready/master/railsready.sh && \
bash railsready.sh
```

the above is one command (not three separate ones), so just copy the entire
3 lines at once, then paste it once into a terminal window (shift-ctrl-v or
fom the terminal window menu)

when prompted:

```text
build ruby or install rvm?
=> 1. build from source
=> 2. install rvm
```

choose 2 (rvm).

It will now run and install a bunch of useful things including ruby
1.9.3-p194 and the latest rails. when it is complete, that's it! just open
a new terminal window and type 

```text
rvm list
ruby -v
rails -v
```

to check that the versions are actually installed.


