# 量子狀態向量模擬器（Quantum Statevector Viewer）

這是一個使用 [Streamlit](https://streamlit.io) 和 [Qiskit](https://qiskit.org) 建立的互動式量子電路模擬網站，能讓使用者：
- 選擇 qubit 數量
- 套用 Hadamard gate 至任意 qubit
- 查看電路圖與最終量子狀態向量

## 🧪 線上試用
👉 部署後將自動產生 URL，或可 fork 到自己帳號後使用 [Streamlit Cloud](https://streamlit.io/cloud) 免費部署。

## 🚀 快速開始（本地端）

```bash
pip install -r requirements.txt
streamlit run app.py
