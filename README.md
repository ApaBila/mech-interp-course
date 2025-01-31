# Mechanistic Interpretability 4 Week Course

Based on [Neel Nanda's guide](https://www.neelnanda.io/mechanistic-interpretability/getting-started)

Commitment : 12hrs/Week for 4 weeks

Structured as a workbook with concrete weekly tasks, code deliverables, and progress tracking.  
**Focus**: Build intuition for transformers, use TransformerLens, and run experiments on GPT-2-small.

### Directions to use:


### **Week 1: ML Prerequisites & PyTorch Fluency**  
**Goal**: Train an MLP on MNIST, understand transformer architecture basics.  
**Time**: 12 hours  

#### **Tasks**  
1. **PyTorch Basics** (4 hrs)  
   - Code an MLP for MNIST (input: 784 → hidden: 256 → output: 10).  
   - Use `torch.nn.Sequential`, `DataLoader`, and `CrossEntropyLoss`.  
   - **Deliverable**: Achieve >95% test accuracy.  

2. **Transformer Architecture** (6 hrs)  
   - Study [Callum McDougall’s Transformer from Scratch](https://arena-chapter1-transformer-interp.streamlit.app/[1.1]_Transformer_from_Scratch) or [Neel Nanda’s Transformer from Scratch](https://neelnanda.io/transformer-tutorial).  
   - **Code**: Implement a single transformer block (attention + MLP) from scratch.  
   - **Deliverable**: Pass the tutorial’s test cases (no copying!).  

3. **Python Practice** (2 hrs)  
   - Rewrite data loading with `torch.utils.data.Dataset` and `zip` for batching.  
   - Use list comprehensions for MNIST preprocessing.  

#### **Success Criteria**  
- [ ] MLP trained on MNIST.  
- [ ] Single transformer block code passing tests.  
- [ ] Read [Barebones Guide to MI Prerequisites](https://www.neelnanda.io/mechanistic-interpretability/prereqs).  

---

### **Week 2: TransformerLens & Mechanistic Intuition**  
**Goal**: Use TransformerLens to probe GPT-2-small, visualize activations.  
**Time**: 12 hours  

#### **Tasks**  
1. **TransformerLens Setup** (3 hrs)  
   - Install and run [Main Demo](https://arena3-chapter1-transformer-interp.streamlit.app/%5B1.2%5D_Intro_to_Mech_Interp).  
   - Extract MLP activations for the prompt “Hello, world!”.  

2. **Induction Heads Tutorial** (6 hrs)  
   - Complete [Induction Heads exercises](https://arena-chapter1-transformer-interp.streamlit.app).  
   - **Deliverable**: Plot attention patterns for induction heads.  

3. **Python Practice** (3 hrs)  
   - Use `einops` to reshape GPT-2 activations (e.g., `rearrange(activations, 'b s h -> h (b s)')`).  
   - Write a decorator to log tensor shapes during inference.  

#### **Success Criteria**  
- [ ] Induction heads attention patterns plotted.  
- [ ] GPT-2 activations extracted for 10 prompts.  
- [ ] Watch [Mathematical Framework Walkthrough](https://www.youtube.com/watch?v=KV5gbOmHbjU).  

---

### **Week 3: Replicate a Paper & Debugging**  
**Goal**: Replicate a key result from *Interpretability in the Wild* (Rimsky et al.).  
**Time**: 12 hours  

#### **Tasks**  
1. **Paper Deep Dive** (3 hrs)  
   - Read [Interpretability in the Wild](https://arxiv.org/abs/2211.00593) (Sections 1-3).  
   - Summarize their methodology for activation patching.  

2. **Code Replication** (7 hrs)  
   - Use TransformerLens to implement activation patching on GPT-2-small.  
   - **Deliverable**: Reproduce Fig 3 (ablation effect on IOI task).  

3. **Python Practice** (2 hrs)  
   - Write a generator for synthetic prompts (e.g., “John gave Mary a {object}”).  
   - Use `functools.partial` to batch-process prompts.  

#### **Success Criteria**  
- [ ] Activation patching code for IOI task.  
- [ ] 1-page paper summary with techniques/limitations.  
- [ ] Join [ML Collective Discord](https://mlcollective.org/) for feedback.  

---

### **Week 4: Open Problems & Mini-Research**  
**Goal**: Tackle a problem from [200 Concrete Open Problems](https://www.alignmentforum.org/posts/LbrPTJ4fmABEdEnLf/200-concrete-open-problems-in-mechanistic-interpretability).  
**Time**: 12 hours  

#### **Tasks**  
1. **Problem Selection** (2 hrs)  
   - Choose a problem tagged **A (Easy)** (e.g., “Does GPT-2-small use positional embeddings in MLP layers?”).  

2. **Experimentation** (8 hrs)  
   - Use TransformerLens to extract positional embeddings and ablate MLPs.  
   - **Deliverable**: Plot logit differences before/after ablation.  

3. **Documentation** (2 hrs)  
   - Write a blog-style summary of findings (500 words).  
   - Share in ML Collective Discord for feedback.  

#### **Success Criteria**  
- [ ] Ablation experiment code.  
- [ ] Blog post draft.  
- [ ] Skim [Concrete Open Problems](https://www.alignmentforum.org/s/EmDuGeRw749sD3GKd) Appendix.  

---

### **Setup Instructions**

1. **Fork the Repository**
   ```bash
   # Click the 'Fork' button in the top right of the GitHub repository page
   ```

2. **Clone Your Fork**
   ```bash
   git clone https://github.com/YOUR_USERNAME/mechanistic-interpretability-course.git
   cd mechanistic-interpretability-course
   ```

3. **Create and Activate Virtual Environment**
   ```bash
   # For Python venv
   python -m venv venv
   
   # On Windows
   .\venv\Scripts\activate
   
   # On Unix or MacOS
   source venv/bin/activate
   ```

4. **Install Dependencies**
   ```bash
   pip install -r requirements.txt
   ```

5. **Create Directory Structure**
   ```bash
   # Make the setup script executable
   chmod +x setup.sh
   
   # Run the setup script
   ./setup.sh
   ```

### Repository Structure
```
mechanistic-interpretability-course/
├── week1/
│   ├── mnist_mlp/
│   ├── transformer_block/
│   └── python_practice/
├── week2/
│   ├── transformerlens_setup/
│   ├── induction_heads/
│   └── python_practice/
├── week3/
│   ├── paper_analysis/
│   ├── activation_patching/
│   └── python_practice/
├── week4/
│   ├── problem_selection/
│   ├── experiments/
│   └── blog_post/
├── requirements.txt
└── README.md
```

### Working with the Repository

1. **Track Your Progress**
   - Each week's folder contains a README.md file for tracking progress
   - Use the provided Notion template for detailed progress tracking

2. **Submitting Work**
   - Create a new branch for each week's work:
     ```bash
     git checkout -b week1-solutions
     ```
   - Commit your changes regularly:
     ```bash
     git add .
     git commit -m "Completed MNIST MLP implementation"
     ```
   - Push to your fork:
     ```bash
     git push origin week1-solutions
     ```

3. **Getting Updates**
   - Add the original repository as upstream:
     ```bash
     git remote add upstream https://github.com/ORIGINAL_OWNER/mechanistic-interpretability-course.git
     ```
   - Fetch and merge updates:
     ```bash
     git fetch upstream
     git merge upstream/main
     ```

### Using Google Colab
- Each `notebooks` directory can be synced with Google Colab
- Use the "Open in Colab" button and save copies to your Google Drive
- Remember to save your work back to the repository

### Need Help?
- Join the [ML Collective Discord](https://mlcollective.org/)
- Open an issue in the repository
- Check the [TransformerLens Documentation](https://neelnanda-io.github.io/TransformerLens/)


### **Pro Tips**  
1. **Debugging**: Use `%debug` in Colab for post-mortem inspection of shape errors.  
2. **Compute**: For free GPU, use Colab → Runtime → Change runtime type → T4 GPU.  
3. **Tooling**: Bookmark [TransformerLens Docs](https://neelnanda-io.github.io/TransformerLens/).  

By the end of this plan, you’ll have hands-on experience with transformers, replicated a paper, and contributed to open problems. Adjust tasks as needed, but prioritize coding over passive reading!
