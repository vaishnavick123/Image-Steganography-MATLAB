# Image Steganography using MATLAB
This mini-project demonstrates a simple image steganography technique to hide and retrieve text within a grayscale image using MATLAB.

# Features
- Encryption: Embeds text into the pixel intensity values of an image.
- Decryption: Extracts the hidden text from the modified image.

# How It Works
- Converts text to ASCII values.
- Modifies pixel intensities of a grayscale image based on these values.
- Uses the original image as a reference to decrypt and retrieve the hidden text.

# Usage
- Place your image (e.g., rose.jpg) and text files (e.g., text.txt) in their respective paths.
- Run the provided MATLAB scripts:
  encryption.m
  decryption.m
