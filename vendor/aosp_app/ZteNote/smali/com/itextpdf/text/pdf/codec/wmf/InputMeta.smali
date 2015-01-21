.class public Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;
.super Ljava/lang/Object;
.source "InputMeta.java"


# instance fields
.field in:Ljava/io/InputStream;

.field length:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->in:Ljava/io/InputStream;

    .line 59
    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->length:I

    return v0
.end method

.method public readByte()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    iget v0, p0, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->length:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->length:I

    .line 88
    iget-object v0, p0, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public readColor()Lcom/itextpdf/text/BaseColor;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readByte()I

    move-result v2

    .line 102
    .local v2, red:I
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readByte()I

    move-result v1

    .line 103
    .local v1, green:I
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readByte()I

    move-result v0

    .line 104
    .local v0, blue:I
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readByte()I

    .line 105
    new-instance v3, Lcom/itextpdf/text/BaseColor;

    invoke-direct {v3, v2, v1, v0}, Lcom/itextpdf/text/BaseColor;-><init>(III)V

    return-object v3
.end method

.method public readInt()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    iget v3, p0, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->length:I

    add-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->length:I

    .line 78
    iget-object v3, p0, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 79
    .local v0, k1:I
    if-gez v0, :cond_0

    .line 80
    const/4 v3, 0x0

    .line 83
    :goto_0
    return v3

    .line 81
    :cond_0
    iget-object v3, p0, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    shl-int/lit8 v1, v3, 0x8

    .line 82
    .local v1, k2:I
    iget-object v3, p0, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    shl-int/lit8 v2, v3, 0x10

    .line 83
    .local v2, k3:I
    add-int v3, v0, v1

    add-int/2addr v3, v2

    iget-object v4, p0, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->in:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v4

    shl-int/lit8 v4, v4, 0x18

    add-int/2addr v3, v4

    goto :goto_0
.end method

.method public readShort()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readWord()I

    move-result v0

    .line 71
    .local v0, k:I
    const/16 v1, 0x7fff

    if-le v0, v1, :cond_0

    .line 72
    const/high16 v1, 0x1

    sub-int/2addr v0, v1

    .line 73
    :cond_0
    return v0
.end method

.method public readWord()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    iget v1, p0, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->length:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->length:I

    .line 63
    iget-object v1, p0, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 64
    .local v0, k1:I
    if-gez v0, :cond_0

    .line 65
    const/4 v1, 0x0

    .line 66
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v1, v0

    const v2, 0xffff

    and-int/2addr v1, v2

    goto :goto_0
.end method

.method public skip(I)V
    .locals 1
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    iget v0, p0, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->length:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->length:I

    .line 93
    iget-object v0, p0, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->in:Ljava/io/InputStream;

    invoke-static {v0, p1}, Lcom/itextpdf/text/Utilities;->skip(Ljava/io/InputStream;I)V

    .line 94
    return-void
.end method
