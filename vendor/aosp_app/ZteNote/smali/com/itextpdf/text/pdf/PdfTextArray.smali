.class public Lcom/itextpdf/text/pdf/PdfTextArray;
.super Ljava/lang/Object;
.source "PdfTextArray.java"


# instance fields
.field arrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private lastNum:Ljava/lang/Float;

.field private lastStr:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfTextArray;->arrayList:Ljava/util/ArrayList;

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfTextArray;->arrayList:Ljava/util/ArrayList;

    .line 71
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfTextArray;->add(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method private replaceLast(Ljava/lang/Object;)V
    .locals 2
    .parameter "obj"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfTextArray;->arrayList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfTextArray;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 126
    return-void
.end method


# virtual methods
.method public add(F)V
    .locals 3
    .parameter "number"

    .prologue
    const/4 v2, 0x0

    .line 87
    cmpl-float v0, p1, v2

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfTextArray;->lastNum:Ljava/lang/Float;

    if-eqz v0, :cond_2

    .line 89
    new-instance v0, Ljava/lang/Float;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfTextArray;->lastNum:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    add-float/2addr v1, p1

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfTextArray;->lastNum:Ljava/lang/Float;

    .line 90
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfTextArray;->lastNum:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfTextArray;->lastNum:Ljava/lang/Float;

    invoke-direct {p0, v0}, Lcom/itextpdf/text/pdf/PdfTextArray;->replaceLast(Ljava/lang/Object;)V

    .line 100
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfTextArray;->lastStr:Ljava/lang/String;

    .line 103
    :cond_0
    return-void

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfTextArray;->arrayList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfTextArray;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 96
    :cond_2
    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, p1}, Ljava/lang/Float;-><init>(F)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfTextArray;->lastNum:Ljava/lang/Float;

    .line 97
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfTextArray;->arrayList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfTextArray;->lastNum:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public add(Lcom/itextpdf/text/pdf/PdfNumber;)V
    .locals 2
    .parameter "number"

    .prologue
    .line 83
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfNumber;->doubleValue()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfTextArray;->add(F)V

    .line 84
    return-void
.end method

.method public add(Ljava/lang/String;)V
    .locals 2
    .parameter "str"

    .prologue
    .line 106
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfTextArray;->lastStr:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfTextArray;->lastStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfTextArray;->lastStr:Ljava/lang/String;

    .line 109
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfTextArray;->lastStr:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/itextpdf/text/pdf/PdfTextArray;->replaceLast(Ljava/lang/Object;)V

    .line 114
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfTextArray;->lastNum:Ljava/lang/Float;

    .line 117
    :cond_0
    return-void

    .line 111
    :cond_1
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfTextArray;->lastStr:Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfTextArray;->arrayList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfTextArray;->lastStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method getArrayList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfTextArray;->arrayList:Ljava/util/ArrayList;

    return-object v0
.end method
