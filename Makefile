install:
    pip install --upgrade pip &&\
        pip install -r requirements.txt
        
        
test:
    #python -m pytest -vv --cov=myrepolib test/*.py
    #python -m pytest -nbval notebook.ipynb
    
    
lint:
    pylint --disable=R,C hello.py
    
    
all: install test lint