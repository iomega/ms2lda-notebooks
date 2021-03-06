# ms2lda-notebooks

Notebooks that use ms2lda

# Compare LDA implementations

Compute mass2motifs of ms2lda (https://github.com/sdrogers/ms2ldaviz) using different LDA implentations 

* Ms2lda
* Scikit learn
* Gensim
* Spark

Try on small and big dataset.

## Install

```
. ~/miniconda3/bin/activate
conda create -n ms2lda python=3
conda activate ms2lda
git clone https://github.com/sdrogers/ms2ldaviz.git
wget http://apache.40b.nl/spark/spark-2.3.1/spark-2.3.1-bin-hadoop2.7.tgz
tar -zxf spark-2.3.1-bin-hadoop2.7.tgz
export SPARK_HOME=$PWD/spark-2.3.1-bin-hadoop2.7
pip install -r requirements.txt
# Register this conda env as a Jupyter kernel
python -m ipykernel install --user --name ms2lda --display-name "Python 3 (ms2lda)"
```

Ms2lda is Python 2 code so use Python 2 kernel to run notebooks.
For notebooks not using ms2lda use the Python 3 kernel.

## Run

```
jupyter lab
```

Open `lda-compare/*.ipynb` notebooks in Jupyter lab and run the cells.

Compare clusters, max memory usage and duration.

# Run lda on big dataset

On https://gnps.ucsd.edu/ all the spectra have been clustered resulting in 107122 spectra with 229899 words.
The mgf file was downloaded from https://gnps.ucsd.edu/ProteoSAFe/gnpslibrary.jsp?library=all, direct link ftp://ccms-ftp.ucsd.edu/Spectral_Libraries/ALL_GNPS.mgf

In the `big/` directory there are notebooks that perform lda on the dataset.

# Dataset from GNPS

Goto https://gnps.ucsd.edu/ProteoSAFe/result.jsp?task=17813156319b488f9b3351c440ac8d92&view=advanced_view

Goto FTP download at ftp://massive.ucsd.edu/MSV000081118

Download ftp://massive.ucsd.edu/MSV000081118/clustered/MSV000081118_specs_ms.mgf

