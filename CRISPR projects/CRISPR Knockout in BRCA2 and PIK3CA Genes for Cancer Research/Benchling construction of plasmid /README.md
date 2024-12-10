The folders above consist of my construction of the CRISPR KO plasmid and further checking that the plasmid is correct in Python.

![Project 1 benchling data table](https://github.com/user-attachments/assets/24fc60b2-dac7-42e5-a272-a944d0450bfe)

The tables above are results from the Benchling CRISPR assembly from my plasmid construct (inserting target sgRNA, PAM, and chimeric guide scaffold), which is analysed below for both target human genes.  

## PIK3CA Knockout Analysis

The CRISPR knockout project targeting the PIK3CA gene at chr3:179148561-179148583 (GRCh38 assembly) utilised the sgRNA sequence ACCCGATGCGGTTAGAGCCG with the PAM sequence CGG. The sgRNA achieved an on-target score of 56.3, reflecting moderate efficiency suitable for gene disruption experiments. An off-target score of 48.0 indicates manageable specificity, suggesting that while off-target effects are possible, they are not excessive. The sgRNA's GC content of 55% ensures stability and effective binding, supporting reliable Cas9 activity. The design employed a PX4850-based plasmid backbone with SpCas9 and a human U6 promoter driving sgRNA expression, ensuring robust editing conditions. BbsI cloning sites facilitated precise sgRNA insertion into the plasmid. 

## BRCA2 Knockout Analysis

For the BRCA2 gene, targeted at chr13:32398926-32398948 (GRCh37 assembly), the sgRNA sequence CGTTTTGCCCGATTCCGTAT with PAM TGG was selected. This sgRNA achieved a high off-target score of 77.85, reflecting excellent specificity with minimal unintended effects, making it ideal for precision applications. However, the on-target score 22.15 indicates moderate cutting efficiency, suitable for experiments requiring targeted gene knockout rather than robust editing. The plasmid backbone, pSpCas9n(BB) (PX460), includes a Cas9 nickase (D10A mutant) to further reduce off-target risks by creating nicks instead of double-strand breaks. Flanking BsmBI restriction sites enable efficient sgRNA cloning, and the GC content of 52.17% ensures stability and effective binding. 
