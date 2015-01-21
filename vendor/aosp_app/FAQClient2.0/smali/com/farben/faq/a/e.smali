.class public final Lcom/farben/faq/a/e;
.super Ljava/lang/Object;


# direct methods
.method public static a(I)I
    .locals 2

    sget v0, Lcom/farben/faq/common/d;->b:I

    const/16 v1, 0x320

    if-ge v0, v1, :cond_1

    :cond_0
    :goto_0
    return p0

    :cond_1
    sget v0, Lcom/farben/faq/common/d;->b:I

    const/16 v1, 0x780

    if-eq v0, v1, :cond_0

    sget v0, Lcom/farben/faq/common/d;->b:I

    const/16 v1, 0x500

    if-eq v0, v1, :cond_0

    int-to-float v0, p0

    const/high16 v1, 0x3f80

    mul-float/2addr v0, v1

    const/high16 v1, 0x4448

    div-float/2addr v0, v1

    sget v1, Lcom/farben/faq/common/d;->b:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int p0, v0

    goto :goto_0
.end method
