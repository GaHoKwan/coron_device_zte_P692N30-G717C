.class public Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldLong;
.super Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldBase;
.source "TiffWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/codec/TiffWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FieldLong"
.end annotation


# direct methods
.method public constructor <init>(II)V
    .locals 4
    .parameter "tag"
    .parameter "value"

    .prologue
    const/4 v0, 0x4

    const/4 v3, 0x1

    .line 168
    invoke-direct {p0, p1, v0, v3}, Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldBase;-><init>(III)V

    .line 169
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldLong;->data:[B

    .line 170
    iget-object v0, p0, Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldLong;->data:[B

    const/4 v1, 0x0

    shr-int/lit8 v2, p2, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 171
    iget-object v0, p0, Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldLong;->data:[B

    shr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 172
    iget-object v0, p0, Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldLong;->data:[B

    const/4 v1, 0x2

    shr-int/lit8 v2, p2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 173
    iget-object v0, p0, Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldLong;->data:[B

    const/4 v1, 0x3

    int-to-byte v2, p2

    aput-byte v2, v0, v1

    .line 174
    return-void
.end method

.method public constructor <init>(I[I)V
    .locals 8
    .parameter "tag"
    .parameter "values"

    .prologue
    .line 177
    const/4 v6, 0x4

    array-length v7, p2

    invoke-direct {p0, p1, v6, v7}, Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldBase;-><init>(III)V

    .line 178
    array-length v6, p2

    mul-int/lit8 v6, v6, 0x4

    new-array v6, v6, [B

    iput-object v6, p0, Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldLong;->data:[B

    .line 179
    const/4 v3, 0x0

    .line 180
    .local v3, ptr:I
    move-object v0, p2

    .local v0, arr$:[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    move v4, v3

    .end local v3           #ptr:I
    .local v4, ptr:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget v5, v0, v1

    .line 181
    .local v5, value:I
    iget-object v6, p0, Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldLong;->data:[B

    add-int/lit8 v3, v4, 0x1

    .end local v4           #ptr:I
    .restart local v3       #ptr:I
    shr-int/lit8 v7, v5, 0x18

    int-to-byte v7, v7

    aput-byte v7, v6, v4

    .line 182
    iget-object v6, p0, Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldLong;->data:[B

    add-int/lit8 v4, v3, 0x1

    .end local v3           #ptr:I
    .restart local v4       #ptr:I
    shr-int/lit8 v7, v5, 0x10

    int-to-byte v7, v7

    aput-byte v7, v6, v3

    .line 183
    iget-object v6, p0, Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldLong;->data:[B

    add-int/lit8 v3, v4, 0x1

    .end local v4           #ptr:I
    .restart local v3       #ptr:I
    shr-int/lit8 v7, v5, 0x8

    int-to-byte v7, v7

    aput-byte v7, v6, v4

    .line 184
    iget-object v6, p0, Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldLong;->data:[B

    add-int/lit8 v4, v3, 0x1

    .end local v3           #ptr:I
    .restart local v4       #ptr:I
    int-to-byte v7, v5

    aput-byte v7, v6, v3

    .line 180
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 186
    .end local v5           #value:I
    :cond_0
    return-void
.end method
