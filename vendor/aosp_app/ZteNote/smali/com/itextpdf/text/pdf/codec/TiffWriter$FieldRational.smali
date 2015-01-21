.class public Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldRational;
.super Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldBase;
.source "TiffWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/codec/TiffWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FieldRational"
.end annotation


# direct methods
.method public constructor <init>(I[I)V
    .locals 2
    .parameter "tag"
    .parameter "value"

    .prologue
    .line 195
    const/4 v0, 0x1

    new-array v0, v0, [[I

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldRational;-><init>(I[[I)V

    .line 196
    return-void
.end method

.method public constructor <init>(I[[I)V
    .locals 10
    .parameter "tag"
    .parameter "values"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 199
    const/4 v6, 0x5

    array-length v7, p2

    invoke-direct {p0, p1, v6, v7}, Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldBase;-><init>(III)V

    .line 200
    array-length v6, p2

    mul-int/lit8 v6, v6, 0x8

    new-array v6, v6, [B

    iput-object v6, p0, Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldRational;->data:[B

    .line 201
    const/4 v3, 0x0

    .line 202
    .local v3, ptr:I
    move-object v0, p2

    .local v0, arr$:[[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    move v4, v3

    .end local v3           #ptr:I
    .local v4, ptr:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v5, v0, v1

    .line 203
    .local v5, value:[I
    iget-object v6, p0, Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldRational;->data:[B

    add-int/lit8 v3, v4, 0x1

    .end local v4           #ptr:I
    .restart local v3       #ptr:I
    aget v7, v5, v8

    shr-int/lit8 v7, v7, 0x18

    int-to-byte v7, v7

    aput-byte v7, v6, v4

    .line 204
    iget-object v6, p0, Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldRational;->data:[B

    add-int/lit8 v4, v3, 0x1

    .end local v3           #ptr:I
    .restart local v4       #ptr:I
    aget v7, v5, v8

    shr-int/lit8 v7, v7, 0x10

    int-to-byte v7, v7

    aput-byte v7, v6, v3

    .line 205
    iget-object v6, p0, Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldRational;->data:[B

    add-int/lit8 v3, v4, 0x1

    .end local v4           #ptr:I
    .restart local v3       #ptr:I
    aget v7, v5, v8

    shr-int/lit8 v7, v7, 0x8

    int-to-byte v7, v7

    aput-byte v7, v6, v4

    .line 206
    iget-object v6, p0, Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldRational;->data:[B

    add-int/lit8 v4, v3, 0x1

    .end local v3           #ptr:I
    .restart local v4       #ptr:I
    aget v7, v5, v8

    int-to-byte v7, v7

    aput-byte v7, v6, v3

    .line 207
    iget-object v6, p0, Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldRational;->data:[B

    add-int/lit8 v3, v4, 0x1

    .end local v4           #ptr:I
    .restart local v3       #ptr:I
    aget v7, v5, v9

    shr-int/lit8 v7, v7, 0x18

    int-to-byte v7, v7

    aput-byte v7, v6, v4

    .line 208
    iget-object v6, p0, Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldRational;->data:[B

    add-int/lit8 v4, v3, 0x1

    .end local v3           #ptr:I
    .restart local v4       #ptr:I
    aget v7, v5, v9

    shr-int/lit8 v7, v7, 0x10

    int-to-byte v7, v7

    aput-byte v7, v6, v3

    .line 209
    iget-object v6, p0, Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldRational;->data:[B

    add-int/lit8 v3, v4, 0x1

    .end local v4           #ptr:I
    .restart local v3       #ptr:I
    aget v7, v5, v9

    shr-int/lit8 v7, v7, 0x8

    int-to-byte v7, v7

    aput-byte v7, v6, v4

    .line 210
    iget-object v6, p0, Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldRational;->data:[B

    add-int/lit8 v4, v3, 0x1

    .end local v3           #ptr:I
    .restart local v4       #ptr:I
    aget v7, v5, v9

    int-to-byte v7, v7

    aput-byte v7, v6, v3

    .line 202
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 212
    .end local v5           #value:[I
    :cond_0
    return-void
.end method
