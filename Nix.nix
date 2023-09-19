$ #
(nix-shell) $ 
{ pkgs ? import <nixpkgs> {} # here we import the nixpkgs package set   
     2  }:                                                                      
     3  pkgs.mkShell {               # mkShell is a helper function             
     4    name="dev-environment";    # that requires a name                     
     5    buildInputs = [            # and a list of packages                   
     6      pkgs.nodejs                                                         
     7    ];                                                                    
     8    shellHook = ''             # bash to run when you enter the shell     
     9      echo "Start developing..."                                          
    10    '';                                                                   
    11  }                                                                       
