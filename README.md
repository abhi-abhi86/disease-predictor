# 🔬 Multi-Species Disease Detection and Management System

[![Python](https://img.shields.io/badge/Python-3.14+-blue.svg)](https://www.python.org/downloads/)
[![PySide6](https://img.shields.io/badge/PySide6-6.10+-green.svg)](https://pypi.org/project/PySide6/)
[![PyTorch](https://img.shields.io/badge/PyTorch-2.1+-red.svg)](https://pytorch.org/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Stars](https://img.shields.io/github/stars/abhi-abhi86/disease-predictor?style=social)](https://github.com/abhi-abhi86/disease-predictor/stargazers)

> **AI-powered disease detection for Plants, Humans, and Animals | Desktop GUI Application | Offline-First | Privacy-Focused**

An advanced desktop application that uses deep learning to detect and diagnose diseases across multiple species. Built with PyTorch and PySide6, featuring a modern GUI, real-time image analysis, and comprehensive disease information with treatment recommendations.

[🚀 Quick Start](#-quick-start) • [✨ Features](#-features) • [📸 Screenshots](#-screenshots) • [🛠️ Installation](#️-installation) • [📖 Usage](#-usage) • [🤝 Contributing](#-contributing)

---

## 🌟 What Makes This Special?

### **The Complete Disease Detection Solution**
- ✅ **Multi-Species Support** - Detect diseases in plants, humans, and animals from one application
- ✅ **Offline-First** - Works completely offline, no internet required after setup
- ✅ **Privacy-Focused** - All data stays on your device, no external APIs or cloud services
- ✅ **Custom Training** - Train your own models with custom datasets
- ✅ **Modern GUI** - Beautiful, intuitive desktop interface built with PySide6
- ✅ **Comprehensive Database** - 27+ diseases with detailed information and treatments
- ✅ **Smart Validation** - Rejects invalid images (diagrams, screenshots, text) automatically
- ✅ **Research Integration** - Fetches Wikipedia and PubMed research data
- ✅ **Report Generation** - Create PDF and HTML reports of diagnoses
- ✅ **Interactive Maps** - Visualize disease distribution geographically

---

## ✨ Features

### Core Capabilities
- **🎯 AI-Powered Detection**: Deep learning model (MobileNetV2) trained on 26 disease classes
- **🖼️ Image Analysis**: Upload and analyze disease images with confidence scoring
- **💬 AI Chatbot**: Interactive chatbot for disease information and guidance
- **📊 Disease Database**: Comprehensive information on 27+ diseases across all species
- **🗺️ Geographic Mapping**: Visualize disease locations with interactive Folium maps
- **📄 Report Generation**: Generate detailed PDF and HTML reports
- **🔍 Smart Search**: BM25-based search engine for finding disease information
- **🌐 Research Integration**: Automatic Wikipedia and PubMed research fetching
- **📈 Confidence Scoring**: Shows prediction confidence with intelligent thresholding
- **⚡ Real-time Processing**: Fast inference with caching for improved performance

### Technical Features
- **Image Validation**: Automatically detects and rejects non-disease images (diagrams, text, screenshots)
- **Thread-Safe UI**: Proper Qt threading to prevent crashes and ensure smooth operation
- **Caching System**: In-memory and persistent caching for Wikipedia and PubMed data
- **Fuzzy Matching**: Intelligent disease name matching using Levenshtein distance
- **Data Augmentation**: Built-in augmentation for model training
- **Model Versioning**: Track and manage different model versions
- **Error Handling**: Robust error handling with user-friendly messages

### User Interface
- **Modern Design**: Clean, professional interface with dark mode support
- **Tabbed Interface**: Separate tabs for Plants, Humans, and Animals
- **Image Preview**: Visual feedback for uploaded images
- **Progress Indicators**: Real-time progress updates during analysis
- **Interactive Results**: Expandable disease information with stages, causes, and treatments
- **Map Visualization**: Interactive maps showing disease locations
- **Report Preview**: Preview generated reports before saving

---

## 📸 Screenshots

### Main Application Window
The application features a modern, tabbed interface for easy navigation between species:

- **Plant Diseases Tab**: Detect crop and plant diseases
- **Human Diseases Tab**: Analyze skin conditions and health issues  
- **Animal Diseases Tab**: Identify livestock and pet health problems

### Key Features in Action
- **Image Upload**: Drag-and-drop or browse for images
- **AI Analysis**: Real-time disease detection with confidence scores
- **Disease Information**: Detailed descriptions, symptoms, causes, and treatments
- **Research Data**: Automatic Wikipedia and PubMed integration
- **Report Generation**: Professional PDF and HTML reports
- **Interactive Maps**: Geographic visualization of disease locations

---

## 🛠️ Installation

### Prerequisites
- **Python 3.14+** (or Python 3.13+)
- **macOS, Linux, or Windows**
- **4GB RAM minimum** (8GB recommended)
- **500MB free disk space**

### Quick Install

```bash
# 1. Clone the repository
git clone https://github.com/abhi-abhi86/disease-predictor.git
cd disease-predictor

# 2. Create virtual environment
python3 -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate

# 3. Install dependencies
pip install -r comprehensive_requirements.txt

# 4. Run the application
./run_app.sh  # On Windows: python main.py
```

### Detailed Installation

<details>
<summary>Click to expand detailed installation steps</summary>

#### Step 1: System Dependencies

**macOS:**
```bash
# Install Homebrew if not already installed
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install Python 3.14
brew install python@3.14
```

**Linux (Ubuntu/Debian):**
```bash
sudo apt update
sudo apt install python3.14 python3.14-venv python3-pip
```

**Windows:**
- Download Python 3.14 from [python.org](https://www.python.org/downloads/)
- Make sure to check "Add Python to PATH" during installation

#### Step 2: Clone and Setup

```bash
# Clone repository
git clone https://github.com/abhi-abhi86/disease-predictor.git
cd disease-predictor

# Create virtual environment
python3 -m venv venv

# Activate virtual environment
# macOS/Linux:
source venv/bin/activate
# Windows:
venv\Scripts\activate

# Upgrade pip
pip install --upgrade pip
```

#### Step 3: Install Dependencies

```bash
# Install all required packages
pip install -r comprehensive_requirements.txt

# Verify installation
python verify_imports.py
```

#### Step 4: Train Model (Optional)

If you want to train your own model:

```bash
cd DiseaseDetectionApp
python train_disease_classifier.py
# Or if you encounter SSL errors:
./run_train.sh
```

The pre-trained model is included, so this step is optional.

</details>

---

## 📖 Usage

### Running the Application

```bash
# Activate virtual environment
source venv/bin/activate  # On Windows: venv\Scripts\activate

# Run the application
./run_app.sh  # On Windows: python main.py
```

### Using the Application

1. **Select Species Tab**
   - Choose between Plants, Humans, or Animals

2. **Upload Image**
   - Click "Upload Image" button
   - Select a clear photo showing disease symptoms
   - Supported formats: JPG, PNG, JPEG

3. **Analyze**
   - Click "Diagnose" button
   - Wait for AI analysis (usually 2-5 seconds)
   - View results with confidence score

4. **Review Results**
   - Read disease name and description
   - Check symptoms, causes, and risk factors
   - Review treatment recommendations
   - View Wikipedia and PubMed research

5. **Generate Reports**
   - Click "Reports" menu
   - Choose PDF or HTML format
   - Save report to your computer

6. **Use Additional Features**
   - **Chatbot**: Ask questions about diseases
   - **Map View**: See disease locations on interactive map
   - **Search**: Find diseases by name or symptoms

### Command Line Usage

```bash
# Predict disease from image
cd DiseaseDetectionApp
python predict_disease.py path/to/image.jpg

# Train custom model
./run_train.sh

# Run tests
python test_disease_detection.py
```

---

## 🗂️ Project Structure

```
disease-predictor/
├── DiseaseDetectionApp/          # Main application directory
│   ├── core/                     # Core functionality modules
│   │   ├── ml_processor.py       # AI model and prediction logic
│   │   ├── worker.py             # Background worker for threading
│   │   ├── data_handler.py       # Disease database management
│   │   ├── llm_integrator.py     # AI chatbot integration
│   │   ├── search_engine.py      # BM25 search functionality
│   │   ├── report_generator.py   # PDF report generation
│   │   ├── html_report_generator.py  # HTML report generation
│   │   ├── wikipedia_integration.py  # Wikipedia API
│   │   ├── ncbi_integration.py   # PubMed research fetching
│   │   └── google_search.py      # Web search integration
│   ├── ui/                       # User interface components
│   │   ├── main_window.py        # Main application window
│   │   ├── chatbot_dialog.py     # Chatbot interface
│   │   ├── map_dialog.py         # Map visualization
│   │   ├── image_search_dialog.py # Image search
│   │   └── spinner.py            # Loading animations
│   ├── diseases/                 # Disease database (JSON files)
│   │   ├── plant/               # Plant disease data
│   │   ├── human/               # Human disease data
│   │   └── animal/              # Animal disease data
│   ├── disease_model.pt         # Trained PyTorch model
│   ├── class_to_name.json       # Class label mappings
│   ├── main.py                  # Application entry point
│   ├── train_disease_classifier.py  # Model training script
│   └── predict_disease.py       # CLI prediction tool
├── comprehensive_requirements.txt  # Python dependencies
├── run_app.sh                   # Quick start script
├── main.py                      # Root entry point
├── verify_imports.py            # Dependency verification
└── README.md                    # This file
```

---

## 🧠 How It Works

### AI Model Architecture
```
┌─────────────────┐
│  Image Input    │
└────────┬────────┘
         │
    ┌────▼─────┐
    │ Preproc  │ (Resize, Normalize, Augment)
    └────┬─────┘
         │
    ┌────▼──────┐
    │ CNN Model │ (Feature Extraction)
    └────┬──────┘
         │
    ┌────▼────────┐
    │ Classifier  │ (Disease Categories)
    └────┬────────┘
         │
    ┌────▼──────────┐
    │ Post-process  │ (Confidence, Treatment)
    └────┬──────────┘
         │
    ┌────▼────────┐
    │   Output    │
    └─────────────┘
```
### Prediction Pipeline

```
Image Upload → Validation → Preprocessing → AI Inference → Post-processing → Results
     ↓              ↓             ↓              ↓              ↓            ↓
  User Input   Reject Invalid  Resize/Norm   MobileNetV2   Confidence   Display
               (diagrams/text)  Transform     Prediction    Threshold    + Research
```

### Confidence Thresholding

- **High Confidence (≥55%)**: Disease identified with treatment recommendations
- **Low Confidence (<55%)**: Returns "No Confident Match Found" with 0% confidence
- **Invalid Images**: Automatically rejected (diagrams, screenshots, text) with 0% confidence

### Image Validation

The system validates images before processing:
- **Brightness Check**: Rejects too dark/bright images
- **Color Variance**: Detects diagrams and text (low variance)
- **Pixel Distribution**: Identifies screenshots and documents
- **Thread-Safe**: Uses PIL methods to avoid threading issues

---

## 📊 Supported Diseases

### Plant Diseases (13 classes)
- Pepper Bell Bacterial Spot
- Pepper Bell Healthy
- Potato Early Blight
- Potato Healthy
- Potato Late Blight
- Tomato Target Spot
- Tomato Mosaic Virus
- Tomato Yellow Leaf Curl Virus
- Tomato Bacterial Spot
- Tomato Early Blight
- Tomato Healthy
- Tomato Late Blight
- Tomato Leaf Mold
- Tomato Septoria Leaf Spot
- Tomato Spider Mites

### Human Diseases (6 classes)
- Acne Vulgaris
- AIDS
- Eczema
- Smoker's Lung
- And more...

### Animal Diseases (7 classes)
- Lumpy Skin Disease
- Sarcoptic Mange
- Swine Erysipelas
- And more...

**Total: 26 disease classes + healthy/normal states**

---

## 🔧 Configuration

### Model Configuration

Edit `DiseaseDetectionApp/core/ml_processor.py`:

```python
# Confidence threshold (0.0 to 1.0)
IMAGE_CONFIDENCE_THRESHOLD = 0.55  # Default: 55%

# Image size for model input
IMG_SIZE = 224  # Default: 224x224

# Healthy class names
HEALTHY_CLASS_NAMES = ('healthy', 'normal', 'clear_skin')
```

### Training Configuration

Edit `DiseaseDetectionApp/train_disease_classifier.py`:

```python
# Training parameters
EPOCHS = 10
BATCH_SIZE = 32
LEARNING_RATE = 0.001
VALIDATION_SPLIT = 0.2
```

---

## 🧪 Testing

### Run All Tests

```bash
# Activate virtual environment
source venv/bin/activate

# Run comprehensive tests
cd DiseaseDetectionApp
python comprehensive_test.py

# Run specific tests
python test_disease_detection.py
python test_train_model.py
python test_image_search.py
```

### Verify Installation

```bash
# Check all dependencies
python verify_imports.py

# Should output:
# ✓ All dependencies are correctly installed!
```

---

## 🚀 Advanced Usage

### Training Custom Models

```bash
# 1. Prepare your dataset
# Organize images in folders by disease class:
# data/
#   ├── disease_class_1/
#   │   ├── image1.jpg
#   │   └── image2.jpg
#   └── disease_class_2/
#       └── image3.jpg

# 2. Update training script with your data path
# Edit train_disease_classifier.py

# 3. Train model
cd DiseaseDetectionApp
python train_disease_classifier.py

# 4. Model will be saved as disease_model.pt
```

### API Integration

```python
from DiseaseDetectionApp.core.ml_processor import MLProcessor
from DiseaseDetectionApp.core.data_handler import load_disease_database

# Initialize
ml_processor = MLProcessor()
database = load_disease_database()

# Predict
result, confidence, wiki, stage = ml_processor.predict_from_image(
    image_path="path/to/image.jpg",
    domain="Plant",  # or "Human" or "Animal"
    database=database
)

print(f"Disease: {result['name']}")
print(f"Confidence: {confidence}%")
print(f"Treatment: {result['solution']}")
```

### Batch Processing

```python
import os
from DiseaseDetectionApp.core.ml_processor import MLProcessor

ml_processor = MLProcessor()
database = load_disease_database()

# Process all images in a directory
image_dir = "path/to/images/"
for filename in os.listdir(image_dir):
    if filename.endswith(('.jpg', '.png', '.jpeg')):
        image_path = os.path.join(image_dir, filename)
        result, confidence, _, _ = ml_processor.predict_from_image(
            image_path, "Plant", database
        )
        print(f"{filename}: {result['name']} ({confidence:.1f}%)")
```

---

## 🐛 Troubleshooting

### Common Issues

<details>
<summary><b>Application crashes when uploading second image</b></summary>

**Solution**: This was a Qt threading issue that has been fixed in the latest version. Make sure you're using the latest code:

```bash
git pull origin main
pip install -r comprehensive_requirements.txt --upgrade
```
</details>

<details>
<summary><b>ModuleNotFoundError: No module named 'googleapiclient'</b></summary>

**Solution**: Install the missing dependency:

```bash
pip install google-api-python-client
```
</details>

<details>
<summary><b>Model file not found error</b></summary>

**Solution**: Train the model or download the pre-trained model:

```bash
cd DiseaseDetectionApp
./run_train.sh
```
</details>

<details>
<summary><b>PySide6 version incompatibility</b></summary>

**Solution**: Upgrade to Python 3.14 compatible version:

```bash
pip install "PySide6>=6.10.0"
```
</details>

### Getting Help

- 📖 Check the [Issues](https://github.com/abhi-abhi86/disease-predictor/issues) page
- 💬 Start a [Discussion](https://github.com/abhi-abhi86/disease-predictor/discussions)
- 📧 Contact: [@abhi-abhi86](https://github.com/abhi-abhi86)

---

## 🤝 Contributing

We welcome contributions! Here's how you can help:

### Ways to Contribute
- 🐛 **Report Bugs**: Found a bug? [Open an issue](https://github.com/abhi-abhi86/disease-predictor/issues)
- 💡 **Suggest Features**: Have an idea? [Start a discussion](https://github.com/abhi-abhi86/disease-predictor/discussions)
- 📝 **Improve Documentation**: Help make the docs better
- 🧪 **Add Tests**: Increase test coverage
- 🎨 **Enhance UI**: Improve the user interface
- 🔬 **Add Diseases**: Contribute new disease data
- 📊 **Share Datasets**: Contribute training data (with proper licensing)

### Contribution Process

1. **Fork** the repository
2. **Create** a feature branch
   ```bash
   git checkout -b feature/AmazingFeature
   ```
3. **Commit** your changes
   ```bash
   git commit -m "Add some AmazingFeature"
   ```
4. **Push** to the branch
   ```bash
   git push origin feature/AmazingFeature
   ```
5. **Open** a Pull Request

### Development Guidelines

- Follow PEP 8 style guide
- Add tests for new features
- Update documentation
- Use descriptive commit messages
- Keep PRs focused and small

---

## 📄 License

This project is licensed under the **MIT License** - see the [LICENSE](LICENSE) file for details.

### Third-Party Licenses
- **PyTorch**: BSD License
- **PySide6**: LGPL License
- **OpenCV**: Apache 2.0 License
- **Pillow**: HPND License

---

## 🙏 Acknowledgments

### Datasets
- **PlantVillage**: Plant disease dataset
- **Kaggle**: Various disease datasets
- **Public Domain**: Community-contributed images

### Technologies
- [PyTorch](https://pytorch.org) - Deep learning framework
- [PySide6](https://www.qt.io/qt-for-python) - Qt for Python GUI framework
- [Pillow](https://python-pillow.org) - Image processing library
- [scikit-learn](https://scikit-learn.org) - Machine learning utilities
- [Wikipedia API](https://pypi.org/project/wikipedia/) - Knowledge integration
- [Folium](https://python-visualization.github.io/folium/) - Interactive maps

### Inspiration
- Medical imaging research from Stanford ML Group
- Agricultural AI from PlantDoc project
- Open-source computer vision community

---

## ⚠️ Disclaimer

### Medical/Veterinary/Agricultural Disclaimer

This tool is designed for **educational and research purposes only**. It is **NOT** a substitute for professional medical, veterinary, or agricultural advice, diagnosis, or treatment.

**Always consult qualified professionals:**
- 👨‍⚕️ **Medical doctors** for human health concerns
- 🐕 **Licensed veterinarians** for animal health issues
- 🌾 **Agricultural extension services** for crop diseases

### Liability

The developers and contributors assume **no liability** for any consequences resulting from the use of this software. Users are responsible for:
- Validating all results
- Seeking professional consultation
- Using the tool responsibly
- Understanding its limitations

### Privacy

- All data processing happens **locally on your device**
- No data is sent to external servers (except optional Wikipedia/PubMed lookups)
- No user data is collected or stored by the developers
- You maintain full control of your data

---

## 📊 Project Statistics

![GitHub stars](https://img.shields.io/github/stars/abhi-abhi86/disease-predictor?style=social)
![GitHub forks](https://img.shields.io/github/forks/abhi-abhi86/disease-predictor?style=social)
![GitHub issues](https://img.shields.io/github/issues/abhi-abhi86/disease-predictor)
![GitHub pull requests](https://img.shields.io/github/issues-pr/abhi-abhi86/disease-predictor)
![GitHub last commit](https://img.shields.io/github/last-commit/abhi-abhi86/disease-predictor)
![GitHub code size](https://img.shields.io/github/languages/code-size/abhi-abhi86/disease-predictor)

---

## 🗺️ Roadmap

### Current Version (v1.0)
- [x] Multi-species disease detection
- [x] Desktop GUI application
- [x] Offline operation
- [x] Custom model training
- [x] Report generation (PDF/HTML)
- [x] Wikipedia and PubMed integration
- [x] Interactive maps
- [x] AI chatbot
- [x] Image validation
- [x] Thread-safe operation

### Upcoming Features (v2.0)
- [ ] Mobile applications (iOS/Android)
- [ ] Web-based interface
- [ ] Real-time video stream analysis
- [ ] Multi-language support
- [ ] Cloud-optional deployment
- [ ] Integration with medical imaging standards (DICOM)
- [ ] Advanced model architectures (Vision Transformers)
- [ ] Federated learning support
- [ ] API server mode
- [ ] Docker containerization

---

## 📧 Contact & Support

- **Developer**: Abhi
- **GitHub**: [@abhi-abhi86](https://github.com/abhi-abhi86)
- **Repository**: [disease-predictor](https://github.com/abhi-abhi86/disease-predictor)
- **Issues**: [Report a bug](https://github.com/abhi-abhi86/disease-predictor/issues)
- **Discussions**: [Ask questions](https://github.com/abhi-abhi86/disease-predictor/discussions)

### Support the Project

If you find this project helpful:
- ⭐ **Star** the repository
- 🐛 **Report** bugs and issues
- 💡 **Suggest** new features
- 🤝 **Contribute** code or documentation
- 📢 **Share** with others who might benefit

---

## 🔬 Research & Citations

If you use this project in your research, please cite:

```bibtex
@software{disease_predictor_2025,
  author = {Abhi},
  title = {Multi-Species Disease Detection and Management System},
  year = {2025},
  publisher = {GitHub},
  url = {https://github.com/abhi-abhi86/disease-predictor},
  version = {1.0.0}
}
```

---

<div align="center">

**Made with ❤️ for better healthcare, agriculture, and animal welfare**

[⬆ Back to Top](#-multi-species-disease-detection-and-management-system)

</div>
