.class public Lcom/itextpdf/text/pdf/PdfFormXObject;
.super Lcom/itextpdf/text/pdf/PdfStream;
.source "PdfFormXObject.java"


# static fields
.field public static final MATRIX:Lcom/itextpdf/text/pdf/PdfLiteral;

.field public static final ONE:Lcom/itextpdf/text/pdf/PdfNumber;

.field public static final ZERO:Lcom/itextpdf/text/pdf/PdfNumber;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    new-instance v0, Lcom/itextpdf/text/pdf/PdfNumber;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    sput-object v0, Lcom/itextpdf/text/pdf/PdfFormXObject;->ZERO:Lcom/itextpdf/text/pdf/PdfNumber;

    .line 58
    new-instance v0, Lcom/itextpdf/text/pdf/PdfNumber;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    sput-object v0, Lcom/itextpdf/text/pdf/PdfFormXObject;->ONE:Lcom/itextpdf/text/pdf/PdfNumber;

    .line 61
    new-instance v0, Lcom/itextpdf/text/pdf/PdfLiteral;

    const-string v1, "[1 0 0 1 0 0]"

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfLiteral;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/itextpdf/text/pdf/PdfFormXObject;->MATRIX:Lcom/itextpdf/text/pdf/PdfLiteral;

    return-void
.end method

.method constructor <init>(Lcom/itextpdf/text/pdf/PdfTemplate;I)V
    .locals 4
    .parameter "template"
    .parameter "compressionLevel"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfStream;-><init>()V

    .line 74
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->TYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->XOBJECT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v1, v2}, Lcom/itextpdf/text/pdf/PdfFormXObject;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 75
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->FORM:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v1, v2}, Lcom/itextpdf/text/pdf/PdfFormXObject;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 76
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->RESOURCES:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfTemplate;->getResources()Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/itextpdf/text/pdf/PdfFormXObject;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 77
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->BBOX:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/text/pdf/PdfRectangle;

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfTemplate;->getBoundingBox()Lcom/itextpdf/text/Rectangle;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/itextpdf/text/pdf/PdfRectangle;-><init>(Lcom/itextpdf/text/Rectangle;)V

    invoke-virtual {p0, v1, v2}, Lcom/itextpdf/text/pdf/PdfFormXObject;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 78
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->FORMTYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfFormXObject;->ONE:Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-virtual {p0, v1, v2}, Lcom/itextpdf/text/pdf/PdfFormXObject;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 79
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfTemplate;->getLayer()Lcom/itextpdf/text/pdf/PdfOCG;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 80
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->OC:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfTemplate;->getLayer()Lcom/itextpdf/text/pdf/PdfOCG;

    move-result-object v2

    invoke-interface {v2}, Lcom/itextpdf/text/pdf/PdfOCG;->getRef()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/itextpdf/text/pdf/PdfFormXObject;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 81
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfTemplate;->getGroup()Lcom/itextpdf/text/pdf/PdfTransparencyGroup;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 82
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->GROUP:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfTemplate;->getGroup()Lcom/itextpdf/text/pdf/PdfTransparencyGroup;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/itextpdf/text/pdf/PdfFormXObject;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 83
    :cond_1
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfTemplate;->getMatrix()Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v0

    .line 84
    .local v0, matrix:Lcom/itextpdf/text/pdf/PdfArray;
    if-nez v0, :cond_3

    .line 85
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->MATRIX:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfFormXObject;->MATRIX:Lcom/itextpdf/text/pdf/PdfLiteral;

    invoke-virtual {p0, v1, v2}, Lcom/itextpdf/text/pdf/PdfFormXObject;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 88
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/itextpdf/text/pdf/PdfTemplate;->toPdf(Lcom/itextpdf/text/pdf/PdfWriter;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfFormXObject;->bytes:[B

    .line 89
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->LENGTH:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/text/pdf/PdfNumber;

    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfFormXObject;->bytes:[B

    array-length v3, v3

    invoke-direct {v2, v3}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lcom/itextpdf/text/pdf/PdfFormXObject;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 90
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfTemplate;->getAdditional()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 91
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfTemplate;->getAdditional()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/PdfFormXObject;->putAll(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 93
    :cond_2
    invoke-virtual {p0, p2}, Lcom/itextpdf/text/pdf/PdfFormXObject;->flateCompress(I)V

    .line 94
    return-void

    .line 87
    :cond_3
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->MATRIX:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/text/pdf/PdfFormXObject;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0
.end method
