.class public interface abstract Lcom/mediatek/snsone/interfaces/IPostOperations;
.super Ljava/lang/Object;
.source "IPostOperations.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/snsone/interfaces/IPostOperations$Action;
    }
.end annotation


# virtual methods
.method public abstract getPostAction(Landroid/os/Bundle;)Lcom/mediatek/snsone/interfaces/IPostOperations$Action;
.end method

.method public abstract getPostIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getPostIconBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
.end method
