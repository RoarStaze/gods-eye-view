# Run God's Eye View on an Android phone with GitHub Codespaces

This is a **cloud-hosted development session**, not a native Android app. Your phone renders the full site in Chrome; GitHub Codespaces supplies the Node.js server. The 3D globe still depends on your phone's browser/WebGL performance.

1. In this repository on GitHub, choose **Code → Codespaces → Create codespace on main**.
2. Wait for the automatic `npm ci` installation to complete.
3. In the Codespaces terminal, run:
   ```bash
   bash scripts/start-codespaces.sh
   ```
4. Open the **Ports** tab and open port **4173**. Keep its visibility **Private**. On a phone, opening the forwarded link in Chrome is often easier than using the built-in preview.
5. Optionally use Chrome's **Add to Home screen** menu.

The initial map works without API keys, though higher-quality 3D imagery and certain data layers may require provider tokens. Do not make port 4173 public or share its address; the server includes data-provider proxies and optional credential handling. Credentials and usage charges are your responsibility.

**Limits:** Codespaces may stop when idle, may incur usage charges outside included quota, and the app is not optimized for small screens. When the session stops, resume it and launch the script again.

If installation fails, check the Codespaces setup log and consult upstream README. This configuration is a convenience setup, not proof that all mobile features have been tested.
