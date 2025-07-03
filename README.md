# Global Raw Material Pricing Scraper - UiPath RPA

This RPA project automates the process of extracting **global raw material prices** and related financial data from various sources (websites, APIs, etc.). It uses modular workflows to scrape, process, and notify stakeholders via email or WhatsApp, and optionally uploads results to SharePoint.

The workflow is built on **Robotic Enterprise Framework (REFramework)** for reliability, reusability, and structured error handling.

---

## Project Description

The automation navigates through online portals and APIs to extract global pricing, interest rates, and financial indicators. Collected data is processed and sent via email or WhatsApp, and optionally uploaded to a SharePoint directory.

The architecture is **modular**, with all core components located in the `Modular/` folder for easy maintenance and testing.

---

## Key Features

- Scrapes pricing and financial data from multiple sources
- Supports API and web scraping integration
- Email notification on success/failure (HTML format)
- WhatsApp messaging for quick alerting
- Optional export/upload to SharePoint
- Modular workflows for each task
- Built using **REFramework** for fault tolerance

---

## Project Structure

| Folder/File                             | Description                                                      |
|-----------------------------------------|------------------------------------------------------------------|
| Main.xaml                               | Main workflow orchestrating all steps                            |
| Modular/Get_News.xaml                   | Extracts financial or pricing-related news                       |
| Modular/GYS Price (API).xaml            | Retrieves raw material price data from GYS API                   |
| Modular/BI Rate.xaml                    | Scrapes Bank Indonesia interest rate                             |
| Modular/Kalanis.xaml                    | Scrapes Kalanis raw material pricing                             |
| Modular/Uploud SharePoint.xaml          | Uploads output files to SharePoint                               |
| Modular/Prosses Excel & WA.xaml         | Formats data and prepares for WhatsApp/email                     |
| Modular/WhatsApp_OpenAndSendMsg.xaml    | Opens WhatsApp Web and sends summary message                     |
| Modular/EmailSuccess.xaml               | Sends email on success                                           |
| Modular/EmailError.xaml                 | Sends email on failure                                           |
| Modular/Get Log Message.xaml            | Retrieves log messages for debugging or reporting                |
| Framework/                              | REFramework components (Init, Process, etc.)                     |
| Data/Config.xlsx                        | Configuration: URLs, credentials, targets                        |
| Tests/                                  | Test cases for each reusable component                           |
| project.json                            | Project metadata and dependencies                                |
| README.md                               | Project documentation                                            |

---

## Process Workflow

### 1. **Initialization**
- Loads configuration from `Config.xlsx`
- Initializes logging, reads credentials
- Prepares browser/API access

### 2. **Data Collection**
- `Get_News.xaml`: Collects latest financial/news context
- `GYS Price (API).xaml`: Gets global price via API
- `BI Rate.xaml`: Scrapes interest rate from BI
- `Kalanis.xaml`: Scrapes raw material pricing

### 3. **Data Processing & Output**
- `Prosses Excel & WA.xaml`: Processes, formats, and prepares results
- `Uploud SharePoint.xaml`: Optionally uploads output to SharePoint
- `Get Log Message.xaml`: Collects execution log context

### 4. **Notification**
- On success:
  - `EmailSuccess.xaml` sends HTML-formatted email
  - `WhatsApp_OpenAndSendMsg.xaml` sends short message
- On failure:
  - `EmailError.xaml` sends error log and screenshots

---

## How to Run

> Preferred execution is via **UiPath Orchestrator** on a scheduled basis.

### Manual Run:

1. Open project in **UiPath Studio**
2. Update `Config.xlsx`:
   - Target URLs, credentials, output settings
3. Run `Main.xaml`
4. Check email, WhatsApp, and SharePoint for results

---

## Exception Handling

- **Business Exceptions**:
  - Empty data from source
  - Invalid API response

- **System Exceptions**:
  - Web timeout
  - Element not found
  - API/server down

Handled through:
- Retry & logging (REFramework)
- Screenshot capture
- Email notification via `EmailError.xaml`

---

## Requirements

- UiPath Studio 2022.10+
- Browser (Chrome/Edge) with UiPath extension
- Access to APIs and websites used for scraping
- Internet connection
- SMTP/Outlook for email
- SharePoint access (optional)

---

## Contact

For questions, contributions, or support:

- **Email:** fadillah650@gmail.com  
- **LinkedIn:** [Enrico Naufal Fadilla](https://linkedin.com/in/enrico-naufal-fadilla-54338a256)
