# GenerateCallGraph
Generate callgraphs svg from linux kernel source code


Install Missing Dependencies

Run the following command to install `cflow` and `graphviz`:

```
sudo apt update
sudo apt install cflow graphviz
```

This will install:

cflow: To analyze function calls in .c files. 

dot (Graphviz): To generate .svg visualizations.

Copy `convert_dot_to_svg.sh`

It will do this - 
1. Finds all .dot files inside the dot/ folder.
2. Converts them to .svg using dot (Graphviz).
3. Saves the .svg files inside svg/.

Make the script executable:
`chmod +x convert_dot_to_svg.sh`

Run the script:
`./convert_dot_to_svg.sh`


