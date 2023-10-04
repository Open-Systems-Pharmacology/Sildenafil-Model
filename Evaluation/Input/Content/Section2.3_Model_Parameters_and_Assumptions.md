### 2.3.1 Absorption

The model parameter `Specific intestinal permeability` was optimized to best match clinical data (see  [Section 2.3.4](#234-automated-parameter-identification)). A formulation without limitation to absorption was assumed for the oral solution, therefore its solubility was set to 100 mg/L. A default solubility of 3.5 mg/L was taken from the model of [Salerno 2021](#5-references) and used for tablets (see [Section 2.2.1](#221-in-vitro-and-physicochemical-data))

The dissolution of tablets was implemented via a Weibull dissolution tablet. The Weibull function was fitted using R 4.2.1 based on in vitro data ([Sawatdee 2019](#5-references)), and the resulting dissolution kinetic parameters were fixed in the model.


### 2.3.2 Distribution

Sildenafil is highly bound to α1-acid glycoprotein in plasma (see [Section 2.2.1](#221-in-vitro-and-physicochemical-data)). A value of 4% was used in this PBPK model for `Fraction unbound (plasma, reference value)`. 

An important parameter influencing the resulting volume of distribution is lipophilicity. The reported experimental logP values are in the range of 3 (see [Section 2.2.1](#221-in-vitro-and-physicochemical-data)) which served as a starting value. Finally, the model parameters `Lipophilicity` was optimized to match best clinical data (see also [Section 2.3.4](#234-automated-parameter-identification)).

After testing the available organ-plasma partition coefficient and cell permeability calculation methods built in PK-Sim, observed clinical data was best described by choosing the partition coefficient calculation by `Rodgers and Rowland` and cellular permeability calculation by `PK-Sim Standard`.


### 2.3.3 Metabolism and Elimination

Three metabolic pathways were implement into the model via Michaelis-Menten kinetics 

* CYP3A4
* CYP3A9
* CYP3A19

Relative kcat were calculated with the following inputs:

| Input                                       | Unit                             | CYP3A4      | CYP2C9      | CYP2C19     | Reference                         |    
| ------------------------------------------- | -------------------------------- | ----------- | ----------- | ----------- | --------------------------------- |
| Contributions in vitro (scaled)*            | µL/min/mg microsomal protein     | 0.79        | 0.20        | 0.01        | [Warrington 2000](#5-references)  | 
| CYP amount                                  | pmol CYP/mg microsomal protein   | 108         | 96          | 19          | [Rodrigues 1999](#5-references)   |
| Michaelis Menten constant (Km)              | µmol/L                           | 23.1        | 9.6         | 23.1        | [Warrington 2000](#5-references)  |
*The contribution in vitro has initially no unit. It was scaled multiplying it by 1 µL/min/mg microsomal protein. This is a joint scaling factor over the three CYPs to keep their relative hepatic contributions fixed. It was later optimized as part of kcat. 

The scaled contributions in vitro were converted to specific clearance per enzyme dividing by the respective CYP amount per milligram microsomal protein. Then these relative specific clearances per enzyme were multiplied by the Km value to obtain kcat values which were then in a next step optimized with a joint factor in the parameter identification to best match clinical data (see [Section 2.3.4](#234-automated-parameter-identification))

| Calculated parameters                       | Unit                             | CYP3A4      | CYP2C9      | CYP2C19     |    
| ------------------------------------------- | -------------------------------- | ----------- | ----------- | ----------- | 
| CLspec/Enzyme                               | L/µmol/min                       | 0.007324074 | 0.002083333 | 0.000436842 | 
| kcat                                        | 1/min                            | 0.17        | 0.02        | 0.01        | 

The CYP3A4 expression profiles is based on high-sensitive real-time RT-PCR ([Nishimura 2003](#5-references)). Absolute tissue-specific expressions were obtained by considering the respective absolute concentration in the liver. The PK-Sim database provides a default value for CYP3A4 (compare [Rodrigues 1999](#5-references) and assume 40 mg protein per gram liver). 

The first model simulations showed that gut wall metabolism was underrepresented in the PBPK model. In order to increase gut wall metabolism, the “mucosa permeability on basolateral side” (jointly the model parameters in the mucosa: ``P (interstitial->intracellular)`` and ``P (intracellular->interstitial)``) was estimated. A decrease in this permeability may lead to higher gut wall concentrations and, in turn, to a higher gut wall elimination. This parameter was preferred over other parameters such as relative CYP3A4 expression or fraction unbound (fu) in the gut wall as it is technically not limited to a maximum value of 100%.


### 2.3.4 Automated Parameter Identification

This is the result of the final parameter identification for the base model:

| Model Parameter                                              | Optimized Value                                              | Unit      |
| ------------------------------------------------------------ | ------------------------------------------------------------ | --------- |
| `Lipophilicity`                                              | 2.84                                                         | Log Units |
| `Fraction unbound`                                           | 0.04 (FIXED)                                                 |           |
| `Specific intestinal permeability`                           | 1.21E-3                                                      | cm/min    |
| Basolateral mucosa permeability<br />(``P (interstitial->intracellular)``, ``P (intracellular->interstitial)``) | 6.07E-4   | cm/min    |
| `kcat` (CYP3A4)                                              | 27.21                                                        | 1/min     |
| `kcat` (CYP2C9)                                              | 3.22                                                         | 1/min     |
| `kcat` (CYP2C19)                                             | 1.62                                                         | 1/min     |
| `Dissolution time`                                           | 4.16 (FIXED)                                                 | min       |
| `Dissolution shape`                                          | 1.37 (FIXED)                                                 |           |

