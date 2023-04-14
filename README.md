
# MySecret  
MySecret is a secure note manager.<br>
It allows you to safe your notes with password, encryption and encoding.
MySecret uses tree layers of security:
- AES-256 Encryption
- Base64 Encoding
- SHA-256 Hashing

## Requirements
- Ruby
- Gem (this usually comes with Ruby)
- Secrets (You want to save something into your notes, right?)

## Usage/Examples
MySecret's main menu looks like this, you can **create a new encrypted note**, **read an encrypted note**, **edit an encrypted note**, **delete a note** **encrypt a raw file**, **decrypt a encrypted file**, **change file password** or **exit**.
```bash
$ ruby ~/MySecret/main.rb

notes: 0; 1; 2; 3; 4; 5; 6; 
========== MySecret ==========
[1] Create new note
[2] Read a note
[3] Edit a note
[4] Delete a note
[5] Encrypt a note
[6] Decrypt a note
[7] Change secret key
[8] Change text editor
[0] Exit
> | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 0 |
```
After that, it will ask you for a **secret key**, which is a file **password**. (MySecret will hash this password using **SHA-256**)<br>
If it's your first time running **MySecret** you need to select a text editor to write down your file, select one of the options, and your text editor will magically open and you can **write all your notes safelly**.
Your default editor will be saved at a configuration file located at _home/.config/MySecret_, you can delete it to reset your preference and choose another. ```configuration file: editor.config```
```bash
file name: MySecret
$ secret key: MyPassword
=================================
Select your favorite text editor:
[0] Nano
[1] VI
[2] VIM
[3] NeoVim
[4] Emacs
[5] Notepad
> | 0 | 1 | 2 | 3 |
```
After saving and exiting from your file, your note will be automatically encoded and encrypted, and **you can access it from the MySecret's menu to decrypt and read it.**

https://user-images.githubusercontent.com/80127749/211131154-c7833698-8285-49fa-a6fd-4dc902a7433b.mov

## Installation
## Ruby Gem install (Recommended)
MySecret has a simple instalation in all operating systems.<br>
In order to install MySecret using gem, just run:
```bash
  $ gem install MySecret
```
Didn't got any errors? So you are good to go!
```bash
  $ MySecret
```
In case you have any problems with your installation or usage, please, let us know by openning an [issue](https://github.com/FelipeFTN/MySecret/issues/new) 😉
Warning: Please, make sure you have Gem set in your `$PATH`, do this, in case you have some error while executing MySecret, and restart your terminal:
```bash
  # Ruby Gem
  $ export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"
  $ export PATH="$PATH:$GEM_HOME/bin"
```
## Building from source
First of all, MySecret's latest release from [Releases page](https://github.com/FelipeFTN/MySecret/releases); or just clone the master branch into your machine.<br>
then run MySecret's Build file: `build.sh`<br>
```bash
  $ sh build.sh
```
You should be ready to go! Now, just run: `MySecret` into your terminal.
Warning: Please, make sure you have Gem set in your `$PATH`, do this, in case you have some error while executing MySecret, and restart your terminal:
```bash
  # Ruby Gem
  $ export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"
  $ export PATH="$PATH:$GEM_HOME/bin"
```

## Contributing

If you want to contribute to improve MySecret, please read [CONTRIBUTING.md](https://github.com/FelipeFTN/MySecret/blob/master/CONTRIBUTING.md).

> And if you like the project, but just don't have time to contribute, that's fine. There are other easy ways to support the project and show your appreciation, which we would also be very happy about:
> - Star the project
> - Tweet about it
> - Refer this project in your project's readme
> - Mention the project at local meetups and tell your friends/colleagues
