.class public final Lmg;
.super Lh;
.source "SourceFile"


# instance fields
.field private final a:[B


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 12
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 40
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lh;-><init>(II)V

    .line 41
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 42
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 43
    mul-int v0, v3, v7

    new-array v1, v0, [I

    move-object v0, p1

    move v4, v2

    move v5, v2

    move v6, v3

    .line 44
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 49
    mul-int v0, v3, v7

    new-array v0, v0, [B

    iput-object v0, p0, Lmg;->a:[B

    move v4, v2

    .line 50
    :goto_0
    if-ge v4, v7, :cond_2

    .line 51
    mul-int v5, v4, v3

    move v0, v2

    .line 52
    :goto_1
    if-ge v0, v3, :cond_1

    .line 53
    add-int v6, v5, v0

    aget v6, v1, v6

    .line 54
    shr-int/lit8 v8, v6, 0x10

    and-int/lit16 v8, v8, 0xff

    .line 55
    shr-int/lit8 v9, v6, 0x8

    and-int/lit16 v9, v9, 0xff

    .line 56
    and-int/lit16 v6, v6, 0xff

    .line 57
    if-ne v8, v9, :cond_0

    if-ne v9, v6, :cond_0

    .line 59
    iget-object v6, p0, Lmg;->a:[B

    add-int v9, v5, v0

    int-to-byte v8, v8

    aput-byte v8, v6, v9

    .line 52
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 62
    :cond_0
    iget-object v10, p0, Lmg;->a:[B

    add-int v11, v5, v0

    add-int/2addr v8, v9

    add-int/2addr v8, v9

    add-int/2addr v6, v8

    shr-int/lit8 v6, v6, 0x2

    int-to-byte v6, v6

    aput-byte v6, v10, v11

    goto :goto_2

    .line 50
    :cond_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 66
    :cond_2
    return-void
.end method


# virtual methods
.method public a()[B
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lmg;->a:[B

    return-object v0
.end method

.method public a(I[B)[B
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 70
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lmg;->b()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 71
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

    .line 74
    :cond_1
    invoke-virtual {p0}, Lmg;->a()I

    move-result v0

    .line 75
    if-eqz p2, :cond_2

    array-length v1, p2

    if-ge v1, v0, :cond_3

    .line 76
    :cond_2
    new-array p2, v0, [B

    .line 78
    :cond_3
    iget-object v1, p0, Lmg;->a:[B

    mul-int v2, p1, v0

    const/4 v3, 0x0

    invoke-static {v1, v2, p2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    return-object p2
.end method