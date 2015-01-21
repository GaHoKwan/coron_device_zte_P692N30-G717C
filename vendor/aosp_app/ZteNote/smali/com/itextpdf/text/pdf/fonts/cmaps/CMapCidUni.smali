.class public Lcom/itextpdf/text/pdf/fonts/cmaps/CMapCidUni;
.super Lcom/itextpdf/text/pdf/fonts/cmaps/AbstractCMap;
.source "CMapCidUni.java"


# instance fields
.field private map:Lcom/itextpdf/text/pdf/IntHashtable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/fonts/cmaps/AbstractCMap;-><init>()V

    .line 57
    new-instance v0, Lcom/itextpdf/text/pdf/IntHashtable;

    const v1, 0x10001

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/IntHashtable;-><init>(I)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapCidUni;->map:Lcom/itextpdf/text/pdf/IntHashtable;

    return-void
.end method


# virtual methods
.method addChar(Lcom/itextpdf/text/pdf/PdfString;Lcom/itextpdf/text/pdf/PdfObject;)V
    .locals 4
    .parameter "mark"
    .parameter "code"

    .prologue
    const/4 v3, 0x0

    .line 61
    instance-of v2, p2, Lcom/itextpdf/text/pdf/PdfNumber;

    if-nez v2, :cond_0

    .line 70
    .end local p2
    :goto_0
    return-void

    .line 64
    .restart local p2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapCidUni;->decodeStringToUnicode(Lcom/itextpdf/text/pdf/PdfString;)Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, s:Ljava/lang/String;
    invoke-static {v1, v3}, Lcom/itextpdf/text/Utilities;->isSurrogatePair(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 66
    invoke-static {v1, v3}, Lcom/itextpdf/text/Utilities;->convertToUtf32(Ljava/lang/String;I)I

    move-result v0

    .line 69
    .local v0, codepoint:I
    :goto_1
    iget-object v2, p0, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapCidUni;->map:Lcom/itextpdf/text/pdf/IntHashtable;

    check-cast p2, Lcom/itextpdf/text/pdf/PdfNumber;

    .end local p2
    invoke-virtual {p2}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    goto :goto_0

    .line 68
    .end local v0           #codepoint:I
    .restart local p2
    :cond_1
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .restart local v0       #codepoint:I
    goto :goto_1
.end method

.method public lookup(I)I
    .locals 1
    .parameter "character"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapCidUni;->map:Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/IntHashtable;->get(I)I

    move-result v0

    return v0
.end method
