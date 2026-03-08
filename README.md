End-to-End Azure Data Engineering: Car Sales Analytics

<p align="center">
<img src="https://github.com/user-attachments/assets/44de65ac-838a-426a-b939-a2e33b363a9f" alt="Cars Data Data Engineering Architecture" width="800">
</p>

🚀 Project Overview
This project simulates a production-grade data engineering pipeline for a global car retailer. The architecture leverages the Medallion Pattern to transform raw, noisy transactional data into a high-performance Star Schema for executive-level business intelligence.


🛠 Core Tech Stack
Orchestration: Azure Data Factory (ADF) with parameterized pipelines.

Storage: ADLS Gen2 (Bronze/Silver/Gold) + Azure SQL Database (Source).

Processing: Azure Databricks (PySpark, Delta Lake, Unity Catalog).

Modeling: Dimensional Data Modeling (Fact/Dimension Tables).

Security: Managed Identities, Key Vault, and RBAC policies.

Visualization: Power BI (Direct Query via Databricks Gold).

💡 Why this pipeline is "Production-Grade"
Incremental Ingestion: Uses a Watermark-based mechanism in ADF to process only new data, drastically reducing compute costs.

Dimensional Modeling: Implemented SCD Type 1 to maintain data accuracy for changing attributes (e.g., product categories).

Governance: Centralized data access and auditing via Unity Catalog, ensuring compliance and data lineage tracking.

Portability: Built with parameterized configurations, allowing the deployment of the pipeline across Development, QA, and Production environments with zero manual intervention.

📂 Pipeline Workflow
Ingestion: ADF pulls source data from Azure SQL → Raw (Bronze).

Transformation: Databricks processes raw JSON/CSV → Clean/Enriched (Silver).

Modeling: Databricks aggregates Silver data → Star Schema (Gold).

Consumption: Power BI connects to Gold schema for real-time reporting.
