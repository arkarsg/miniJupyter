# Use the base image
FROM quay.io/jupyter/minimal-notebook:lab-4.1.8

# Install additional Python packages
RUN pip install pandas
