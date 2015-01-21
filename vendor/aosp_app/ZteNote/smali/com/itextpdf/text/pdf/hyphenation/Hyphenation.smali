.class public Lcom/itextpdf/text/pdf/hyphenation/Hyphenation;
.super Ljava/lang/Object;
.source "Hyphenation.java"


# instance fields
.field private hyphenPoints:[I

.field private len:I

.field private word:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;[I)V
    .locals 1
    .parameter "word"
    .parameter "points"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/itextpdf/text/pdf/hyphenation/Hyphenation;->word:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/itextpdf/text/pdf/hyphenation/Hyphenation;->hyphenPoints:[I

    .line 41
    array-length v0, p2

    iput v0, p0, Lcom/itextpdf/text/pdf/hyphenation/Hyphenation;->len:I

    .line 42
    return-void
.end method


# virtual methods
.method public getHyphenationPoints()[I
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/itextpdf/text/pdf/hyphenation/Hyphenation;->hyphenPoints:[I

    return-object v0
.end method

.method public getPostHyphenText(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/itextpdf/text/pdf/hyphenation/Hyphenation;->word:Ljava/lang/String;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/hyphenation/Hyphenation;->hyphenPoints:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreHyphenText(I)Ljava/lang/String;
    .locals 3
    .parameter "index"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/itextpdf/text/pdf/hyphenation/Hyphenation;->word:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/itextpdf/text/pdf/hyphenation/Hyphenation;->hyphenPoints:[I

    aget v2, v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/itextpdf/text/pdf/hyphenation/Hyphenation;->len:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 73
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 74
    .local v2, str:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .line 75
    .local v1, start:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v3, p0, Lcom/itextpdf/text/pdf/hyphenation/Hyphenation;->len:I

    if-ge v0, v3, :cond_0

    .line 76
    iget-object v3, p0, Lcom/itextpdf/text/pdf/hyphenation/Hyphenation;->word:Ljava/lang/String;

    iget-object v4, p0, Lcom/itextpdf/text/pdf/hyphenation/Hyphenation;->hyphenPoints:[I

    aget v4, v4, v0

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const/16 v4, 0x2d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 77
    iget-object v3, p0, Lcom/itextpdf/text/pdf/hyphenation/Hyphenation;->hyphenPoints:[I

    aget v1, v3, v0

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    :cond_0
    iget-object v3, p0, Lcom/itextpdf/text/pdf/hyphenation/Hyphenation;->word:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
