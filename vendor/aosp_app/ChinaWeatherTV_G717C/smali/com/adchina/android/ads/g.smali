.class public final Lcom/adchina/android/ads/g;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, Lcom/adchina/android/ads/g;->d:I

    iput-object p1, p0, Lcom/adchina/android/ads/g;->a:Landroid/graphics/Bitmap;

    iput p2, p0, Lcom/adchina/android/ads/g;->b:I

    iput p3, p0, Lcom/adchina/android/ads/g;->c:I

    iput p4, p0, Lcom/adchina/android/ads/g;->d:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/adchina/android/ads/g;->d:I

    return v0
.end method

.method public final b()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/adchina/android/ads/g;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/adchina/android/ads/g;->b:I

    return v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 5

    new-instance v0, Lcom/adchina/android/ads/g;

    iget-object v1, p0, Lcom/adchina/android/ads/g;->a:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/adchina/android/ads/g;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    iget v2, p0, Lcom/adchina/android/ads/g;->b:I

    iget v3, p0, Lcom/adchina/android/ads/g;->c:I

    iget v4, p0, Lcom/adchina/android/ads/g;->d:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/adchina/android/ads/g;-><init>(Landroid/graphics/Bitmap;III)V

    return-object v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/adchina/android/ads/g;->c:I

    return v0
.end method
