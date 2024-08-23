# Healthcare Data Management During COVID-19 Pandemic

This folder showcases a comprehensive data modeling project focused on healthcare data management during the COVID-19 pandemic. It aims to enhance operational efficiency and ensure safety for medical staff by providing a structured database for tracking patients, medical professionals, and treatment protocols.

## Project Description

The project involves the development of a database system that stores and manages critical information regarding COVID-19 patients and healthcare professionals. The primary objectives include:

- **Database Creation**: Establish a relational database to store patient records, symptoms, testing methods, treatments, and admissions.
- **Data Accessibility**: Ensure that medical staff can easily access relevant patient data to minimize exposure risks during treatment.
- **Operational Efficiency**: Streamline the management of healthcare resources, such as room assignments and medical staff schedules.

## Features

- **Patient Records**: Track comprehensive details about patients, including personal information, symptoms, and treatment history.
- **Healthcare Professional Management**: Maintain records of doctors and nurses, including their schedules and specialties.
- **Testing and Treatment Logs**: Document COVID-19 testing dates, methods, and treatment details for each patient.
- **Admissions Tracking**: Manage patient admissions, including room assignments and admission dates.
- **Symptom Monitoring**: Record symptoms experienced by patients to assist in treatment decisions and data analysis.

## User Requirements

The system was designed based on feedback from healthcare professionals, ensuring it meets their needs effectively. Key requirements include:

- Access to patient names, symptoms, and treating doctors.
- Storage of contact information for patients and their families.
- Tracking of resource allocation for efficient patient management.

## Conceptual Model

![hospital database system design_page-0008](https://github.com/user-attachments/assets/46504e24-a967-4c3f-8084-2c64781aa514)


## Pyhysical Model

![hospital database system design_page-0009](https://github.com/user-attachments/assets/6e2b5502-8aca-454d-ba5e-0160e49e8f10)


## Technical Details

- **Database Structure**: The database consists of several interconnected tables, including `Patients`, `Doctors`, `Nurses`, `Testing`, `Treatments`, and `Admissions`, each with specific fields to capture necessary information.
- **Data Types**: Utilizes various data types such as `VARCHAR` for text fields, `INT` for identifiers, and `DATETIME` for date and time tracking.

## Conclusion

This project represents a critical tool for healthcare facilities managing COVID-19 treatment. By implementing a robust database system, it addresses the urgent need for effective data management in the face of a global pandemic.
