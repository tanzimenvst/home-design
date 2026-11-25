# 3D Architectural Home Design & GIS Viewer

An interactive, web-based 3D architectural viewer combining **Three.js** and **MapLibre GL JS** to showcase a multi-story residential building design integrated into its real-world geospatial environment.

---

## 🌟 Key Features

- **Interior Layout**:
  - Detailed CAD-accurate interior floor plans with partition walls, doors, windows, and fixtures.
  - Optional **2D Blueprint Underlay** with exact room dimensions.
  - Interactive **Furniture** visibility toggle.

- **Outdoor Landscape (Grass & Sky)**:
  - Stylized 3D grass terrain and panoramic sky dome.
  - Accurate driveway entrance with concrete curbs, inside-corner fillet, and flush flowerbed in front of building.
  - Handcrafted **Orange Jessamine (Kamini / Murraya paniculata)** tree with multi-stem trunk and blooming white star flower clusters.

- **Geospatial Basemaps**:
  - **Google Roadmap**: Clean vector roadmap basemap with street labels and boundaries.
  - **Google Satellite**: High-resolution aerial orthophoto with atmospheric blending.

- **3D Surrounding Buildings**:
  - 3D extruded neighborhood buildings within a **150-meter radius** (sourced from OpenStreetMap cadastral data).
  - The project building is automatically excluded to avoid overlapping geometries.
  - Interactive **3D Buildings ON/OFF** toggle button in the sidebar.
  - Fully customizable via `surrounding_buildings.geojson`.

- **Camera & Display Controls**:
  - **Current vs Complete View**: Toggle between current 3-story construction and the complete 4-story finished design.
  - **Top View & Reset View**: Quick camera presets for top-down floorplan analysis or perspective walkthrough.

---

## 📁 Project Structure

```
├── index.html                 # Main web application & 3D viewer
├── building_data.js           # CAD building wall & floor polygon vectors
├── surrounding_buildings.geojson # 3D neighborhood building footprints (editable)
├── surrounding_buildings.js   # Offline JS fallback for 3D buildings
├── 2nd Floor Mod.png          # 2D floorplan blueprint underlay texture
├── google_satellite.jpg       # Satellite basemap texture fallback
├── grass_diffuse.jpg          # Ground grass texture
├── sky_panorama.jpg           # Panoramic sky texture
├── Open 3D Viewer.bat         # Windows local launch script
├── .gitignore                 # Excludes raw GIS files and temp artifacts
├── README.md                  # Project documentation
└── source_gis_data/           # Raw ArcGIS .mxd, shapefiles & GIS source files (ignored by git)
```

---

## 🛠️ Editing Surrounding Buildings

To adjust the footprints or heights of the surrounding 3D buildings:
1. Open `surrounding_buildings.geojson` in **QGIS**, **ArcGIS**, or [geojson.io](https://geojson.io).
2. Edit polygon vertices against Google Satellite imagery or change the `"height"` property (in meters).
3. Save the file and refresh your browser. The viewer immediately renders your updated footprints.
