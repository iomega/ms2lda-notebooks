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

On https://gnps.ucsd.edu/ all the spectra clustered resulting in 107122 spectra with 229899 words.

In the `big/` directory there are notebooks that perform lda on the dataset.
