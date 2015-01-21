.class public interface abstract Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/LoaderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LoaderCallbacks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:Ljava/lang/Object;>Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onCreateLoader(ILandroid/os/Bundle;)Lo/鷭;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ILandroid/os/Bundle;)Lo/\u9ded<TD;>;"
        }
    .end annotation
.end method

.method public abstract onLoadFinished(Lo/鷭;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\u9ded<TD;>;TD;)V"
        }
    .end annotation
.end method

.method public abstract onLoaderReset(Lo/鷭;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\u9ded<TD;>;)V"
        }
    .end annotation
.end method
