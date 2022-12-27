
# MySecret  

MySecret is a secure note manager.<br>
It allows you to safe your notes with password, encryption and encoding.


## Features
MySecurity uses tree layers of security:
- AES-256 Encryption
- Base64 Encoding
- SHA-256 Hashing


## Installation

MySecret has a simple instalation in all operating systems.<br>
Just downloading MySecret's latest release from [Releases page](https://github.com/FelipeFTN/MySecret/releases).<br>
We highly recommend you to add an alias at your shell that will allows you to run MySecret just by typing ```$ mysecret``` at your terminal.
The only **requirement for MySecret** to run in your PC is [Ruby](https://www.ruby-lang.org) installed.

## Usage/Examples

MySecret's main menu looks like this, you can **create a new encrypted note**, **read an encrypted note**, **edit an encrypted note**, **encrypt a raw file** or **decrypt a encrypted file**
```bash
$ ruby ~/MySecret/main.rb

notes: 0; 1; 2; 3; 4; 5; 6; 
========== MySecret ==========
[1] Create new note
[2] Read a note
[3] Encrypt an existing note
[4] Encrypt an existing note
[5] Decrypt an existing note
> | 1 | 2 | 3 | 4 | 5 |
```
After that, it will ask you for a **secret key**, which is a file **password**. (MySecret will hash this password using **SHA-256**)<br>
If it's your first time running **MySecret** you need to select a text editor to write down your file, select one of the options, and your text editor will magically open and you can **write all your notes safelly**.
Your default editor will be saved at a configuration file located at MySecret's root folder, you can delete it to reset your preference and choose another. ./_editor.config_
```bash
$ file name: MySecret
$ secret key: MyPassword
=================================
Select your favorite text editor:
[0] VI
[1] VIM
[2] NeoVim
[3] Nano
> | 1 | 2 | 3 |
```
After saving and exiting from your file, your note will be automatically encoded and encrypted, and **you can access it from the MySecret's menu to decrypt and read it.**
