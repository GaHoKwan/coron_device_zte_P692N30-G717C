.class public interface abstract Lcom/mediatek/gallery3d/ext/IMovieDrmExtension;
.super Ljava/lang/Object;
.source "IMovieDrmExtension.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/gallery3d/ext/IMovieDrmExtension$IMovieDrmCallback;
    }
.end annotation


# virtual methods
.method public abstract canShare(Landroid/content/Context;Lcom/mediatek/gallery3d/ext/IMovieItem;)Z
.end method

.method public abstract handleDrmFile(Landroid/content/Context;Lcom/mediatek/gallery3d/ext/IMovieItem;Lcom/mediatek/gallery3d/ext/IMovieDrmExtension$IMovieDrmCallback;)Z
.end method
