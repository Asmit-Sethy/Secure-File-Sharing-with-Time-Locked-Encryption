# ⏳ Time-Locked Encryption for Secure File Sharing

## 📌 Overview
This project implements a **Secure Encrypted Communication System with Time-Sensitive Key Management**, ensuring confidentiality, integrity, and controlled access to sensitive files and messages.  

It introduces **time-locked encryption**: once the decryption window expires, the message/file becomes permanently inaccessible. Built using **post-quantum cryptography (FrodoKEM)**, the system safeguards against both classical and quantum attacks.  


## 🔐 Key Features
- **Post-Quantum Security:** Uses **FrodoKEM** (Learning With Errors problem) for strong encryption.  
- **Time-Locked Access:** Decryption possible only within a defined time window.  
- **Data Integrity:** **SHA-256 hashing** ensures tamper-proof message storage.  
- **Role-Based Design:**  
  - **Sender:** Registers, encrypts, and sends messages.  
  - **Receiver:** Decrypts within allowed time frame.  
  - **Admin:** Manages users, enforces security policies, and monitors system.  
- **Resistant to Attacks:** Secure against Man-in-the-Middle, replay, brute force, and key leakage attempts.  

## 🏗️ System Architecture
- **Frontend:** HTML, CSS  
- **Backend:** Java  
- **Database:** None (File-based / Local storage if any)  
- **Encryption:** AES, RSA, FrodoKEM (Post-Quantum Cryptography)  
- **Hashing:** SHA-256 (for integrity of decrypted files/messages)  


## 🚀 Getting Started

### Prerequisites
Make sure you have the following installed:
- [Git](https://git-scm.com/)  
- [Java JDK](https://www.oracle.com/java/technologies/downloads/) or other runtime (depending on backend)  
- [Tomcat/Server setup] (if running on Java EE)  
- Browser for frontend access  
