.class public abstract Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldBase;
.super Ljava/lang/Object;
.source "TiffWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/codec/TiffWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "FieldBase"
.end annotation


# instance fields
.field private count:I

.field protected data:[B

.field private fieldType:I

.field private offset:I

.field private tag:I


# direct methods
.method protected constructor <init>(III)V
    .locals 0
    .parameter "tag"
    .parameter "fieldType"
    .parameter "count"

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput p1, p0, Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldBase;->tag:I

    .line 99
    iput p2, p0, Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldBase;->fieldType:I

    .line 100
    iput p3, p0, Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldBase;->count:I

    .line 101
    return-void
.end method


# virtual methods
.method public getTag()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldBase;->tag:I

    return v0
.end method

.method public getValueSize()I
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldBase;->data:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    and-int/lit8 v0, v0, -0x2

    return v0
.end method

.method public setOffset(I)V
    .locals 0
    .parameter "offset"

    .prologue
    .line 112
    iput p1, p0, Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldBase;->offset:I

    .line 113
    return-void
.end method

.method public writeField(Ljava/io/OutputStream;)V
    .locals 3
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x4

    .line 116
    iget v1, p0, Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldBase;->tag:I

    invoke-static {v1, p1}, Lcom/itextpdf/text/pdf/codec/TiffWriter;->writeShort(ILjava/io/OutputStream;)V

    .line 117
    iget v1, p0, Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldBase;->fieldType:I

    invoke-static {v1, p1}, Lcom/itextpdf/text/pdf/codec/TiffWriter;->writeShort(ILjava/io/OutputStream;)V

    .line 118
    iget v1, p0, Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldBase;->count:I

    invoke-static {v1, p1}, Lcom/itextpdf/text/pdf/codec/TiffWriter;->writeLong(ILjava/io/OutputStream;)V

    .line 119
    iget-object v1, p0, Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldBase;->data:[B

    array-length v1, v1

    if-gt v1, v2, :cond_0

    .line 120
    iget-object v1, p0, Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldBase;->data:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 121
    iget-object v1, p0, Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldBase;->data:[B

    array-length v0, v1

    .local v0, k:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 122
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    .end local v0           #k:I
    :cond_0
    iget v1, p0, Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldBase;->offset:I

    invoke-static {v1, p1}, Lcom/itextpdf/text/pdf/codec/TiffWriter;->writeLong(ILjava/io/OutputStream;)V

    .line 128
    :cond_1
    return-void
.end method

.method public writeValue(Ljava/io/OutputStream;)V
    .locals 2
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldBase;->data:[B

    array-length v0, v0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldBase;->data:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 134
    iget-object v0, p0, Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldBase;->data:[B

    array-length v0, v0

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 135
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0
.end method
