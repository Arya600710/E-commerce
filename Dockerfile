# Use the official python image
FROM python:3.10
#set the working directory in the container
WORKDIR /app
# copy the project files into the container
COPY . /app
#Install dependencies
RUN pip install --no-cache-dir -r requirements.txt
#Run the port Django runs on 
EXPOSE 8000
#run the application 
CMD ["python","manage.py","0.0.0.0.0:8000"]
