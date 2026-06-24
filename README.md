
# 🏥 Hospital Patient Records Analysis

![SQL](https://img.shields.io/badge/SQL-Analysis-blue)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-Database-336791)
![Healthcare Analytics](https://img.shields.io/badge/Healthcare-Analytics-green)
![Status](https://img.shields.io/badge/Status-In%20Progress-orange)
![Power BI](https://img.shields.io/badge/Power%20BI-Coming%20Soon-yellow)
![License](https://img.shields.io/badge/License-MIT-lightgrey)

## 📖 Overview

Healthcare organizations generate vast amounts of clinical, operational, and financial data. While traditional reporting provides visibility into healthcare activity, it often fails to explain the underlying drivers of utilization, expenditure, and patient behavior.

This project analyzes hospital patient records using SQL to investigate encounter trends, healthcare costs, insurance coverage, and readmission patterns. The project begins with descriptive and exploratory analysis but is intentionally designed to evolve into a more diagnostic healthcare analytics initiative focused on understanding *why* patterns occur and *what factors drive them*.

At this stage, SQL serves as the primary analytical tool, while interactive dashboards will be developed in later phases to support visualization and stakeholder communication.

---

## 📑 Table of Contents

- [Business Problem](#-business-problem)
- [Dataset Overview](#-dataset-overview)
- [Project Objectives](#-project-objectives)
- [Current Analytical Focus](#-current-analytical-focus)
- [Future Analytical Direction](#-future-analytical-direction)
- [Methodology](#-methodology)
- [SQL Concepts Applied](#-sql-concepts-applied)
- [Tools & Technologies](#-tools--technologies)
- [Project Roadmap](#-project-roadmap)
- [Expected Business Value](#-expected-business-value)
- [Author](#-author)

---

## 🎯 Business Problem

Healthcare systems face increasing pressure to deliver quality care while controlling costs and efficiently allocating resources.

Although healthcare databases contain rich information on encounters, procedures, payers, and patient activity, simple reporting often answers only:

> "What happened?"

It rarely explains:

> "Why did it happen?"

This project begins by establishing a solid reporting foundation using SQL before progressing toward deeper healthcare analytics capable of uncovering utilization drivers, cost determinants, coverage gaps, and patient behavior patterns.

---

## 🗂 Dataset Overview


The analysis uses a relational healthcare dataset containing:

| Table | Description |
|---------|------------|
| Patients | Patient demographics and identifiers |
| Encounters | Healthcare visits and admissions |
| Procedures | Medical procedures performed |
| Organizations | Healthcare facilities and providers |
| Payers | Insurance and payment providers |

The dataset consists of five interconnected tables:

1. Patients

Contains patient demographic information including:

    Patient ID
    Date of Birth
    Gender
    Race and Ethnicity
    Marital Status
    Geographic Location

2. Encounters

Records patient interactions with healthcare facilities:

    Encounter ID
    Admission and Discharge Dates
    Encounter Type
    Diagnosis Information
    Claim Costs
    Insurance Coverage

3. Procedures

Details medical procedures performed:

    Procedure Codes
    Procedure Descriptions
    Procedure Costs
    Associated Diagnoses
4. Organizations

Information about healthcare facilities:

    Hospital Name
    Address
    Geographic Coordinates

5. Payers

Insurance and healthcare financing information:

    Payer Name
    Location
    Contact Information

dataset link [dataset link on kaggle](https://www.kaggle.com/datasets/ahmedezzatibrahem/hospital-patient-records)

The dataset enables analysis of:

- Healthcare utilization
- Encounter trends
- Insurance coverage
- Procedure frequency
- Cost distribution
- Readmission patterns

---

## 📊 Project Objectives

### Objective 1: Encounters Overview

Understanding how healthcare services are utilized over time.

#### Questions Explored

- How many total encounters occurred each year?
- What proportion of encounters belonged to each encounter class?
  - Ambulatory
  - Outpatient
  - Wellness
  - Urgent Care
  - Emergency
  - Inpatient
- What percentage of encounters lasted more than 24 hours versus less than 24 hours?

---

### Objective 2: Cost & Coverage Insights

Investigating the financial characteristics of healthcare encounters.

#### Questions Explored

- How many encounters had zero payer coverage?
- What percentage of total encounters lacked payer coverage?
- What are the top 10 most frequently performed procedures?
- What is the average base cost associated with those procedures?
- Which procedures have the highest average cost?
- How often are these high-cost procedures performed?
- What is the average total claim cost by payer?

---

### Objective 3: Patient Behavior Analysis

Examining patient utilization patterns and readmission behavior.

#### Questions Explored

- How many unique patients were admitted each quarter?
- How many patients were readmitted within 30 days?
- Which patients experienced the highest number of readmissions?

---

## 🔍 Current Analytical Focus

The current phase focuses on generating descriptive and exploratory insights through SQL.

Key areas include:

- Encounter volume analysis
- Encounter duration analysis
- Procedure utilization analysis
- Cost analysis
- Coverage analysis
- Patient readmission analysis
- Temporal healthcare trends

---

## 🚀 Future Analytical Direction

The next phase will transition from reporting toward diagnostic healthcare analytics.

Future investigations will seek to answer questions such as:

### Patient Utilization

- Why do some patients require significantly more healthcare encounters than others?
- What demographic characteristics are associated with increased healthcare utilization?
- Which patient populations contribute most to healthcare demand?

### Cost Drivers

- What factors drive healthcare expenditure?
- Are costs concentrated within specific procedures, diagnoses, or patient groups?
- Which combinations of services create the greatest financial burden?

### Insurance Coverage

- Why do some patients incur greater out-of-pocket expenses despite insurance coverage?
- How does payer performance differ across services and patient populations?
- Which payers provide the highest levels of financial protection?

### Healthcare Organizations

- Why do certain healthcare organizations attract significantly higher patient volumes?
- How do utilization patterns vary across facilities?
- Are differences driven by accessibility, specialization, or patient demographics?

### Healthcare Equity

- Are disparities present across demographic groups?
- What factors may contribute to differences in utilization, coverage, and spending?

This evolution represents a progression from:

**Descriptive Analytics → Diagnostic Analytics → Decision Support Analytics**

---

## ⚙️ Methodology

### Data Preparation

- Data validation
- Data cleaning
- Relationship mapping
- Quality assessment
- Date standardization

### Analysis

- Encounter trend analysis
- Cost and coverage analysis
- Procedure frequency analysis
- Readmission analysis
- Temporal analysis

### Future Work

- Dashboard development
- KPI design
- Interactive reporting
- Advanced healthcare analytics

---

## 🧠 SQL Concepts Applied

- INNER JOIN
- LEFT JOIN
- Common Table Expressions (CTEs)
- CASE Statements
- Window Functions
- Aggregate Functions
- Date Functions
- Subqueries
- Ranking Functions
- Readmission Logic

---

## 🛠 Tools & Technologies

| Tool | Purpose |
|--------|---------|
| SQL | Data analysis |
| PostgreSQL | Database engine |
| DBeaver | Database management |
| Excel | Data validation |
| Power BI | Dashboarding (Upcoming) |
| Kaggle | Dataset source |

---

## 🗺 Project Roadmap

### Phase 1: SQL Analytics ✅

- Data exploration
- Reporting queries
- Encounter analysis
- Cost analysis
- Readmission analysis

### Phase 2: Dashboard Development 🚧

- KPI dashboard
- Executive summary dashboard
- Interactive visualizations

### Phase 3: Advanced Analytics 📌

- Utilization drivers
- Cost driver analysis
- Coverage effectiveness
- Healthcare equity analysis

---

## 💡 Expected Business Value

This project demonstrates how healthcare data can be transformed into actionable insights that support:

- Healthcare operations management
- Resource allocation
- Cost optimization
- Insurance coverage assessment
- Patient management
- Evidence-based decision making

---

## 👨‍💻 Author

### SSENKUNGU IBRAHIM

**DATA ANALYST | HEALTH CARE DATA ANALYST |  | PIVOTING DATA INTO BUSINESS ACTIONABLE INSIGHTS**

Passionate about leveraging healthcare, pharmaceutical knowledge, Financial data to uncover meaningful insights through data analytics.

---

⭐ If you found this project interesting, consider starring the repository.