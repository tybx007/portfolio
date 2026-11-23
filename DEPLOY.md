# Deploy to GitHub Pages

The deploy-ready site is in **`docs/`**. `docs/index.html` is the immersive portfolio (the home page), with links to the visual CV, ATS resume and project reports.

## First deployment

1. Create a new **public** repository on GitHub, e.g. `taiyeb-portfolio`.
2. In this folder, initialise git and push everything (including the `docs/` folder):

   ```powershell
   git init
   git add .
   git commit -m "Add portfolio site"
   git branch -M main
   git remote add origin https://github.com/<YOUR_USERNAME>/<YOUR_REPO>.git
   git push -u origin main
   ```

3. On GitHub, open your repo → **Settings** → **Pages**.
4. Under **Build and deployment**, set:
   - **Source:** Deploy from a branch
   - **Branch:** `main`
   - **Folder:** `/docs`
5. Click **Save**. After a minute or two your site is live at:

   ```
   https://<YOUR_USERNAME>.github.io/<YOUR_REPO>/
   ```

## Updating the site

1. Edit the source files in the project root (`immersive-portfolio.html`, `portfolio-cv.html`, `resume.html`, etc.).
2. Run:

   ```powershell
   .\sync-docs.ps1
   ```

3. Commit and push:

   ```powershell
   git add .
   git commit -m "Update portfolio"
   git push
   ```

## Custom domain (optional)

If you own a domain, add a file named `CNAME` inside `docs/` containing only your domain, e.g. `taiyeb.dev`, then set that domain in GitHub Pages settings.

## Notes

- The site is static HTML/CSS/JS — no build step or server is required.
- All project report PDFs and the portrait image are inside `docs/`, so links work after deployment.
- If you rename a PDF, update the links in the HTML files and run `sync-docs.ps1` again.
