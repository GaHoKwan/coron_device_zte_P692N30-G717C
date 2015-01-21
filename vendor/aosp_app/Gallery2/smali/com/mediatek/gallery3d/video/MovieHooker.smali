.class public Lcom/mediatek/gallery3d/video/MovieHooker;
.super Lcom/mediatek/gallery3d/ext/ActivityHooker;
.source "MovieHooker.java"


# static fields
.field private static final LOG:Z = true

.field private static final TAG:Ljava/lang/String; = "Gallery2/VideoPlayer/MovieHooker"


# instance fields
.field private mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

.field private mPlayer:Lcom/mediatek/gallery3d/ext/IMoviePlayer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/mediatek/gallery3d/ext/ActivityHooker;-><init>()V

    return-void
.end method


# virtual methods
.method public getMovieItem()Lcom/mediatek/gallery3d/ext/IMovieItem;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/MovieHooker;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

    return-object v0
.end method

.method public getPlayer()Lcom/mediatek/gallery3d/ext/IMoviePlayer;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/MovieHooker;->mPlayer:Lcom/mediatek/gallery3d/ext/IMoviePlayer;

    return-object v0
.end method

.method public onMovieItemChanged(Lcom/mediatek/gallery3d/ext/IMovieItem;)V
    .locals 0
    .parameter "item"

    .prologue
    .line 36
    return-void
.end method

.method public onMoviePlayerChanged(Lcom/mediatek/gallery3d/ext/IMoviePlayer;)V
    .locals 0
    .parameter "player"

    .prologue
    .line 37
    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 16
    invoke-super {p0, p1, p2}, Lcom/mediatek/gallery3d/ext/ActivityHooker;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 18
    const-string v0, "Gallery2/VideoPlayer/MovieHooker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setParameter("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    instance-of v0, p2, Lcom/mediatek/gallery3d/ext/IMovieItem;

    if-eqz v0, :cond_1

    .line 21
    check-cast p2, Lcom/mediatek/gallery3d/ext/IMovieItem;

    .end local p2
    iput-object p2, p0, Lcom/mediatek/gallery3d/video/MovieHooker;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

    .line 22
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/MovieHooker;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

    invoke-virtual {p0, v0}, Lcom/mediatek/gallery3d/video/MovieHooker;->onMovieItemChanged(Lcom/mediatek/gallery3d/ext/IMovieItem;)V

    .line 27
    :cond_0
    :goto_0
    return-void

    .line 23
    .restart local p2
    :cond_1
    instance-of v0, p2, Lcom/mediatek/gallery3d/ext/IMoviePlayer;

    if-eqz v0, :cond_0

    .line 24
    check-cast p2, Lcom/mediatek/gallery3d/ext/IMoviePlayer;

    .end local p2
    iput-object p2, p0, Lcom/mediatek/gallery3d/video/MovieHooker;->mPlayer:Lcom/mediatek/gallery3d/ext/IMoviePlayer;

    .line 25
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/MovieHooker;->mPlayer:Lcom/mediatek/gallery3d/ext/IMoviePlayer;

    invoke-virtual {p0, v0}, Lcom/mediatek/gallery3d/video/MovieHooker;->onMoviePlayerChanged(Lcom/mediatek/gallery3d/ext/IMoviePlayer;)V

    goto :goto_0
.end method
