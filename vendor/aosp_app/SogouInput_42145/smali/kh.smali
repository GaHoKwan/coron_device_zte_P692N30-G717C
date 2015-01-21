.class public final Lkh;
.super Lh;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final a:[B

.field private final b:I

.field private final c:I

.field private final d:I


# direct methods
.method public constructor <init>([BIIIIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p6, p7}, Lh;-><init>(II)V

    .line 43
    iput-object p1, p0, Lkh;->a:[B

    .line 44
    iput p2, p0, Lkh;->a:I

    .line 45
    iput p3, p0, Lkh;->b:I

    .line 46
    iput p4, p0, Lkh;->c:I

    .line 47
    iput p5, p0, Lkh;->d:I

    .line 48
    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Bitmap;
    .locals 13

    .prologue
    const/4 v2, 0x0

    .line 109
    invoke-virtual {p0}, Lkh;->a()I

    move-result v3

    .line 110
    invoke-virtual {p0}, Lkh;->b()I

    move-result v7

    .line 111
    mul-int v0, v3, v7

    new-array v1, v0, [I

    .line 112
    iget-object v6, p0, Lkh;->a:[B

    .line 113
    iget v0, p0, Lkh;->d:I

    iget v4, p0, Lkh;->a:I

    mul-int/2addr v0, v4

    iget v4, p0, Lkh;->c:I

    add-int/2addr v0, v4

    move v4, v2

    move v5, v0

    .line 115
    :goto_0
    if-ge v4, v7, :cond_1

    .line 116
    mul-int v8, v4, v3

    move v0, v2

    .line 117
    :goto_1
    if-ge v0, v3, :cond_0

    .line 118
    add-int v9, v5, v0

    aget-byte v9, v6, v9

    and-int/lit16 v9, v9, 0xff

    .line 119
    add-int v10, v8, v0

    const/high16 v11, -0x100

    const v12, 0x10101

    mul-int/2addr v9, v12

    or-int/2addr v9, v11

    aput v9, v1, v10

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 121
    :cond_0
    iget v0, p0, Lkh;->a:I

    add-int/2addr v5, v0

    .line 115
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 124
    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v7, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    move v4, v2

    move v5, v2

    move v6, v3

    .line 125
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 126
    return-object v0
.end method

.method public a()[B
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-virtual {p0}, Lkh;->a()I

    move-result v3

    .line 67
    invoke-virtual {p0}, Lkh;->b()I

    move-result v4

    .line 71
    iget v0, p0, Lkh;->a:I

    if-ne v3, v0, :cond_1

    iget v0, p0, Lkh;->b:I

    if-ne v4, v0, :cond_1

    .line 72
    iget-object v0, p0, Lkh;->a:[B

    .line 92
    :cond_0
    :goto_0
    return-object v0

    .line 75
    :cond_1
    mul-int v5, v3, v4

    .line 76
    new-array v0, v5, [B

    .line 77
    iget v2, p0, Lkh;->d:I

    iget v6, p0, Lkh;->a:I

    mul-int/2addr v2, v6

    iget v6, p0, Lkh;->c:I

    add-int/2addr v2, v6

    .line 80
    iget v6, p0, Lkh;->a:I

    if-ne v3, v6, :cond_2

    .line 81
    iget-object v3, p0, Lkh;->a:[B

    invoke-static {v3, v2, v0, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 86
    :cond_2
    iget-object v5, p0, Lkh;->a:[B

    .line 87
    :goto_1
    if-ge v1, v4, :cond_0

    .line 88
    mul-int v6, v1, v3

    .line 89
    invoke-static {v5, v2, v0, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    iget v6, p0, Lkh;->a:I

    add-int/2addr v2, v6

    .line 87
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public a(I[B)[B
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 52
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lkh;->b()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 53
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested row is outside the image: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_1
    invoke-virtual {p0}, Lkh;->a()I

    move-result v0

    .line 56
    if-eqz p2, :cond_2

    array-length v1, p2

    if-ge v1, v0, :cond_3

    .line 57
    :cond_2
    new-array p2, v0, [B

    .line 59
    :cond_3
    iget v1, p0, Lkh;->d:I

    add-int/2addr v1, p1

    iget v2, p0, Lkh;->a:I

    mul-int/2addr v1, v2

    iget v2, p0, Lkh;->c:I

    add-int/2addr v1, v2

    .line 60
    iget-object v2, p0, Lkh;->a:[B

    const/4 v3, 0x0

    invoke-static {v2, v1, p2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    return-object p2
.end method
