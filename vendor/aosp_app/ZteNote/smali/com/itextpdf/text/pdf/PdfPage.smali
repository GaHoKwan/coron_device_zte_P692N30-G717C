.class public Lcom/itextpdf/text/pdf/PdfPage;
.super Lcom/itextpdf/text/pdf/PdfDictionary;
.source "PdfPage.java"


# static fields
.field public static final INVERTEDPORTRAIT:Lcom/itextpdf/text/pdf/PdfNumber;

.field public static final LANDSCAPE:Lcom/itextpdf/text/pdf/PdfNumber;

.field public static final PORTRAIT:Lcom/itextpdf/text/pdf/PdfNumber;

.field public static final SEASCAPE:Lcom/itextpdf/text/pdf/PdfNumber;

.field private static final boxNames:[Lcom/itextpdf/text/pdf/PdfName;

.field private static final boxStrings:[Ljava/lang/String;


# instance fields
.field mediaBox:Lcom/itextpdf/text/pdf/PdfRectangle;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 62
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "crop"

    aput-object v1, v0, v2

    const-string v1, "trim"

    aput-object v1, v0, v3

    const-string v1, "art"

    aput-object v1, v0, v4

    const-string v1, "bleed"

    aput-object v1, v0, v5

    sput-object v0, Lcom/itextpdf/text/pdf/PdfPage;->boxStrings:[Ljava/lang/String;

    .line 63
    new-array v0, v6, [Lcom/itextpdf/text/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->CROPBOX:Lcom/itextpdf/text/pdf/PdfName;

    aput-object v1, v0, v2

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->TRIMBOX:Lcom/itextpdf/text/pdf/PdfName;

    aput-object v1, v0, v3

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->ARTBOX:Lcom/itextpdf/text/pdf/PdfName;

    aput-object v1, v0, v4

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->BLEEDBOX:Lcom/itextpdf/text/pdf/PdfName;

    aput-object v1, v0, v5

    sput-object v0, Lcom/itextpdf/text/pdf/PdfPage;->boxNames:[Lcom/itextpdf/text/pdf/PdfName;

    .line 67
    new-instance v0, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v0, v2}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    sput-object v0, Lcom/itextpdf/text/pdf/PdfPage;->PORTRAIT:Lcom/itextpdf/text/pdf/PdfNumber;

    .line 70
    new-instance v0, Lcom/itextpdf/text/pdf/PdfNumber;

    const/16 v1, 0x5a

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    sput-object v0, Lcom/itextpdf/text/pdf/PdfPage;->LANDSCAPE:Lcom/itextpdf/text/pdf/PdfNumber;

    .line 73
    new-instance v0, Lcom/itextpdf/text/pdf/PdfNumber;

    const/16 v1, 0xb4

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    sput-object v0, Lcom/itextpdf/text/pdf/PdfPage;->INVERTEDPORTRAIT:Lcom/itextpdf/text/pdf/PdfNumber;

    .line 76
    new-instance v0, Lcom/itextpdf/text/pdf/PdfNumber;

    const/16 v1, 0x10e

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    sput-object v0, Lcom/itextpdf/text/pdf/PdfPage;->SEASCAPE:Lcom/itextpdf/text/pdf/PdfNumber;

    return-void
.end method

.method constructor <init>(Lcom/itextpdf/text/pdf/PdfRectangle;Ljava/util/HashMap;Lcom/itextpdf/text/pdf/PdfDictionary;)V
    .locals 1
    .parameter "mediaBox"
    .parameter
    .parameter "resources"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/text/pdf/PdfRectangle;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/text/pdf/PdfRectangle;",
            ">;",
            "Lcom/itextpdf/text/pdf/PdfDictionary;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 119
    .local p2, boxSize:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfRectangle;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/itextpdf/text/pdf/PdfPage;-><init>(Lcom/itextpdf/text/pdf/PdfRectangle;Ljava/util/HashMap;Lcom/itextpdf/text/pdf/PdfDictionary;I)V

    .line 120
    return-void
.end method

.method constructor <init>(Lcom/itextpdf/text/pdf/PdfRectangle;Ljava/util/HashMap;Lcom/itextpdf/text/pdf/PdfDictionary;I)V
    .locals 7
    .parameter "mediaBox"
    .parameter
    .parameter "resources"
    .parameter "rotate"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/text/pdf/PdfRectangle;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/text/pdf/PdfRectangle;",
            ">;",
            "Lcom/itextpdf/text/pdf/PdfDictionary;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .local p2, boxSize:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfRectangle;>;"
    const/high16 v3, 0x4661

    .line 93
    sget-object v2, Lcom/itextpdf/text/pdf/PdfPage;->PAGE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {p0, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 94
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfPage;->mediaBox:Lcom/itextpdf/text/pdf/PdfRectangle;

    .line 95
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfRectangle;->width()F

    move-result v2

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_0

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfRectangle;->height()F

    move-result v2

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 96
    :cond_0
    new-instance v2, Lcom/itextpdf/text/DocumentException;

    const-string v3, "the.page.size.must.be.smaller.than.14400.by.14400.its.1.by.2"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfRectangle;->width()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfRectangle;->height()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 98
    :cond_1
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->MEDIABOX:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v2, p1}, Lcom/itextpdf/text/pdf/PdfPage;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 99
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->RESOURCES:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v2, p3}, Lcom/itextpdf/text/pdf/PdfPage;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 100
    if-eqz p4, :cond_2

    .line 101
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->ROTATE:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v3, p4}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p0, v2, v3}, Lcom/itextpdf/text/pdf/PdfPage;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 103
    :cond_2
    const/4 v0, 0x0

    .local v0, k:I
    :goto_0
    sget-object v2, Lcom/itextpdf/text/pdf/PdfPage;->boxStrings:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 104
    sget-object v2, Lcom/itextpdf/text/pdf/PdfPage;->boxStrings:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/PdfObject;

    .line 105
    .local v1, rect:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v1, :cond_3

    .line 106
    sget-object v2, Lcom/itextpdf/text/pdf/PdfPage;->boxNames:[Lcom/itextpdf/text/pdf/PdfName;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2, v1}, Lcom/itextpdf/text/pdf/PdfPage;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 103
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    .end local v1           #rect:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_4
    return-void
.end method


# virtual methods
.method add(Lcom/itextpdf/text/pdf/PdfIndirectReference;)V
    .locals 1
    .parameter "contents"

    .prologue
    .line 143
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->CONTENTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/text/pdf/PdfPage;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 144
    return-void
.end method

.method getMediaBox()Lcom/itextpdf/text/pdf/PdfRectangle;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPage;->mediaBox:Lcom/itextpdf/text/pdf/PdfRectangle;

    return-object v0
.end method

.method public isParent()Z
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method rotateMediaBox()Lcom/itextpdf/text/pdf/PdfRectangle;
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPage;->mediaBox:Lcom/itextpdf/text/pdf/PdfRectangle;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfRectangle;->rotate()Lcom/itextpdf/text/pdf/PdfRectangle;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfPage;->mediaBox:Lcom/itextpdf/text/pdf/PdfRectangle;

    .line 154
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->MEDIABOX:Lcom/itextpdf/text/pdf/PdfName;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfPage;->mediaBox:Lcom/itextpdf/text/pdf/PdfRectangle;

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfPage;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 155
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPage;->mediaBox:Lcom/itextpdf/text/pdf/PdfRectangle;

    return-object v0
.end method
