# CelestialData

![Screenshot 2024-12-15 145121](https://github.com/user-attachments/assets/bfc78391-5a87-4ccd-8e62-1ba35632b069)


## About Me

Muhammed Turhan is a computer engineering student at Ege University with a passion for technology and blockchain. He began his journey in the crypto world in 2021, diving into investments and exploring the potential of decentralized technologies. Recently, Muhammed started learning coding on the Internet Computer Protocol (ICP), combining his academic background with his growing interest in blockchain development. As a newcomer to coding in ICP, he is eager to apply his skills to innovative projects, bridging his knowledge of computer engineering and cryptocurrency to contribute to the evolving digital landscape.

## Description

CelestialData is a decentralized application built on the Solana blockchain, designed to create and manage a database of celestial body features. The platform allows users to store detailed information about celestial bodies, such as their name, type (e.g., star, planet, asteroid), and composition, including the specific contents and their respective percentages. 
Users can input and update this information seamlessly. The application also features an optional validation tool to ensure that the composition percentages entered for a celestial body are complete and accurate. By leveraging Solana's high-speed and low-cost infrastructure, CelestialData provides a secure, scalable, and transparent way to manage and share astronomical data, catering to researchers, educators, and enthusiasts.

## Vision

CelestialData aims to revolutionize how scientists and researchers store and access data about celestial bodies. By providing a decentralized, efficient, and transparent platform, it simplifies the process of recording and verifying critical information about stars, planets, and other cosmic entities. Our vision is to empower scientists with a reliable tool to organize and share their data seamlessly, fostering collaboration and innovation in the field of astronomy. By leveraging blockchain technology, CelestialData ensures that valuable astronomical information is securely preserved and accessible, driving advancements in space exploration and our understanding of the universe.

## Project Roadmap / Future Plans

Software Development Plan for CelestialData
Step 1: Smart Contract Development
Focus on the core logic for celestial body storage and retrieval. Implement the following core functions:

Storing Celestial Bodies:

storeBody: Add a new celestial body with its name, type, and contents.
addContentToBody: Add or update specific contents for an existing celestial body.
Retrieving Data:

getBody, getContents, getName, getBodyType: Retrieve celestial body details like name, type, and composition.
Validation:

isBodyComplete: Validate if the contents of a celestial body sum to 100%.
Updating and Deleting:

updateBody: Update existing celestial body data.
deleteBody: Remove a celestial body from the database.
Data Management:

Use a Trie for efficient storage and retrieval of celestial body records indexed by unique IDs.
Step 2: Testing and Optimization
Write unit tests for all smart contract functions to ensure reliability.
Test edge cases (e.g., incomplete data or invalid IDs).
Optimize data structure and algorithms for performance on the Solana blockchain.
Step 3: Front-End Development
Build a user-friendly interface to interact with the smart contract.

Features:

Data Entry Forms: Allow users to add celestial bodies and their details.
Validation Tool: Automatically check if the body’s composition sums to 100%.
Data Visualization: Display stored celestial data in a tabular or graphical format.
Technologies:

Framework: React.js or Vue.js.
Solana Integration: Use libraries like @solana/web3.js to connect to the blockchain.
Step 4: Integrating Front-End with Smart Contracts
Use Solana wallet integration (e.g., Phantom Wallet) to allow user authentication and transactions.
Connect UI actions (e.g., "Add Celestial Body") to smart contract functions.
Step 5: Deployment and Testing
Deploy the smart contract on the Solana testnet for initial testing.
Test end-to-end functionality with the front-end application.
Address any bugs or inefficiencies.
Step 6: Final Deployment and Launch
Deploy the smart contract on the Solana mainnet.
Host the front-end application on a reliable platform (e.g., Vercel, Netlify).
Provide documentation and a user guide for astronomers and researchers.
This plan ensures a secure, scalable, and user-friendly implementation of CelestialData.
## The Tach We Use

- Motoko Playground
- ChatGPT
- IMGCREATOR

## Smart Contact

- +90 535 525 3944 
- meheme4434@gmail.com

## Setup Environment

Prerequisites
Before installing and running the project, ensure you have the following installed:

Node.js (v16 or higher)
Yarn or npm
Solana CLI
A Solana wallet (e.g., Phantom, Solflare)
Installation
Clone the Repository

git clone https://github.com/yourusername/celestialdata.git  
cd celestialdata  
Install Dependencies
Navigate to the frontend and smart-contract directories and install dependencies:

# Install smart contract dependencies  
cd smart-contract  
yarn install  

# Install front-end dependencies  
cd ../frontend  
yarn install  
Compile and Deploy the Smart Contract

Compile the smart contract:
solana program deploy path/to/your/contract.so  
Note the deployed program ID for later use.
Configure the Front-End

Open frontend/src/config.js and update the program ID and Solana network details:
javascript
export const SOLANA_NETWORK = "https://api.mainnet-beta.solana.com";  
export const PROGRAM_ID = "Your_Deployed_Program_ID";  
Run the Front-End Application
Start the development server:


cd frontend  
yarn start  
The application will be available at http://localhost:3000.

Usage
Enter celestial body details in the provided form.
Use the "Validate Composition" button to check the entered data.
Save the data to the blockchain.
Retrieve or update records as needed.
License
This project is licensed under the MIT License.

