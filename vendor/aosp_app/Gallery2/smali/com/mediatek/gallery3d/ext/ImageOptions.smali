.class public Lcom/mediatek/gallery3d/ext/ImageOptions;
.super Ljava/lang/Object;
.source "ImageOptions.java"

# interfaces
.implements Lcom/mediatek/gallery3d/ext/IImageOptions;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cameraRollEnable()Z
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x1

    return v0
.end method

.method public shouldReturnTopWhenBack()Z
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    return v0
.end method

.method public shouldUseOriginalSize()Z
    .locals 1

    .prologue
    .line 7
    const/4 v0, 0x0

    return v0
.end method
