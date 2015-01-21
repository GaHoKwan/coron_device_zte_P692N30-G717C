.class public Lcom/mediatek/gallery3d/ext/MovieDrmExtension;
.super Ljava/lang/Object;
.source "MovieDrmExtension.java"

# interfaces
.implements Lcom/mediatek/gallery3d/ext/IMovieDrmExtension;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canShare(Landroid/content/Context;Lcom/mediatek/gallery3d/ext/IMovieItem;)Z
    .locals 1
    .parameter "context"
    .parameter "item"

    .prologue
    .line 13
    const/4 v0, 0x1

    return v0
.end method

.method public handleDrmFile(Landroid/content/Context;Lcom/mediatek/gallery3d/ext/IMovieItem;Lcom/mediatek/gallery3d/ext/IMovieDrmExtension$IMovieDrmCallback;)Z
    .locals 1
    .parameter "context"
    .parameter "item"
    .parameter "callback"

    .prologue
    .line 8
    const/4 v0, 0x0

    return v0
.end method
