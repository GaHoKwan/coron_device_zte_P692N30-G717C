.class public Lcom/hf/share/ShareUtils;
.super Ljava/lang/Object;
.source "ShareUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final viewToBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "view"

    .prologue
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->buildDrawingCache()V

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 16
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 17
    .local v1, bmap:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 19
    return-object v1
.end method
