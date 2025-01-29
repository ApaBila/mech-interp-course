# Mechanistic Interpretability 4 Week Course

Based on [Neel Nanda's guide](https://www.neelnanda.io/mechanistic-interpretability/getting-started)

Commitment : 12hrs/Week for 4 weeks

Structured as a workbook with concrete weekly tasks, code deliverables, and progress tracking.  
**Focus**: Build intuition for transformers, use TransformerLens, and run experiments on GPT-2-small.

### **Week 1: ML Prerequisites & PyTorch Fluency**  
**Goal**: Train an MLP on MNIST, understand transformer architecture basics.  
**Time**: 12 hours  

#### **Tasks**  
1. **PyTorch Basics** (4 hrs)  
   - Code an MLP for MNIST (input: 784 → hidden: 256 → output: 10).  
   - Use `torch.nn.Sequential`, `DataLoader`, and `CrossEntropyLoss`.  
   - **Deliverable**: Achieve >95% test accuracy.  

2. **Transformer Architecture** (6 hrs)  
   - Study [Callum McDougall’s Transformer from Scratch](https://neelnanda.io/transformer-tutorial).  
   - **Code**: Implement a single transformer block (attention + MLP) from scratch.  
   - **Deliverable**: Pass the tutorial’s test cases (no copying!).  

3. **Python Practice** (2 hrs)  
   - Rewrite data loading with `torch.utils.data.Dataset` and `zip` for batching.  
   - Use list comprehensions for MNIST preprocessing.  

#### **Success Criteria**  
- [ ] MLP trained on MNIST.  
- [ ] Single transformer block code passing tests.  
- [ ] Read [Barebones Guide to MI Prerequisites](https://www.lesswrong.com/posts/uMQ3cqWDPHhjtiesc/mechanistic-interpretability-prerequisites).  

---

### **Week 2: TransformerLens & Mechanistic Intuition**  
**Goal**: Use TransformerLens to probe GPT-2-small, visualize activations.  
**Time**: 12 hours  

#### **Tasks**  
1. **TransformerLens Setup** (3 hrs)  
   - Install and run [Main Demo](https://colab.research.google.com/github/neelnanda-io/TransformerLens/blob/main/demos/Main_Demo.ipynb).  
   - Extract MLP activations for the prompt “Hello, world!”.  

2. **Induction Heads Tutorial** (6 hrs)  
   - Complete [Induction Heads exercises](https://colab.research.google.com/github/neelnanda-io/TransformerLens/blob/main/demos/Induction_Heads_Tutorial.ipynb).  
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
**Goal**: Tackle a problem from [200 Concrete Open Problems](https://www.alignmentforum.org/s/EmDuGeRw749sD3GKd).  
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

### **Notion Progress Tracker Template**  
```markdown  
## Week [X] Log  

### Core Tasks  
- [ ] Task 1  
- [ ] Task 2  

### Code Deliverables  
- [ ] GitHub/Colab links  

### Key Learnings  
- [ ] 3 bullet points  

### Blockers  
- [ ] What’s confusing?  

### Time Log  
- Day 1: [ ] hrs  
- Day 2: [ ] hrs  
- ...  
```  

---

### **Pro Tips**  
1. **Debugging**: Use `%debug` in Colab for post-mortem inspection of shape errors.  
2. **Compute**: For free GPU, use Colab → Runtime → Change runtime type → T4 GPU.  
3. **Tooling**: Bookmark [TransformerLens Docs](https://neelnanda-io.github.io/TransformerLens/).  

By the end of this plan, you’ll have hands-on experience with transformers, replicated a paper, and contributed to open problems. Adjust tasks as needed, but prioritize coding over passive reading!
