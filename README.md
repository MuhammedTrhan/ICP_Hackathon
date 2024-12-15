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
### Step 1: Smart Contract Development
Focus on the core logic for celestial body storage and retrieval. Implement the following core functions:

#### 1. Storing Celestial Bodies:
- storeBody: Add a new celestial body with its name, type, and contents.
- addContentToBody: Add or update specific contents for an existing celestial body.

#### 2. Retrieving Data:
- getBody, getContents, getName, getBodyType: Retrieve celestial body details like name, type, and composition.

#### 3. Validation:
- isBodyComplete: Validate if the contents of a celestial body sum to 100%.

#### 4. Updating and Deleting:
- updateBody: Update existing celestial body data.
- deleteBody: Remove a celestial body from the database.

#### 5. Data Management:

- Use a Trie for efficient storage and retrieval of celestial body records indexed by unique IDs.

### Step 2: Testing and Optimization
- Write unit tests for all smart contract functions to ensure reliability.
- Test edge cases (e.g., incomplete data or invalid IDs).
- Optimize data structure and algorithms for performance on the Solana blockchain.

### Step 3: Front-End Development
Build a user-friendly interface to interact with the smart contract.

#### 1. Features:
- Data Entry Forms: Allow users to add celestial bodies and their details.
- Validation Tool: Automatically check if the body’s composition sums to 100%.
- Data Visualization: Display stored celestial data in a tabular or graphical format.

#### 2. Technologies:
- Framework: React.js or Vue.js.
- Solana Integration: Use libraries like @solana/web3.js to connect to the blockchain.

### Step 4: Integrating Front-End with Smart Contracts
- Use Solana wallet integration (e.g., Phantom Wallet) to allow user authentication and transactions.
- Connect UI actions (e.g., "Add Celestial Body") to smart contract functions.

### Step 5: Deployment and Testing
- Deploy the smart contract on the Solana testnet for initial testing.
- Test end-to-end functionality with the front-end application.
- Address any bugs or inefficiencies.

### Step 6: Final Deployment and Launch
- Deploy the smart contract on the Solana mainnet.
- Host the front-end application on a reliable platform (e.g., Vercel, Netlify).
- Provide documentation and a user guide for astronomers and researchers.
This plan ensures a secure, scalable, and user-friendly implementation of CelestialData.

## The Tach We Use

- Motoko Playground
- ChatGPT
- IMGCREATOR

## Smart Contact

- +90 535 525 3944 
- meheme4434@gmail.com

## Installation Guide for CelestialData
Follow these steps to install and run the CelestialData project:

### 1. Prerequisites
Ensure the following tools and libraries are installed on your system:
- Node.js (v16 or later) and npm or yarn.
- Rust and Solana CLI:
- Install Rust: https://rustup.rs/
- Install Solana CLI: Solana CLI Installation Guide
- Anchor Framework (for smart contract deployment):
cargo install --git https://github.com/coral-xyz/anchor --tag v0.27.0 anchor-cli --locked
- A supported Solana wallet (e.g., Phantom Wallet).

### 2. Clone the Repository
- Clone the project to your local machine:
git clone <repository-link>
cd CelestialData

### 3. Install Dependencies
Install the dependencies for the smart contract and front-end application.

- Smart Contract:
cd smart-contract
anchor build

- Front-End: Navigate to the frontend directory and install dependencies:
cd ../frontend
npm install

Or, if using Yarn:
yarn install

### 4. Configure Solana Wallet
Set up your wallet and network:
- Connect Wallet: Ensure you have a Solana wallet (e.g., Phantom).
- Set Cluster: Configure Solana CLI to use the testnet:
solana config set --url https://api.testnet.solana.com

### 5. Deploy the Smart Contract
Navigate to the smart-contract directory and deploy the program:
cd ../smart-contract
anchor deploy
Take note of the program's public key, as it will be required for the front-end.

### 6. Configure the Front-End
In the frontend directory, create a .env file and add the deployed smart contract's public key and Solana cluster details:
REACT_APP_SOLANA_NETWORK=https://api.testnet.solana.com
REACT_APP_PROGRAM_ID=<your_program_public_key>

### 7. Run the Front-End Application
Start the front-end development server:
npm start

Or, if using Yarn:
yarn start
The application will be accessible at http://localhost:3000.

### 8. Optional: Deploy Front-End
To deploy the front-end for public access, use platforms like Vercel or Netlify:
npm run build
Then, upload the build folder to your hosting service.

Your CelestialData project is now ready to use!

## How to Use CelestialData
CelestialData provides a user-friendly interface to store, manage, and validate information about celestial bodies on the Solana blockchain. Here’s a step-by-step guide to using the software:

### 1. Access the Application
- Open the CelestialData front-end application in your browser. If running locally, navigate to http://localhost:3000.
- Connect your Solana wallet (e.g., Phantom) to enable blockchain interactions.

### 2. Add a Celestial Body
- Go to the "Add Celestial Body" section.
- Fill in the required fields:
- Name: Enter the name of the celestial body (e.g., "Mars").
- Type: Specify the type of the body (e.g., planet, star, asteroid).
- Contents: Enter the composition of the celestial body (e.g., "Iron: 32%, Oxygen: 30%").
- Click Submit to store the data on the blockchain. The system will return a unique ID for the celestial body.

### 3. View Stored Data
- Navigate to the "View Celestial Body" section.
- Enter the unique ID of a celestial body to retrieve its details, including:
- Name
- Type
- Composition (contents and their percentages)
- Use this feature to review data stored on the blockchain.

### 4. Update Celestial Body Details
- In the "Update Celestial Body" section, enter the unique ID of the celestial body you wish to update.
- Modify the name, type, or composition as needed.
- Click Update to save the changes to the blockchain.

### 5. Validate Composition
- Use the "Validate Celestial Body" feature to check if the contents of a celestial body add up to 100%.
- Enter the unique ID of the celestial body, and the system will confirm whether the data is complete.

### 6. Delete a Celestial Body
- In the "Delete Celestial Body" section, enter the unique ID of the body you want to remove.
- Confirm the deletion to erase the record from the blockchain.

### 7. Additional Features
- Add New Contents: If needed, add additional contents to an existing celestial body using its unique ID.
- Explore Database: Browse through stored celestial bodies to analyze their data.

### 8. Collaborate and Share
- Share unique IDs with collaborators to allow them to view or update celestial body data.
- Use the decentralized database for research, collaboration, and educational purposes.

CelestialData combines blockchain technology with a user-friendly interface to simplify celestial body data management. Start exploring the cosmos today!

## License
This project is licensed under the MIT License.
