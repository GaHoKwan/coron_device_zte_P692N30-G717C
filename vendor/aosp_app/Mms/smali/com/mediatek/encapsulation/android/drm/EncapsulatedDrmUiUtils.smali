.class public Lcom/mediatek/encapsulation/android/drm/EncapsulatedDrmUiUtils;
.super Ljava/lang/Object;
.source "EncapsulatedDrmUiUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OmaDrmUiUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static overlayBitmap(Lcom/mediatek/encapsulation/android/drm/EncapsulatedDrmManagerClient;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "client"
    .parameter "bgdBmp"
    .parameter "front"

    .prologue
    .line 28
    invoke-static {p0, p1, p2}, Lcom/mediatek/drm/OmaDrmUiUtils;->overlayBitmap(Lcom/mediatek/drm/OmaDrmClient;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
