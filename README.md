## Archivador

The `archivador` directory contains Bash scripts for automatically organizing files into folders according to their filenames or modification dates.

### Scripts

#### `CrearCarpetas.sh`

Creates a separate directory for each regular file in the current directory and moves the file into the corresponding directory.

The script:

- Scans the files in the current directory.
- Ignores directories and symbolic links.
- Removes spaces and parentheses from the filename.
- Removes the file extension to generate the directory name.
- Creates the directory if it does not already exist.
- Moves the original file into the corresponding directory.
- If the directory already exists, the file is moved into it.

For example:

```text
documento.pdf
imagen.jpg
```

becomes:

```documento/
└── documento.pdf

imagen/
└── imagen.jpg
```


#### `Creardirectorios.sh`

Organizes files into directories based on their year and month of modification.

The script:

Scans the files in the current directory.
Ignores directories and symbolic links.
Reads the modification date of each file.
Creates a directory using the YYYY-MM format.
Moves each file into the corresponding directory.
If the directory already exists, the file is moved into it.

For example:

```archivo1.pdf  → 2026-09/
archivo2.jpg  → 2026-09/
archivo3.txt  → 2026-08/
```
Resulting structure:

```2026-08/
└── archivo3.txt

2026-09/
├── archivo1.pdf
└── archivo2.jpg
```
Requirements
Linux or another Unix-like operating system
Bash
Standard Unix utilities such as ls, sed, stat, cut, mkdir, and mv


#### `OrganizarArchivosPorFecha.sh`

Organizes files into directories based on their **year and month of modification**.

The script:

- Scans the files in the current directory.
- Identifies regular files, excluding directories and symbolic links.
- Retrieves the modification date of each file.
- Creates a directory using the `YYYY-MM` format.
- Moves each file into the corresponding directory.
- If the directory already exists, the file is moved into it.

For example:

```text
archivo1.pdf  →  2026-09/
archivo2.jpg  →  2026-09/
archivo3.txt  →  2026-08/
```
Resulting structure:

```2026-08/
└── archivo3.txt

2026-09/
├── archivo1.pdf
└── archivo2.jpg
```

