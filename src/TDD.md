---
marp: true
theme: gaia
header: '![image height:20px](assets/logo-black-with-r.svg)'
backgroundImage: linear-gradient(to right, rgb(255 255 255 / 85%), rgb(255 255 255 / 95%)), url(assets/bg_1.svg)
style: |
  header img {
  float:right
  }
  img { 
    background-color: transparent;
  }
  div.mermaid {
    display:flex;
    height: 100%;
  }
  div.mer_center {
    width:50%;
    margin:auto;
  }
  div.colwrap {
    color: inherit;
    width: 100%;
    height: 100%;
  }

  div.colwrap div.left, div.colwrap div.right {
    position: absolute;
    top: 10%;
    bottom: 0;
    padding: 5% 1% 8% 1%;
  }
  div.colwrap div.left {
    right: 50%;
    left: 0;
  }
  div.colwrap div.right {
    left: 50%;
    right: 0;
  }
paginate: true
---
![bg](assets/bg_1.svg)

<br/><br/>

# **TDD**
* ## **T**est
* ## **D**riven
* ## **D**evelopment

<style scoped>ul {list-style: none; }</style>

---
#### **Current Metadata Data Stores in ThoughtSpot**


---
<br/><br/><br/><br/>

# **Why a graph database?**

---


---
<br/><br/><br/><br/>

#### **Questions?**
---
<br/><br/><br/><br/>

#### **Thank you**

<script type="module">
import mermaid from 'https://cdn.jsdelivr.net/npm/mermaid@10/dist/mermaid.esm.min.mjs';
mermaid.initialize({ startOnLoad: true });
window.addEventListener('vscode.markdown.updateContent', function() { mermaid.init() });
</script>