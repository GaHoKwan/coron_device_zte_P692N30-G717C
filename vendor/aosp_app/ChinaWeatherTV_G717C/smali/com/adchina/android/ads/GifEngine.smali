.class public Lcom/adchina/android/ads/GifEngine;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/Vector;

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/adchina/android/ads/GifEngine;->a:Ljava/util/Vector;

    const/4 v0, 0x0

    iput v0, p0, Lcom/adchina/android/ads/GifEngine;->b:I

    return-void
.end method

.method public static a([B)Lcom/adchina/android/ads/GifEngine;
    .locals 4

    :try_start_0
    new-instance v0, Lcom/adchina/android/ads/GifEngine;

    invoke-direct {v0}, Lcom/adchina/android/ads/GifEngine;-><init>()V

    new-instance v2, Lcom/adchina/android/ads/q;

    invoke-direct {v2, p0}, Lcom/adchina/android/ads/q;-><init>([B)V

    invoke-static {v2}, Lcom/adchina/android/ads/q;->a(Lcom/adchina/android/ads/q;)I

    move-result v1

    iput v1, v0, Lcom/adchina/android/ads/GifEngine;->c:I

    invoke-static {v2}, Lcom/adchina/android/ads/q;->b(Lcom/adchina/android/ads/q;)I

    move-result v1

    iput v1, v0, Lcom/adchina/android/ads/GifEngine;->d:I

    :goto_0
    invoke-virtual {v2}, Lcom/adchina/android/ads/q;->a()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_1
    invoke-virtual {v2}, Lcom/adchina/android/ads/q;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {v2}, Lcom/adchina/android/ads/q;->c()Lcom/adchina/android/ads/g;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/adchina/android/ads/g;->b()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v1}, Lcom/adchina/android/ads/g;->b()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, v0, Lcom/adchina/android/ads/GifEngine;->a:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :try_start_2
    invoke-virtual {v2}, Lcom/adchina/android/ads/q;->b()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_2

    :catch_1
    move-exception v1

    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/adchina/android/ads/GifEngine;->a:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adchina/android/ads/GifEngine;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/adchina/android/ads/GifEngine;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/adchina/android/ads/GifEngine;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/adchina/android/ads/GifEngine;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adchina/android/ads/g;

    invoke-virtual {v0}, Lcom/adchina/android/ads/g;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/adchina/android/ads/GifEngine;->c:I

    return v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/adchina/android/ads/GifEngine;->d:I

    return v0
.end method

.method public final d()Lcom/adchina/android/ads/g;
    .locals 2

    iget-object v0, p0, Lcom/adchina/android/ads/GifEngine;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/adchina/android/ads/GifEngine;->a:Ljava/util/Vector;

    iget v1, p0, Lcom/adchina/android/ads/GifEngine;->b:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adchina/android/ads/g;

    goto :goto_0
.end method

.method public final e()V
    .locals 2

    iget v0, p0, Lcom/adchina/android/ads/GifEngine;->b:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/adchina/android/ads/GifEngine;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/adchina/android/ads/GifEngine;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/adchina/android/ads/GifEngine;->b:I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/adchina/android/ads/GifEngine;->b:I

    goto :goto_0
.end method
