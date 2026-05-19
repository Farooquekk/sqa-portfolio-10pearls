
# Test Plan Workflow Implementation Report

## 🛫 Phase 1: Test Plan Initialization & Global Configuration

1. **Thread Group Creation:** A dedicated Thread Group was established named `Crud API Testing` to manage test threads, ramp-up time configurations, and iteration behaviors.
2. **Global Scoping Elements:**
   * **HTTP Request Defaults:** Configured with Server Name `jsonplaceholder.typicode.com`, Protocol `https`, and Port `443` to eliminate redundant entries across downstream samplers.
   * **HTTP Header Manager:** Injected global application properties, primarily enforcing `Content-Type: application/json` required for structural REST payloads.
   * **CSV Data Set Config:** Explicitly mapped variables (`title`, `body`, `userId`) from the source dataset file, configuring loop behaviors to properly terminate or cycle upon reaching EOF (End of File).

---

## 🔄 Phase 2: CRUD Sampler Chain Sequence

The JMeter script carries out a precise sequential transaction flow per loop iteration:

### 1. CREATE Operation (`POST`)
* **Endpoint:** `/posts`
* **Behavior:** Transmits a JSON body string containing the variable parameters retrieved from the CSV sheet (`${title}`, `${body}`, `${userId}`). 
* **Validation:** Returns HTTP `201 Created`, certifying that the payload format is accepted by the gateway endpoint.

### 2. READ Operation (`GET`)
* **Endpoint:** `/posts/${userId}`
* **Behavior:** Resolves an address point dynamically based on active iteration rows. Queries the server to confirm that an object matching that specific index is readable.
* **Validation:** Contains a **Response Assertion** validating an HTTP Status Code `200` and verification text matching content structures.

### 3. UPDATE Operation (`PUT`)
* **Endpoint:** `/posts/${userId}`
* **Behavior:** Submits a completely modified body structure over the target resource to execute state changes.
* **Validation:** Expects response confirmations ensuring payload changes match valid properties.

### 4. PATCH Operation (`PATCH`)
* **Endpoint:** `/posts/${userId}`
* **Behavior:** Issues minor single-property data mutations (such as changing just a title segment while leaving the rest of the object intact) to test patch handling efficiency.

### 5. DELETE Operation (`DELETE`)
* **Endpoint:** `/posts/${userId}`
* **Behavior:** Fires a final tear-down action sequence targeting the endpoint to destroy the record index context.
* **Validation:** Verifies a clean response state confirming structural detachment.

---

## 📉 Phase 3: Reporting & Listeners
During design and interactive validation phases, diagnostic telemetry data is actively handled by visual tracking components including **View Results Tree**, **Summary Report**, and **Aggregate Report**. 

For final evaluation metrics, operations are executed outside the GUI environment directly on the CLI engine core. This ensures zero engine footprint overhead, exporting standard performance metrics directly into separate dashboard files for analysis.

---