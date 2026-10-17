# God's Eye View on Android via GitHub Codespaces

Codespaces hosts the app's Node server; Android Chrome displays the 3D globe. This is not a standalone Android app.

## Start
1. From the repository, select **Code → Codespaces → Create codespace on main**.
2. Codespace creation now does **not** install dependencies automatically, so a package installation error cannot interrupt container setup.
3. Once the Codespaces terminal opens, run:
   ```bash
   bash scripts/start-codespaces.sh
   ```
   The launcher installs dependencies on the first run with Puppeteer's optional Chrome download disabled. Installation can still fail if an upstream package or network request fails; the terminal will show the actual error.
4. When Vite starts, open the **Ports** tab and the forwarded link for **4173** in Chrome. Keep the port **Private**. Optionally select **Add to Home screen** in Chrome.

## If you saw “There was an error setting up your codespace”
The earlier devcontainer ran `npm ci` as a mandatory setup step. We removed that step and simplified the base image. For an already failed codespace, use **Codespaces → ... → Rebuild Container**, or create a fresh codespace from the updated main branch.

If you still receive an error **before the terminal opens**, obtain the **creation log / devcontainer log** from the failed Codespace and share the error text; that would distinguish an image-pull error, account quota, and machine provisioning failure. No setup has been verified on a real Codespace yet.

## Notes
- Basic imagery and some feeds work without API keys; optional providers may need keys.
- The web UI is desktop-oriented and mobile performance varies.
- Do not make port 4173 public; this server handles provider keys and proxies.
- Codespaces has idle limits and potential charges.
