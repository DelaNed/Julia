# Julia
You can find some basic code in the Julia programming language.
The notebooks are based on [JuliaAcademy](https://github.com/JuliaAcademy) Github repository.

## Installation
Downlod [Julia programming language](https://julialang.org/downloads/)
```
tar -xzf julia-1.8.5-linux-x86_64.tar.gz
sudo mv julia-1.8.5/ /opt/ 
sudo ln -s /opt/julia-1.8.5/bin/julia /usr/local/bin/julia
```
### IJulia
Run this commands on REPL
```
using Pkg
Pkg.add("IJulia")
using IJulia
notebook()
```
By default, the notebook "dashboard" opens in your home directory (homedir()), but you can open the dashboard in a different directory with notebook(dir="/some/path")

### VS code extension
https://www.julia-vscode.org/docs/stable/

### Run script file
```
include("file_name.jl")
function_name
```
for example to run the generate_password.jl, run these commands
```
include("generate_password.jl")
generate_passwords()
```
