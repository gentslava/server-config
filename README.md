**Repository Name: Home Server Configuration**

**Description:**
This repository contains the Docker Compose configuration for setting up various services on a home server. With Docker containers, it enables easy deployment and management of different applications.
The setup includes a combination of tools and services aimed at enhancing home automation, media management, and internet privacy.

**Included Services:**

1. **Home Assistant**: Home automation platform for controlling smart home devices and automating tasks.
   
2. **go2rtc**: WebRTC server for real-time communication, facilitating video conferencing and peer-to-peer communication.

3. **Frigate**: A lightweight surveillance solution designed for integration with Home Assistant, utilizing AI object detection for smart monitoring.

4. **Torrserver**: Torrent server providing easy access to media content via torrent files.

5. **Jackett**: Proxy server translating queries from applications into tracker-site-specific http queries, enabling various BitTorrent clients to communicate with different trackers.

6. **Jacred**: Almost same as Jackett but has cron-based cache mechanism instead of real-time requests.

7. **EpicGames Claimer**: A tool for automatically claiming free games offered by the Epic Games Store.

8. **Traefik**: A reverse proxy and load balancer, managing traffic and enabling secure access to the various services deployed on the server.

**Usage:**

1. **Prerequisites**:
   - Docker and Docker Compose installed on the host server.
   - Ensure ports required by individual services are available and not conflicting with existing services on the server.

2. **Clone the Repository**:
   ```bash
   git clone https://github.com/gentslava/server-config.git
   ```

3. **Configuration**:
   - Customize the `.env` file with your preferred environment variables for each service.
   - Modify the `docker-compose.yml` file if necessary to adjust volumes, ports, or other configurations.

4. **Deploy Services**:
   ```bash
   cd server-config
   docker-compose up -d
   ```

5. **Accessing Services**:
   - Once the containers are up and running, access each service through your web browser.
   - Traefik manages access to services based on defined rules and paths. Refer to Traefik documentation for configuring additional routes and settings.

6. **Updating Services**:
   - Pull the latest changes from this repository.
   - Recreate containers to apply changes:
     ```bash
     docker-compose down
     docker-compose pull
     docker-compose up -d
     ```

**License:**
This repository is provided under the [MIT License](https://opensource.org/licenses/MIT). Feel free to use, modify, and distribute the code as per the terms of the license.
