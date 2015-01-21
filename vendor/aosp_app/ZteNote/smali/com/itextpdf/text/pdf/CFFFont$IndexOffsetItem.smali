.class public final Lcom/itextpdf/text/pdf/CFFFont$IndexOffsetItem;
.super Lcom/itextpdf/text/pdf/CFFFont$OffsetItem;
.source "CFFFont.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/CFFFont;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "IndexOffsetItem"
.end annotation


# instance fields
.field public final size:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 450
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/CFFFont$OffsetItem;-><init>()V

    iput p1, p0, Lcom/itextpdf/text/pdf/CFFFont$IndexOffsetItem;->size:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .parameter "size"
    .parameter "value"

    .prologue
    .line 449
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/CFFFont$OffsetItem;-><init>()V

    iput p1, p0, Lcom/itextpdf/text/pdf/CFFFont$IndexOffsetItem;->size:I

    iput p2, p0, Lcom/itextpdf/text/pdf/CFFFont$IndexOffsetItem;->value:I

    return-void
.end method


# virtual methods
.method public emit([B)V
    .locals 3
    .parameter "buffer"

    .prologue
    .line 459
    const/4 v0, 0x0

    .line 460
    .local v0, i:I
    iget v1, p0, Lcom/itextpdf/text/pdf/CFFFont$IndexOffsetItem;->size:I

    packed-switch v1, :pswitch_data_0

    .line 481
    :goto_0
    return-void

    .line 462
    :pswitch_0
    iget v1, p0, Lcom/itextpdf/text/pdf/CFFFont$IndexOffsetItem;->myOffset:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/itextpdf/text/pdf/CFFFont$IndexOffsetItem;->value:I

    ushr-int/lit8 v2, v2, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 463
    add-int/lit8 v0, v0, 0x1

    .line 465
    :pswitch_1
    iget v1, p0, Lcom/itextpdf/text/pdf/CFFFont$IndexOffsetItem;->myOffset:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/itextpdf/text/pdf/CFFFont$IndexOffsetItem;->value:I

    ushr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 466
    add-int/lit8 v0, v0, 0x1

    .line 468
    :pswitch_2
    iget v1, p0, Lcom/itextpdf/text/pdf/CFFFont$IndexOffsetItem;->myOffset:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/itextpdf/text/pdf/CFFFont$IndexOffsetItem;->value:I

    ushr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 469
    add-int/lit8 v0, v0, 0x1

    .line 471
    :pswitch_3
    iget v1, p0, Lcom/itextpdf/text/pdf/CFFFont$IndexOffsetItem;->myOffset:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/itextpdf/text/pdf/CFFFont$IndexOffsetItem;->value:I

    ushr-int/lit8 v2, v2, 0x0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 472
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 460
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public increment([I)V
    .locals 3
    .parameter "currentOffset"

    .prologue
    .line 454
    invoke-super {p0, p1}, Lcom/itextpdf/text/pdf/CFFFont$OffsetItem;->increment([I)V

    .line 455
    const/4 v0, 0x0

    aget v1, p1, v0

    iget v2, p0, Lcom/itextpdf/text/pdf/CFFFont$IndexOffsetItem;->size:I

    add-int/2addr v1, v2

    aput v1, p1, v0

    .line 456
    return-void
.end method
