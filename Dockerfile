# Use an official Python runtime as a parent image
FROM python:3.10-slim

# Install Poetry
RUN apt-get update && apt-get upgrade -y \
    && apt-get install -y python3-pip git \
    && git clone https://github.com/tier4/autoware_perception_evaluation.git \
    && pip3 install poetry

WORKDIR /autoware_perception_evaluation

COPY pyproject.toml /autoware_perception_evaluation/




# Command to run the evaluation scripts (replace <DATASET_PATH1> and <DATASET_PATH2> with actual paths)
# CMD ["poetry", "run", "python3", "-m", "test.sensing_lsim", "<DATASET_PATH1>", "<DATASET_PATH2>"]

ENTRYPOINT ["poetry", "install"]