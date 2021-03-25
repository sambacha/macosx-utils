## OSX Utils

> Apple OSX Docs

[https://nooverviewavailable.com/](https://nooverviewavailable.com/)


To disable Code Signing when building for macOS leave all the above vars unset except for CSC_IDENTITY_AUTO_DISCOVERY which needs to be set to false. This can be done by running export CSC_IDENTITY_AUTO_DISCOVERY=false.

Another way — set mac.identity to null. You can pass aditional configuration using CLI as well: -c.mac.identity=null.
