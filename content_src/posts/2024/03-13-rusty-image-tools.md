%{
  title: "Rusty Image tools",
  author: "Josh Chernoff",
  tags: ~w(tech coding),
  description: "I wanted to learn rust so I used AI to help me a make a simple image tool",
  wrapper_class: "prose lg:prose-lg mx-auto p-10 md:px-20 md:px-0"
}
---
![a rusty crab](https://rustyimagetools.github.io/rusty.webp)

https://rustyimagetools.github.io/

I built a simple to use Image tool that runs completely from a statictly generated site. 
The site it's self is a github page that has a basic service worker that enables it to run offline and can be installed as a PWA. 

Most of the business logic was create in a rust application that compiles to a wasm application targeting the web and JS. 

## Here's the features currently. 
[*] PWA - Installable as stand alone app. 
[*] Offline support - Works offline. (no server required)
[*] Privacy first | No tracking - This is a static site that runs client side only.
[*] It's Fast. Writen in rust using the image and exif crates, compiled to wasm at ~4Mb.
[*] No limits (no file or size limits, scale 30Mb images in less than a few seconds on your cellphone)
[*] Supports multiple file formats
[*] Free and open source. MIT license
[*] Keep original origination, Reads in exif data to keep rotation/flip metadata
