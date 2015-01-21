.class public interface abstract Lcom/mediatek/snsone/interfaces/IAlbumOperations;
.super Ljava/lang/Object;
.source "IAlbumOperations.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/snsone/interfaces/IAlbumOperations$Action;
    }
.end annotation


# virtual methods
.method public abstract getAlbumAction(Landroid/os/Bundle;)Lcom/mediatek/snsone/interfaces/IAlbumOperations$Action;
.end method

.method public abstract getAlbumIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getAlbumIconBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
.end method
