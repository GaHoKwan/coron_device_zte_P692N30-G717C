.class public Lcom/mediatek/gallery3d/ext/MovieListLoader;
.super Ljava/lang/Object;
.source "MovieListLoader.java"

# interfaces
.implements Lcom/mediatek/gallery3d/ext/IMovieListLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/gallery3d/ext/MovieListLoader$MovieListFetcherTask;
    }
.end annotation


# static fields
.field private static final LOG:Z = true

.field private static final TAG:Ljava/lang/String; = "Gallery2/MovieListLoader"


# instance fields
.field private mListTask:Lcom/mediatek/gallery3d/ext/MovieListLoader$MovieListFetcherTask;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method


# virtual methods
.method public cancelList()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/mediatek/gallery3d/ext/MovieListLoader;->mListTask:Lcom/mediatek/gallery3d/ext/MovieListLoader$MovieListFetcherTask;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/mediatek/gallery3d/ext/MovieListLoader;->mListTask:Lcom/mediatek/gallery3d/ext/MovieListLoader$MovieListFetcherTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 60
    :cond_0
    return-void
.end method

.method public fillVideoList(Landroid/content/Context;Landroid/content/Intent;Lcom/mediatek/gallery3d/ext/IMovieListLoader$LoaderListener;Lcom/mediatek/gallery3d/ext/IMovieItem;)V
    .locals 7
    .parameter "context"
    .parameter "intent"
    .parameter "l"
    .parameter "item"

    .prologue
    const/4 v6, 0x0

    .line 26
    const/4 v3, 0x0

    .line 27
    .local v3, fetechAll:Z
    const-string v0, "mediatek.intent.extra.ALL_VIDEO_FOLDER"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    const-string v0, "mediatek.intent.extra.ALL_VIDEO_FOLDER"

    invoke-virtual {p2, v0, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 31
    :cond_0
    const-string v5, "datetaken DESC, _id DESC "

    .line 32
    .local v5, orderBy:Ljava/lang/String;
    const-string v0, "mediatek.intent.extra.VIDEO_LIST_ORDERBY"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33
    const-string v0, "mediatek.intent.extra.VIDEO_LIST_ORDERBY"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 35
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/gallery3d/ext/MovieListLoader;->cancelList()V

    .line 36
    new-instance v0, Lcom/mediatek/gallery3d/ext/MovieListLoader$MovieListFetcherTask;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/gallery3d/ext/MovieListLoader$MovieListFetcherTask;-><init>(Lcom/mediatek/gallery3d/ext/MovieListLoader;Landroid/content/Context;ZLcom/mediatek/gallery3d/ext/IMovieListLoader$LoaderListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/gallery3d/ext/MovieListLoader;->mListTask:Lcom/mediatek/gallery3d/ext/MovieListLoader$MovieListFetcherTask;

    .line 37
    iget-object v0, p0, Lcom/mediatek/gallery3d/ext/MovieListLoader;->mListTask:Lcom/mediatek/gallery3d/ext/MovieListLoader$MovieListFetcherTask;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/mediatek/gallery3d/ext/IMovieItem;

    aput-object p4, v1, v6

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 39
    const-string v0, "Gallery2/MovieListLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fillVideoList() fetechAll="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", orderBy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return-void
.end method

.method public isEnabledVideoList(Landroid/content/Intent;)Z
    .locals 4
    .parameter "intent"

    .prologue
    .line 45
    const/4 v0, 0x1

    .line 46
    .local v0, enable:Z
    if-eqz p1, :cond_0

    const-string v1, "mediatek.intent.extra.ENABLE_VIDEO_LIST"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    const-string v1, "mediatek.intent.extra.ENABLE_VIDEO_LIST"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 50
    :cond_0
    const-string v1, "Gallery2/MovieListLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isEnabledVideoList() return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    return v0
.end method
