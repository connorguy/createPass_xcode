# createPass
Use sha256 hashing to create password for different sites.

This app will store no data on your HD nor will it send data anywhere else.
However you can always comeback and retrieve the password by entering your createPass password and website.

So how does it work? 
1) createPass will prompt you to enter a password that you only use for createPass. 
2) createPass will then prompt you for the website that you are creating a password for.
3) These two inputs are then hashed (twice for good measure!) using sha256.
4) createPass will then take a length 16 substring from the hash and uses this as your password.
	- The password will be shown onto your screen, and if on osx copied to your clipboard.

Notes
- When retrieving your password you must match what you originally used for your createPass password and website name.
- No data ever leaves or is stored on your computer, you can look at the script.
