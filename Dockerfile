FROM python:3
ADD davidhuang.py /
# RUN pip install ___ # necessarily need pip install if I use any libraries that need it
CMD ["python", "./davidhuang.py"]