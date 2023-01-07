
# MySecret  
MySecret is a secure note manager.<br>
It allows you to safe your notes with password, encryption and encoding.

## Features
MySecret uses tree layers of security:
- AES-256 Encryption
- Base64 Encoding
- SHA-256 Hashing

## Installation
MySecret has a simple instalation in all operating systems.<br>
Just downloading MySecret's latest release from [Releases page](https://github.com/FelipeFTN/MySecret/releases).<br>
The only **requirement for MySecret** to run in your PC is [Ruby](https://www.ruby-lang.org) installed.<br>
We highly recommend you to [add an alias at your shell](https://linuxize.com/post/how-to-create-bash-aliases/) that will allows you to run MySecret just by typing:<br> `$ mysecret` at your terminal.
<div align="center">
<img width="556" alt="image" src="https://user-images.githubusercontent.com/80127749/210393450-cb1cd1ec-a0b3-4a8c-8ae1-0384240bd77c.png">
</div>

## Usage/Examples

https://user-images.githubusercontent.com/80127749/211131154-c7833698-8285-49fa-a6fd-4dc902a7433b.mov

MySecret's main menu looks like this, you can **create a new encrypted note**, **read an encrypted note**, **edit an encrypted note**, **delete a note** **encrypt a raw file**, **decrypt a encrypted file**, **change file password** or **exit**.

```bash
$ ruby ~/MySecret/main.rb

notes: 0; 1; 2; 3; 4; 5; 6; 
========== MySecret ==========
[1] Create new note
[2] Read a note
[3] Edit a note
[4] Delete a note
[5] Encrypt an existing note
[6] Decrypt an existing note
[7] Change secret key
[0] Exit
> | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 0 |
```
After that, it will ask you for a **secret key**, which is a file **password**. (MySecret will hash this password using **SHA-256**)<br>
If it's your first time running **MySecret** you need to select a text editor to write down your file, select one of the options, and your text editor will magically open and you can **write all your notes safelly**.
Your default editor will be saved at a configuration file located at _home/.config/MySecret_, you can delete it to reset your preference and choose another. ```configuration file: editor.config```
```bash
$ file name: MySecret
$ secret key: MyPassword
=================================
Select your favorite text editor:
[0] VI
[1] VIM
[2] NeoVim
[3] Nano
> | 0 | 1 | 2 | 3 |
```
After saving and exiting from your file, your note will be automatically encoded and encrypted, and **you can access it from the MySecret's menu to decrypt and read it.**

## Contributing

If you want to contribute to improve MySecret, please read [CONTRIBUTING.md](https://github.com/FelipeFTN/MySecret/blob/master/CONTRIBUTING.md).

> And if you like the project, but just don't have time to contribute, that's fine. There are other easy ways to support the project and show your appreciation, which we would also be very happy about:
> - Star the project
> - Tweet about it
> - Refer this project in your project's readme
> - Mention the project at local meetups and tell your friends/colleagues
