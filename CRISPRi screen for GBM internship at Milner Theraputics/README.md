## qPCR validation of ATM-targeting CRISPRi in a GBM ClonoScreen3D workflow
Author: Catherine Taylor (8-week internship, Milner Therapeutics Institute, University of Cambridge)
Supervisor: Sukjun (Jun) Lee
Head of lab/team: Erica Bello
Programme: Funded & organised by the Cancer Research Cambridge Centre
Dates: 7th July 2025 - 29th August 2025

### Overview
Glioblastoma (GBM) is the most common and aggressive primary brain tumour in adults. Even with the current standard of care (maximal resection → radiotherapy + temozolomide), outcomes remain poor (median survival ~14–16 months; 5-year survival <10%). Radioresistance driven by efficient DNA-damage repair in glioblastoma stem-like cells is a significant barrier to durable control. Targeting the DNA-damage response (DDR) to sensitise tumours to radiation is therefore a compelling strategy; ATM (ataxia-telangiectasia mutated) is a key DDR kinase whose inhibition can enhance radiosensitivity.
This project contributes molecular validation to a scalable CRISPRi screening pipeline by quantifying on-target repression of ATM following CRISPRi in GBM cells, supporting downstream 3D clonogenic readouts under irradiation. The work sits within the ClonoScreen3D platform, a screening-friendly evolution of the 3D clonogenic assay on Alvetex® scaffolds with automated colony quantification.
Platform & model

ClonoScreen3D assay: 3D clonogenic growth on Alvetex® scaffolds with improved, semi-automated colony counting (with bioinformatics support from Anke Husmann at FGSL).
Cell model: G7 glioblastoma line engineered for CRISPR interference (G7-Zim3 CRISPRi GBM, dCas9-ZIM3-KRAB repressor).
Screening aim: Identify radiosensitisers by perturbing DDR genes and measuring clonogenic survival at 0 Gy vs 3 Gy. 

### What this repository intro covers
This project describes the qPCR validation arm of the workflow, which is used to confirm the transcriptional knockdown of ATM prior to clonogenic assays.
Experimental design (summary)
We evaluated two independent sgRNAs (ATM1, ATM2) versus a non-targeting control (NT-sgRNA) in two contexts:
Automated, pooled condition: Reverse-transfection in a 96-well format on a BRAVO liquid handler; post-transfer to Alvetex plates for clonogenic assays, the remaining cells were pooled for qPCR to verify on-target repression.
Dose series (manual): Reverse-transfections comparing 0.45 µM vs 0.045 µM sgRNA input to assess knockdown at reduced guide concentrations. (Design adapted from a 48-well protocol scaled to 96-well for automation). 

### Key steps (shared core protocol):
Reverse-transfection: Matrigel-coated 96-well plates; Lipofectamine™ RNAiMAX; 8,000 cells/well; 72 h incubation.
RNA/cDNA: TRIzol extraction (Micro kit), NanoDrop quantification, cDNA synthesis with random hexamers.
qPCR: QuantStudio + PowerUp™ SYBR™ Green; ACTB as internal control; relative expression by ΔΔCt, normalised to NT-sgRNA.
Readout: Fold-change in ATM mRNA confirming CRISPRi efficacy under standard and reduced sgRNA doses, de-risking incorporation into ClonoScreen3D radiosensitiser screens.
Why it matters
Demonstrating robust ATM knockdown validates the CRISPRi arm of the pipeline and supports interpretable 3D clonogenic outcomes after irradiation. Together, these pieces enable scalable discovery of GBM radiosensitisers and rational combination strategies within the ClonoScreen3D framework.

### Acknowledgements
Milner Therapeutics Institute Target Discovery Group; Milner CRISPR technology team; Anke Husmann (bioinformatics/automation); originators of the Alvetex-based 3D clonogenic assay (Anthony J. Chalmers, University of Glasgow; Natividad Gómez-Román, University of Strathclyde); Colin Watts (Cambridge) for the G7 cell line; Cancer Research Cambridge Centre for funding and organisation.

### References
Amsbio.com (2024) AMSBIO. Available at: https://www.amsbio.com/alvetex-3d-cell-culture-technology/ (Accessed: [date needed])
Carruthers, R. et al. (2018) 'Replication Stress Drives Constitutive Activation of the DNA Damage Response and Radioresistance in Glioblastoma Stem-like Cells', Cancer Research, 78(17), pp. 5060–5071. Available at: https://doi.org/10.1158/0008-5472.can-18-0569
Gilbert, L.A. et al. (2013) 'CRISPR-Mediated Modular RNA-Guided Regulation of Transcription in Eukaryotes', Cell, 154(2), pp. 442–451. Available at: https://doi.org/10.1016/j.cell.2013.06.044
Gilbert, L.A. et al. (2014) 'Genome-Scale CRISPR-Mediated Control of Gene Repression and Activation', Cell, 159(3), pp. 647–661. Available at: https://doi.org/10.1016/j.cell.2014.09.029
Jackson, M.R. et al. (2024) 'ClonoScreen3D – A Novel 3-Dimensional Clonogenic Screening Platform for Identification of Radiosensitizers for Glioblastoma', International Journal of Radiation Oncology Biology Physics, 120(1), pp. 162–177. Available at: https://doi.org/10.1016/j.ijrobp.2024.02.046
Mahdi, A., Aittaleb, M. and Tissir, F. (2025) 'Targeting Glioma Stem Cells: Therapeutic Opportunities and Challenges', Cells, 14(9), pp. 675–675. Available at: https://doi.org/10.3390/cells14090675
Pasqualetti, F. et al. (2023) 'Cancer Stem Cells and Glioblastoma: Time for Innovative Biomarkers of Radio-Resistance?', Biology, 12(10), p. 1295. Available at: https://doi.org/10.3390/biology12101295
Qi, L.S. et al. (2013) 'Repurposing CRISPR as an RNA-Guided Platform for Sequence-Specific Control of Gene Expression', Cell, 152(5), pp. 1173–1183. Available at: https://doi.org/10.1016/j.cell.2013.02.022
Replogle, J.M. et al. (2022) 'Maximising CRISPRi Efficacy and Accessibility with Dual-sgRNA Libraries and Optimal Effectors', eLife, 11. Available at: https://doi.org/10.7554/elife.81856
Squatrito, M. et al. (2010) 'Loss of ATM/Chk2/p53 Pathway Components Accelerates Tumor Development and Contributes to Radiation Resistance in Gliomas', Cancer Cell, 18(6), pp. 619–629. Available at: https://doi.org/10.1016/j.ccr.2010.10.034
Wang, Y. et al. (2018) 'Temporal DNA-PK Activation Drives Genomic Instability and Therapy Resistance in Glioma Stem Cells', JCI Insight, 3(3), p. e98096. Available at: https://doi.org/10.1172/jci.insight.98096
Fael Al-Mayhani, T.M. et al. (2009) ‘An efficient method for derivation and propagation of glioblastoma cell lines that conserves the molecular profile of their original tumours’, Journal of Neuroscience Methods, 176(2), pp. 192–199. Available at: https://doi.org/10.1016/j.jneumeth.2008.07.022
