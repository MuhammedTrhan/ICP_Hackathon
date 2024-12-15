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

Define Project Requirements and Architecture

Identify key functionalities: storing celestial body data (name, type, composition, and percentages), verifying completeness of data, and retrieving records.
Plan the Solana smart contract structure, including data models and interactions.
Design a simple, user-friendly interface for data input and validation.
Develop the Smart Contract

Core Variables:
celestialData: A mapping to store each celestial body’s details.
compositionCheck: A function to verify if the composition percentages total 100%.
Core Functions:
addCelestialBody(name, type, composition): Store celestial body data.
updateCelestialBody(name, updatedData): Edit existing data.
validateComposition(name): Check if the composition is valid.
getCelestialBody(name): Retrieve data for a specific celestial body.
Implement Front-End Integration

Develop a web-based interface to interact with the smart contract:
Forms for entering celestial body data.
Alerts for composition validation.
Table or card views for displaying stored celestial bodies.
Use Solana web3.js or a similar library for seamless blockchain interaction.
Test and Optimize Smart Contract

Perform unit testing for all smart contract functions.
Test edge cases, such as incomplete or erroneous data inputs.
Optimize gas usage to minimize transaction costs on Solana.
Front-End Testing and Polishing

Conduct usability testing for the interface.
Ensure smooth integration with the blockchain.
Add basic security measures, like input validation and error handling.
Deployment and Launch

Deploy the smart contract on the Solana mainnet.
Host the front-end application on a cloud platform.
Provide documentation for users and developers.
Gather user feedback for future updates and improvements.

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

