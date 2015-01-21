.class public Lcom/mediatek/gallery3d/ext/MovieStrategy;
.super Ljava/lang/Object;
.source "MovieStrategy.java"

# interfaces
.implements Lcom/mediatek/gallery3d/ext/IMovieStrategy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldEnableCheckLongSleep()Z
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x1

    return v0
.end method

.method public shouldEnableNMP(Lcom/mediatek/gallery3d/ext/IMovieItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 6
    const/4 v0, 0x0

    return v0
.end method

.method public shouldEnableRewindAndForward()Z
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    return v0
.end method

.method public shouldEnableServerTimeout()Z
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    return v0
.end method
