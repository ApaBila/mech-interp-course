#!/bin/bash

# Create main project directory and cd into it
mkdir -p mechanistic-interpretability-course
cd mechanistic-interpretability-course

# Week 1: ML Prerequisites & PyTorch Fluency
mkdir -p week1/{mnist_mlp,transformer_block,python_practice}/{notebooks,data,models}
touch week1/mnist_mlp/README.md
touch week1/transformer_block/README.md
touch week1/python_practice/README.md

# Week 2: TransformerLens & Mechanistic Intuition
mkdir -p week2/{transformerlens_setup,induction_heads,python_practice}/{notebooks,data,models}
touch week2/transformerlens_setup/README.md
touch week2/induction_heads/README.md
touch week2/python_practice/README.md

# Week 3: Paper Replication
mkdir -p week3/{paper_analysis,activation_patching,python_practice}/{notebooks,data,models}
touch week3/paper_analysis/README.md
touch week3/activation_patching/README.md
touch week3/python_practice/README.md

# Week 4: Open Problems
mkdir -p week4/{problem_selection,experiments,blog_post}/{notebooks,data,models}
touch week4/problem_selection/README.md
touch week4/experiments/README.md
touch week4/blog_post/README.md

# Create main README
echo "# Mechanistic Interpretability 4 Week Course
Based on Neel Nanda's guide

See main repository for full instructions and curriculum." > README.md

# Create requirements.txt
echo "torch
torchvision
transformer_lens
einops
numpy
matplotlib
jupyter
pytest" > requirements.txt

# Initialize git
git init
