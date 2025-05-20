import streamlit as st
from qiskit import QuantumCircuit
from qiskit.quantum_info import Statevector

# Streamlit 頁面設定
st.set_page_config(page_title="量子狀態向量模擬器", layout="centered")
st.title("🧪 量子狀態向量模擬器")

# Qubit 數量設定
num_qubits = st.slider("選擇 Qubit 數量", min_value=1, max_value=4, value=2)
qc = QuantumCircuit(num_qubits)

# 選擇要對哪些 Qubit 套用 Hadamard 門
selected_qubits = st.multiselect("套用 Hadamard 門的 Qubit 編號:", options=list(range(num_qubits)), default=[0, 1])
for q in selected_qubits:
    qc.h(q)

st.subheader("🔧 電路圖")
st.code(qc.draw(output="text"))

# 模擬狀態向量
state = Statevector.from_instruction(qc)
st.subheader("🔢 狀態向量")
st.text(str(state))

st.caption("🧠 Powered by Qiskit + Streamlit")
