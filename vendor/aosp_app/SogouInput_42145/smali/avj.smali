.class public Lavj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lavj;

.field private static final a:[Ljava/lang/String;


# instance fields
.field private a:F

.field private a:I

.field private a:Landroid/content/Context;

.field private a:Lavm;

.field private b:F

.field private b:I

.field private c:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 99
    const/4 v0, 0x0

    sput-object v0, Lavj;->a:Lavj;

    .line 165
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "cn_en"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "biaodian"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "quan_ban"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "quan_shuang"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "fan_jian"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "softkeyboard"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "menu"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "sogousearch"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "pageup"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "pagedown"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "passport"

    aput-object v2, v0, v1

    sput-object v0, Lavj;->a:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    const/high16 v0, 0x3e20

    iput v0, p0, Lavj;->a:F

    .line 208
    const v0, 0x3de147ae

    iput v0, p0, Lavj;->b:F

    .line 238
    iput-object p1, p0, Lavj;->a:Landroid/content/Context;

    .line 239
    return-void
.end method

.method private a(Lavn;FI)F
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v2, 0x3f80

    .line 550
    if-nez p1, :cond_0

    move v0, v2

    .line 674
    :goto_0
    return v0

    .line 567
    :cond_0
    iget-object v0, p1, Lavn;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, p1, Lavn;->a:I

    add-int/2addr v0, v1

    iget-object v1, p1, Lavn;->a:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    iget-object v1, p1, Lavn;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iget v1, p1, Lavn;->a:I

    add-int/2addr v0, v1

    iget-object v1, p1, Lavn;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    if-le v0, p3, :cond_5

    .line 570
    iget-object v0, p1, Lavn;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, p1, Lavn;->b:I

    .line 571
    iget v0, p1, Lavn;->a:I

    iget-object v1, p1, Lavn;->a:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    iget-object v1, p1, Lavn;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iget v1, p1, Lavn;->a:I

    add-int/2addr v0, v1

    .line 572
    iget v1, p1, Lavn;->b:I

    add-int/2addr v0, v1

    iput v0, p1, Lavn;->c:I

    .line 573
    iget v0, p1, Lavn;->c:I

    if-le v0, p3, :cond_1

    .line 574
    iput p3, p1, Lavn;->c:I

    .line 577
    :cond_1
    iget v0, p1, Lavn;->c:I

    sub-int v0, p3, v0

    .line 578
    iget v1, p1, Lavn;->b:I

    if-le v1, v0, :cond_3

    .line 579
    :goto_1
    iget-object v1, p1, Lavn;->a:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p1, Lavn;->b:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v3

    .line 580
    mul-int/lit8 v3, v0, 0x2

    if-le v3, v1, :cond_4

    move v0, v1

    .line 581
    :goto_2
    iget-object v1, p1, Lavn;->a:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    div-int/lit8 v3, v0, 0x2

    sub-int/2addr v1, v3

    iput v1, p1, Lavn;->b:I

    .line 582
    iget v1, p1, Lavn;->a:I

    iget v3, p1, Lavn;->a:I

    add-int/2addr v1, v3

    iget-object v3, p1, Lavn;->a:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v3

    iget-object v3, p1, Lavn;->b:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v3

    add-int/2addr v0, v1

    .line 583
    iget v1, p1, Lavn;->b:I

    add-int/2addr v1, v0

    iput v1, p1, Lavn;->c:I

    .line 584
    iget v1, p1, Lavn;->c:I

    if-le v1, p3, :cond_2

    .line 585
    iput p3, p1, Lavn;->c:I

    .line 668
    :cond_2
    :goto_3
    if-le v0, p3, :cond_9

    .line 670
    :goto_4
    if-gtz p3, :cond_8

    move v0, v2

    goto :goto_0

    .line 578
    :cond_3
    iget v0, p1, Lavn;->b:I

    goto :goto_1

    .line 580
    :cond_4
    mul-int/lit8 v0, v0, 0x2

    goto :goto_2

    .line 625
    :cond_5
    iget-object v0, p1, Lavn;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, p1, Lavn;->b:I

    .line 626
    iget v0, p1, Lavn;->a:I

    iget-object v1, p1, Lavn;->a:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    iget-object v1, p1, Lavn;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iget v1, p1, Lavn;->a:I

    add-int/2addr v0, v1

    .line 627
    iget v1, p1, Lavn;->b:I

    add-int/2addr v0, v1

    iput v0, p1, Lavn;->c:I

    .line 629
    iget v0, p1, Lavn;->c:I

    sub-int v0, p3, v0

    .line 630
    iget v1, p1, Lavn;->b:I

    if-le v1, v0, :cond_6

    .line 631
    :goto_5
    iget-object v1, p1, Lavn;->a:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p1, Lavn;->b:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v3

    .line 632
    mul-int/lit8 v3, v0, 0x2

    if-le v3, v1, :cond_7

    move v0, v1

    .line 633
    :goto_6
    iget-object v1, p1, Lavn;->a:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    div-int/lit8 v3, v0, 0x2

    sub-int/2addr v1, v3

    iput v1, p1, Lavn;->b:I

    .line 634
    iget v1, p1, Lavn;->a:I

    iget v3, p1, Lavn;->a:I

    add-int/2addr v1, v3

    iget-object v3, p1, Lavn;->a:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v3

    iget-object v3, p1, Lavn;->b:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v3

    add-int/2addr v0, v1

    .line 635
    iget v1, p1, Lavn;->b:I

    add-int/2addr v1, v0

    iput v1, p1, Lavn;->c:I

    goto :goto_3

    .line 630
    :cond_6
    iget v0, p1, Lavn;->b:I

    goto :goto_5

    .line 632
    :cond_7
    mul-int/lit8 v0, v0, 0x2

    goto :goto_6

    .line 671
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[calculateZoomRate] textTopline = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lavn;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lavj;->b(Ljava/lang/String;)V

    .line 672
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[calculateZoomRate] textBottomline = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lavn;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lavj;->b(Ljava/lang/String;)V

    .line 673
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[calculateZoomRate] textAreaHeight = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lavj;->b(Ljava/lang/String;)V

    .line 674
    iget v0, p0, Lavj;->a:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    int-to-float v1, p3

    div-float/2addr v0, v1

    goto/16 :goto_0

    :cond_9
    move p3, v0

    goto/16 :goto_4
.end method

.method private a(II)I
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 255
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 261
    :cond_0
    :goto_0
    return v0

    .line 257
    :cond_1
    if-ne p1, v1, :cond_2

    if-nez p2, :cond_2

    move v0, v1

    .line 258
    goto :goto_0

    .line 259
    :cond_2
    if-nez p1, :cond_0

    if-ne p2, v2, :cond_0

    move v0, v2

    .line 260
    goto :goto_0
.end method

.method private a(Ljava/lang/String;)I
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x6

    const/4 v0, 0x0

    const/4 v2, 0x4

    .line 511
    if-nez p1, :cond_1

    .line 529
    :cond_0
    :goto_0
    return v0

    .line 513
    :cond_1
    iget-object v3, p0, Lavj;->a:Landroid/content/Context;

    const v4, 0x7f0b0314

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    .line 514
    goto :goto_0

    .line 515
    :cond_2
    iget-object v3, p0, Lavj;->a:Landroid/content/Context;

    const v4, 0x7f0b031b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v2

    .line 516
    goto :goto_0

    .line 517
    :cond_3
    iget-object v3, p0, Lavj;->a:Landroid/content/Context;

    const v4, 0x7f0b031a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 518
    const/4 v0, 0x2

    goto :goto_0

    .line 519
    :cond_4
    iget-object v3, p0, Lavj;->a:Landroid/content/Context;

    const v4, 0x7f0b0319

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v0, v2

    .line 520
    goto :goto_0

    .line 521
    :cond_5
    iget-object v3, p0, Lavj;->a:Landroid/content/Context;

    const v4, 0x7f0b0318

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v0, v2

    .line 522
    goto :goto_0

    .line 523
    :cond_6
    iget-object v3, p0, Lavj;->a:Landroid/content/Context;

    const v4, 0x7f0b0317

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    move v0, v2

    .line 524
    goto :goto_0

    .line 525
    :cond_7
    iget-object v3, p0, Lavj;->a:Landroid/content/Context;

    const v4, 0x7f0b0315

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    move v0, v2

    .line 526
    goto :goto_0

    .line 527
    :cond_8
    iget-object v2, p0, Lavj;->a:Landroid/content/Context;

    const v3, 0x7f0b0316

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 528
    goto/16 :goto_0
.end method

.method private a(Landroid/graphics/Bitmap;IIIZ)Landroid/graphics/Bitmap;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1413
    if-nez p1, :cond_1

    .line 1449
    :cond_0
    :goto_0
    return-object p1

    .line 1415
    :cond_1
    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    if-gt p2, p3, :cond_0

    .line 1418
    const-string v0, "[createNinePatchBitmap] enter"

    invoke-static {v0}, Lavj;->b(Ljava/lang/String;)V

    .line 1419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[createNinePatchBitmap] line1 = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " line2 = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lavj;->b(Ljava/lang/String;)V

    .line 1420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[createNinePatchBitmap] scaledSize = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " isHorizon = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lavj;->b(Ljava/lang/String;)V

    .line 1422
    if-eqz p5, :cond_8

    .line 1423
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 1424
    sub-int v0, p4, v4

    add-int/2addr v0, p3

    sub-int/2addr v0, p2

    int-to-float v0, v0

    sub-int v2, p3, p2

    int-to-float v2, v2

    div-float v5, v0, v2

    .line 1425
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p4, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    move v3, v1

    .line 1426
    :goto_1
    if-ge v3, p2, :cond_3

    move v0, v1

    .line 1427
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-ge v0, v6, :cond_2

    .line 1428
    invoke-virtual {p1, v3, v0}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v6

    invoke-virtual {v2, v3, v0, v6}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 1427
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1426
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_3
    move v3, p2

    .line 1429
    :goto_3
    sub-int v0, p4, v4

    add-int/2addr v0, p3

    if-ge v3, v0, :cond_5

    move v0, v1

    .line 1430
    :goto_4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-ge v0, v6, :cond_4

    .line 1431
    sub-int v6, v3, p2

    int-to-float v6, v6

    div-float/2addr v6, v5

    float-to-int v6, v6

    add-int/2addr v6, p2

    invoke-virtual {p1, v6, v0}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v6

    invoke-virtual {v2, v3, v0, v6}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 1430
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1429
    :cond_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    .line 1432
    :cond_5
    sub-int v0, p4, v4

    add-int/2addr v0, p3

    move v3, v0

    :goto_5
    if-ge v3, p4, :cond_7

    move v0, v1

    .line 1433
    :goto_6
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-ge v0, v5, :cond_6

    .line 1434
    sub-int v5, v3, p4

    add-int/2addr v5, v4

    invoke-virtual {p1, v5, v0}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v5

    invoke-virtual {v2, v3, v0, v5}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 1433
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1432
    :cond_6
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_5

    :cond_7
    move-object v0, v2

    :goto_7
    move-object p1, v0

    .line 1449
    goto/16 :goto_0

    .line 1436
    :cond_8
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 1437
    sub-int v0, p4, v4

    add-int/2addr v0, p3

    sub-int/2addr v0, p2

    int-to-float v0, v0

    sub-int v2, p3, p2

    int-to-float v2, v2

    div-float v5, v0, v2

    .line 1438
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p4, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    move v0, v1

    .line 1439
    :goto_8
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ge v0, v3, :cond_a

    move v3, v1

    .line 1440
    :goto_9
    if-ge v3, p2, :cond_9

    .line 1441
    invoke-virtual {p1, v0, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v6

    invoke-virtual {v2, v0, v3, v6}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 1440
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 1439
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_a
    move v0, v1

    .line 1442
    :goto_a
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ge v0, v3, :cond_d

    move v3, p2

    .line 1443
    :goto_b
    sub-int v6, p4, v4

    add-int/2addr v6, p3

    if-ge v3, v6, :cond_b

    .line 1444
    sub-int v6, v3, p2

    int-to-float v6, v6

    div-float/2addr v6, v5

    float-to-int v6, v6

    add-int/2addr v6, p2

    invoke-virtual {p1, v0, v6}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v6

    invoke-virtual {v2, v0, v3, v6}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 1443
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 1442
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 1445
    :cond_c
    add-int/lit8 v1, v1, 0x1

    :cond_d
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ge v1, v0, :cond_e

    .line 1446
    sub-int v0, p4, v4

    add-int/2addr v0, p3

    :goto_c
    if-ge v0, p4, :cond_c

    .line 1447
    sub-int v3, v0, p4

    add-int/2addr v3, v4

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v3

    invoke-virtual {v2, v1, v0, v3}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 1446
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_e
    move-object v0, v2

    goto :goto_7
.end method

.method private a(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Bitmap;Landroid/graphics/Rect;II)Landroid/graphics/Bitmap;
    .locals 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1201
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 1261
    :cond_0
    :goto_0
    return-object p1

    .line 1205
    :cond_1
    move-object/from16 v0, p2

    iget v1, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p2

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    .line 1206
    move-object/from16 v0, p2

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    .line 1207
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[realAddButtonsToBitmap] bgWidth="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bgHeight="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lavj;->b(Ljava/lang/String;)V

    .line 1208
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 1209
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 1210
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[realAddButtonsToBitmap] btWidth="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " btHeight="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lavj;->b(Ljava/lang/String;)V

    .line 1212
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1213
    packed-switch p6, :pswitch_data_0

    .line 1224
    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v8

    div-int/lit8 v1, v1, 0x2

    add-int v7, v3, v1

    .line 1226
    :goto_1
    packed-switch p5, :pswitch_data_1

    .line 1237
    move-object/from16 v0, p2

    iget v1, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v9

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 1239
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[realAddButtonsToBitmap] horizonStartLine = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " verticalStartLine = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lavj;->b(Ljava/lang/String;)V

    .line 1240
    if-ltz v7, :cond_0

    if-ltz v1, :cond_0

    move v6, v7

    .line 1245
    :goto_3
    add-int v2, v8, v7

    if-ge v6, v2, :cond_4

    move v5, v1

    .line 1246
    :goto_4
    add-int v2, v9, v1

    if-ge v5, v2, :cond_3

    .line 1247
    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v5}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v10

    .line 1248
    sub-int v2, v6, v7

    sub-int v3, v5, v1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v11

    .line 1249
    invoke-static {v11}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    .line 1250
    invoke-static {v10}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    if-le v3, v2, :cond_2

    move v2, v3

    .line 1251
    :goto_5
    and-int/lit16 v12, v11, 0xff

    mul-int/2addr v12, v3

    and-int/lit16 v13, v10, 0xff

    rsub-int v14, v3, 0xff

    mul-int/2addr v13, v14

    add-int/2addr v12, v13

    int-to-float v12, v12

    const/high16 v13, 0x437f

    div-float/2addr v12, v13

    float-to-int v12, v12

    .line 1252
    ushr-int/lit8 v13, v11, 0x8

    and-int/lit16 v13, v13, 0xff

    mul-int/2addr v13, v3

    ushr-int/lit8 v14, v10, 0x8

    and-int/lit16 v14, v14, 0xff

    rsub-int v15, v3, 0xff

    mul-int/2addr v14, v15

    add-int/2addr v13, v14

    int-to-float v13, v13

    const/high16 v14, 0x437f

    div-float/2addr v13, v14

    float-to-int v13, v13

    .line 1253
    ushr-int/lit8 v11, v11, 0x10

    and-int/lit16 v11, v11, 0xff

    mul-int/2addr v11, v3

    ushr-int/lit8 v10, v10, 0x10

    and-int/lit16 v10, v10, 0xff

    rsub-int v3, v3, 0xff

    mul-int/2addr v3, v10

    add-int/2addr v3, v11

    int-to-float v3, v3

    const/high16 v10, 0x437f

    div-float/2addr v3, v10

    float-to-int v3, v3

    .line 1254
    shl-int/lit8 v2, v2, 0x18

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    shl-int/lit8 v3, v13, 0x8

    or-int/2addr v2, v3

    or-int/2addr v2, v12

    .line 1255
    invoke-virtual {v4, v6, v5, v2}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 1246
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_4

    .line 1215
    :pswitch_0
    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v8

    div-int/lit8 v1, v1, 0x2

    add-int v7, v3, v1

    .line 1216
    goto/16 :goto_1

    .line 1218
    :pswitch_1
    move-object/from16 v0, p2

    iget v1, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p4

    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int v7, v1, v3

    .line 1219
    goto/16 :goto_1

    .line 1221
    :pswitch_2
    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v3

    sub-int/2addr v1, v8

    move-object/from16 v0, p4

    iget v3, v0, Landroid/graphics/Rect;->right:I

    sub-int v7, v1, v3

    .line 1222
    goto/16 :goto_1

    .line 1228
    :pswitch_3
    move-object/from16 v0, p2

    iget v1, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v9

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 1229
    goto/16 :goto_2

    .line 1231
    :pswitch_4
    move-object/from16 v0, p2

    iget v1, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p4

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    .line 1232
    goto/16 :goto_2

    .line 1234
    :pswitch_5
    move-object/from16 v0, p2

    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    sub-int/2addr v1, v9

    move-object/from16 v0, p4

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    .line 1235
    goto/16 :goto_2

    .line 1250
    :cond_2
    invoke-static {v10}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    goto/16 :goto_5

    .line 1245
    :cond_3
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto/16 :goto_3

    .line 1260
    :cond_4
    const-string v1, "[realAddButtonsToBitmap] after add buttons"

    invoke-static {v1}, Lavj;->b(Ljava/lang/String;)V

    move-object/from16 p1, v4

    .line 1261
    goto/16 :goto_0

    .line 1213
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1226
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private a(Landroid/graphics/Bitmap;Ljava/util/ArrayList;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1131
    if-nez p1, :cond_1

    .line 1196
    :cond_0
    :goto_0
    return-object p1

    .line 1132
    :cond_1
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 1134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[addButtonsToBitmap] bm width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lavj;->b(Ljava/lang/String;)V

    .line 1135
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1136
    const/4 v0, 0x0

    move v7, v0

    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_6

    .line 1137
    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lavl;

    .line 1138
    if-nez v0, :cond_3

    .line 1136
    :cond_2
    :goto_2
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1

    .line 1139
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laox;->z:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/res/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lavl;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1140
    if-eqz v3, :cond_2

    .line 1141
    iget-object v0, v0, Lavl;->b:Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1142
    array-length v2, v0

    const/16 v4, 0xa

    if-ne v2, v4, :cond_2

    .line 1144
    new-instance v4, Landroid/graphics/Rect;

    const/4 v2, 0x2

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v5, 0x0

    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x3

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v8, 0x1

    aget-object v8, v0, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-direct {v4, v2, v5, v6, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[addButtonsToBitmap] paddings = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lavj;->b(Ljava/lang/String;)V

    .line 1148
    new-instance v2, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v2, v5, v6, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1149
    const/16 v2, 0x9

    aget-object v2, v0, v2

    const-string v5, "0"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1151
    const/16 v2, 0x8

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1180
    new-instance v2, Landroid/graphics/Rect;

    iget v5, p3, Landroid/graphics/Rect;->left:I

    iget v6, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    iget v9, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    iget v10, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v10

    invoke-direct {v2, v5, v6, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1182
    :goto_3
    const/4 v5, 0x4

    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x5

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {p0, v5, v6}, Lavj;->a(II)I

    move-result v5

    const/4 v6, 0x6

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v8, 0x7

    aget-object v0, v0, v8

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v6, v0}, Lavj;->a(II)I

    move-result v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lavj;->a(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Bitmap;Landroid/graphics/Rect;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1193
    :cond_4
    :goto_4
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_2

    .line 1153
    :pswitch_0
    new-instance v2, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v8, p3, Landroid/graphics/Rect;->left:I

    iget v9, p3, Landroid/graphics/Rect;->top:I

    invoke-direct {v2, v5, v6, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_3

    .line 1156
    :pswitch_1
    new-instance v2, Landroid/graphics/Rect;

    iget v5, p3, Landroid/graphics/Rect;->left:I

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    iget v9, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    iget v9, p3, Landroid/graphics/Rect;->top:I

    invoke-direct {v2, v5, v6, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_3

    .line 1159
    :pswitch_2
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iget v6, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    iget v9, p3, Landroid/graphics/Rect;->top:I

    invoke-direct {v2, v5, v6, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_3

    .line 1162
    :pswitch_3
    new-instance v2, Landroid/graphics/Rect;

    const/4 v5, 0x0

    iget v6, p3, Landroid/graphics/Rect;->top:I

    iget v8, p3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    iget v10, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v10

    invoke-direct {v2, v5, v6, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_3

    .line 1165
    :pswitch_4
    new-instance v2, Landroid/graphics/Rect;

    iget v5, p3, Landroid/graphics/Rect;->left:I

    iget v6, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    iget v9, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    iget v10, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v10

    invoke-direct {v2, v5, v6, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/16 :goto_3

    .line 1168
    :pswitch_5
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iget v6, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    iget v6, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    iget v10, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v10

    invoke-direct {v2, v5, v6, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/16 :goto_3

    .line 1171
    :pswitch_6
    new-instance v2, Landroid/graphics/Rect;

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    iget v8, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v8

    iget v8, p3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-direct {v2, v5, v6, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/16 :goto_3

    .line 1174
    :pswitch_7
    new-instance v2, Landroid/graphics/Rect;

    iget v5, p3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    iget v8, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v8

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    iget v9, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-direct {v2, v5, v6, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/16 :goto_3

    .line 1177
    :pswitch_8
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iget v6, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    iget v8, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v8

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-direct {v2, v5, v6, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/16 :goto_3

    .line 1187
    :cond_5
    const/16 v2, 0x9

    aget-object v2, v0, v2

    const-string v4, "1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1189
    const/16 v2, 0x9

    aget-object v0, v0, v2

    const-string v2, "2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_4

    :cond_6
    move-object p1, v1

    .line 1196
    goto/16 :goto_0

    .line 1151
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private a(Lavn;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v11, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 679
    const-string v0, "[cutAlphaRegion] enter"

    invoke-static {v0}, Lavj;->b(Ljava/lang/String;)V

    .line 680
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[cutAlphaRegion] bitmap width="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lavn;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " height="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lavn;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lavj;->b(Ljava/lang/String;)V

    .line 681
    iget-object v0, p1, Lavn;->a:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 803
    :goto_0
    return-object v6

    .line 689
    :cond_0
    iget-object v0, p1, Lavn;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    new-array v7, v0, [Z

    .line 691
    iget-object v0, p1, Lavn;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    new-array v8, v0, [Z

    move v0, v1

    .line 693
    :goto_1
    iget-object v2, p1, Lavn;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ge v0, v2, :cond_2

    move v2, v1

    .line 695
    :goto_2
    iget-object v4, p1, Lavn;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-ge v2, v4, :cond_1c

    .line 696
    iget-object v4, p1, Lavn;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v0, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v4

    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    if-eqz v4, :cond_1

    move v2, v1

    .line 701
    :goto_3
    aput-boolean v2, v7, v0

    .line 693
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 695
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    move v0, v1

    .line 703
    :goto_4
    iget-object v2, p1, Lavn;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-ge v0, v2, :cond_4

    move v2, v1

    .line 705
    :goto_5
    iget-object v4, p1, Lavn;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-ge v2, v4, :cond_1b

    .line 706
    iget-object v4, p1, Lavn;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v2, v0}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v4

    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    if-eqz v4, :cond_3

    move v2, v1

    .line 711
    :goto_6
    aput-boolean v2, v8, v0

    .line 703
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 705
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 713
    :cond_4
    aget-boolean v0, v7, v1

    if-nez v0, :cond_5

    array-length v0, v7

    add-int/lit8 v0, v0, -0x1

    aget-boolean v0, v7, v0

    if-nez v0, :cond_5

    aget-boolean v0, v8, v1

    if-nez v0, :cond_5

    array-length v0, v8

    add-int/lit8 v0, v0, -0x1

    aget-boolean v0, v8, v0

    if-nez v0, :cond_5

    .line 714
    iget-object v6, p1, Lavn;->a:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 716
    :cond_5
    const-string v0, "[cutAlphaRegion] need to cut "

    invoke-static {v0}, Lavj;->b(Ljava/lang/String;)V

    move v0, v1

    .line 718
    :goto_7
    array-length v2, v7

    if-ge v0, v2, :cond_6

    .line 719
    aget-boolean v2, v7, v0

    if-nez v2, :cond_a

    :cond_6
    move v2, v1

    .line 723
    :goto_8
    array-length v4, v7

    if-ge v2, v4, :cond_7

    .line 724
    array-length v4, v7

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, -0x1

    aget-boolean v4, v7, v4

    if-nez v4, :cond_b

    :cond_7
    move v4, v1

    .line 728
    :goto_9
    array-length v5, v8

    if-ge v4, v5, :cond_8

    .line 729
    aget-boolean v5, v8, v4

    if-nez v5, :cond_c

    :cond_8
    move v5, v1

    .line 733
    :goto_a
    array-length v9, v8

    if-ge v5, v9, :cond_9

    .line 734
    array-length v9, v8

    sub-int/2addr v9, v5

    add-int/lit8 v9, v9, -0x1

    aget-boolean v9, v8, v9

    if-nez v9, :cond_d

    .line 738
    :cond_9
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[cutAlphaRegion] left="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " right="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " top="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " bottom="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lavj;->b(Ljava/lang/String;)V

    .line 744
    array-length v9, v7

    if-ne v9, v0, :cond_e

    .line 745
    iget-object v6, p1, Lavn;->a:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 718
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 723
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 728
    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 733
    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    .line 746
    :cond_e
    array-length v9, v7

    sub-int/2addr v9, v2

    sub-int/2addr v9, v0

    if-lez v9, :cond_f

    array-length v9, v8

    sub-int/2addr v9, v5

    sub-int/2addr v9, v4

    if-lez v9, :cond_f

    .line 748
    iget-object v6, p1, Lavn;->a:Landroid/graphics/Bitmap;

    array-length v7, v7

    sub-int/2addr v7, v2

    sub-int/2addr v7, v0

    array-length v8, v8

    sub-int/2addr v8, v5

    sub-int/2addr v8, v4

    invoke-static {v6, v0, v4, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 751
    :cond_f
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[cutAlphaRegion] after cut  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "X"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lavj;->a(Ljava/lang/String;)V

    .line 752
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[cutAlphaRegion] cut rect = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lavj;->a(Ljava/lang/String;)V

    .line 754
    iget-object v7, p1, Lavn;->a:[I

    if-eqz v7, :cond_10

    .line 755
    iget-object v7, p1, Lavn;->a:[I

    aget v8, v7, v3

    sub-int/2addr v8, v0

    aput v8, v7, v3

    .line 756
    iget-object v7, p1, Lavn;->a:[I

    aget v8, v7, v11

    sub-int/2addr v8, v2

    aput v8, v7, v11

    .line 758
    :cond_10
    iget-object v7, p1, Lavn;->b:[I

    if-eqz v7, :cond_11

    .line 759
    iget-object v7, p1, Lavn;->b:[I

    aget v8, v7, v3

    sub-int/2addr v8, v4

    aput v8, v7, v3

    .line 760
    iget-object v3, p1, Lavn;->b:[I

    aget v7, v3, v11

    sub-int/2addr v7, v5

    aput v7, v3, v11

    .line 762
    :cond_11
    iget-object v3, p1, Lavn;->a:Landroid/graphics/Rect;

    if-eqz v3, :cond_15

    .line 763
    iget-object v3, p1, Lavn;->a:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v0

    iput v7, v3, Landroid/graphics/Rect;->left:I

    .line 764
    iget-object v3, p1, Lavn;->a:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v4

    iput v7, v3, Landroid/graphics/Rect;->top:I

    .line 765
    iget-object v3, p1, Lavn;->a:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v2

    iput v7, v3, Landroid/graphics/Rect;->right:I

    .line 766
    iget-object v3, p1, Lavn;->a:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-gez v3, :cond_12

    .line 767
    iget-object v3, p1, Lavn;->a:Landroid/graphics/Rect;

    iput v1, v3, Landroid/graphics/Rect;->left:I

    .line 768
    :cond_12
    iget-object v3, p1, Lavn;->a:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-gez v3, :cond_13

    .line 769
    iget-object v3, p1, Lavn;->a:Landroid/graphics/Rect;

    iput v1, v3, Landroid/graphics/Rect;->top:I

    .line 770
    :cond_13
    iget-object v3, p1, Lavn;->a:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-gez v3, :cond_14

    .line 771
    iget-object v3, p1, Lavn;->a:Landroid/graphics/Rect;

    iput v1, v3, Landroid/graphics/Rect;->right:I

    .line 772
    :cond_14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[cutAlphaRegion] pinyin_margin = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, p1, Lavn;->a:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, p1, Lavn;->a:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, p1, Lavn;->a:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, p1, Lavn;->a:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lavj;->b(Ljava/lang/String;)V

    .line 775
    :cond_15
    iget-object v3, p1, Lavn;->b:Landroid/graphics/Rect;

    if-eqz v3, :cond_19

    .line 776
    iget-object v3, p1, Lavn;->b:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v0

    iput v7, v3, Landroid/graphics/Rect;->left:I

    .line 777
    iget-object v3, p1, Lavn;->b:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v2

    iput v7, v3, Landroid/graphics/Rect;->right:I

    .line 778
    iget-object v3, p1, Lavn;->b:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v5

    iput v7, v3, Landroid/graphics/Rect;->bottom:I

    .line 779
    iget-object v3, p1, Lavn;->b:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-gez v3, :cond_16

    .line 780
    iget-object v3, p1, Lavn;->b:Landroid/graphics/Rect;

    iput v1, v3, Landroid/graphics/Rect;->left:I

    .line 781
    :cond_16
    iget-object v3, p1, Lavn;->b:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-gez v3, :cond_17

    .line 782
    iget-object v3, p1, Lavn;->b:Landroid/graphics/Rect;

    iput v1, v3, Landroid/graphics/Rect;->bottom:I

    .line 783
    :cond_17
    iget-object v3, p1, Lavn;->b:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-gez v3, :cond_18

    .line 784
    iget-object v3, p1, Lavn;->b:Landroid/graphics/Rect;

    iput v1, v3, Landroid/graphics/Rect;->right:I

    .line 785
    :cond_18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[cutAlphaRegion] zhongwen_margin = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Lavn;->b:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Lavn;->b:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Lavn;->b:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Lavn;->b:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lavj;->b(Ljava/lang/String;)V

    .line 789
    :cond_19
    if-eqz p2, :cond_1a

    .line 790
    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 791
    iput v2, p2, Landroid/graphics/Rect;->right:I

    .line 792
    iput v4, p2, Landroid/graphics/Rect;->top:I

    .line 793
    iput v5, p2, Landroid/graphics/Rect;->bottom:I

    .line 796
    :cond_1a
    iput v0, p1, Lavn;->f:I

    .line 797
    iput v2, p1, Lavn;->g:I

    .line 798
    iput v4, p1, Lavn;->h:I

    .line 799
    iput v5, p1, Lavn;->i:I

    goto/16 :goto_0

    :cond_1b
    move v2, v3

    goto/16 :goto_6

    :cond_1c
    move v2, v3

    goto/16 :goto_3
.end method

.method private a(Lavn;F)Landroid/graphics/Rect;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 808
    iget-object v0, p1, Lavn;->a:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 809
    const/4 v0, 0x0

    .line 894
    :goto_0
    return-object v0

    .line 810
    :cond_0
    iget-object v0, p1, Lavn;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 811
    iget-object v0, p1, Lavn;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 812
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 813
    iget-object v0, p1, Lavn;->a:[I

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 830
    iget-object v0, p1, Lavn;->a:[I

    aget v0, v0, v6

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, v2, Landroid/graphics/Rect;->left:I

    .line 831
    iget-object v0, p1, Lavn;->a:[I

    aget v0, v0, v7

    sub-int v0, v3, v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, v2, Landroid/graphics/Rect;->right:I

    .line 834
    :goto_1
    iget-object v0, p1, Lavn;->b:[I

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 866
    iget-object v0, p1, Lavn;->b:[I

    aget v0, v0, v6

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, v2, Landroid/graphics/Rect;->top:I

    .line 867
    iget-object v0, p1, Lavn;->b:[I

    aget v0, v0, v7

    sub-int v0, v4, v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    .line 869
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[calculateNinePatchRect] top = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lavj;->b(Ljava/lang/String;)V

    .line 870
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[calculateNinePatchRect] bottom = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lavj;->b(Ljava/lang/String;)V

    .line 871
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[calculateNinePatchRect] left = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lavj;->b(Ljava/lang/String;)V

    .line 872
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[calculateNinePatchRect] right = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lavj;->b(Ljava/lang/String;)V

    .line 873
    iget v0, v2, Landroid/graphics/Rect;->left:I

    if-gez v0, :cond_6

    move v0, v1

    :goto_3
    iput v0, v2, Landroid/graphics/Rect;->left:I

    .line 874
    iget v0, v2, Landroid/graphics/Rect;->top:I

    if-gez v0, :cond_7

    move v0, v1

    :goto_4
    iput v0, v2, Landroid/graphics/Rect;->top:I

    .line 875
    iget v0, v2, Landroid/graphics/Rect;->right:I

    if-gtz v0, :cond_8

    int-to-float v0, v3

    mul-float/2addr v0, p2

    :goto_5
    float-to-int v0, v0

    iput v0, v2, Landroid/graphics/Rect;->right:I

    .line 876
    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    if-gtz v0, :cond_9

    int-to-float v0, v4

    mul-float/2addr v0, p2

    :goto_6
    float-to-int v0, v0

    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    .line 879
    iget v0, v2, Landroid/graphics/Rect;->left:I

    iget v3, v2, Landroid/graphics/Rect;->right:I

    if-le v0, v3, :cond_1

    .line 880
    iget v0, v2, Landroid/graphics/Rect;->right:I

    .line 881
    iget v3, v2, Landroid/graphics/Rect;->left:I

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 882
    iput v0, v2, Landroid/graphics/Rect;->left:I

    .line 884
    :cond_1
    iget v0, v2, Landroid/graphics/Rect;->top:I

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    if-le v0, v3, :cond_2

    .line 885
    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    .line 886
    iget v3, v2, Landroid/graphics/Rect;->top:I

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 887
    iput v0, v2, Landroid/graphics/Rect;->top:I

    .line 890
    :cond_2
    iget v0, v2, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget-object v3, p1, Lavn;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p2

    cmpl-float v0, v0, v3

    if-lez v0, :cond_a

    move v0, v1

    :goto_7
    iput v0, v2, Landroid/graphics/Rect;->left:I

    .line 891
    iget v0, v2, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget-object v3, p1, Lavn;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p2

    cmpl-float v0, v0, v3

    if-lez v0, :cond_b

    iget-object v0, p1, Lavn;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    :goto_8
    iput v0, v2, Landroid/graphics/Rect;->right:I

    .line 892
    iget v0, v2, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget-object v3, p1, Lavn;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p2

    cmpl-float v0, v0, v3

    if-lez v0, :cond_c

    :goto_9
    iput v1, v2, Landroid/graphics/Rect;->top:I

    .line 893
    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iget-object v1, p1, Lavn;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_d

    iget-object v0, p1, Lavn;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    :goto_a
    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    move-object v0, v2

    .line 894
    goto/16 :goto_0

    .line 816
    :pswitch_0
    iget-object v0, p1, Lavn;->a:[I

    aget v0, v0, v6

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, v2, Landroid/graphics/Rect;->left:I

    .line 817
    iget-object v0, p1, Lavn;->a:[I

    aget v0, v0, v7

    sub-int v0, v3, v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, v2, Landroid/graphics/Rect;->right:I

    goto/16 :goto_1

    .line 820
    :pswitch_1
    iget-object v0, p1, Lavn;->a:[I

    aget v0, v0, v6

    iget-object v5, p1, Lavn;->a:[I

    aget v5, v5, v7

    if-ne v0, v5, :cond_3

    .line 821
    iput v1, v2, Landroid/graphics/Rect;->left:I

    .line 822
    int-to-float v0, v3

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, v2, Landroid/graphics/Rect;->right:I

    goto/16 :goto_1

    .line 824
    :cond_3
    iget-object v0, p1, Lavn;->a:[I

    aget v0, v0, v6

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, v2, Landroid/graphics/Rect;->left:I

    .line 825
    iget-object v0, p1, Lavn;->a:[I

    aget v0, v0, v7

    sub-int v0, v3, v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, v2, Landroid/graphics/Rect;->right:I

    goto/16 :goto_1

    .line 837
    :pswitch_2
    iget-object v0, p1, Lavn;->b:[I

    aget v0, v0, v6

    if-lt v0, v4, :cond_4

    .line 838
    iput v1, v2, Landroid/graphics/Rect;->top:I

    .line 841
    :goto_b
    iget-object v0, p1, Lavn;->b:[I

    aget v0, v0, v7

    if-lt v0, v4, :cond_5

    .line 842
    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    .line 840
    :cond_4
    iget-object v0, p1, Lavn;->b:[I

    aget v0, v0, v6

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, v2, Landroid/graphics/Rect;->top:I

    goto :goto_b

    .line 844
    :cond_5
    iget-object v0, p1, Lavn;->b:[I

    aget v0, v0, v7

    sub-int v0, v4, v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    .line 847
    :pswitch_3
    iput v1, v2, Landroid/graphics/Rect;->top:I

    .line 848
    int-to-float v0, v4

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    .line 873
    :cond_6
    iget v0, v2, Landroid/graphics/Rect;->left:I

    goto/16 :goto_3

    .line 874
    :cond_7
    iget v0, v2, Landroid/graphics/Rect;->top:I

    goto/16 :goto_4

    .line 875
    :cond_8
    iget v0, v2, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    goto/16 :goto_5

    .line 876
    :cond_9
    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    goto/16 :goto_6

    .line 890
    :cond_a
    iget v0, v2, Landroid/graphics/Rect;->left:I

    goto/16 :goto_7

    .line 891
    :cond_b
    iget v0, v2, Landroid/graphics/Rect;->right:I

    goto/16 :goto_8

    .line 892
    :cond_c
    iget v1, v2, Landroid/graphics/Rect;->top:I

    goto/16 :goto_9

    .line 893
    :cond_d
    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_a

    .line 813
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 834
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;)Lavj;
    .locals 1
    .parameter

    .prologue
    .line 242
    sget-object v0, Lavj;->a:Lavj;

    if-nez v0, :cond_0

    .line 243
    new-instance v0, Lavj;

    invoke-direct {v0, p0}, Lavj;-><init>(Landroid/content/Context;)V

    sput-object v0, Lavj;->a:Lavj;

    .line 245
    :cond_0
    sget-object v0, Lavj;->a:Lavj;

    return-object v0
.end method

.method private a(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 11
    .parameter

    .prologue
    const/16 v10, 0x8

    const/4 v0, 0x0

    const/high16 v6, -0x8000

    .line 1889
    const-string v4, "C8E0E8"

    .line 1890
    if-nez p1, :cond_0

    .line 1926
    :goto_0
    return-object v4

    .line 1893
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 1894
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 1895
    new-instance v7, Landroid/util/SparseIntArray;

    invoke-direct {v7}, Landroid/util/SparseIntArray;-><init>()V

    move v2, v0

    .line 1897
    :goto_1
    if-ge v2, v3, :cond_3

    move v1, v0

    .line 1898
    :goto_2
    if-ge v1, v5, :cond_2

    .line 1900
    invoke-virtual {p1, v2, v1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v8

    const v9, 0xffffff

    and-int/2addr v8, v9

    .line 1901
    invoke-virtual {v7, v8, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v9

    if-ne v9, v6, :cond_1

    .line 1902
    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1898
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1904
    :cond_1
    invoke-virtual {v7, v8}, Landroid/util/SparseIntArray;->get(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v7, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_3

    .line 1897
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 1909
    :cond_3
    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v8

    move v5, v0

    move v1, v6

    move v3, v0

    .line 1911
    :goto_4
    if-ge v5, v8, :cond_4

    .line 1912
    invoke-virtual {v7, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    .line 1914
    invoke-virtual {v7, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    .line 1915
    if-le v2, v3, :cond_7

    move v1, v2

    .line 1911
    :goto_5
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move v3, v1

    move v1, v0

    goto :goto_4

    .line 1920
    :cond_4
    if-eq v1, v6, :cond_6

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 1921
    :goto_6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v10, :cond_5

    .line 1922
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1924
    :cond_5
    invoke-virtual {v7}, Landroid/util/SparseIntArray;->clear()V

    .line 1925
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get color from cand area  size === "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",,, color value ==== "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lavj;->b(Ljava/lang/String;)V

    move-object v4, v0

    .line 1926
    goto/16 :goto_0

    :cond_6
    move-object v0, v4

    goto :goto_6

    :cond_7
    move v0, v1

    move v1, v3

    goto :goto_5
.end method

.method private a(Layx;)V
    .locals 13
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 2340
    const-string v0, "Phone"

    const-string v2, "fraction"

    invoke-virtual {p1, v0, v2}, Layx;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2341
    if-nez v0, :cond_1

    .line 2390
    :cond_0
    return-void

    .line 2343
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 2344
    const-string v0, "Phone"

    const-string v2, "customkey_cnt"

    invoke-virtual {p1, v0, v2}, Layx;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2345
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    .line 2348
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    move v8, v1

    .line 2349
    :goto_0
    if-ge v8, v10, :cond_0

    .line 2350
    const-string v0, "Phone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "customkey"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Layx;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2351
    if-eqz v11, :cond_2

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2349
    :cond_2
    :goto_1
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    .line 2353
    :cond_3
    const-string v0, "Phone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "customkey"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_pic"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Layx;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2354
    if-eqz v12, :cond_2

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[loadPhoneCustomKeys] customkey"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_name = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " customkey"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_pic = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lavj;->b(Ljava/lang/String;)V

    .line 2358
    sget-boolean v0, Laox;->a:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lavj;->a:I

    const/16 v2, 0x2d0

    if-ge v0, v2, :cond_6

    const/16 v0, 0x140

    move v7, v0

    .line 2359
    :goto_2
    if-ge v7, v9, :cond_4

    .line 2360
    int-to-float v0, v7

    int-to-float v2, v9

    div-float/2addr v0, v2

    .line 2361
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 2362
    invoke-virtual {v5, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 2363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laox;->z:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/res/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2364
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2365
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laox;->z:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/res/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lavj;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    .line 2367
    :cond_4
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laox;->z:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/res/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2368
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 2369
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laox;->z:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/res/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2370
    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 2372
    const-string v0, "Phone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "customkey"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_rect"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Layx;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2373
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2375
    if-ge v7, v9, :cond_5

    .line 2376
    int-to-float v2, v7

    int-to-float v3, v9

    div-float/2addr v2, v3

    .line 2377
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2378
    array-length v3, v0

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 2380
    aget-object v3, v0, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v3, v3

    .line 2381
    aget-object v4, v0, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v2

    float-to-int v4, v4

    .line 2382
    const/4 v5, 0x2

    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    float-to-int v5, v5

    .line 2383
    const/4 v7, 0x3

    aget-object v0, v0, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 2384
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2385
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[loadPhoneCustonKeys] key_rect = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lavj;->b(Ljava/lang/String;)V

    .line 2387
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laox;->z:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/layout/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "images.ini"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3, v0}, Lavj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 2358
    :cond_6
    const/16 v0, 0x1e0

    move v7, v0

    goto/16 :goto_2

    :cond_7
    iget v0, p0, Lavj;->a:I

    move v7, v0

    goto/16 :goto_2
.end method

.method private a(Layx;Ljava/lang/String;Lavn;)V
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1265
    const-string v0, "[loadThemeButtonResources] enter"

    invoke-static {v0}, Lavj;->b(Ljava/lang/String;)V

    .line 1266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[loadThemeButtonResources] section = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lavj;->b(Ljava/lang/String;)V

    .line 1267
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1410
    :cond_0
    :goto_0
    return-void

    .line 1268
    :cond_1
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1272
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1274
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lavj;->a:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 1275
    sget-object v1, Lavj;->a:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, p2, v1}, Layx;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1276
    if-eqz v1, :cond_2

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1274
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1277
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lavj;->a:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_display"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Layx;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1278
    if-eqz v2, :cond_2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1279
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lavj;->a:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_align"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Layx;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1280
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[loadThemeButtonResources] system pic = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " align = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lavj;->b(Ljava/lang/String;)V

    .line 1282
    new-instance v3, Lavl;

    invoke-direct {v3, p0, v1, v2}, Lavl;-><init>(Lavj;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1286
    :cond_4
    const-string v0, "custom_cnt"

    invoke-virtual {p1, p2, v0}, Layx;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1287
    if-eqz v1, :cond_7

    const-string v0, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1288
    const/4 v0, 0x0

    :goto_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v0, v2, :cond_7

    .line 1289
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "custom"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Layx;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1290
    if-nez v2, :cond_6

    .line 1288
    :cond_5
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1291
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "custom"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_display"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, p2, v3}, Layx;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1292
    if-eqz v3, :cond_5

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1293
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "custom"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_align"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, p2, v3}, Layx;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1294
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[loadThemeButtonResources] custom pic = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " align = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lavj;->b(Ljava/lang/String;)V

    .line 1296
    new-instance v4, Lavl;

    invoke-direct {v4, p0, v2, v3}, Lavl;-><init>(Lavj;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1300
    :cond_7
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1304
    new-instance v8, Landroid/graphics/Rect;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v8, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1306
    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v0, 0x0

    iget-object v2, p3, Lavn;->b:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p3, Lavn;->b:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    aput v2, v1, v0

    const/4 v0, 0x1

    iget-object v2, p3, Lavn;->a:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p3, Lavn;->a:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iget-object v3, p3, Lavn;->b:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iget-object v3, p3, Lavn;->b:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iget v3, p3, Lavn;->a:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    aput v2, v1, v0

    .line 1311
    invoke-direct {p0, v7, v8, v1}, Lavj;->a(Ljava/util/ArrayList;Landroid/graphics/Rect;[I)V

    .line 1312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[loadThemeButtonResources] border left="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v8, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " right = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v8, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " top = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v8, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bottom = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v8, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lavj;->b(Ljava/lang/String;)V

    .line 1313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[loadThemeButtonResources] window width = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x0

    aget v2, v1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " height = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x1

    aget v2, v1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lavj;->b(Ljava/lang/String;)V

    .line 1315
    iget-object v0, p3, Lavn;->b:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 1316
    iget-object v0, p3, Lavn;->b:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 1317
    iget-object v0, p3, Lavn;->b:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v3, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 1318
    iget-object v0, p3, Lavn;->b:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v3, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 1319
    iget-object v0, p3, Lavn;->a:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 1320
    iget-object v0, p3, Lavn;->a:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 1321
    iget-object v0, p3, Lavn;->a:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v3, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 1322
    iget-object v0, p3, Lavn;->a:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v3, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 1324
    iget v0, p0, Lavj;->a:F

    const/4 v2, 0x1

    aget v2, v1, v2

    invoke-direct {p0, p3, v0, v2}, Lavj;->a(Lavn;FI)F

    move-result v2

    .line 1326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[loadThemeButtonResources] window width adjust to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lavj;->a:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lavj;->b(Ljava/lang/String;)V

    .line 1327
    const/4 v0, 0x0

    aget v4, v1, v0

    .line 1328
    const/4 v0, 0x1

    aget v9, v1, v0

    .line 1329
    const/4 v0, 0x0

    aget v0, v1, v0

    .line 1330
    const/4 v3, 0x1

    aget v10, v1, v3

    .line 1331
    iget v1, p0, Lavj;->a:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    float-to-int v1, v1

    if-ge v4, v1, :cond_8

    .line 1332
    iget v1, p0, Lavj;->a:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    float-to-int v4, v1

    .line 1334
    :cond_8
    iget v1, p0, Lavj;->b:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    float-to-int v1, v1

    if-ge v0, v1, :cond_d

    .line 1335
    iget v0, p0, Lavj;->b:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    float-to-int v0, v0

    move v6, v0

    .line 1337
    :goto_5
    const/high16 v0, 0x3f80

    invoke-direct {p0, p3, v0}, Lavj;->a(Lavn;F)Landroid/graphics/Rect;

    move-result-object v11

    .line 1338
    if-eqz v11, :cond_0

    .line 1340
    iget-object v0, p3, Lavn;->a:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p3, Lavn;->b:Landroid/graphics/Bitmap;

    .line 1343
    const-string v0, "[loadThemeButtonResources] scale candidate_bg.png "

    invoke-static {v0}, Lavj;->b(Ljava/lang/String;)V

    .line 1344
    iget-object v0, p3, Lavn;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ge v0, v4, :cond_9

    .line 1345
    iget-object v0, p3, Lavn;->a:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1356
    iget-object v1, p3, Lavn;->a:Landroid/graphics/Bitmap;

    iget v2, v11, Landroid/graphics/Rect;->left:I

    iget v3, v11, Landroid/graphics/Rect;->right:I

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lavj;->a(Landroid/graphics/Bitmap;IIIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p3, Lavn;->a:Landroid/graphics/Bitmap;

    .line 1359
    :cond_9
    :goto_6
    iget-object v0, p3, Lavn;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ge v0, v9, :cond_a

    .line 1360
    iget-object v0, p3, Lavn;->b:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 1371
    iget-object v1, p3, Lavn;->a:Landroid/graphics/Bitmap;

    iget v2, v11, Landroid/graphics/Rect;->top:I

    iget v3, v11, Landroid/graphics/Rect;->bottom:I

    const/4 v5, 0x0

    move-object v0, p0

    move v4, v9

    invoke-direct/range {v0 .. v5}, Lavj;->a(Landroid/graphics/Bitmap;IIIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p3, Lavn;->a:Landroid/graphics/Bitmap;

    .line 1374
    :cond_a
    :goto_7
    iget-object v0, p3, Lavn;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0, v7, v8}, Lavj;->a(Landroid/graphics/Bitmap;Ljava/util/ArrayList;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p3, Lavn;->a:Landroid/graphics/Bitmap;

    .line 1377
    const-string v0, "[loadThemeButtonResources] scale candidate_bg_land.png "

    invoke-static {v0}, Lavj;->b(Ljava/lang/String;)V

    .line 1378
    iget-object v0, p3, Lavn;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ge v0, v6, :cond_b

    .line 1379
    iget-object v0, p3, Lavn;->a:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2

    .line 1390
    iget-object v1, p3, Lavn;->b:Landroid/graphics/Bitmap;

    iget v2, v11, Landroid/graphics/Rect;->left:I

    iget v3, v11, Landroid/graphics/Rect;->right:I

    const/4 v5, 0x1

    move-object v0, p0

    move v4, v6

    invoke-direct/range {v0 .. v5}, Lavj;->a(Landroid/graphics/Bitmap;IIIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p3, Lavn;->b:Landroid/graphics/Bitmap;

    .line 1393
    :cond_b
    :goto_8
    iget-object v0, p3, Lavn;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ge v0, v10, :cond_c

    .line 1394
    iget-object v0, p3, Lavn;->b:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3

    .line 1405
    iget-object v1, p3, Lavn;->b:Landroid/graphics/Bitmap;

    iget v2, v11, Landroid/graphics/Rect;->top:I

    iget v3, v11, Landroid/graphics/Rect;->bottom:I

    const/4 v5, 0x0

    move-object v0, p0

    move v4, v10

    invoke-direct/range {v0 .. v5}, Lavj;->a(Landroid/graphics/Bitmap;IIIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p3, Lavn;->b:Landroid/graphics/Bitmap;

    .line 1408
    :cond_c
    :goto_9
    iget-object v0, p3, Lavn;->b:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0, v7, v8}, Lavj;->a(Landroid/graphics/Bitmap;Ljava/util/ArrayList;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p3, Lavn;->b:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 1347
    :pswitch_0
    iget-object v1, p3, Lavn;->a:Landroid/graphics/Bitmap;

    iget v2, v11, Landroid/graphics/Rect;->left:I

    iget v3, v11, Landroid/graphics/Rect;->right:I

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lavj;->a(Landroid/graphics/Bitmap;IIIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p3, Lavn;->a:Landroid/graphics/Bitmap;

    goto/16 :goto_6

    .line 1350
    :pswitch_1
    iget-object v1, p3, Lavn;->a:Landroid/graphics/Bitmap;

    iget v2, v11, Landroid/graphics/Rect;->left:I

    iget v3, v11, Landroid/graphics/Rect;->right:I

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lavj;->b(Landroid/graphics/Bitmap;IIIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p3, Lavn;->a:Landroid/graphics/Bitmap;

    goto/16 :goto_6

    .line 1362
    :pswitch_2
    iget-object v1, p3, Lavn;->a:Landroid/graphics/Bitmap;

    iget v2, v11, Landroid/graphics/Rect;->top:I

    iget v3, v11, Landroid/graphics/Rect;->bottom:I

    const/4 v5, 0x0

    move-object v0, p0

    move v4, v9

    invoke-direct/range {v0 .. v5}, Lavj;->a(Landroid/graphics/Bitmap;IIIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p3, Lavn;->a:Landroid/graphics/Bitmap;

    goto/16 :goto_7

    .line 1365
    :pswitch_3
    iget-object v1, p3, Lavn;->a:Landroid/graphics/Bitmap;

    iget v2, v11, Landroid/graphics/Rect;->top:I

    iget v3, v11, Landroid/graphics/Rect;->bottom:I

    const/4 v5, 0x0

    move-object v0, p0

    move v4, v9

    invoke-direct/range {v0 .. v5}, Lavj;->b(Landroid/graphics/Bitmap;IIIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p3, Lavn;->a:Landroid/graphics/Bitmap;

    goto/16 :goto_7

    .line 1381
    :pswitch_4
    iget-object v1, p3, Lavn;->b:Landroid/graphics/Bitmap;

    iget v2, v11, Landroid/graphics/Rect;->left:I

    iget v3, v11, Landroid/graphics/Rect;->right:I

    const/4 v5, 0x1

    move-object v0, p0

    move v4, v6

    invoke-direct/range {v0 .. v5}, Lavj;->a(Landroid/graphics/Bitmap;IIIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p3, Lavn;->b:Landroid/graphics/Bitmap;

    goto :goto_8

    .line 1384
    :pswitch_5
    iget-object v1, p3, Lavn;->b:Landroid/graphics/Bitmap;

    iget v2, v11, Landroid/graphics/Rect;->left:I

    iget v3, v11, Landroid/graphics/Rect;->right:I

    const/4 v5, 0x1

    move-object v0, p0

    move v4, v6

    invoke-direct/range {v0 .. v5}, Lavj;->b(Landroid/graphics/Bitmap;IIIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p3, Lavn;->b:Landroid/graphics/Bitmap;

    goto/16 :goto_8

    .line 1396
    :pswitch_6
    iget-object v1, p3, Lavn;->b:Landroid/graphics/Bitmap;

    iget v2, v11, Landroid/graphics/Rect;->top:I

    iget v3, v11, Landroid/graphics/Rect;->bottom:I

    const/4 v5, 0x0

    move-object v0, p0

    move v4, v10

    invoke-direct/range {v0 .. v5}, Lavj;->a(Landroid/graphics/Bitmap;IIIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p3, Lavn;->b:Landroid/graphics/Bitmap;

    goto :goto_9

    .line 1399
    :pswitch_7
    iget-object v1, p3, Lavn;->b:Landroid/graphics/Bitmap;

    iget v2, v11, Landroid/graphics/Rect;->top:I

    iget v3, v11, Landroid/graphics/Rect;->bottom:I

    const/4 v5, 0x0

    move-object v0, p0

    move v4, v10

    invoke-direct/range {v0 .. v5}, Lavj;->b(Landroid/graphics/Bitmap;IIIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p3, Lavn;->b:Landroid/graphics/Bitmap;

    goto/16 :goto_9

    :cond_d
    move v6, v0

    goto/16 :goto_5

    .line 1345
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1360
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 1379
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 1394
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private static a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 2439
    return-void
.end method

.method private a(Ljava/util/ArrayList;Landroid/graphics/Rect;[I)V
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v11, 0x2

    const/16 v10, 0x9

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1003
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[calculateButtonBorder] before enter "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p2, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lavj;->b(Ljava/lang/String;)V

    .line 1004
    if-eqz p1, :cond_0

    if-nez p2, :cond_3

    .line 1128
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 1003
    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    .line 1005
    :cond_3
    if-eqz p3, :cond_0

    array-length v0, p3

    if-ne v0, v11, :cond_0

    .line 1006
    const-string v0, "[calculateButtonBorder] enter"

    invoke-static {v0}, Lavj;->b(Ljava/lang/String;)V

    move v3, v2

    .line 1008
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_0

    .line 1009
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lavl;

    .line 1010
    if-nez v0, :cond_5

    .line 1008
    :cond_4
    :goto_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    .line 1011
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Laox;->z:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/res/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lavl;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1012
    if-eqz v4, :cond_4

    .line 1013
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[calculateButtonBorder] bt.width="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bt.height="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lavj;->b(Ljava/lang/String;)V

    .line 1014
    iget-object v0, v0, Lavl;->b:Ljava/lang/String;

    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1015
    array-length v5, v0

    const/16 v6, 0xa

    if-ne v5, v6, :cond_4

    .line 1017
    new-instance v5, Landroid/graphics/Rect;

    aget-object v6, v0, v11

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aget-object v7, v0, v2

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x3

    aget-object v8, v0, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aget-object v9, v0, v1

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1019
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[addThemeButtons] paddings = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v5, Landroid/graphics/Rect;->right:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lavj;->b(Ljava/lang/String;)V

    .line 1020
    aget-object v6, v0, v10

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 1022
    const/16 v6, 0x8

    aget-object v0, v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1125
    :cond_6
    :goto_4
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_3

    .line 1024
    :pswitch_0
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v6, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v6

    iget v6, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v6

    iget v6, p2, Landroid/graphics/Rect;->left:I

    if-le v0, v6, :cond_7

    .line 1025
    aget v0, p3, v2

    iget v6, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v6

    aput v0, p3, v2

    .line 1026
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v6, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v6

    iget v6, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v6

    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 1027
    aget v0, p3, v2

    iget v6, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v6

    aput v0, p3, v2

    .line 1029
    :cond_7
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v6, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v6

    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v6

    iget v6, p2, Landroid/graphics/Rect;->top:I

    if-le v0, v6, :cond_6

    .line 1030
    aget v0, p3, v1

    iget v6, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v6

    aput v0, p3, v1

    .line 1031
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v6, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v6

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v5

    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 1032
    aget v0, p3, v1

    iget v5, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v5

    aput v0, p3, v1

    goto :goto_4

    .line 1036
    :pswitch_1
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v6, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v6

    iget v6, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v6

    aget v6, p3, v2

    iget v7, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    iget v7, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v7

    if-le v0, v6, :cond_8

    .line 1037
    iget v0, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    add-int/2addr v0, v6

    iget v6, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v6

    iget v6, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v6

    iget v6, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v6

    aput v0, p3, v2

    .line 1039
    :cond_8
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v6, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v6

    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v6

    iget v6, p2, Landroid/graphics/Rect;->top:I

    if-le v0, v6, :cond_6

    .line 1040
    aget v0, p3, v1

    iget v6, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v6

    aput v0, p3, v1

    .line 1041
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v6, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v6

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v5

    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 1042
    aget v0, p3, v1

    iget v5, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v5

    aput v0, p3, v1

    goto/16 :goto_4

    .line 1046
    :pswitch_2
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v6, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v6

    iget v6, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v6

    iget v6, p2, Landroid/graphics/Rect;->right:I

    if-le v0, v6, :cond_9

    .line 1047
    aget v0, p3, v2

    iget v6, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v6

    aput v0, p3, v2

    .line 1048
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v6, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v6

    iget v6, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v6

    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 1049
    aget v0, p3, v2

    iget v6, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v6

    aput v0, p3, v2

    .line 1051
    :cond_9
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v6, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v6

    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v6

    iget v6, p2, Landroid/graphics/Rect;->top:I

    if-le v0, v6, :cond_6

    .line 1052
    aget v0, p3, v1

    iget v6, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v6

    aput v0, p3, v1

    .line 1053
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v6, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v6

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v5

    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 1054
    aget v0, p3, v1

    iget v5, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v5

    aput v0, p3, v1

    goto/16 :goto_4

    .line 1058
    :pswitch_3
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v6, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v6

    iget v6, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v6

    iget v6, p2, Landroid/graphics/Rect;->left:I

    if-le v0, v6, :cond_a

    .line 1059
    aget v0, p3, v2

    iget v6, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v6

    aput v0, p3, v2

    .line 1060
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v6, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v6

    iget v6, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v6

    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 1061
    aget v0, p3, v2

    iget v6, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v6

    aput v0, p3, v2

    .line 1063
    :cond_a
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v6, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v6

    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v6

    aget v6, p3, v1

    iget v7, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    iget v7, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    if-le v0, v6, :cond_6

    .line 1064
    iget v0, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    add-int/2addr v0, v6

    iget v6, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v6

    iget v6, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v6

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v5

    aput v0, p3, v1

    goto/16 :goto_4

    .line 1068
    :pswitch_4
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v6, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v6

    iget v6, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v6

    aget v6, p3, v2

    iget v7, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    iget v7, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v7

    if-le v0, v6, :cond_b

    .line 1069
    iget v0, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    add-int/2addr v0, v6

    iget v6, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v6

    iget v6, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v6

    iget v6, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v6

    aput v0, p3, v2

    .line 1071
    :cond_b
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v6, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v6

    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v6

    aget v6, p3, v1

    iget v7, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    iget v7, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    if-le v0, v6, :cond_6

    .line 1072
    iget v0, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    add-int/2addr v0, v6

    iget v6, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v6

    iget v6, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v6

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v5

    aput v0, p3, v1

    goto/16 :goto_4

    .line 1076
    :pswitch_5
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v6, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v6

    iget v6, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v6

    iget v6, p2, Landroid/graphics/Rect;->right:I

    if-le v0, v6, :cond_c

    .line 1077
    aget v0, p3, v2

    iget v6, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v6

    aput v0, p3, v2

    .line 1078
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v6, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v6

    iget v6, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v6

    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 1079
    aget v0, p3, v2

    iget v6, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v6

    aput v0, p3, v2

    .line 1081
    :cond_c
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v6, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v6

    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v6

    aget v6, p3, v1

    iget v7, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    iget v7, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    if-le v0, v6, :cond_6

    .line 1082
    iget v0, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    add-int/2addr v0, v6

    iget v6, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v6

    iget v6, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v6

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v5

    aput v0, p3, v1

    goto/16 :goto_4

    .line 1086
    :pswitch_6
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v6, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v6

    iget v6, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v6

    iget v6, p2, Landroid/graphics/Rect;->left:I

    if-le v0, v6, :cond_d

    .line 1087
    aget v0, p3, v2

    iget v6, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v6

    aput v0, p3, v2

    .line 1088
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v6, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v6

    iget v6, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v6

    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 1089
    aget v0, p3, v2

    iget v6, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v6

    aput v0, p3, v2

    .line 1091
    :cond_d
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v6, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v6

    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v6

    iget v6, p2, Landroid/graphics/Rect;->bottom:I

    if-le v0, v6, :cond_6

    .line 1092
    aget v0, p3, v1

    iget v6, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v6

    aput v0, p3, v1

    .line 1093
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v6, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v6

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v5

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 1094
    aget v0, p3, v1

    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v5

    aput v0, p3, v1

    goto/16 :goto_4

    .line 1098
    :pswitch_7
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v6, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v6

    iget v6, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v6

    aget v6, p3, v2

    iget v7, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    iget v7, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v7

    if-le v0, v6, :cond_e

    .line 1099
    iget v0, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    add-int/2addr v0, v6

    iget v6, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v6

    iget v6, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v6

    iget v6, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v6

    aput v0, p3, v2

    .line 1101
    :cond_e
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v6, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v6

    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v6

    iget v6, p2, Landroid/graphics/Rect;->bottom:I

    if-le v0, v6, :cond_6

    .line 1102
    aget v0, p3, v1

    iget v6, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v6

    aput v0, p3, v1

    .line 1103
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v6, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v6

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v5

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 1104
    aget v0, p3, v1

    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v5

    aput v0, p3, v1

    goto/16 :goto_4

    .line 1108
    :pswitch_8
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v6, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v6

    iget v6, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v6

    iget v6, p2, Landroid/graphics/Rect;->right:I

    if-le v0, v6, :cond_f

    .line 1109
    aget v0, p3, v2

    iget v6, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v6

    aput v0, p3, v2

    .line 1110
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v6, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v6

    iget v6, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v6

    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 1111
    aget v0, p3, v2

    iget v6, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v6

    aput v0, p3, v2

    .line 1113
    :cond_f
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v6, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v6

    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v6

    iget v6, p2, Landroid/graphics/Rect;->bottom:I

    if-le v0, v6, :cond_6

    .line 1114
    aget v0, p3, v1

    iget v6, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v6

    aput v0, p3, v1

    .line 1115
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v6, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v6

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v5

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 1116
    aget v0, p3, v1

    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v5

    aput v0, p3, v1

    goto/16 :goto_4

    .line 1120
    :cond_10
    aget-object v5, v0, v10

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 1122
    aget-object v0, v0, v10

    const-string v5, "2"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto/16 :goto_4

    .line 1022
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private a(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 298
    const/4 v1, 0x0

    .line 300
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    :try_start_1
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 305
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    .line 307
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 302
    :catch_0
    move-exception v0

    .line 303
    :goto_1
    const/4 v0, 0x0

    .line 305
    invoke-static {v1}, Lazd;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_2
    invoke-static {v1}, Lazd;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_2

    .line 302
    :catch_1
    move-exception v1

    move-object v1, v0

    goto :goto_1
.end method

.method private a(Lavn;Layx;)Z
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1618
    const-string v2, "Scheme_V2"

    const-string v3, "zhongwen_pic"

    invoke-virtual {p2, v2, v3}, Layx;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1620
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1621
    :cond_0
    const-string v2, "Scheme_V1"

    const-string v3, "pic"

    invoke-virtual {p2, v2, v3}, Layx;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1623
    const-string v3, "Scheme_V1"

    const-string v4, "layout_horizontal"

    invoke-virtual {p2, v3, v4}, Layx;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1625
    const-string v3, "Scheme_V1"

    const-string v5, "layout_vertical"

    invoke-virtual {p2, v3, v5}, Layx;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1627
    const-string v5, "Scheme_V1"

    iput-object v5, p1, Lavn;->a:Ljava/lang/String;

    .line 1636
    :goto_0
    if-nez v2, :cond_3

    .line 1667
    :cond_1
    :goto_1
    return v0

    .line 1629
    :cond_2
    const-string v3, "Scheme_V2"

    const-string v4, "zhongwen_layout_horizontal"

    invoke-virtual {p2, v3, v4}, Layx;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1631
    const-string v3, "Scheme_V2"

    const-string v5, "zhongwen_layout_vertical"

    invoke-virtual {p2, v3, v5}, Layx;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1633
    const-string v5, "Scheme_V2"

    iput-object v5, p1, Lavn;->a:Ljava/lang/String;

    goto :goto_0

    .line 1637
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lavn;->b:Ljava/lang/String;

    .line 1638
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[initCustomThemeKeyboard] pic = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lavj;->b(Ljava/lang/String;)V

    .line 1640
    if-eqz v4, :cond_1

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    if-ne v5, v8, :cond_1

    .line 1641
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1642
    new-array v5, v8, [I

    iput-object v5, p1, Lavn;->a:[I

    .line 1643
    iget-object v5, p1, Lavn;->a:[I

    aget-object v6, v4, v0

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v5, v0

    .line 1644
    iget-object v5, p1, Lavn;->a:[I

    aget-object v6, v4, v1

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v5, v1

    .line 1645
    iget-object v5, p1, Lavn;->a:[I

    aget-object v4, v4, v7

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v5, v7

    .line 1647
    iget-object v4, p1, Lavn;->a:[I

    aget v4, v4, v0

    if-ne v4, v1, :cond_4

    .line 1648
    iget-object v4, p0, Lavj;->a:Landroid/content/Context;

    invoke-static {v4}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v4

    invoke-virtual {v4, v1}, Lafp;->z(Z)V

    .line 1653
    :goto_2
    if-eqz v3, :cond_1

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-ne v4, v8, :cond_1

    .line 1654
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1655
    new-array v4, v8, [I

    iput-object v4, p1, Lavn;->b:[I

    .line 1656
    iget-object v4, p1, Lavn;->b:[I

    aget-object v5, v3, v0

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v4, v0

    .line 1657
    iget-object v4, p1, Lavn;->b:[I

    aget-object v5, v3, v1

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v4, v1

    .line 1658
    iget-object v4, p1, Lavn;->b:[I

    aget-object v3, v3, v7

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v4, v7

    .line 1660
    iget-object v3, p1, Lavn;->b:[I

    aget v3, v3, v0

    if-ne v3, v1, :cond_5

    .line 1661
    iget-object v0, p0, Lavj;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0, v1}, Lafp;->y(Z)V

    .line 1666
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laox;->z:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/res/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p1, Lavn;->a:Landroid/graphics/Bitmap;

    move v0, v1

    .line 1667
    goto/16 :goto_1

    .line 1650
    :cond_4
    iget-object v4, p0, Lavj;->a:Landroid/content/Context;

    invoke-static {v4}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v4

    invoke-virtual {v4, v0}, Lafp;->z(Z)V

    goto :goto_2

    .line 1663
    :cond_5
    iget-object v3, p0, Lavj;->a:Landroid/content/Context;

    invoke-static {v3}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v3

    invoke-virtual {v3, v0}, Lafp;->y(Z)V

    goto :goto_3
.end method

.method private a(Layx;)Z
    .locals 14
    .parameter

    .prologue
    .line 1800
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 1885
    :goto_0
    return v0

    .line 1802
    :cond_0
    new-instance v7, Lavn;

    const/4 v0, 0x0

    invoke-direct {v7, p0, v0}, Lavn;-><init>(Lavj;Lavk;)V

    .line 1803
    invoke-direct {p0, v7, p1}, Lavj;->a(Lavn;Layx;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1804
    const/4 v0, 0x0

    goto :goto_0

    .line 1805
    :cond_1
    iget-object v0, v7, Lavn;->a:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 1806
    const/4 v0, 0x0

    goto :goto_0

    .line 1807
    :cond_2
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1808
    const/high16 v0, 0x3f80

    invoke-direct {p0, v7, v0}, Lavj;->a(Lavn;F)Landroid/graphics/Rect;

    move-result-object v0

    .line 1809
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[loadKeyboardBG] bgRect = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lavj;->b(Ljava/lang/String;)V

    .line 1810
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[loadKeyboardBG] width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v7, Lavn;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v7, Lavn;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lavj;->b(Ljava/lang/String;)V

    .line 1811
    iget v1, v0, Landroid/graphics/Rect;->left:I

    if-ltz v1, :cond_5

    iget v1, v0, Landroid/graphics/Rect;->right:I

    if-ltz v1, :cond_5

    iget v1, v0, Landroid/graphics/Rect;->top:I

    if-ltz v1, :cond_5

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    if-ltz v1, :cond_5

    .line 1812
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    if-lez v1, :cond_3

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    if-gtz v1, :cond_4

    .line 1813
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1814
    :cond_4
    iget-object v1, v7, Lavn;->a:Landroid/graphics/Bitmap;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int v0, v5, v0

    invoke-static {v1, v2, v3, v4, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v7, Lavn;->a:Landroid/graphics/Bitmap;

    .line 1816
    const/4 v0, 0x0

    invoke-direct {p0, v7, v0}, Lavj;->a(Lavn;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v7, Lavn;->a:Landroid/graphics/Bitmap;

    .line 1818
    :cond_5
    iget-object v0, v7, Lavn;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_c

    iget-object v0, v7, Lavn;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-lez v0, :cond_c

    iget-object v0, v7, Lavn;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-lez v0, :cond_c

    .line 1821
    iget-object v0, v7, Lavn;->a:Landroid/graphics/Bitmap;

    iget-object v1, v7, Lavn;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, v7, Lavn;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v4

    .line 1822
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "float_function_bg"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "triangle_up"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "triangle_down"

    aput-object v1, v2, v0

    .line 1823
    const/4 v0, 0x2

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "slip_button_transparent_layer"

    aput-object v1, v6, v0

    const/4 v0, 0x1

    const-string v1, "popup_internal"

    aput-object v1, v6, v0

    .line 1825
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laox;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/res/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laox;->z:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/res/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/high16 v5, -0x100

    invoke-static/range {v0 .. v5}, Lauv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;III)Z

    .line 1827
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laox;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/res/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laox;->z:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/res/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v6, v2, v4}, Lauv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1832
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laox;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/res/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "popup_overlay.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1833
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laox;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/res/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "popup_internal.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1834
    if-eqz v4, :cond_6

    if-nez v5, :cond_7

    .line 1835
    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1829
    :catch_0
    move-exception v0

    .line 1830
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1836
    :cond_7
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1838
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_a

    .line 1839
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_9

    .line 1840
    invoke-virtual {v5, v0, v1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v8

    .line 1841
    invoke-virtual {v4, v0, v1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v9

    .line 1842
    invoke-static {v9}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    .line 1843
    invoke-static {v8}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    if-le v3, v2, :cond_8

    move v2, v3

    .line 1844
    :goto_4
    and-int/lit16 v10, v9, 0xff

    mul-int/2addr v10, v3

    and-int/lit16 v11, v8, 0xff

    rsub-int v12, v3, 0xff

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    int-to-float v10, v10

    const/high16 v11, 0x437f

    div-float/2addr v10, v11

    float-to-int v10, v10

    .line 1845
    ushr-int/lit8 v11, v9, 0x8

    and-int/lit16 v11, v11, 0xff

    mul-int/2addr v11, v3

    ushr-int/lit8 v12, v8, 0x8

    and-int/lit16 v12, v12, 0xff

    rsub-int v13, v3, 0xff

    mul-int/2addr v12, v13

    add-int/2addr v11, v12

    int-to-float v11, v11

    const/high16 v12, 0x437f

    div-float/2addr v11, v12

    float-to-int v11, v11

    .line 1846
    ushr-int/lit8 v9, v9, 0x10

    and-int/lit16 v9, v9, 0xff

    mul-int/2addr v9, v3

    ushr-int/lit8 v8, v8, 0x10

    and-int/lit16 v8, v8, 0xff

    rsub-int v3, v3, 0xff

    mul-int/2addr v3, v8

    add-int/2addr v3, v9

    int-to-float v3, v3

    const/high16 v8, 0x437f

    div-float/2addr v3, v8

    float-to-int v3, v3

    .line 1847
    shl-int/lit8 v2, v2, 0x18

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    shl-int/lit8 v3, v11, 0x8

    or-int/2addr v2, v3

    or-int/2addr v2, v10

    .line 1848
    invoke-virtual {v6, v0, v1, v2}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 1839
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1843
    :cond_8
    invoke-static {v8}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    goto :goto_4

    .line 1838
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1850
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laox;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/res/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "popup.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v6, v0}, Lavj;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    .line 1851
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laox;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/res/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "popup_qwerty.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v6, v0}, Lavj;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    .line 1852
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laox;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/res/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "popup_cands.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v6, v0}, Lavj;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    .line 1853
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laox;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/res/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "popup_cands_code.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v6, v0}, Lavj;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    .line 1854
    if-eqz v6, :cond_b

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1855
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 1859
    :cond_b
    const/4 v0, 0x0

    .line 1860
    iget-object v1, v7, Lavn;->a:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    if-nez v1, :cond_d

    iget-object v1, v7, Lavn;->b:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    if-nez v1, :cond_d

    .line 1861
    iget-object v1, v7, Lavn;->a:Landroid/graphics/Bitmap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laox;->z:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/res/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "bg.png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lavj;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    .line 1862
    iget-object v1, v7, Lavn;->a:Landroid/graphics/Bitmap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laox;->z:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/res/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "bg1.png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lavj;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    .line 1863
    iget-object v1, v7, Lavn;->a:Landroid/graphics/Bitmap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laox;->z:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/res/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "bg_voice.png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lavj;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    .line 1879
    :goto_5
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_c

    .line 1880
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1884
    :cond_c
    invoke-virtual {v7}, Lavn;->a()V

    .line 1885
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1866
    :cond_d
    iget-object v0, v7, Lavn;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lavj;->c:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_e

    iget-object v0, v7, Lavn;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lavj;->c:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_f

    .line 1867
    :cond_e
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1869
    :cond_f
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 1870
    iget v0, p0, Lavj;->c:F

    iget v1, p0, Lavj;->c:F

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1871
    iget-object v0, v7, Lavn;->a:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, v7, Lavn;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, v7, Lavn;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1874
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laox;->z:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/res/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "bg.png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lavj;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    .line 1875
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laox;->z:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/res/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "bg1.png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lavj;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    .line 1876
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laox;->z:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/res/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "bg_voice.png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lavj;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    .line 1877
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[loadKeyboardBG] after cut and zoom, width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lavj;->b(Ljava/lang/String;)V

    goto/16 :goto_5
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    .line 389
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 434
    :goto_0
    return v0

    .line 390
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ","

    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    .line 392
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 393
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 394
    const/4 v5, 0x0

    .line 395
    const/4 v7, 0x0

    .line 396
    const/4 v3, 0x0

    .line 397
    const/4 v4, 0x0

    .line 398
    const/4 v1, 0x0

    .line 399
    const/4 v0, 0x0

    .line 402
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 403
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 404
    :try_start_2
    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 405
    :try_start_3
    new-instance v5, Ljava/io/OutputStreamWriter;

    invoke-direct {v5, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 406
    :try_start_4
    new-instance v6, Ljava/io/BufferedReader;

    invoke-direct {v6, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 407
    :try_start_5
    new-instance v3, Ljava/io/BufferedWriter;

    invoke-direct {v3, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    .line 410
    :goto_1
    :try_start_6
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 411
    const-string v4, "="

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v7, -0x1

    if-eq v4, v7, :cond_4

    .line 412
    const-string v4, "="

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 413
    const/4 v7, 0x1

    aget-object v7, v4, v7

    const-string v10, ","

    invoke-virtual {v7, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v10, -0x1

    if-eq v7, v10, :cond_4

    .line 414
    const/4 v7, 0x1

    aget-object v7, v4, v7

    const-string v10, ","

    invoke-virtual {v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 415
    const/4 v10, 0x0

    aget-object v7, v7, v10

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    aget-object v4, v4, v7

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 420
    :cond_4
    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v3, v0, v4, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;II)V

    .line 422
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1

    .line 433
    :catch_0
    move-exception v0

    move-object v4, v5

    move-object v5, v6

    move-object v6, v8

    .line 434
    :goto_2
    const/4 v0, 0x0

    .line 436
    invoke-static {v5}, Lazd;->a(Ljava/io/Closeable;)V

    .line 437
    invoke-static {v3}, Lazd;->a(Ljava/io/Closeable;)V

    .line 438
    invoke-static {v6}, Lazd;->a(Ljava/io/Closeable;)V

    .line 439
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    .line 440
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    .line 441
    :goto_3
    invoke-static {v1}, Lazd;->a(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 424
    :cond_5
    :try_start_7
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 425
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 426
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    move-result v0

    if-eqz v0, :cond_6

    .line 430
    const/4 v0, 0x1

    .line 436
    invoke-static {v6}, Lazd;->a(Ljava/io/Closeable;)V

    .line 437
    invoke-static {v3}, Lazd;->a(Ljava/io/Closeable;)V

    .line 438
    invoke-static {v8}, Lazd;->a(Ljava/io/Closeable;)V

    .line 439
    invoke-static {v5}, Lazd;->a(Ljava/io/Closeable;)V

    .line 440
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    goto :goto_3

    .line 432
    :cond_6
    const/4 v0, 0x0

    .line 436
    invoke-static {v6}, Lazd;->a(Ljava/io/Closeable;)V

    .line 437
    invoke-static {v3}, Lazd;->a(Ljava/io/Closeable;)V

    .line 438
    invoke-static {v8}, Lazd;->a(Ljava/io/Closeable;)V

    .line 439
    invoke-static {v5}, Lazd;->a(Ljava/io/Closeable;)V

    .line 440
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    goto :goto_3

    .line 436
    :catchall_0
    move-exception v2

    move-object v6, v7

    move-object v8, v5

    move-object v5, v3

    move-object v3, v4

    move-object v11, v1

    move-object v1, v0

    move-object v0, v2

    move-object v2, v11

    :goto_4
    invoke-static {v6}, Lazd;->a(Ljava/io/Closeable;)V

    .line 437
    invoke-static {v3}, Lazd;->a(Ljava/io/Closeable;)V

    .line 438
    invoke-static {v8}, Lazd;->a(Ljava/io/Closeable;)V

    .line 439
    invoke-static {v5}, Lazd;->a(Ljava/io/Closeable;)V

    .line 440
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    .line 441
    invoke-static {v1}, Lazd;->a(Ljava/io/Closeable;)V

    .line 436
    throw v0

    :catchall_1
    move-exception v1

    move-object v6, v7

    move-object v8, v5

    move-object v5, v3

    move-object v3, v4

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v6, v7

    move-object v8, v5

    move-object v5, v3

    move-object v3, v4

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v5, v3

    move-object v6, v7

    move-object v3, v4

    goto :goto_4

    :catchall_4
    move-exception v0

    move-object v3, v4

    move-object v6, v7

    goto :goto_4

    :catchall_5
    move-exception v0

    move-object v3, v4

    goto :goto_4

    :catchall_6
    move-exception v0

    goto :goto_4

    .line 433
    :catch_1
    move-exception v2

    move-object v2, v1

    move-object v6, v5

    move-object v5, v7

    move-object v1, v0

    move-object v11, v4

    move-object v4, v3

    move-object v3, v11

    goto/16 :goto_2

    :catch_2
    move-exception v1

    move-object v1, v0

    move-object v6, v5

    move-object v5, v7

    move-object v11, v3

    move-object v3, v4

    move-object v4, v11

    goto/16 :goto_2

    :catch_3
    move-exception v0

    move-object v6, v5

    move-object v5, v7

    move-object v11, v3

    move-object v3, v4

    move-object v4, v11

    goto/16 :goto_2

    :catch_4
    move-exception v0

    move-object v5, v7

    move-object v6, v8

    move-object v11, v4

    move-object v4, v3

    move-object v3, v11

    goto/16 :goto_2

    :catch_5
    move-exception v0

    move-object v3, v4

    move-object v6, v8

    move-object v4, v5

    move-object v5, v7

    goto/16 :goto_2

    :catch_6
    move-exception v0

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v8

    goto/16 :goto_2
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 323
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " >>>>>[modifyCandsINI]  ini = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lavj;->a(Ljava/lang/String;)V

    .line 324
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " >>>>>[modifyCandsINI]  section = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lavj;->a(Ljava/lang/String;)V

    .line 325
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " >>>>>[modifyCandsINI]  key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lavj;->a(Ljava/lang/String;)V

    .line 326
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " >>>>>[modifyCandsINI]  value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lavj;->a(Ljava/lang/String;)V

    .line 327
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 377
    :goto_0
    return v1

    .line 328
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 330
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 331
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 332
    const/4 v6, 0x0

    .line 333
    const/4 v8, 0x0

    .line 334
    const/4 v4, 0x0

    .line 335
    const/4 v5, 0x0

    .line 336
    const/4 v2, 0x0

    .line 337
    const/4 v1, 0x0

    .line 340
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 341
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 342
    :try_start_2
    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 343
    :try_start_3
    new-instance v6, Ljava/io/OutputStreamWriter;

    invoke-direct {v6, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 344
    :try_start_4
    new-instance v7, Ljava/io/BufferedReader;

    invoke-direct {v7, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 345
    :try_start_5
    new-instance v4, Ljava/io/BufferedWriter;

    invoke-direct {v4, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    .line 347
    const/4 v5, 0x0

    .line 349
    :goto_1
    :try_start_6
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 351
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "["

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "]"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 352
    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v4, v1, v5, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;II)V

    .line 353
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V

    .line 354
    const/4 v5, 0x1

    .line 355
    goto :goto_1

    .line 357
    :cond_4
    if-eqz v5, :cond_5

    .line 358
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 359
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 360
    const/4 v5, 0x0

    .line 363
    :cond_5
    const/4 v8, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v4, v1, v8, v11}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;II)V

    .line 365
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1

    .line 376
    :catch_0
    move-exception v1

    move-object v5, v6

    move-object v6, v7

    move-object v7, v9

    .line 377
    :goto_2
    const/4 v1, 0x0

    .line 379
    invoke-static {v6}, Lazd;->a(Ljava/io/Closeable;)V

    .line 380
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    .line 381
    invoke-static {v7}, Lazd;->a(Ljava/io/Closeable;)V

    .line 382
    invoke-static {v5}, Lazd;->a(Ljava/io/Closeable;)V

    .line 383
    invoke-static {v3}, Lazd;->a(Ljava/io/Closeable;)V

    .line 384
    :goto_3
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 367
    :cond_6
    :try_start_7
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 368
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 369
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    move-result v1

    if-eqz v1, :cond_7

    .line 373
    const/4 v1, 0x1

    .line 379
    invoke-static {v7}, Lazd;->a(Ljava/io/Closeable;)V

    .line 380
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    .line 381
    invoke-static {v9}, Lazd;->a(Ljava/io/Closeable;)V

    .line 382
    invoke-static {v6}, Lazd;->a(Ljava/io/Closeable;)V

    .line 383
    invoke-static {v3}, Lazd;->a(Ljava/io/Closeable;)V

    goto :goto_3

    .line 375
    :cond_7
    const/4 v1, 0x0

    .line 379
    invoke-static {v7}, Lazd;->a(Ljava/io/Closeable;)V

    .line 380
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    .line 381
    invoke-static {v9}, Lazd;->a(Ljava/io/Closeable;)V

    .line 382
    invoke-static {v6}, Lazd;->a(Ljava/io/Closeable;)V

    .line 383
    invoke-static {v3}, Lazd;->a(Ljava/io/Closeable;)V

    goto :goto_3

    .line 379
    :catchall_0
    move-exception v3

    move-object v7, v8

    move-object v9, v6

    move-object v6, v4

    move-object v4, v5

    move-object v12, v2

    move-object v2, v1

    move-object v1, v3

    move-object v3, v12

    :goto_4
    invoke-static {v7}, Lazd;->a(Ljava/io/Closeable;)V

    .line 380
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    .line 381
    invoke-static {v9}, Lazd;->a(Ljava/io/Closeable;)V

    .line 382
    invoke-static {v6}, Lazd;->a(Ljava/io/Closeable;)V

    .line 383
    invoke-static {v3}, Lazd;->a(Ljava/io/Closeable;)V

    .line 384
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    .line 379
    throw v1

    :catchall_1
    move-exception v2

    move-object v7, v8

    move-object v9, v6

    move-object v6, v4

    move-object v4, v5

    move-object v12, v2

    move-object v2, v1

    move-object v1, v12

    goto :goto_4

    :catchall_2
    move-exception v1

    move-object v7, v8

    move-object v9, v6

    move-object v6, v4

    move-object v4, v5

    goto :goto_4

    :catchall_3
    move-exception v1

    move-object v6, v4

    move-object v7, v8

    move-object v4, v5

    goto :goto_4

    :catchall_4
    move-exception v1

    move-object v4, v5

    move-object v7, v8

    goto :goto_4

    :catchall_5
    move-exception v1

    move-object v4, v5

    goto :goto_4

    :catchall_6
    move-exception v1

    goto :goto_4

    .line 376
    :catch_1
    move-exception v3

    move-object v3, v2

    move-object v7, v6

    move-object v6, v8

    move-object v2, v1

    move-object v12, v5

    move-object v5, v4

    move-object v4, v12

    goto/16 :goto_2

    :catch_2
    move-exception v2

    move-object v2, v1

    move-object v7, v6

    move-object v6, v8

    move-object v12, v4

    move-object v4, v5

    move-object v5, v12

    goto/16 :goto_2

    :catch_3
    move-exception v1

    move-object v7, v6

    move-object v6, v8

    move-object v12, v4

    move-object v4, v5

    move-object v5, v12

    goto/16 :goto_2

    :catch_4
    move-exception v1

    move-object v6, v8

    move-object v7, v9

    move-object v12, v5

    move-object v5, v4

    move-object v4, v12

    goto/16 :goto_2

    :catch_5
    move-exception v1

    move-object v4, v5

    move-object v7, v9

    move-object v5, v6

    move-object v6, v8

    goto/16 :goto_2

    :catch_6
    move-exception v1

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v9

    goto/16 :goto_2
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 15
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 447
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 449
    :cond_0
    const/4 v1, 0x0

    .line 499
    :goto_0
    return v1

    .line 451
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 452
    const/4 v6, 0x0

    .line 453
    const/4 v8, 0x0

    .line 454
    const/4 v4, 0x0

    .line 455
    const/4 v5, 0x0

    .line 456
    const/4 v2, 0x0

    .line 457
    const/4 v1, 0x0

    .line 460
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 461
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 462
    :try_start_2
    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 463
    :try_start_3
    new-instance v6, Ljava/io/OutputStreamWriter;

    invoke-direct {v6, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 464
    :try_start_4
    new-instance v7, Ljava/io/BufferedReader;

    invoke-direct {v7, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 465
    :try_start_5
    new-instance v4, Ljava/io/BufferedWriter;

    invoke-direct {v4, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    .line 468
    :goto_1
    :try_start_6
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 469
    const-string v5, "="

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 470
    const/4 v5, 0x0

    aget-object v5, v8, v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 471
    const/4 v5, 0x1

    aget-object v5, v8, v5

    const-string v11, "0x"

    invoke-virtual {v5, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    .line 472
    const/4 v5, -0x1

    if-eq v11, v5, :cond_2

    .line 473
    const/4 v5, 0x1

    aget-object v5, v8, v5

    add-int/lit8 v12, v11, 0x4

    invoke-virtual {v5, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 474
    const/4 v5, 0x0

    :goto_2
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v5, v13, :cond_2

    .line 475
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 476
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v12, 0x0

    aget-object v12, v8, v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, "="

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v12, 0x1

    aget-object v8, v8, v12

    const/4 v12, 0x0

    add-int/lit8 v11, v11, 0x4

    invoke-virtual {v8, v12, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 488
    :cond_2
    :goto_3
    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v4, v1, v5, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;II)V

    .line 489
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1

    .line 498
    :catch_0
    move-exception v1

    move-object v5, v6

    move-object v6, v7

    move-object v7, v9

    .line 499
    :goto_4
    const/4 v1, 0x0

    .line 501
    invoke-static {v6}, Lazd;->a(Ljava/io/Closeable;)V

    .line 502
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    .line 503
    invoke-static {v7}, Lazd;->a(Ljava/io/Closeable;)V

    .line 504
    invoke-static {v5}, Lazd;->a(Ljava/io/Closeable;)V

    .line 505
    invoke-static {v3}, Lazd;->a(Ljava/io/Closeable;)V

    .line 506
    :goto_5
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 474
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 483
    :cond_4
    const/4 v5, 0x0

    :try_start_7
    aget-object v5, v8, v5

    const-string v11, "SHADOW_COLOR"

    invoke-virtual {v5, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 484
    const/4 v5, 0x1

    aget-object v5, v8, v5

    const-string v11, "0x"

    invoke-virtual {v5, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v11, -0x1

    if-eq v5, v11, :cond_2

    .line 485
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    aget-object v5, v8, v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "=0x00000000"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 491
    :cond_5
    new-instance v1, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 492
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 493
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    move-result v1

    if-eqz v1, :cond_6

    .line 495
    const/4 v1, 0x1

    .line 501
    invoke-static {v7}, Lazd;->a(Ljava/io/Closeable;)V

    .line 502
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    .line 503
    invoke-static {v9}, Lazd;->a(Ljava/io/Closeable;)V

    .line 504
    invoke-static {v6}, Lazd;->a(Ljava/io/Closeable;)V

    .line 505
    invoke-static {v3}, Lazd;->a(Ljava/io/Closeable;)V

    goto :goto_5

    .line 497
    :cond_6
    const/4 v1, 0x0

    .line 501
    invoke-static {v7}, Lazd;->a(Ljava/io/Closeable;)V

    .line 502
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    .line 503
    invoke-static {v9}, Lazd;->a(Ljava/io/Closeable;)V

    .line 504
    invoke-static {v6}, Lazd;->a(Ljava/io/Closeable;)V

    .line 505
    invoke-static {v3}, Lazd;->a(Ljava/io/Closeable;)V

    goto/16 :goto_5

    .line 501
    :catchall_0
    move-exception v3

    move-object v7, v8

    move-object v9, v6

    move-object v6, v4

    move-object v4, v5

    move-object v14, v2

    move-object v2, v1

    move-object v1, v3

    move-object v3, v14

    :goto_6
    invoke-static {v7}, Lazd;->a(Ljava/io/Closeable;)V

    .line 502
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    .line 503
    invoke-static {v9}, Lazd;->a(Ljava/io/Closeable;)V

    .line 504
    invoke-static {v6}, Lazd;->a(Ljava/io/Closeable;)V

    .line 505
    invoke-static {v3}, Lazd;->a(Ljava/io/Closeable;)V

    .line 506
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    .line 501
    throw v1

    :catchall_1
    move-exception v2

    move-object v7, v8

    move-object v9, v6

    move-object v6, v4

    move-object v4, v5

    move-object v14, v2

    move-object v2, v1

    move-object v1, v14

    goto :goto_6

    :catchall_2
    move-exception v1

    move-object v7, v8

    move-object v9, v6

    move-object v6, v4

    move-object v4, v5

    goto :goto_6

    :catchall_3
    move-exception v1

    move-object v6, v4

    move-object v7, v8

    move-object v4, v5

    goto :goto_6

    :catchall_4
    move-exception v1

    move-object v4, v5

    move-object v7, v8

    goto :goto_6

    :catchall_5
    move-exception v1

    move-object v4, v5

    goto :goto_6

    :catchall_6
    move-exception v1

    goto :goto_6

    .line 498
    :catch_1
    move-exception v3

    move-object v3, v2

    move-object v7, v6

    move-object v6, v8

    move-object v2, v1

    move-object v14, v5

    move-object v5, v4

    move-object v4, v14

    goto/16 :goto_4

    :catch_2
    move-exception v2

    move-object v2, v1

    move-object v7, v6

    move-object v6, v8

    move-object v14, v4

    move-object v4, v5

    move-object v5, v14

    goto/16 :goto_4

    :catch_3
    move-exception v1

    move-object v7, v6

    move-object v6, v8

    move-object v14, v4

    move-object v4, v5

    move-object v5, v14

    goto/16 :goto_4

    :catch_4
    move-exception v1

    move-object v6, v8

    move-object v7, v9

    move-object v14, v5

    move-object v5, v4

    move-object v4, v14

    goto/16 :goto_4

    :catch_5
    move-exception v1

    move-object v4, v5

    move-object v7, v9

    move-object v5, v6

    move-object v6, v8

    goto/16 :goto_4

    :catch_6
    move-exception v1

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v9

    goto/16 :goto_4
.end method

.method private b(Landroid/graphics/Bitmap;IIIZ)Landroid/graphics/Bitmap;
    .locals 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1471
    if-nez p1, :cond_0

    const/4 v1, 0x0

    .line 1568
    :goto_0
    return-object v1

    .line 1472
    :cond_0
    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    if-ge p2, p3, :cond_1

    move/from16 v0, p4

    if-lt p3, v0, :cond_2

    :cond_1
    move-object v1, p1

    .line 1473
    goto :goto_0

    .line 1474
    :cond_2
    const-string v1, "[createTiledBitmap] enter"

    invoke-static {v1}, Lavj;->b(Ljava/lang/String;)V

    .line 1475
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[createTiledBitmap] line1 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " line2 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lavj;->b(Ljava/lang/String;)V

    .line 1476
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[createTiledBitmap] scaledSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isHorizon = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lavj;->b(Ljava/lang/String;)V

    .line 1479
    if-eqz p5, :cond_8

    .line 1499
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 1500
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 1501
    const/4 v1, 0x0

    .line 1502
    if-eqz p2, :cond_3

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-static {p1, v1, v4, p2, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1503
    :cond_3
    const/4 v4, 0x0

    sub-int v5, p3, p2

    invoke-static {p1, p2, v4, v5, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1505
    const/4 v5, 0x0

    sub-int v6, v3, p2

    invoke-static {p1, p2, v5, v6, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1506
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p4

    invoke-static {v0, v2, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1507
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1508
    if-eqz v1, :cond_4

    .line 1509
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v1, v7, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1510
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1512
    :cond_4
    if-eqz v4, :cond_6

    .line 1513
    sub-int v1, p4, v3

    .line 1514
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 1515
    add-int/2addr v1, v7

    add-int/lit8 v1, v1, -0x1

    div-int v8, v1, v7

    .line 1516
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v8, :cond_5

    .line 1517
    mul-int v9, v1, v7

    add-int/2addr v9, p2

    int-to-float v9, v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v6, v4, v9, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1516
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1518
    :cond_5
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 1520
    :cond_6
    if-eqz v5, :cond_7

    .line 1521
    sub-int v1, v3, p2

    sub-int v1, p4, v1

    int-to-float v1, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v6, v5, v1, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1522
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    :cond_7
    move-object v1, v2

    .line 1524
    goto/16 :goto_0

    .line 1543
    :cond_8
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 1544
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 1545
    const/4 v1, 0x0

    .line 1546
    if-eqz p2, :cond_9

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-static {p1, v1, v4, v2, p2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1547
    :cond_9
    const/4 v4, 0x0

    sub-int v5, p3, p2

    invoke-static {p1, v4, p2, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1548
    const/4 v5, 0x0

    sub-int v6, v3, p3

    invoke-static {p1, v5, p3, v2, v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1549
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p4

    invoke-static {v2, v0, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1550
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1551
    if-eqz v1, :cond_a

    .line 1552
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v1, v7, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1553
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1555
    :cond_a
    if-eqz v4, :cond_c

    .line 1556
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 1557
    sub-int v1, p4, p2

    sub-int/2addr v3, p3

    sub-int/2addr v1, v3

    .line 1558
    add-int/2addr v1, v7

    add-int/lit8 v1, v1, -0x1

    div-int v3, v1, v7

    .line 1559
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v3, :cond_b

    .line 1560
    const/4 v8, 0x0

    mul-int v9, v1, v7

    add-int/2addr v9, p2

    int-to-float v9, v9

    const/4 v10, 0x0

    invoke-virtual {v6, v4, v8, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1559
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1561
    :cond_b
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 1563
    :cond_c
    if-eqz v5, :cond_d

    .line 1564
    const/4 v1, 0x0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int v3, p4, v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v6, v5, v1, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1565
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    :cond_d
    move-object v1, v2

    goto/16 :goto_0
.end method

.method private b(Layx;)V
    .locals 4
    .parameter

    .prologue
    .line 2397
    const-string v0, "General"

    const-string v1, "skin_name"

    invoke-virtual {p1, v0, v1}, Layx;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2398
    if-eqz v0, :cond_0

    .line 2399
    iget-object v1, p0, Lavj;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2400
    iget-object v2, p0, Lavj;->a:Landroid/content/Context;

    const v3, 0x7f0b0117

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2401
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2403
    :cond_0
    return-void
.end method

.method private static b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 2443
    return-void
.end method

.method private b(Lavn;Layx;)Z
    .locals 10
    .parameter
    .parameter

    .prologue
    .line 1673
    const-string v0, "Display"

    const-string v1, "font_size"

    invoke-virtual {p2, v0, v1}, Layx;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1674
    if-nez v0, :cond_1

    const/16 v0, 0x10

    :goto_0
    iput v0, p1, Lavn;->a:I

    .line 1675
    const-string v0, "Display"

    const-string v1, "font_ch"

    invoke-virtual {p2, v0, v1}, Layx;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1676
    iget v1, p1, Lavn;->a:I

    invoke-direct {p0, v0}, Lavj;->a(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p1, Lavn;->a:I

    .line 1677
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[initCustomThemeCandidate] fontCh = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lavj;->b(Ljava/lang/String;)V

    .line 1678
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[initCustomThemeCandidate] fontSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lavn;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lavj;->b(Ljava/lang/String;)V

    .line 1687
    const-string v0, "Scheme_H1"

    const-string v1, "pic"

    invoke-virtual {p2, v0, v1}, Layx;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1688
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1689
    :cond_0
    const-string v0, "Scheme_H2"

    const-string v1, "pinyin_pic"

    invoke-virtual {p2, v0, v1}, Layx;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1691
    const-string v0, "Scheme_H2"

    iput-object v0, p1, Lavn;->a:Ljava/lang/String;

    .line 1692
    const-string v0, "Scheme_H2"

    const-string v1, "pinyin_layout_horizontal"

    invoke-virtual {p2, v0, v1}, Layx;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1694
    const-string v0, "Scheme_H2"

    const-string v1, "pinyin_layout_vertical"

    invoke-virtual {p2, v0, v1}, Layx;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1696
    const-string v0, "Scheme_H2"

    const-string v1, "pinyin_marge"

    invoke-virtual {p2, v0, v1}, Layx;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1698
    const-string v0, "Scheme_H2"

    const-string v5, "zhongwen_marge"

    invoke-virtual {p2, v0, v5}, Layx;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1711
    :goto_1
    if-nez v4, :cond_3

    const/4 v0, 0x0

    .line 1795
    :goto_2
    return v0

    .line 1674
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 1700
    :cond_2
    const-string v0, "Scheme_H1"

    iput-object v0, p1, Lavn;->a:Ljava/lang/String;

    .line 1701
    const-string v0, "Scheme_H1"

    const-string v1, "layout_horizontal"

    invoke-virtual {p2, v0, v1}, Layx;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1703
    const-string v0, "Scheme_H1"

    const-string v1, "layout_vertical"

    invoke-virtual {p2, v0, v1}, Layx;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1705
    const-string v0, "Scheme_H1"

    const-string v1, "pinyin_marge"

    invoke-virtual {p2, v0, v1}, Layx;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1707
    const-string v0, "Scheme_H1"

    const-string v5, "zhongwen_marge"

    invoke-virtual {p2, v0, v5}, Layx;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1712
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[initCustomThemeCandidate] pic = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lavj;->b(Ljava/lang/String;)V

    .line 1713
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lavn;->b:Ljava/lang/String;

    .line 1715
    if-eqz v3, :cond_4

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_5

    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .line 1716
    :cond_5
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1717
    const/4 v4, 0x3

    new-array v4, v4, [I

    iput-object v4, p1, Lavn;->a:[I

    .line 1718
    iget-object v4, p1, Lavn;->a:[I

    const/4 v5, 0x0

    const/4 v6, 0x0

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v4, v5

    .line 1719
    iget-object v4, p1, Lavn;->a:[I

    const/4 v5, 0x1

    const/4 v6, 0x1

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v4, v5

    .line 1720
    iget-object v4, p1, Lavn;->a:[I

    const/4 v5, 0x2

    const/4 v6, 0x2

    aget-object v3, v3, v6

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v4, v5

    .line 1722
    if-eqz v2, :cond_6

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_7

    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 1723
    :cond_7
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1724
    const/4 v3, 0x3

    new-array v3, v3, [I

    iput-object v3, p1, Lavn;->b:[I

    .line 1725
    iget-object v3, p1, Lavn;->b:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v3, v4

    .line 1726
    iget-object v3, p1, Lavn;->b:[I

    const/4 v4, 0x1

    const/4 v5, 0x1

    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v3, v4

    .line 1727
    iget-object v3, p1, Lavn;->b:[I

    const/4 v4, 0x2

    const/4 v5, 0x2

    aget-object v2, v2, v5

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v3, v4

    .line 1729
    if-eqz v1, :cond_8

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_8

    .line 1730
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1731
    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x2

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x3

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    aget-object v1, v1, v6

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v2, v3, v4, v5, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p1, Lavn;->a:Landroid/graphics/Rect;

    .line 1737
    :cond_8
    if-eqz v0, :cond_9

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_9

    .line 1738
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1739
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x2

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x3

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    aget-object v0, v0, v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p1, Lavn;->b:Landroid/graphics/Rect;

    .line 1744
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[initCustomThemeCandidate] pinyin_margin = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lavn;->a:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lavn;->a:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lavn;->a:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lavn;->a:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lavj;->b(Ljava/lang/String;)V

    .line 1746
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[initCustomThemeCandidate] zhongwen_margin = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lavn;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lavn;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lavn;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lavn;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lavj;->b(Ljava/lang/String;)V

    .line 1750
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laox;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/res/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lavn;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1751
    if-nez v0, :cond_13

    .line 1752
    iget-object v0, p1, Lavn;->b:Ljava/lang/String;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1753
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lavn;->b:Ljava/lang/String;

    const/4 v3, 0x0

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lavn;->b:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lavn;->b:Ljava/lang/String;

    .line 1754
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laox;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/res/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lavn;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v2, v0

    .line 1756
    :goto_3
    if-nez v2, :cond_a

    .line 1757
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 1758
    :cond_a
    iget-object v0, p1, Lavn;->a:Ljava/lang/String;

    const-string v1, "transparent_color_enable"

    invoke-virtual {p2, v0, v1}, Layx;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v0, p1, Lavn;->a:Ljava/lang/String;

    const-string v1, "transparent_color_enable"

    invoke-virtual {p2, v0, v1}, Layx;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1760
    iget-object v0, p1, Lavn;->a:Ljava/lang/String;

    const-string v1, "transparent_color"

    invoke-virtual {p2, v0, v1}, Layx;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1761
    if-eqz v3, :cond_10

    .line 1762
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p1, Lavn;->a:Landroid/graphics/Bitmap;

    .line 1763
    iget-object v0, p1, Lavn;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 1764
    iget-object v0, p1, Lavn;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 1765
    const/4 v0, 0x0

    move v1, v0

    :goto_4
    if-ge v1, v4, :cond_c

    .line 1766
    const/4 v0, 0x0

    :goto_5
    if-ge v0, v5, :cond_b

    .line 1767
    iget-object v6, p1, Lavn;->a:Landroid/graphics/Bitmap;

    const/high16 v7, -0x100

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v8

    const v9, 0xffffff

    and-int/2addr v8, v9

    or-int/2addr v7, v8

    invoke-virtual {v6, v1, v0, v7}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 1766
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1765
    :cond_b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 1771
    :cond_c
    const-string v1, "000000"

    .line 1772
    const-string v0, "0x"

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1773
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x6

    if-ge v2, v3, :cond_d

    .line 1774
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1775
    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1776
    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 1777
    const/4 v0, 0x0

    add-int/lit8 v1, v2, 0x18

    shl-int v3, v0, v1

    .line 1778
    const/4 v0, 0x0

    move v1, v0

    :goto_6
    if-ge v1, v4, :cond_11

    .line 1779
    const/4 v0, 0x0

    :goto_7
    if-ge v0, v5, :cond_f

    .line 1780
    iget-object v6, p1, Lavn;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v1, v0}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v6

    .line 1781
    const/high16 v7, -0x100

    or-int/2addr v7, v2

    if-ne v6, v7, :cond_e

    .line 1782
    iget-object v6, p1, Lavn;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v1, v0, v3}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 1779
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1778
    :cond_f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    .line 1787
    :cond_10
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p1, Lavn;->a:Landroid/graphics/Bitmap;

    .line 1794
    :cond_11
    :goto_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[initCustomThemeCandidate] theme.name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lavn;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lavj;->b(Ljava/lang/String;)V

    .line 1795
    const/4 v0, 0x1

    goto/16 :goto_2

    .line 1790
    :cond_12
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p1, Lavn;->a:Landroid/graphics/Bitmap;

    goto :goto_8

    :cond_13
    move-object v2, v0

    goto/16 :goto_3
.end method

.method private b(Layx;)Z
    .locals 20
    .parameter

    .prologue
    .line 1930
    const-string v2, "[loadCandidateBG] enter"

    invoke-static {v2}, Lavj;->b(Ljava/lang/String;)V

    .line 1931
    if-nez p1, :cond_0

    const/4 v2, 0x0

    .line 2265
    :goto_0
    return v2

    .line 1936
    :cond_0
    new-instance v13, Lavn;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v2}, Lavn;-><init>(Lavj;Lavk;)V

    .line 1937
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v13, v1}, Lavj;->b(Lavn;Layx;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1938
    const/4 v2, 0x0

    goto :goto_0

    .line 1939
    :cond_1
    iget-object v2, v13, Lavn;->a:Landroid/graphics/Bitmap;

    if-nez v2, :cond_2

    .line 1940
    const/4 v2, 0x0

    goto :goto_0

    .line 1941
    :cond_2
    const-string v2, "[loadCandidateBG] initCustomThemeCandidate success "

    invoke-static {v2}, Lavj;->b(Ljava/lang/String;)V

    .line 1946
    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1948
    iget-object v2, v13, Lavn;->a:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v13}, Lavj;->a(Layx;Ljava/lang/String;Lavn;)V

    .line 1949
    const-string v2, "[loadCandidateBG] loadThemeButtonResources success "

    invoke-static {v2}, Lavj;->b(Ljava/lang/String;)V

    .line 1954
    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1955
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v2}, Lavj;->a(Lavn;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v13, Lavn;->a:Landroid/graphics/Bitmap;

    .line 1956
    iget-object v2, v13, Lavn;->b:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    .line 1957
    iget-object v2, v13, Lavn;->b:Landroid/graphics/Bitmap;

    iget v3, v13, Lavn;->f:I

    iget v4, v13, Lavn;->h:I

    iget-object v5, v13, Lavn;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iget v6, v13, Lavn;->f:I

    sub-int/2addr v5, v6

    iget v6, v13, Lavn;->g:I

    sub-int/2addr v5, v6

    iget-object v6, v13, Lavn;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    iget v7, v13, Lavn;->h:I

    sub-int/2addr v6, v7

    iget v7, v13, Lavn;->i:I

    sub-int/2addr v6, v7

    invoke-static {v2, v3, v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v13, Lavn;->b:Landroid/graphics/Bitmap;

    .line 1964
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[loadCandidateBG] cutAlphaRegion success resolution = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v13, Lavn;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v13, Lavn;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lavj;->b(Ljava/lang/String;)V

    .line 1969
    move-object/from16 v0, p0

    iget v2, v0, Lavj;->a:F

    iget-object v3, v13, Lavn;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v2, v3}, Lavj;->a(Lavn;FI)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lavj;->c:F

    .line 1971
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[loadCandidateBG] zoomRate = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lavj;->c:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  all heighttt == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lavj;->a:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lavj;->b(Ljava/lang/String;)V

    .line 1978
    move-object/from16 v0, p0

    iget v2, v0, Lavj;->c:F

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v2}, Lavj;->a(Lavn;F)Landroid/graphics/Rect;

    move-result-object v11

    .line 1979
    if-nez v11, :cond_4

    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1986
    :cond_4
    const-string v3, "C8E0E8"

    .line 1987
    iget-object v2, v13, Lavn;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 1988
    iget-object v2, v13, Lavn;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 1989
    iget v5, v11, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lavj;->c:F

    div-float/2addr v5, v6

    float-to-int v7, v5

    .line 1990
    iget v5, v11, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lavj;->c:F

    div-float/2addr v5, v6

    float-to-int v6, v5

    .line 1991
    iget v8, v13, Lavn;->b:I

    .line 1992
    iget v5, v13, Lavn;->b:I

    iget v9, v13, Lavn;->a:I

    add-int/2addr v5, v9

    .line 1993
    if-le v6, v4, :cond_10

    .line 1996
    :goto_1
    if-le v5, v2, :cond_f

    .line 1999
    :goto_2
    if-ge v7, v4, :cond_e

    if-ge v8, v2, :cond_e

    if-ltz v8, :cond_e

    .line 2000
    if-ne v4, v7, :cond_d

    add-int/lit8 v3, v4, 0x1

    .line 2001
    :goto_3
    if-ne v2, v8, :cond_5

    add-int/lit8 v2, v2, 0x1

    .line 2002
    :cond_5
    iget-object v4, v13, Lavn;->a:Landroid/graphics/Bitmap;

    sub-int/2addr v3, v7

    sub-int/2addr v2, v8

    invoke-static {v4, v7, v8, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 2003
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lavj;->a(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v2

    .line 2004
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    move-object v10, v2

    .line 2046
    :goto_4
    iget-object v2, v13, Lavn;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget v3, v13, Lavn;->c:I

    sub-int v14, v2, v3

    .line 2047
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[loadCandidateBG] textAreaMarginBottom = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", candidate.bm.height === "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v13, Lavn;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lavj;->b(Ljava/lang/String;)V

    .line 2050
    iget v2, v13, Lavn;->c:I

    iget v3, v13, Lavn;->b:I

    sub-int v15, v2, v3

    .line 2051
    if-gtz v15, :cond_6

    const/4 v2, 0x0

    goto/16 :goto_0

    .line 2053
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lavj;->a:F

    move-object/from16 v0, p0

    iget v3, v0, Lavj;->b:F

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lavj;->a:F

    div-float/2addr v2, v3

    int-to-float v3, v15

    mul-float/2addr v2, v3

    int-to-float v3, v15

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    .line 2055
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    int-to-float v3, v14

    cmpl-float v2, v2, v3

    if-lez v2, :cond_7

    .line 2056
    rsub-int/lit8 v2, v14, 0x0

    int-to-float v2, v2

    .line 2057
    :cond_7
    const/16 v16, 0x0

    .line 2059
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[loadCandidateBG] gap = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lavj;->b(Ljava/lang/String;)V

    .line 2060
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[loadCandidateBG] DEFAULT_TEXT_AREA_HEIGHT = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lavj;->a:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lavj;->b(Ljava/lang/String;)V

    .line 2061
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[loadCandidateBG] DEFAULT_CANDIDATE_AREA_HEIGHT = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lavj;->b:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lavj;->b(Ljava/lang/String;)V

    .line 2062
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[loadCandidateBG] candidate.pinyinHeight = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v13, Lavn;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lavj;->b(Ljava/lang/String;)V

    .line 2063
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[loadCandidateBG] candidate.zhongwenHeight = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v13, Lavn;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lavj;->b(Ljava/lang/String;)V

    .line 2064
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[loadCandidateBG] candidate bg margin GAP = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lavj;->c:F

    mul-float v3, v3, v16

    move-object/from16 v0, p0

    iget v4, v0, Lavj;->a:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lavj;->b(Ljava/lang/String;)V

    .line 2065
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[loadCandidateBG] candidate bg margin GAP default = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lavj;->a:F

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lavj;->b:F

    sub-float/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lavj;->b(Ljava/lang/String;)V

    .line 2070
    new-instance v17, Landroid/graphics/Matrix;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Matrix;-><init>()V

    .line 2071
    move-object/from16 v0, p0

    iget v2, v0, Lavj;->c:F

    move-object/from16 v0, p0

    iget v3, v0, Lavj;->c:F

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 2074
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[loadCandidateBG] before create candidate_bg_land.png, height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v13, Lavn;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lavj;->b(Ljava/lang/String;)V

    .line 2076
    iget-object v2, v13, Lavn;->b:Landroid/graphics/Bitmap;

    if-nez v2, :cond_8

    .line 2077
    iget-object v2, v13, Lavn;->a:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    iget v4, v13, Lavn;->b:I

    int-to-float v4, v4

    sub-float v4, v4, v16

    float-to-int v4, v4

    iget-object v5, v13, Lavn;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-static {v2, v3, v4, v5, v15}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 2079
    const-string v2, "[loadCandidateBG] bm_land = null"

    invoke-static {v2}, Lavj;->b(Ljava/lang/String;)V

    .line 2086
    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[loadCandidateBG] candidate.textTopLine = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v13, Lavn;->b:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ",,,,,,,,, textAreaHeight = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lavj;->b(Ljava/lang/String;)V

    .line 2088
    iget-object v2, v13, Lavn;->a:[I

    const/4 v4, 0x0

    aget v2, v2, v4

    const/4 v4, 0x1

    if-ne v2, v4, :cond_c

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v4, v0, Lavj;->c:F

    mul-float/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lavj;->b:I

    int-to-float v4, v4

    cmpg-float v2, v2, v4

    if-gez v2, :cond_c

    .line 2091
    iget v2, v11, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v4, v0, Lavj;->c:F

    div-float/2addr v2, v4

    float-to-int v4, v2

    iget v2, v11, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v5, v0, Lavj;->c:F

    div-float/2addr v2, v5

    float-to-int v5, v2

    move-object/from16 v0, p0

    iget v2, v0, Lavj;->b:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v6, v0, Lavj;->c:F

    div-float/2addr v2, v6

    float-to-int v6, v2

    const/4 v7, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lavj;->b(Landroid/graphics/Bitmap;IIIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v2, v3

    .line 2096
    :goto_6
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    move-object/from16 v7, v17

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 2099
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Laox;->z:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/res/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "candidate_bg_land.png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lavj;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    .line 2101
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v11, Landroid/graphics/Rect;->left:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v11, Landroid/graphics/Rect;->right:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2105
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Laox;->z:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/layout/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "images.ini"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "candidate_bg_land.png"

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v4}, Lavj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2107
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 2109
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 2117
    iget-object v2, v13, Lavn;->a:Landroid/graphics/Bitmap;

    invoke-static {v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 2119
    iget-object v2, v13, Lavn;->a:[I

    const/4 v4, 0x0

    aget v2, v2, v4

    const/4 v4, 0x1

    if-ne v2, v4, :cond_9

    iget-object v2, v13, Lavn;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v4, v0, Lavj;->c:F

    mul-float/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lavj;->a:I

    int-to-float v4, v4

    cmpg-float v2, v2, v4

    if-gez v2, :cond_9

    .line 2122
    iget v2, v11, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v4, v0, Lavj;->c:F

    div-float/2addr v2, v4

    float-to-int v4, v2

    iget v2, v11, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v5, v0, Lavj;->c:F

    div-float/2addr v2, v5

    float-to-int v5, v2

    move-object/from16 v0, p0

    iget v2, v0, Lavj;->a:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v6, v0, Lavj;->c:F

    div-float/2addr v2, v6

    float-to-int v6, v2

    const/4 v7, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lavj;->b(Landroid/graphics/Bitmap;IIIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2125
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[loadCandidateBg] newCandsBg\'s  heighttttttttttt === "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lavj;->b(Ljava/lang/String;)V

    .line 2128
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    move-object/from16 v7, v17

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 2130
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2134
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[loadCandidateBg] 1111 newBm\'s  heighttttttttttt === "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",,,, ninePatchRect === "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lavj;->b(Ljava/lang/String;)V

    move-object v9, v3

    move-object v11, v2

    move-object v12, v4

    .line 2145
    :goto_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadCandidateBg ... finally candidate_bg.png,,,, w === "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",,, h === "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lavj;->b(Ljava/lang/String;)V

    .line 2147
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laox;->z:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/res/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "candidate_bg.png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v2}, Lavj;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    .line 2149
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laox;->z:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/layout/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "images.ini"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "candidate_bg.png"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v12}, Lavj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2153
    const-string v2, "575757"

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    .line 2156
    const/4 v2, 0x0

    :goto_8
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ge v2, v3, :cond_b

    .line 2157
    const/4 v3, 0x0

    :goto_9
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-ge v3, v5, :cond_a

    .line 2158
    invoke-virtual {v9, v2, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v5

    .line 2159
    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    .line 2161
    and-int/lit16 v7, v5, 0xff

    mul-int/2addr v7, v6

    and-int/lit16 v8, v4, 0xff

    rsub-int v0, v6, 0xff

    move/from16 v18, v0

    mul-int v8, v8, v18

    add-int/2addr v7, v8

    int-to-float v7, v7

    const/high16 v8, 0x437f

    div-float/2addr v7, v8

    float-to-int v7, v7

    .line 2162
    ushr-int/lit8 v8, v5, 0x8

    and-int/lit16 v8, v8, 0xff

    mul-int/2addr v8, v6

    ushr-int/lit8 v18, v4, 0x8

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    rsub-int v0, v6, 0xff

    move/from16 v19, v0

    mul-int v18, v18, v19

    add-int v8, v8, v18

    int-to-float v8, v8

    const/high16 v18, 0x437f

    div-float v8, v8, v18

    float-to-int v8, v8

    .line 2163
    ushr-int/lit8 v5, v5, 0x10

    and-int/lit16 v5, v5, 0xff

    mul-int/2addr v5, v6

    ushr-int/lit8 v18, v4, 0x10

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    rsub-int v6, v6, 0xff

    mul-int v6, v6, v18

    add-int/2addr v5, v6

    int-to-float v5, v5

    const/high16 v6, 0x437f

    div-float/2addr v5, v6

    float-to-int v5, v5

    .line 2164
    const/high16 v6, -0x100

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v5, v6

    shl-int/lit8 v6, v8, 0x8

    or-int/2addr v5, v6

    or-int/2addr v5, v7

    .line 2165
    invoke-virtual {v9, v2, v3, v5}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 2157
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 2081
    :cond_8
    iget-object v2, v13, Lavn;->b:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    iget v4, v13, Lavn;->b:I

    int-to-float v4, v4

    sub-float v4, v4, v16

    float-to-int v4, v4

    iget-object v5, v13, Lavn;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-static {v2, v3, v4, v5, v15}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 2083
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[loadCandidateBG] bm_land != null, getHeight = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v13, Lavn;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lavj;->b(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 2136
    :cond_9
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v9, 0x1

    move-object/from16 v8, v17

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2138
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v11, Landroid/graphics/Rect;->left:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v11, Landroid/graphics/Rect;->right:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2142
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[loadCandidateBg] 2222 newBm\'s  heighttttttttttt === "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",,,, ninePatchRect === "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lavj;->b(Ljava/lang/String;)V

    move-object v9, v2

    move-object v11, v3

    move-object v12, v4

    goto/16 :goto_7

    .line 2156
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_8

    .line 2167
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laox;->z:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/res/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "candidate_bg_weixin.png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v2}, Lavj;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    .line 2169
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laox;->z:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/layout/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "images.ini"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "candidate_bg_weixin.png"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v12}, Lavj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2173
    const/4 v2, 0x0

    iget v3, v13, Lavn;->b:I

    int-to-float v3, v3

    sub-float v3, v3, v16

    float-to-int v3, v3

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-static {v11, v2, v3, v4, v15}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2176
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    move-object/from16 v7, v17

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 2179
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Laox;->z:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/res/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "candidate_bg_default.png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lavj;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    .line 2181
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laox;->z:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/layout/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "images.ini"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "candidate_bg_default.png"

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v12}, Lavj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2184
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    .line 2186
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 2188
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 2200
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laox;->z:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/layout/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "cands.ini"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ComposingView"

    const-string v4, "BG_COLOR"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0xe6"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v5}, Lavj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2204
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laox;->z:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/layout/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "cands.ini"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CloudView"

    const-string v4, "BG_COLOR"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0xb4"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v5}, Lavj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2209
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laox;->z:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/res/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laox;->z:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/res/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "bg_composing_bottom"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "bg_cloud_bottom"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/16 v6, 0x10

    invoke-static {v10, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v2, v3, v4, v5, v6}, Lauv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;II)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2218
    :goto_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laox;->z:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/layout/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "cands.ini"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CandidateView"

    const-string v4, "H"

    iget-object v5, v13, Lavn;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lavj;->c:F

    mul-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lavj;->a:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v5}, Lavj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2222
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laox;->z:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/layout/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "cands.ini"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CandidateViewWeixin"

    const-string v4, "H"

    iget-object v5, v13, Lavn;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lavj;->c:F

    mul-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lavj;->a:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v5}, Lavj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2226
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[loadCandidateBG] candidateview H = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v13, Lavn;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lavj;->c:F

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lavj;->a:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lavj;->b(Ljava/lang/String;)V

    .line 2229
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v13, Lavn;->b:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lavj;->c:F

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lavj;->a:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",0,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v13, Lavn;->b:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lavj;->c:F

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lavj;->a:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-float v3, v14

    add-float v3, v3, v16

    move-object/from16 v0, p0

    iget v4, v0, Lavj;->c:F

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lavj;->a:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2235
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[loadCandidateBG] candidate bg margin = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lavj;->b(Ljava/lang/String;)V

    .line 2236
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laox;->z:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/layout/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "cands.ini"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CandidateView"

    const-string v5, "MARGINS"

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5, v2}, Lavj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2240
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laox;->z:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/layout/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "cands.ini"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CandidateViewWeixin"

    const-string v5, "MARGINS"

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5, v2}, Lavj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2244
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v13, Lavn;->b:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lavj;->c:F

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lavj;->a:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",0,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v13, Lavn;->b:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lavj;->c:F

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lavj;->a:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2250
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[loadCandidateBG] candidate_land bg margin = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lavj;->b(Ljava/lang/String;)V

    .line 2251
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laox;->z:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/layout/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "cands.ini"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CandidateViewLand"

    const-string v5, "MARGINS"

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5, v2}, Lavj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2255
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v13, Lavn;->b:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lavj;->c:F

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lavj;->a:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",0,0,0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2259
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[loadCandidateBG] candidate_default bg margin = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lavj;->b(Ljava/lang/String;)V

    .line 2260
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laox;->z:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/layout/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "cands.ini"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CandidateViewDefault"

    const-string v5, "MARGINS"

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5, v2}, Lavj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2264
    invoke-virtual {v13}, Lavn;->a()V

    .line 2265
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2212
    :catch_0
    move-exception v2

    .line 2213
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_a

    .line 2214
    :catch_1
    move-exception v2

    .line 2215
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto/16 :goto_a

    :cond_c
    move-object v2, v3

    goto/16 :goto_6

    :cond_d
    move v3, v4

    goto/16 :goto_3

    :cond_e
    move-object v10, v3

    goto/16 :goto_4

    :cond_f
    move v2, v5

    goto/16 :goto_2

    :cond_10
    move v4, v6

    goto/16 :goto_1
.end method

.method private c(Layx;)Z
    .locals 11
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v10, 0x6

    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v3, 0x0

    .line 2275
    const-string v0, "Display"

    const-string v1, "zhongwen_color"

    invoke-virtual {p1, v0, v1}, Layx;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2276
    const-string v1, "Display"

    const-string v2, "zhongwen_first_color"

    invoke-virtual {p1, v1, v2}, Layx;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2277
    const-string v2, "Display"

    const-string v4, "pinyin_color"

    invoke-virtual {p1, v2, v4}, Layx;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2278
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    :cond_0
    move v0, v3

    .line 2331
    :goto_0
    return v0

    .line 2280
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "========> zhongwen = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " >>>>>>>= first = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  >>>>>>>> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lavj;->a(Ljava/lang/String;)V

    .line 2281
    new-instance v4, Lavm;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lavm;-><init>(Lavj;Lavk;)V

    iput-object v4, p0, Lavj;->a:Lavm;

    .line 2282
    const-string v4, "000000"

    .line 2283
    const-string v5, "0x"

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2284
    const-string v5, "0x"

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 2285
    const-string v5, "0x"

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 2286
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v10, :cond_2

    .line 2287
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2288
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v10, :cond_3

    .line 2289
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2290
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v10, :cond_4

    .line 2291
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2292
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "========> zhongwen = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " >>>>>>>= first = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  >>>>>>>> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lavj;->a(Ljava/lang/String;)V

    .line 2294
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2296
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2298
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2299
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2300
    const-string v5, "EB4C2E"

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2301
    const-string v5, "FFFFFF"

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2302
    const-string v5, "536070"

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2303
    const-string v5, "4D6C93"

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2304
    const-string v5, "929EAB"

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2305
    const-string v5, "93A6BD"

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2306
    const-string v5, "4D6C94"

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2307
    const-string v5, "4a9bd7"

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2308
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2309
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2310
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2311
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2312
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2313
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2314
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2315
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2316
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laox;->z:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "/layout/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "template.ini"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "TEXT_COLOR"

    invoke-direct {p0, v5, v7, v2, v3}, Lavj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    .line 2318
    iget-object v2, p0, Lavj;->a:Lavm;

    iput-object v1, v2, Lavm;->a:Ljava/lang/String;

    .line 2319
    iget-object v1, p0, Lavj;->a:Lavm;

    iput-object v4, v1, Lavm;->b:Ljava/lang/String;

    .line 2320
    iget-object v1, p0, Lavj;->a:Lavm;

    iput-object v0, v1, Lavm;->c:Ljava/lang/String;

    .line 2323
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laox;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/res/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-static {v4, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lauv;->a(Ljava/lang/String;II)Z

    .line 2325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laox;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/res/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laox;->z:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/res/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "slip_button_image_square"

    aput-object v5, v2, v3

    const/4 v3, 0x0

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    const/high16 v5, -0x100

    invoke-static/range {v0 .. v5}, Lauv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;III)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v0, v6

    .line 2331
    goto/16 :goto_0

    .line 2328
    :catch_0
    move-exception v0

    .line 2329
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lavj;->a(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public a(Ljava/lang/String;II)Z
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2406
    iput p2, p0, Lavj;->a:I

    .line 2407
    iput p3, p0, Lavj;->b:I

    .line 2409
    iget-object v0, p0, Lavj;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2410
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 2412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laox;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/layout/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "cands.ini"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Layy;->a(Ljava/lang/String;)Layx;

    move-result-object v0

    .line 2416
    const-string v1, "CandidateWordView"

    const-string v2, "H"

    invoke-virtual {v0, v1, v2}, Layx;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lavj;->a:F

    .line 2418
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laox;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/res/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "skin.ini"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2420
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2421
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laox;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/res/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Skin.ini"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2423
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2425
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2426
    invoke-static {p1}, Layy;->a(Ljava/lang/String;)Layx;

    move-result-object v0

    .line 2427
    invoke-direct {p0, v0}, Lavj;->c(Layx;)Z

    .line 2428
    invoke-direct {p0, v0}, Lavj;->b(Layx;)Z

    .line 2429
    invoke-direct {p0, v0}, Lavj;->a(Layx;)Z

    .line 2431
    invoke-direct {p0, v0}, Lavj;->a(Layx;)V

    .line 2432
    invoke-direct {p0, v0}, Lavj;->b(Layx;)V

    .line 2434
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 266
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 267
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v3

    if-nez v3, :cond_1

    .line 288
    :cond_0
    :goto_0
    return v0

    .line 268
    :cond_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 276
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 277
    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 278
    :try_start_2
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 279
    :try_start_3
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 280
    const/16 v2, 0x2000

    :try_start_4
    new-array v2, v2, [B

    .line 282
    :goto_1
    invoke-virtual {v3, v2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    .line 283
    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7, v6}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 287
    :catch_0
    move-exception v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    .line 290
    :goto_2
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    .line 291
    invoke-static {v1}, Lazd;->a(Ljava/io/Closeable;)V

    .line 292
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    .line 293
    invoke-static {v3}, Lazd;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 285
    :cond_2
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 286
    const/4 v0, 0x1

    .line 290
    invoke-static {v3}, Lazd;->a(Ljava/io/Closeable;)V

    .line 291
    invoke-static {v1}, Lazd;->a(Ljava/io/Closeable;)V

    .line 292
    invoke-static {v5}, Lazd;->a(Ljava/io/Closeable;)V

    .line 293
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 290
    :catchall_0
    move-exception v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    :goto_3
    invoke-static {v3}, Lazd;->a(Ljava/io/Closeable;)V

    .line 291
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    .line 292
    invoke-static {v5}, Lazd;->a(Ljava/io/Closeable;)V

    .line 293
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    .line 290
    throw v0

    :catchall_1
    move-exception v0

    move-object v3, v2

    move-object v4, v2

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v3, v2

    goto :goto_3

    :catchall_3
    move-exception v0

    goto :goto_3

    :catchall_4
    move-exception v0

    move-object v2, v1

    goto :goto_3

    .line 287
    :catch_1
    move-exception v1

    move-object v1, v2

    move-object v3, v2

    move-object v4, v2

    goto :goto_2

    :catch_2
    move-exception v1

    move-object v1, v2

    move-object v3, v2

    move-object v4, v5

    goto :goto_2

    :catch_3
    move-exception v1

    move-object v1, v2

    move-object v3, v4

    move-object v4, v5

    goto :goto_2

    :catch_4
    move-exception v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    goto :goto_2
.end method
