.class public final Lcom/itextpdf/text/pdf/CFFFont$RangeItem;
.super Lcom/itextpdf/text/pdf/CFFFont$Item;
.source "CFFFont.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/CFFFont;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "RangeItem"
.end annotation


# instance fields
.field private buf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

.field public length:I

.field public offset:I


# direct methods
.method public constructor <init>(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;II)V
    .locals 0
    .parameter "buf"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 416
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/CFFFont$Item;-><init>()V

    .line 417
    iput p2, p0, Lcom/itextpdf/text/pdf/CFFFont$RangeItem;->offset:I

    .line 418
    iput p3, p0, Lcom/itextpdf/text/pdf/CFFFont$RangeItem;->length:I

    .line 419
    iput-object p1, p0, Lcom/itextpdf/text/pdf/CFFFont$RangeItem;->buf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    .line 420
    return-void
.end method


# virtual methods
.method public emit([B)V
    .locals 5
    .parameter "buffer"

    .prologue
    .line 430
    :try_start_0
    iget-object v2, p0, Lcom/itextpdf/text/pdf/CFFFont$RangeItem;->buf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    iget v3, p0, Lcom/itextpdf/text/pdf/CFFFont$RangeItem;->offset:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->seek(J)V

    .line 431
    iget v1, p0, Lcom/itextpdf/text/pdf/CFFFont$RangeItem;->myOffset:I

    .local v1, i:I
    :goto_0
    iget v2, p0, Lcom/itextpdf/text/pdf/CFFFont$RangeItem;->myOffset:I

    iget v3, p0, Lcom/itextpdf/text/pdf/CFFFont$RangeItem;->length:I

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_0

    .line 432
    iget-object v2, p0, Lcom/itextpdf/text/pdf/CFFFont$RangeItem;->buf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readByte()B

    move-result v2

    aput-byte v2, p1, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 431
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 434
    .end local v1           #i:I
    :catch_0
    move-exception v0

    .line 435
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v2, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 438
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #i:I
    :cond_0
    return-void
.end method

.method public increment([I)V
    .locals 3
    .parameter "currentOffset"

    .prologue
    .line 423
    invoke-super {p0, p1}, Lcom/itextpdf/text/pdf/CFFFont$Item;->increment([I)V

    .line 424
    const/4 v0, 0x0

    aget v1, p1, v0

    iget v2, p0, Lcom/itextpdf/text/pdf/CFFFont$RangeItem;->length:I

    add-int/2addr v1, v2

    aput v1, p1, v0

    .line 425
    return-void
.end method
