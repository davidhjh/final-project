FROM python:3
ADD davidhuang.py /
# RUN pip install 
CMD ["python", "./davidhuang.py"]