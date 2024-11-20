# Dataset battery 30Q electro thermal deformation characterization
Dataset for the Samsung 30Q battery for electro-thermal and deformation characterization


<p align="center">
<img src="figures/single-LSTM-cell-use.PNG" alt="drawing" width="400"/> <br> 

</p>
<p align="center">
</p>
Each LSTM VI stores its weights and performs calculations to update cell state. Time steps are implemented with shift registers within a loop.

<p align="center">
<img src="figures/multiple-LSTM-cell-use.PNG" alt="drawing" width="400"/> <br> 

</p>
<p align="center">
</p>
Stacked LSTM sequences can be implemented by feeding the output of each LSTM layer to be the input of the next.

### How to create LSTM cell VIs
After installing the package a new palette should appear in the LabVIEW functions panel. Select "fill-lstm-template" or "fill-dense-template" depending on if you wish to make an LSTM cell or dense cell. Drag the VI to the workspace and double-click it to open the VI. Enter the name of the new cell and weight path into the appropriate fields. Run the VI and when the generated VI opens, "save as" to set the file location.
<p align="center">
<img src="figures/palette.PNG" alt="drawing" width="400"/> <br>
</p>

### Formatting .csv files
The matrices of weights for a cell should be stored in separate csv files withn a folder. Each file is named in the format "matrix" + "gate" + ".csv". Matrices are "W" (kernel), "U" (recurrent kernel), and "b" (bias). Gates are "i", "f", "c", and "o". Therefore names are Wi.csv, Uo.csv, bf.csv, etc. The python function given in ``create_weight_folder.py`` converts the weights of a keras LSTM model to this format.

### Represenitive Project and Publication
Daniel Coble, Joud Satme, Ehsan Kabir, Austin R.J. Downey, Jason D. Bakos, David Andrews, Miaoqing Huang, Adrine Moura, and Jacob Dodson. Towards online structural state-estimation with sub-millisecond latency. 92nd Shock and Vibration Symposium, September 2022. [PDF](https://cse.sc.edu/~adowney2/publications/conference/Coble2022TowardsOnlineStructural.pdf), [repo](https://github.com/ARTS-Laboratory/Paper-Towards-online-structural-state-estimation-with-sub-millisecond-latency)
 


## [Development Workspace](development_workspace)
Houses all the code used in building and developing the functions. 

## [Package](package)
Houses the published packages. See the latest package in "Releases".

## Licence and Citation
[![CC BY-SA 4.0][cc-by-sa-shield]][cc-by-sa]

This work is licensed under a
[Creative Commons Attribution-ShareAlike 4.0 International License][cc-by-sa].



[cc-by-sa]: http://creativecommons.org/licenses/by-sa/4.0/
[cc-by-sa-image]: https://licensebuttons.net/l/by-sa/4.0/88x31.png
[cc-by-sa-shield]: https://img.shields.io/badge/License-CC%20BY--SA%204.0-lightgrey.svg


Cite as:

@Misc{Coble2022LabVIEWLSTM,  
author = {Daniel Coble and Austin Downey},  
howpublished = {GitHub},  
title = {{LabVIEW-LSTM}},  
year = {2022},  
groups = {{ARTS-L}ab},  
url = {https://github.com/ARTS-Laboratory/LabVIEW-LSTM},  
}
