# Sildenafil-Model
Whole-body PBPK model of sildenafil.

<a title="Sildenafil" href="https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/Sildenafil.svg/320px-Sildenafil.svg.png"><img width="128" alt="Sildenafil 200" src="https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/Sildenafil.svg/320px-Sildenafil.svg.png"></a>


This repository contains:

- a [PK-Sim snapshot (*.json) file](https://docs.open-systems-pharmacology.org/working-with-pk-sim/pk-sim-documentation/importing-exporting-project-data-models#exporting-project-to-snapshot-loading-project-from-snapshot) of the current PBPK model
- static content (e.g. text blocks, *.md files) as inputs for an evaluation plan
- an evaluation plan (evaluation-plan.json) to create an evaluation report using the snapshot and static text blocks to display the performance of the model

**The latest release of the snapshot of the model, the evaluation plan and the static content can be found [here](../../releases/latest).**

**The latest release of the PK-Sim project model file and the respective evaluation report can be found [here](https://github.com/Open-Systems-Pharmacology/OSP-PBPK-Model-Library/releases/latest).**



This sildenafil model is intended to be used as victim drug in CYP3A4-mediated drug-drug interactions (DDI).

This whole-body PBPK model of sildenafil has been  developed using in particular published pharmacokinetic clinical data by Muirhead et al. 2002 [[1](#references)], Nichols et al. 2002 [[2](#references)], the FDA [[3](#references)], and Walker et al. 1999 [[4](#references)]. 
The model has then been evaluated simulating a large number of clinical studies and comparing with respective observed data. 


## Code of conduct
Everyone interacting in the Open Systems Pharmacology community (codebases, issue trackers, chat rooms, mailing lists etc...) is expected to follow the Open Systems Pharmacology [code of conduct](https://github.com/Open-Systems-Pharmacology/Suite/blob/master/CODE_OF_CONDUCT.md#contributor-covenant-code-of-conduct).

## Contribution
We encourage contribution to the Open Systems Pharmacology community. Before getting started please read the [contribution guidelines](https://github.com/Open-Systems-Pharmacology/Suite/blob/master/CONTRIBUTING.md#ways-to-contribute). If you are contributing code, please be familiar with the [coding standard](https://github.com/Open-Systems-Pharmacology/Suite/blob/master/CODING_STANDARDS.md#visual-studio-settings).

## License
The model code is distributed under the [GPLv2 License](https://github.com/Open-Systems-Pharmacology/Suite/blob/develop/LICENSE).

## References
[1] [Muirhead GJ, Rance DJ, Walker DK, Wastall P. Comparative human pharmacokinetics and metabolism of single-dose oral and intravenous sildenafil. Br J Clin Pharmacol. (2002)](https://doi.org/10.1046/j.06-5251.2001.00028.x)

[2] [Nichols DJ, Muirhead GJ, Harness JA. Pharmacokinetics of sildenafil after single oral doses in healthy male subjects: absolute bioavailability, food effects and dose proportionality. Br J Clin Pharmacol. (2002)](https://doi.org/10.1046/j.0306-5251.2001.00027.x)

[3] [Food and Drug Administration, Clinical Pharmacology and biopharmaceutics review of Revatio. (2009)](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2009/022473s000_ClinPharmR.pdf)

[4] [Walker DK, Ackland MJ, James GC, Muirhead GJ, Rance DJ, Wastall P, et al. Pharmacokinetics and metabolism of sildenafil in mouse, rat, rabbit, dog and man. Xenobiotica. (1999)](https://doi.org/10.1080/004982599238687)


