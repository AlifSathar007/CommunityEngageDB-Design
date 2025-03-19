-- Example SQL Script for 10 Tables

-- Table 1: Members
CREATE TABLE Members (
    MemberID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100),
    Phone VARCHAR(15),
    MembershipType VARCHAR(50),
    StartDate DATE,
    ExpiryDate DATE,
    PaymentStatus VARCHAR(20),
    EngagementScore FLOAT
);

-- Table 2: Subscriptions
CREATE TABLE Subscriptions (
    SubscriptionID INT PRIMARY KEY AUTO_INCREMENT,
    MemberID INT,
    PlanName VARCHAR(100),
    StartDate DATE,
    EndDate DATE,
    Status VARCHAR(20),
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID)
);

-- Table 3: Events
CREATE TABLE Events (
    EventID INT PRIMARY KEY AUTO_INCREMENT,
    EventName VARCHAR(100),
    EventDate DATE,
    Location VARCHAR(100),
    Capacity INT
);

-- Table 4: EventRegistrations
CREATE TABLE EventRegistrations (
    RegistrationID INT PRIMARY KEY AUTO_INCREMENT,
    EventID INT,
    MemberID INT,
    RegistrationDate DATE,
    AttendanceStatus VARCHAR(20),
    FOREIGN KEY (EventID) REFERENCES Events(EventID),
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID)
);

-- Table 5: Payments
CREATE TABLE Payments (
    PaymentID INT PRIMARY KEY AUTO_INCREMENT,
    MemberID INT,
    Amount DECIMAL(10, 2),
    PaymentDate DATE,
    PaymentMethod VARCHAR(50),
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID)
);

-- Table 6: Feedback
CREATE TABLE Feedback (
    FeedbackID INT PRIMARY KEY AUTO_INCREMENT,
    MemberID INT,
    FeedbackText TEXT,
    FeedbackDate DATE,
    Rating INT,
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID)
);

-- Table 7: Staff
CREATE TABLE Staff (
    StaffID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100),
    Role VARCHAR(50),
    HireDate DATE,
    Salary DECIMAL(10, 2)
);

-- Table 8: TrainingPrograms
CREATE TABLE TrainingPrograms (
    ProgramID INT PRIMARY KEY AUTO_INCREMENT,
    ProgramName VARCHAR(100),
    DurationDays INT,
    Fee DECIMAL(10, 2)
);

-- Table 9: TrainingEnrollments
CREATE TABLE TrainingEnrollments (
    EnrollmentID INT PRIMARY KEY AUTO_INCREMENT,
    ProgramID INT,
    MemberID INT,
    EnrollmentDate DATE,
    CompletionStatus VARCHAR(20),
    FOREIGN KEY (ProgramID) REFERENCES TrainingPrograms(ProgramID),
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID)
);

-- Table 10: Notifications
CREATE TABLE Notifications (
    NotificationID INT PRIMARY KEY AUTO_INCREMENT,
    MemberID INT,
    NotificationText TEXT,
    SentDate DATE,
    ReadStatus BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID)
);
