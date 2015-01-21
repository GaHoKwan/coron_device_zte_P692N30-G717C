.class public Lcom/android/mms/util/NullItemLoadedFuture;
.super Ljava/lang/Object;
.source "NullItemLoadedFuture.java"

# interfaces
.implements Lcom/android/mms/util/ItemLoadedFuture;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel(Landroid/net/Uri;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 30
    return-void
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x1

    return v0
.end method

.method public setIsDone(Z)V
    .locals 0
    .parameter "done"

    .prologue
    .line 39
    return-void
.end method
