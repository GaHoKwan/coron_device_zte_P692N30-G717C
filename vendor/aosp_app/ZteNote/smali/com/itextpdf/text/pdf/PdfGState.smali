.class public Lcom/itextpdf/text/pdf/PdfGState;
.super Lcom/itextpdf/text/pdf/PdfDictionary;
.source "PdfGState.java"


# static fields
.field public static final BM_COLORBURN:Lcom/itextpdf/text/pdf/PdfName;

.field public static final BM_COLORDODGE:Lcom/itextpdf/text/pdf/PdfName;

.field public static final BM_COMPATIBLE:Lcom/itextpdf/text/pdf/PdfName;

.field public static final BM_DARKEN:Lcom/itextpdf/text/pdf/PdfName;

.field public static final BM_DIFFERENCE:Lcom/itextpdf/text/pdf/PdfName;

.field public static final BM_EXCLUSION:Lcom/itextpdf/text/pdf/PdfName;

.field public static final BM_HARDLIGHT:Lcom/itextpdf/text/pdf/PdfName;

.field public static final BM_LIGHTEN:Lcom/itextpdf/text/pdf/PdfName;

.field public static final BM_MULTIPLY:Lcom/itextpdf/text/pdf/PdfName;

.field public static final BM_NORMAL:Lcom/itextpdf/text/pdf/PdfName;

.field public static final BM_OVERLAY:Lcom/itextpdf/text/pdf/PdfName;

.field public static final BM_SCREEN:Lcom/itextpdf/text/pdf/PdfName;

.field public static final BM_SOFTLIGHT:Lcom/itextpdf/text/pdf/PdfName;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    new-instance v0, Lcom/itextpdf/text/pdf/PdfName;

    const-string v1, "Normal"

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/itextpdf/text/pdf/PdfGState;->BM_NORMAL:Lcom/itextpdf/text/pdf/PdfName;

    .line 54
    new-instance v0, Lcom/itextpdf/text/pdf/PdfName;

    const-string v1, "Compatible"

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/itextpdf/text/pdf/PdfGState;->BM_COMPATIBLE:Lcom/itextpdf/text/pdf/PdfName;

    .line 56
    new-instance v0, Lcom/itextpdf/text/pdf/PdfName;

    const-string v1, "Multiply"

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/itextpdf/text/pdf/PdfGState;->BM_MULTIPLY:Lcom/itextpdf/text/pdf/PdfName;

    .line 58
    new-instance v0, Lcom/itextpdf/text/pdf/PdfName;

    const-string v1, "Screen"

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/itextpdf/text/pdf/PdfGState;->BM_SCREEN:Lcom/itextpdf/text/pdf/PdfName;

    .line 60
    new-instance v0, Lcom/itextpdf/text/pdf/PdfName;

    const-string v1, "Overlay"

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/itextpdf/text/pdf/PdfGState;->BM_OVERLAY:Lcom/itextpdf/text/pdf/PdfName;

    .line 62
    new-instance v0, Lcom/itextpdf/text/pdf/PdfName;

    const-string v1, "Darken"

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/itextpdf/text/pdf/PdfGState;->BM_DARKEN:Lcom/itextpdf/text/pdf/PdfName;

    .line 64
    new-instance v0, Lcom/itextpdf/text/pdf/PdfName;

    const-string v1, "Lighten"

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/itextpdf/text/pdf/PdfGState;->BM_LIGHTEN:Lcom/itextpdf/text/pdf/PdfName;

    .line 66
    new-instance v0, Lcom/itextpdf/text/pdf/PdfName;

    const-string v1, "ColorDodge"

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/itextpdf/text/pdf/PdfGState;->BM_COLORDODGE:Lcom/itextpdf/text/pdf/PdfName;

    .line 68
    new-instance v0, Lcom/itextpdf/text/pdf/PdfName;

    const-string v1, "ColorBurn"

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/itextpdf/text/pdf/PdfGState;->BM_COLORBURN:Lcom/itextpdf/text/pdf/PdfName;

    .line 70
    new-instance v0, Lcom/itextpdf/text/pdf/PdfName;

    const-string v1, "HardLight"

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/itextpdf/text/pdf/PdfGState;->BM_HARDLIGHT:Lcom/itextpdf/text/pdf/PdfName;

    .line 72
    new-instance v0, Lcom/itextpdf/text/pdf/PdfName;

    const-string v1, "SoftLight"

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/itextpdf/text/pdf/PdfGState;->BM_SOFTLIGHT:Lcom/itextpdf/text/pdf/PdfName;

    .line 74
    new-instance v0, Lcom/itextpdf/text/pdf/PdfName;

    const-string v1, "Difference"

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/itextpdf/text/pdf/PdfGState;->BM_DIFFERENCE:Lcom/itextpdf/text/pdf/PdfName;

    .line 76
    new-instance v0, Lcom/itextpdf/text/pdf/PdfName;

    const-string v1, "Exclusion"

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/itextpdf/text/pdf/PdfGState;->BM_EXCLUSION:Lcom/itextpdf/text/pdf/PdfName;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    return-void
.end method


# virtual methods
.method public setAlphaIsShape(Z)V
    .locals 2
    .parameter "v"

    .prologue
    .line 129
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->AIS:Lcom/itextpdf/text/pdf/PdfName;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/itextpdf/text/pdf/PdfBoolean;->PDFTRUE:Lcom/itextpdf/text/pdf/PdfBoolean;

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/text/pdf/PdfGState;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 130
    return-void

    .line 129
    :cond_0
    sget-object v0, Lcom/itextpdf/text/pdf/PdfBoolean;->PDFFALSE:Lcom/itextpdf/text/pdf/PdfBoolean;

    goto :goto_0
.end method

.method public setBlendMode(Lcom/itextpdf/text/pdf/PdfName;)V
    .locals 1
    .parameter "bm"

    .prologue
    .line 146
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->BM:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/text/pdf/PdfGState;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 147
    return-void
.end method

.method public setFillOpacity(F)V
    .locals 2
    .parameter "n"

    .prologue
    .line 119
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->ca:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v1, p1}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(F)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfGState;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 120
    return-void
.end method

.method public setOverPrintMode(I)V
    .locals 3
    .parameter "ov"

    .prologue
    .line 99
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->OPM:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/text/pdf/PdfNumber;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {v2, v0}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lcom/itextpdf/text/pdf/PdfGState;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 100
    return-void

    .line 99
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setOverPrintNonStroking(Z)V
    .locals 2
    .parameter "ov"

    .prologue
    .line 91
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->op:Lcom/itextpdf/text/pdf/PdfName;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/itextpdf/text/pdf/PdfBoolean;->PDFTRUE:Lcom/itextpdf/text/pdf/PdfBoolean;

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/text/pdf/PdfGState;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 92
    return-void

    .line 91
    :cond_0
    sget-object v0, Lcom/itextpdf/text/pdf/PdfBoolean;->PDFFALSE:Lcom/itextpdf/text/pdf/PdfBoolean;

    goto :goto_0
.end method

.method public setOverPrintStroking(Z)V
    .locals 2
    .parameter "ov"

    .prologue
    .line 83
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->OP:Lcom/itextpdf/text/pdf/PdfName;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/itextpdf/text/pdf/PdfBoolean;->PDFTRUE:Lcom/itextpdf/text/pdf/PdfBoolean;

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/text/pdf/PdfGState;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 84
    return-void

    .line 83
    :cond_0
    sget-object v0, Lcom/itextpdf/text/pdf/PdfBoolean;->PDFFALSE:Lcom/itextpdf/text/pdf/PdfBoolean;

    goto :goto_0
.end method

.method public setRenderingIntent(Lcom/itextpdf/text/pdf/PdfName;)V
    .locals 1
    .parameter "ri"

    .prologue
    .line 156
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->RI:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/text/pdf/PdfGState;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 157
    return-void
.end method

.method public setStrokeOpacity(F)V
    .locals 2
    .parameter "n"

    .prologue
    .line 109
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->CA:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v1, p1}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(F)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfGState;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 110
    return-void
.end method

.method public setTextKnockout(Z)V
    .locals 2
    .parameter "v"

    .prologue
    .line 138
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->TK:Lcom/itextpdf/text/pdf/PdfName;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/itextpdf/text/pdf/PdfBoolean;->PDFTRUE:Lcom/itextpdf/text/pdf/PdfBoolean;

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/text/pdf/PdfGState;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 139
    return-void

    .line 138
    :cond_0
    sget-object v0, Lcom/itextpdf/text/pdf/PdfBoolean;->PDFFALSE:Lcom/itextpdf/text/pdf/PdfBoolean;

    goto :goto_0
.end method
