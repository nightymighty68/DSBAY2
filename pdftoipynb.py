import fitz  # PyMuPDF
import nbformat

pdf_path= "DSBACODINGTEST/ST2195 Block 3c.pdf"

ipynb_path = "DSBACODINGTEST/pfd.ipynb"

def pdf_to_ipynb( pdf_path, ipynb_path):
    # Load the PDF
    doc = fitz.open(pdf_path)

    # Extract text from each page
    cells = []
    for page in doc:
        text = page.get_text("text")
        if text.strip():
            cell = nbformat.v4.new_markdown_cell(text)  # Store text as Markdown cell
            cells.append(cell)

    # Create a Jupyter Notebook structure
    nb = nbformat.v4.new_notebook()
    nb.cells = cells

    # Save as a .ipynb file
    with open(ipynb_path, "w", encoding="utf-8") as f:
        nbformat.write(nb, f)

# Example usage
pdf_to_ipynb("sample.pdf", "output.ipynb")