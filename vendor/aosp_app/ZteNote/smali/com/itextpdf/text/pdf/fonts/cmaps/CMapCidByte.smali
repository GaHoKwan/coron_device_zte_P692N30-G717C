.class public Lcom/itextpdf/text/pdf/fonts/cmaps/CMapCidByte;
.super Lcom/itextpdf/text/pdf/fonts/cmaps/AbstractCMap;
.source "CMapCidByte.java"


# instance fields
.field private final EMPTY:[B

.field private map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/fonts/cmaps/AbstractCMap;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapCidByte;->map:Ljava/util/HashMap;

    .line 53
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapCidByte;->EMPTY:[B

    return-void
.end method


# virtual methods
.method addChar(Lcom/itextpdf/text/pdf/PdfString;Lcom/itextpdf/text/pdf/PdfObject;)V
    .locals 3
    .parameter "mark"
    .parameter "code"

    .prologue
    .line 57
    instance-of v1, p2, Lcom/itextpdf/text/pdf/PdfNumber;

    if-nez v1, :cond_0

    .line 61
    .end local p2
    :goto_0
    return-void

    .line 59
    .restart local p2
    :cond_0
    invoke-static {p1}, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapCidByte;->decodeStringToByte(Lcom/itextpdf/text/pdf/PdfString;)[B

    move-result-object v0

    .line 60
    .local v0, ser:[B
    iget-object v1, p0, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapCidByte;->map:Ljava/util/HashMap;

    check-cast p2, Lcom/itextpdf/text/pdf/PdfNumber;

    .end local p2
    invoke-virtual {p2}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public lookup(I)[B
    .locals 3
    .parameter "cid"

    .prologue
    .line 64
    iget-object v1, p0, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapCidByte;->map:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 65
    .local v0, ser:[B
    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapCidByte;->EMPTY:[B

    .line 68
    .end local v0           #ser:[B
    :cond_0
    return-object v0
.end method
