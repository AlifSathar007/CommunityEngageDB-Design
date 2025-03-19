
-- Create Database
CREATE DATABASE IF NOT EXISTS together_culture_db;
USE together_culture_db;

-- Create Members Table
CREATE TABLE Members (
    MemberID INT AUTO_INCREMENT PRIMARY KEY,
    MemberName VARCHAR(255) NOT NULL,
    ContactInfo VARCHAR(255),
    MembershipType VARCHAR(50),
    JoinDate DATE,
    Skills TEXT,
    InterestAreas TEXT
);

-- Create Projects Table
CREATE TABLE Projects (
    ProjectID INT AUTO_INCREMENT PRIMARY KEY,
    ProjectName VARCHAR(255) NOT NULL,
    Description TEXT,
    StartDate DATE,
    EndDate DATE,
    ProjectGoals TEXT,
    Budget DECIMAL(10, 2)
);

-- Create Donations Table
CREATE TABLE Donations (
    DonationID INT AUTO_INCREMENT PRIMARY KEY,
    MemberID INT,
    Amount DECIMAL(10, 2),
    DonationType VARCHAR(50),
    DonationDate DATE,
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID)
);

-- Create Resources Table
CREATE TABLE Resources (
    ResourceID INT AUTO_INCREMENT PRIMARY KEY,
    ResourceName VARCHAR(255) NOT NULL,
    ResourceType VARCHAR(255),
    Availability BOOLEAN
);

-- Create Project_Participation Table (Bridge Table)
CREATE TABLE Project_Participation (
    ParticipationID INT AUTO_INCREMENT PRIMARY KEY,
    MemberID INT,
    ProjectID INT,
    Role VARCHAR(255),
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID),
    FOREIGN KEY (ProjectID) REFERENCES Projects(ProjectID)
);

-- Create Project_Resources Table (Bridge Table)
CREATE TABLE Project_Resources (
    AllocationID INT AUTO_INCREMENT PRIMARY KEY,
    ProjectID INT,
    ResourceID INT,
    FOREIGN KEY (ProjectID) REFERENCES Projects(ProjectID),
    FOREIGN KEY (ResourceID) REFERENCES Resources(ResourceID)
);

-- Insert Data into Members Table
INSERT INTO Members (MemberName, ContactInfo, MembershipType, JoinDate, Skills, InterestAreas)
VALUES
('John Doe', 'john@example.com', 'Premium', '2023-01-15', 'Leadership, Design', 'Sustainability'),
('Jane Smith', 'jane@example.com', 'Basic', '2023-02-10', 'Coding, Marketing', 'Creative Economy'),
('Robert Johnson', 'robert@example.com', 'Premium', '2023-03-05', 'Project Management', 'Ecological Solutions'),
('Emily Davis', 'emily@example.com', 'Basic', '2023-04-12', 'Event Planning', 'Community Building');

-- Insert Data into Projects Table
INSERT INTO Projects (ProjectName, Description, StartDate, EndDate, ProjectGoals, Budget)
VALUES
('Sustainability Drive', 'A project to promote sustainable practices.', '2023-01-01', '2023-06-01', 'Raise awareness about sustainability.', 5000.00),
('Community Art Exhibition', 'An exhibition showcasing community art.', '2023-02-01', '2023-03-01', 'Encourage local artists.', 3000.00);

-- Insert Data into Donations Table
INSERT INTO Donations (MemberID, Amount, DonationType, DonationDate)
VALUES
(1, 100.00, 'Cash', '2023-01-20'),
(2, 50.00, 'Cash', '2023-02-15'),
(3, 200.00, 'In-kind', '2023-03-10');

-- Insert Data into Resources Table
INSERT INTO Resources (ResourceName, ResourceType, Availability)
VALUES
('Meeting Room', 'Space', TRUE),
('Projector', 'Equipment', TRUE),
('Printer', 'Equipment', FALSE),
('Whiteboard', 'Equipment', TRUE);

-- Insert Data into Project_Participation Table
INSERT INTO Project_Participation (MemberID, ProjectID, Role)
VALUES
(1, 1, 'Team Leader'),
(2, 1, 'Volunteer'),
(3, 2, 'Organizer'),
(4, 2, 'Volunteer');

-- Insert Data into Project_Resources Table
INSERT INTO Project_Resources (ProjectID, ResourceID)
VALUES
(1, 1),
(1, 2),
(2, 3),
(2, 4);
