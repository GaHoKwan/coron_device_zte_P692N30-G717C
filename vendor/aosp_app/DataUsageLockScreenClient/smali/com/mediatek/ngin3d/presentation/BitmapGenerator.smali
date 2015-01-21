.class public abstract Lcom/mediatek/ngin3d/presentation/BitmapGenerator;
.super Ljava/lang/Object;
.source "BitmapGenerator.java"


# instance fields
.field private mCachedBitmap:Landroid/graphics/Bitmap;

.field private mDefaultBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cacheBitmap()V
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/presentation/BitmapGenerator;->generate()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ngin3d/presentation/BitmapGenerator;->mCachedBitmap:Landroid/graphics/Bitmap;

    .line 52
    return-void
.end method

.method public free()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mediatek/ngin3d/presentation/BitmapGenerator;->mCachedBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/mediatek/ngin3d/presentation/BitmapGenerator;->mCachedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ngin3d/presentation/BitmapGenerator;->mCachedBitmap:Landroid/graphics/Bitmap;

    .line 70
    :cond_0
    return-void
.end method

.method public abstract generate()Landroid/graphics/Bitmap;
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mediatek/ngin3d/presentation/BitmapGenerator;->mCachedBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/mediatek/ngin3d/presentation/BitmapGenerator;->mDefaultBitmap:Landroid/graphics/Bitmap;

    .line 62
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/ngin3d/presentation/BitmapGenerator;->mCachedBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public getCachedBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/mediatek/ngin3d/presentation/BitmapGenerator;->mCachedBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public setDefaultBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bitmap"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/mediatek/ngin3d/presentation/BitmapGenerator;->mDefaultBitmap:Landroid/graphics/Bitmap;

    .line 78
    return-void
.end method
