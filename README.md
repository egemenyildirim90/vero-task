To run this project, ensure Docker and Docker Compose are installed on your operating system.

Follow these steps to run the project:

1. Clone the repository:
   ```bash
   git clone https://github.com/egemenyildirim90/vero-task.git
   ```

2. Change your directory to the root folder:
   ```bash
   cd vero-task
   ```

3. Review the `.env.sample` file to check if any default variables need to be modified. Proceed if no changes are needed.

4. Open a terminal window and execute:
   ```bash
   docker compose up --build
   ```

After completing these steps, the app should be running. To verify its functionality:

- Run `curl http://localhost` or 
- Type "http://localhost" in your browser.

You should see a "success!!" output.

**Notes:**
- This project was tested on PopOS/Ubuntu 22.04 LTS. If you're using a Windows operating system, you might encounter a line conversion error when building the Dockerfile for MSSQL. This issue can possibly be resolved by installing "dos2unix" in the image and apply it to `entrypoint.sh`.
