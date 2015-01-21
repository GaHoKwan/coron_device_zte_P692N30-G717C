.class public Lcom/itextpdf/text/pdf/PdfAppearance;
.super Lcom/itextpdf/text/pdf/PdfTemplate;
.source "PdfAppearance.java"


# static fields
.field public static final stdFieldFontNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/text/pdf/PdfName;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/itextpdf/text/pdf/PdfAppearance;->stdFieldFontNames:Ljava/util/HashMap;

    .line 57
    sget-object v0, Lcom/itextpdf/text/pdf/PdfAppearance;->stdFieldFontNames:Ljava/util/HashMap;

    const-string v1, "Courier-BoldOblique"

    new-instance v2, Lcom/itextpdf/text/pdf/PdfName;

    const-string v3, "CoBO"

    invoke-direct {v2, v3}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/itextpdf/text/pdf/PdfAppearance;->stdFieldFontNames:Ljava/util/HashMap;

    const-string v1, "Courier-Bold"

    new-instance v2, Lcom/itextpdf/text/pdf/PdfName;

    const-string v3, "CoBo"

    invoke-direct {v2, v3}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/itextpdf/text/pdf/PdfAppearance;->stdFieldFontNames:Ljava/util/HashMap;

    const-string v1, "Courier-Oblique"

    new-instance v2, Lcom/itextpdf/text/pdf/PdfName;

    const-string v3, "CoOb"

    invoke-direct {v2, v3}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/itextpdf/text/pdf/PdfAppearance;->stdFieldFontNames:Ljava/util/HashMap;

    const-string v1, "Courier"

    new-instance v2, Lcom/itextpdf/text/pdf/PdfName;

    const-string v3, "Cour"

    invoke-direct {v2, v3}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/itextpdf/text/pdf/PdfAppearance;->stdFieldFontNames:Ljava/util/HashMap;

    const-string v1, "Helvetica-BoldOblique"

    new-instance v2, Lcom/itextpdf/text/pdf/PdfName;

    const-string v3, "HeBO"

    invoke-direct {v2, v3}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/itextpdf/text/pdf/PdfAppearance;->stdFieldFontNames:Ljava/util/HashMap;

    const-string v1, "Helvetica-Bold"

    new-instance v2, Lcom/itextpdf/text/pdf/PdfName;

    const-string v3, "HeBo"

    invoke-direct {v2, v3}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/itextpdf/text/pdf/PdfAppearance;->stdFieldFontNames:Ljava/util/HashMap;

    const-string v1, "Helvetica-Oblique"

    new-instance v2, Lcom/itextpdf/text/pdf/PdfName;

    const-string v3, "HeOb"

    invoke-direct {v2, v3}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/itextpdf/text/pdf/PdfAppearance;->stdFieldFontNames:Ljava/util/HashMap;

    const-string v1, "Helvetica"

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->HELV:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/itextpdf/text/pdf/PdfAppearance;->stdFieldFontNames:Ljava/util/HashMap;

    const-string v1, "Symbol"

    new-instance v2, Lcom/itextpdf/text/pdf/PdfName;

    const-string v3, "Symb"

    invoke-direct {v2, v3}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/itextpdf/text/pdf/PdfAppearance;->stdFieldFontNames:Ljava/util/HashMap;

    const-string v1, "Times-BoldItalic"

    new-instance v2, Lcom/itextpdf/text/pdf/PdfName;

    const-string v3, "TiBI"

    invoke-direct {v2, v3}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/itextpdf/text/pdf/PdfAppearance;->stdFieldFontNames:Ljava/util/HashMap;

    const-string v1, "Times-Bold"

    new-instance v2, Lcom/itextpdf/text/pdf/PdfName;

    const-string v3, "TiBo"

    invoke-direct {v2, v3}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/itextpdf/text/pdf/PdfAppearance;->stdFieldFontNames:Ljava/util/HashMap;

    const-string v1, "Times-Italic"

    new-instance v2, Lcom/itextpdf/text/pdf/PdfName;

    const-string v3, "TiIt"

    invoke-direct {v2, v3}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/itextpdf/text/pdf/PdfAppearance;->stdFieldFontNames:Ljava/util/HashMap;

    const-string v1, "Times-Roman"

    new-instance v2, Lcom/itextpdf/text/pdf/PdfName;

    const-string v3, "TiRo"

    invoke-direct {v2, v3}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/itextpdf/text/pdf/PdfAppearance;->stdFieldFontNames:Ljava/util/HashMap;

    const-string v1, "ZapfDingbats"

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->ZADB:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/itextpdf/text/pdf/PdfAppearance;->stdFieldFontNames:Ljava/util/HashMap;

    const-string v1, "HYSMyeongJo-Medium"

    new-instance v2, Lcom/itextpdf/text/pdf/PdfName;

    const-string v3, "HySm"

    invoke-direct {v2, v3}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/itextpdf/text/pdf/PdfAppearance;->stdFieldFontNames:Ljava/util/HashMap;

    const-string v1, "HYGoThic-Medium"

    new-instance v2, Lcom/itextpdf/text/pdf/PdfName;

    const-string v3, "HyGo"

    invoke-direct {v2, v3}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/itextpdf/text/pdf/PdfAppearance;->stdFieldFontNames:Ljava/util/HashMap;

    const-string v1, "HeiseiKakuGo-W5"

    new-instance v2, Lcom/itextpdf/text/pdf/PdfName;

    const-string v3, "KaGo"

    invoke-direct {v2, v3}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/itextpdf/text/pdf/PdfAppearance;->stdFieldFontNames:Ljava/util/HashMap;

    const-string v1, "HeiseiMin-W3"

    new-instance v2, Lcom/itextpdf/text/pdf/PdfName;

    const-string v3, "KaMi"

    invoke-direct {v2, v3}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/itextpdf/text/pdf/PdfAppearance;->stdFieldFontNames:Ljava/util/HashMap;

    const-string v1, "MHei-Medium"

    new-instance v2, Lcom/itextpdf/text/pdf/PdfName;

    const-string v3, "MHei"

    invoke-direct {v2, v3}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/itextpdf/text/pdf/PdfAppearance;->stdFieldFontNames:Ljava/util/HashMap;

    const-string v1, "MSung-Light"

    new-instance v2, Lcom/itextpdf/text/pdf/PdfName;

    const-string v3, "MSun"

    invoke-direct {v2, v3}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/itextpdf/text/pdf/PdfAppearance;->stdFieldFontNames:Ljava/util/HashMap;

    const-string v1, "STSong-Light"

    new-instance v2, Lcom/itextpdf/text/pdf/PdfName;

    const-string v3, "STSo"

    invoke-direct {v2, v3}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/itextpdf/text/pdf/PdfAppearance;->stdFieldFontNames:Ljava/util/HashMap;

    const-string v1, "MSungStd-Light"

    new-instance v2, Lcom/itextpdf/text/pdf/PdfName;

    const-string v3, "MSun"

    invoke-direct {v2, v3}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/itextpdf/text/pdf/PdfAppearance;->stdFieldFontNames:Ljava/util/HashMap;

    const-string v1, "STSongStd-Light"

    new-instance v2, Lcom/itextpdf/text/pdf/PdfName;

    const-string v3, "STSo"

    invoke-direct {v2, v3}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/itextpdf/text/pdf/PdfAppearance;->stdFieldFontNames:Ljava/util/HashMap;

    const-string v1, "HYSMyeongJoStd-Medium"

    new-instance v2, Lcom/itextpdf/text/pdf/PdfName;

    const-string v3, "HySm"

    invoke-direct {v2, v3}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/itextpdf/text/pdf/PdfAppearance;->stdFieldFontNames:Ljava/util/HashMap;

    const-string v1, "KozMinPro-Regular"

    new-instance v2, Lcom/itextpdf/text/pdf/PdfName;

    const-string v3, "KaMi"

    invoke-direct {v2, v3}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfTemplate;-><init>()V

    .line 90
    const/16 v0, 0x20

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfAppearance;->separator:I

    .line 91
    return-void
.end method

.method constructor <init>(Lcom/itextpdf/text/pdf/PdfIndirectReference;)V
    .locals 0
    .parameter "iref"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfTemplate;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfAppearance;->thisReference:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    .line 95
    return-void
.end method

.method constructor <init>(Lcom/itextpdf/text/pdf/PdfWriter;)V
    .locals 1
    .parameter "wr"

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/itextpdf/text/pdf/PdfTemplate;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;)V

    .line 105
    const/16 v0, 0x20

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfAppearance;->separator:I

    .line 106
    return-void
.end method

.method public static createAppearance(Lcom/itextpdf/text/pdf/PdfWriter;FF)Lcom/itextpdf/text/pdf/PdfAppearance;
    .locals 1
    .parameter "writer"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 117
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/itextpdf/text/pdf/PdfAppearance;->createAppearance(Lcom/itextpdf/text/pdf/PdfWriter;FFLcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfAppearance;

    move-result-object v0

    return-object v0
.end method

.method static createAppearance(Lcom/itextpdf/text/pdf/PdfWriter;FFLcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfAppearance;
    .locals 1
    .parameter "writer"
    .parameter "width"
    .parameter "height"
    .parameter "forcedName"

    .prologue
    .line 121
    new-instance v0, Lcom/itextpdf/text/pdf/PdfAppearance;

    invoke-direct {v0, p0}, Lcom/itextpdf/text/pdf/PdfAppearance;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;)V

    .line 122
    .local v0, template:Lcom/itextpdf/text/pdf/PdfAppearance;
    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfAppearance;->setWidth(F)V

    .line 123
    invoke-virtual {v0, p2}, Lcom/itextpdf/text/pdf/PdfAppearance;->setHeight(F)V

    .line 124
    invoke-virtual {p0, v0, p3}, Lcom/itextpdf/text/pdf/PdfWriter;->addDirectTemplateSimple(Lcom/itextpdf/text/pdf/PdfTemplate;Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfName;

    .line 125
    return-object v0
.end method


# virtual methods
.method public getDuplicate()Lcom/itextpdf/text/pdf/PdfContentByte;
    .locals 3

    .prologue
    .line 160
    new-instance v0, Lcom/itextpdf/text/pdf/PdfAppearance;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfAppearance;-><init>()V

    .line 161
    .local v0, tpl:Lcom/itextpdf/text/pdf/PdfAppearance;
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfAppearance;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    iput-object v1, v0, Lcom/itextpdf/text/pdf/PdfAppearance;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    .line 162
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfAppearance;->pdf:Lcom/itextpdf/text/pdf/PdfDocument;

    iput-object v1, v0, Lcom/itextpdf/text/pdf/PdfAppearance;->pdf:Lcom/itextpdf/text/pdf/PdfDocument;

    .line 163
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfAppearance;->thisReference:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    iput-object v1, v0, Lcom/itextpdf/text/pdf/PdfAppearance;->thisReference:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    .line 164
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfAppearance;->pageResources:Lcom/itextpdf/text/pdf/PageResources;

    iput-object v1, v0, Lcom/itextpdf/text/pdf/PdfAppearance;->pageResources:Lcom/itextpdf/text/pdf/PageResources;

    .line 165
    new-instance v1, Lcom/itextpdf/text/Rectangle;

    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfAppearance;->bBox:Lcom/itextpdf/text/Rectangle;

    invoke-direct {v1, v2}, Lcom/itextpdf/text/Rectangle;-><init>(Lcom/itextpdf/text/Rectangle;)V

    iput-object v1, v0, Lcom/itextpdf/text/pdf/PdfAppearance;->bBox:Lcom/itextpdf/text/Rectangle;

    .line 166
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfAppearance;->group:Lcom/itextpdf/text/pdf/PdfTransparencyGroup;

    iput-object v1, v0, Lcom/itextpdf/text/pdf/PdfAppearance;->group:Lcom/itextpdf/text/pdf/PdfTransparencyGroup;

    .line 167
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfAppearance;->layer:Lcom/itextpdf/text/pdf/PdfOCG;

    iput-object v1, v0, Lcom/itextpdf/text/pdf/PdfAppearance;->layer:Lcom/itextpdf/text/pdf/PdfOCG;

    .line 168
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfAppearance;->matrix:Lcom/itextpdf/text/pdf/PdfArray;

    if-eqz v1, :cond_0

    .line 169
    new-instance v1, Lcom/itextpdf/text/pdf/PdfArray;

    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfAppearance;->matrix:Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/PdfArray;-><init>(Lcom/itextpdf/text/pdf/PdfArray;)V

    iput-object v1, v0, Lcom/itextpdf/text/pdf/PdfAppearance;->matrix:Lcom/itextpdf/text/pdf/PdfArray;

    .line 171
    :cond_0
    iget v1, p0, Lcom/itextpdf/text/pdf/PdfAppearance;->separator:I

    iput v1, v0, Lcom/itextpdf/text/pdf/PdfAppearance;->separator:I

    .line 172
    return-object v0
.end method

.method public setFontAndSize(Lcom/itextpdf/text/pdf/BaseFont;F)V
    .locals 6
    .parameter "bf"
    .parameter "size"

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfAppearance;->checkWriter()V

    .line 137
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfAppearance;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iput p2, v2, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->size:F

    .line 138
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/BaseFont;->getFontType()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 139
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfAppearance;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    new-instance v4, Lcom/itextpdf/text/pdf/FontDetails;

    const/4 v5, 0x0

    move-object v2, p1

    check-cast v2, Lcom/itextpdf/text/pdf/DocumentFont;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/DocumentFont;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v2

    invoke-direct {v4, v5, v2, p1}, Lcom/itextpdf/text/pdf/FontDetails;-><init>(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfIndirectReference;Lcom/itextpdf/text/pdf/BaseFont;)V

    iput-object v4, v3, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->fontDetails:Lcom/itextpdf/text/pdf/FontDetails;

    .line 143
    :goto_0
    sget-object v2, Lcom/itextpdf/text/pdf/PdfAppearance;->stdFieldFontNames:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/BaseFont;->getPostscriptFontName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/PdfName;

    .line 144
    .local v1, psn:Lcom/itextpdf/text/pdf/PdfName;
    if-nez v1, :cond_0

    .line 145
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/BaseFont;->isSubset()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/BaseFont;->getFontType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 146
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfAppearance;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iget-object v2, v2, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->fontDetails:Lcom/itextpdf/text/pdf/FontDetails;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/FontDetails;->getFontName()Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v1

    .line 152
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfAppearance;->getPageResources()Lcom/itextpdf/text/pdf/PageResources;

    move-result-object v0

    .line 154
    .local v0, prs:Lcom/itextpdf/text/pdf/PageResources;
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfAppearance;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iget-object v2, v2, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->fontDetails:Lcom/itextpdf/text/pdf/FontDetails;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/FontDetails;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PageResources;->addFont(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfName;

    .line 155
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfAppearance;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfName;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    const-string v3, " Tf"

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    iget v3, p0, Lcom/itextpdf/text/pdf/PdfAppearance;->separator:I

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 156
    return-void

    .line 142
    .end local v0           #prs:Lcom/itextpdf/text/pdf/PageResources;
    .end local v1           #psn:Lcom/itextpdf/text/pdf/PdfName;
    :cond_1
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfAppearance;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfAppearance;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v3, p1}, Lcom/itextpdf/text/pdf/PdfWriter;->addSimple(Lcom/itextpdf/text/pdf/BaseFont;)Lcom/itextpdf/text/pdf/FontDetails;

    move-result-object v3

    iput-object v3, v2, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->fontDetails:Lcom/itextpdf/text/pdf/FontDetails;

    goto :goto_0

    .line 148
    .restart local v1       #psn:Lcom/itextpdf/text/pdf/PdfName;
    :cond_2
    new-instance v1, Lcom/itextpdf/text/pdf/PdfName;

    .end local v1           #psn:Lcom/itextpdf/text/pdf/PdfName;
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/BaseFont;->getPostscriptFontName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    .line 149
    .restart local v1       #psn:Lcom/itextpdf/text/pdf/PdfName;
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfAppearance;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iget-object v2, v2, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->fontDetails:Lcom/itextpdf/text/pdf/FontDetails;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/FontDetails;->setSubset(Z)V

    goto :goto_1
.end method
