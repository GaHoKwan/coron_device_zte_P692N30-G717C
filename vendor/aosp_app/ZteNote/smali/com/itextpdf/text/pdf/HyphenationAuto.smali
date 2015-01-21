.class public Lcom/itextpdf/text/pdf/HyphenationAuto;
.super Ljava/lang/Object;
.source "HyphenationAuto.java"

# interfaces
.implements Lcom/itextpdf/text/pdf/HyphenationEvent;


# instance fields
.field protected hyphenator:Lcom/itextpdf/text/pdf/hyphenation/Hyphenator;

.field protected post:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1
    .parameter "lang"
    .parameter "country"
    .parameter "leftMin"
    .parameter "rightMin"

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Lcom/itextpdf/text/pdf/hyphenation/Hyphenator;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/itextpdf/text/pdf/hyphenation/Hyphenator;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/HyphenationAuto;->hyphenator:Lcom/itextpdf/text/pdf/hyphenation/Hyphenator;

    .line 72
    return-void
.end method


# virtual methods
.method public getHyphenSymbol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    const-string v0, "-"

    return-object v0
.end method

.method public getHyphenatedWordPost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/itextpdf/text/pdf/HyphenationAuto;->post:Ljava/lang/String;

    return-object v0
.end method

.method public getHyphenatedWordPre(Ljava/lang/String;Lcom/itextpdf/text/pdf/BaseFont;FF)Ljava/lang/String;
    .locals 7
    .parameter "word"
    .parameter "font"
    .parameter "fontSize"
    .parameter "remainingWidth"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/itextpdf/text/pdf/HyphenationAuto;->post:Ljava/lang/String;

    .line 92
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/HyphenationAuto;->getHyphenSymbol()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, hyphen:Ljava/lang/String;
    invoke-virtual {p2, v0, p3}, Lcom/itextpdf/text/pdf/BaseFont;->getWidthPoint(Ljava/lang/String;F)F

    move-result v1

    .line 94
    .local v1, hyphenWidth:F
    cmpl-float v5, v1, p4

    if-lez v5, :cond_0

    .line 95
    const-string v5, ""

    .line 110
    :goto_0
    return-object v5

    .line 96
    :cond_0
    iget-object v5, p0, Lcom/itextpdf/text/pdf/HyphenationAuto;->hyphenator:Lcom/itextpdf/text/pdf/hyphenation/Hyphenator;

    invoke-virtual {v5, p1}, Lcom/itextpdf/text/pdf/hyphenation/Hyphenator;->hyphenate(Ljava/lang/String;)Lcom/itextpdf/text/pdf/hyphenation/Hyphenation;

    move-result-object v2

    .line 97
    .local v2, hyphenation:Lcom/itextpdf/text/pdf/hyphenation/Hyphenation;
    if-nez v2, :cond_1

    .line 98
    const-string v5, ""

    goto :goto_0

    .line 100
    :cond_1
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/hyphenation/Hyphenation;->length()I

    move-result v4

    .line 102
    .local v4, len:I
    const/4 v3, 0x0

    .local v3, k:I
    :goto_1
    if-ge v3, v4, :cond_2

    .line 103
    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/hyphenation/Hyphenation;->getPreHyphenText(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5, p3}, Lcom/itextpdf/text/pdf/BaseFont;->getWidthPoint(Ljava/lang/String;F)F

    move-result v5

    add-float/2addr v5, v1

    cmpl-float v5, v5, p4

    if-lez v5, :cond_3

    .line 106
    :cond_2
    add-int/lit8 v3, v3, -0x1

    .line 107
    if-gez v3, :cond_4

    .line 108
    const-string v5, ""

    goto :goto_0

    .line 102
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 109
    :cond_4
    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/hyphenation/Hyphenation;->getPostHyphenText(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/itextpdf/text/pdf/HyphenationAuto;->post:Ljava/lang/String;

    .line 110
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/hyphenation/Hyphenation;->getPreHyphenText(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method
