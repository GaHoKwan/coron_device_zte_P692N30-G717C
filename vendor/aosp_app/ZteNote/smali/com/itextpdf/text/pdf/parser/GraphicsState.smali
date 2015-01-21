.class public Lcom/itextpdf/text/pdf/parser/GraphicsState;
.super Ljava/lang/Object;
.source "GraphicsState.java"


# instance fields
.field characterSpacing:F

.field ctm:Lcom/itextpdf/text/pdf/parser/Matrix;

.field font:Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;

.field fontSize:F

.field horizontalScaling:F

.field knockout:Z

.field leading:F

.field renderMode:I

.field rise:F

.field wordSpacing:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Lcom/itextpdf/text/pdf/parser/Matrix;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/parser/Matrix;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/parser/GraphicsState;->ctm:Lcom/itextpdf/text/pdf/parser/Matrix;

    .line 79
    iput v1, p0, Lcom/itextpdf/text/pdf/parser/GraphicsState;->characterSpacing:F

    .line 80
    iput v1, p0, Lcom/itextpdf/text/pdf/parser/GraphicsState;->wordSpacing:F

    .line 81
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/itextpdf/text/pdf/parser/GraphicsState;->horizontalScaling:F

    .line 82
    iput v1, p0, Lcom/itextpdf/text/pdf/parser/GraphicsState;->leading:F

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/parser/GraphicsState;->font:Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;

    .line 84
    iput v1, p0, Lcom/itextpdf/text/pdf/parser/GraphicsState;->fontSize:F

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/text/pdf/parser/GraphicsState;->renderMode:I

    .line 86
    iput v1, p0, Lcom/itextpdf/text/pdf/parser/GraphicsState;->rise:F

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/parser/GraphicsState;->knockout:Z

    .line 88
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/pdf/parser/GraphicsState;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iget-object v0, p1, Lcom/itextpdf/text/pdf/parser/GraphicsState;->ctm:Lcom/itextpdf/text/pdf/parser/Matrix;

    iput-object v0, p0, Lcom/itextpdf/text/pdf/parser/GraphicsState;->ctm:Lcom/itextpdf/text/pdf/parser/Matrix;

    .line 98
    iget v0, p1, Lcom/itextpdf/text/pdf/parser/GraphicsState;->characterSpacing:F

    iput v0, p0, Lcom/itextpdf/text/pdf/parser/GraphicsState;->characterSpacing:F

    .line 99
    iget v0, p1, Lcom/itextpdf/text/pdf/parser/GraphicsState;->wordSpacing:F

    iput v0, p0, Lcom/itextpdf/text/pdf/parser/GraphicsState;->wordSpacing:F

    .line 100
    iget v0, p1, Lcom/itextpdf/text/pdf/parser/GraphicsState;->horizontalScaling:F

    iput v0, p0, Lcom/itextpdf/text/pdf/parser/GraphicsState;->horizontalScaling:F

    .line 101
    iget v0, p1, Lcom/itextpdf/text/pdf/parser/GraphicsState;->leading:F

    iput v0, p0, Lcom/itextpdf/text/pdf/parser/GraphicsState;->leading:F

    .line 102
    iget-object v0, p1, Lcom/itextpdf/text/pdf/parser/GraphicsState;->font:Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;

    iput-object v0, p0, Lcom/itextpdf/text/pdf/parser/GraphicsState;->font:Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;

    .line 103
    iget v0, p1, Lcom/itextpdf/text/pdf/parser/GraphicsState;->fontSize:F

    iput v0, p0, Lcom/itextpdf/text/pdf/parser/GraphicsState;->fontSize:F

    .line 104
    iget v0, p1, Lcom/itextpdf/text/pdf/parser/GraphicsState;->renderMode:I

    iput v0, p0, Lcom/itextpdf/text/pdf/parser/GraphicsState;->renderMode:I

    .line 105
    iget v0, p1, Lcom/itextpdf/text/pdf/parser/GraphicsState;->rise:F

    iput v0, p0, Lcom/itextpdf/text/pdf/parser/GraphicsState;->rise:F

    .line 106
    iget-boolean v0, p1, Lcom/itextpdf/text/pdf/parser/GraphicsState;->knockout:Z

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/parser/GraphicsState;->knockout:Z

    .line 107
    return-void
.end method


# virtual methods
.method public getCharacterSpacing()F
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/itextpdf/text/pdf/parser/GraphicsState;->characterSpacing:F

    return v0
.end method

.method public getCtm()Lcom/itextpdf/text/pdf/parser/Matrix;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/itextpdf/text/pdf/parser/GraphicsState;->ctm:Lcom/itextpdf/text/pdf/parser/Matrix;

    return-object v0
.end method

.method public getFont()Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/itextpdf/text/pdf/parser/GraphicsState;->font:Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;

    return-object v0
.end method

.method public getFontSize()F
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/itextpdf/text/pdf/parser/GraphicsState;->fontSize:F

    return v0
.end method

.method public getHorizontalScaling()F
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/itextpdf/text/pdf/parser/GraphicsState;->horizontalScaling:F

    return v0
.end method

.method public getLeading()F
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/itextpdf/text/pdf/parser/GraphicsState;->leading:F

    return v0
.end method

.method public getRenderMode()I
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lcom/itextpdf/text/pdf/parser/GraphicsState;->renderMode:I

    return v0
.end method

.method public getRise()F
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lcom/itextpdf/text/pdf/parser/GraphicsState;->rise:F

    return v0
.end method

.method public getWordSpacing()F
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/itextpdf/text/pdf/parser/GraphicsState;->wordSpacing:F

    return v0
.end method

.method public isKnockout()Z
    .locals 1

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/parser/GraphicsState;->knockout:Z

    return v0
.end method
