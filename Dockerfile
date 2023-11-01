FROM python:slim

# Update linux package manager
RUN apt-get update -y

# Update python package manager
RUN pip install --upgrade pip

# Install jira
RUN pip install 'jira[cli]'

# Setting
WORKDIR /app
ENTRYPOINT ["tail"]
CMD ["-f","/dev/null"]
