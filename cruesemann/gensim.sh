docker start some-pg
pipenv shell

/usr/bin/time ./run_gensim.py corpus -f mgf ../../cruesemann/cruesemann.mgf ../../cruesemann/cruesemann.corpus.json
/usr/bin/time ./run_gensim.py gensim -n 2 ../../cruesemann/cruesemann.corpus.json ../../cruesemann/cruesemann.lda.json
/usr/bin/time ./run_gensim.py insert ../../cruesemann/cruesemann.lda.json stefanv cruesemann
