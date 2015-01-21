.class public Lcom/mediatek/gallery3d/ext/MovieList;
.super Ljava/lang/Object;
.source "MovieList.java"

# interfaces
.implements Lcom/mediatek/gallery3d/ext/IMovieList;


# static fields
.field private static final LOG:Z = true

.field private static final TAG:Ljava/lang/String; = "Gallery2/MovieList"

.field private static final UNKNOWN:I = -0x1


# instance fields
.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/gallery3d/ext/IMovieItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/gallery3d/ext/MovieList;->mItems:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public add(Lcom/mediatek/gallery3d/ext/IMovieItem;)V
    .locals 3
    .parameter "item"

    .prologue
    .line 15
    const-string v0, "Gallery2/MovieList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    iget-object v0, p0, Lcom/mediatek/gallery3d/ext/MovieList;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    return-void
.end method

.method public getNext(Lcom/mediatek/gallery3d/ext/IMovieItem;)Lcom/mediatek/gallery3d/ext/IMovieItem;
    .locals 3
    .parameter "item"

    .prologue
    .line 43
    const/4 v1, 0x0

    .line 44
    .local v1, next:Lcom/mediatek/gallery3d/ext/IMovieItem;
    invoke-virtual {p0, p1}, Lcom/mediatek/gallery3d/ext/MovieList;->index(Lcom/mediatek/gallery3d/ext/IMovieItem;)I

    move-result v0

    .line 45
    .local v0, find:I
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/mediatek/gallery3d/ext/MovieList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 46
    iget-object v2, p0, Lcom/mediatek/gallery3d/ext/MovieList;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #next:Lcom/mediatek/gallery3d/ext/IMovieItem;
    check-cast v1, Lcom/mediatek/gallery3d/ext/IMovieItem;

    .line 48
    .restart local v1       #next:Lcom/mediatek/gallery3d/ext/IMovieItem;
    :cond_0
    return-object v1
.end method

.method public getPrevious(Lcom/mediatek/gallery3d/ext/IMovieItem;)Lcom/mediatek/gallery3d/ext/IMovieItem;
    .locals 3
    .parameter "item"

    .prologue
    .line 53
    const/4 v1, 0x0

    .line 54
    .local v1, prev:Lcom/mediatek/gallery3d/ext/IMovieItem;
    invoke-virtual {p0, p1}, Lcom/mediatek/gallery3d/ext/MovieList;->index(Lcom/mediatek/gallery3d/ext/IMovieItem;)I

    move-result v0

    .line 55
    .local v0, find:I
    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/mediatek/gallery3d/ext/MovieList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 56
    iget-object v2, p0, Lcom/mediatek/gallery3d/ext/MovieList;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #prev:Lcom/mediatek/gallery3d/ext/IMovieItem;
    check-cast v1, Lcom/mediatek/gallery3d/ext/IMovieItem;

    .line 58
    .restart local v1       #prev:Lcom/mediatek/gallery3d/ext/IMovieItem;
    :cond_0
    return-object v1
.end method

.method public index(Lcom/mediatek/gallery3d/ext/IMovieItem;)I
    .locals 6
    .parameter "item"

    .prologue
    .line 22
    const/4 v0, -0x1

    .line 23
    .local v0, find:I
    iget-object v3, p0, Lcom/mediatek/gallery3d/ext/MovieList;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 24
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 25
    iget-object v3, p0, Lcom/mediatek/gallery3d/ext/MovieList;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne p1, v3, :cond_1

    .line 26
    move v0, v1

    .line 31
    :cond_0
    const-string v3, "Gallery2/MovieList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "index("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") return "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    return v0

    .line 24
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public isFirst(Lcom/mediatek/gallery3d/ext/IMovieItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/mediatek/gallery3d/ext/MovieList;->getPrevious(Lcom/mediatek/gallery3d/ext/IMovieItem;)Lcom/mediatek/gallery3d/ext/IMovieItem;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLast(Lcom/mediatek/gallery3d/ext/IMovieItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/mediatek/gallery3d/ext/MovieList;->getNext(Lcom/mediatek/gallery3d/ext/IMovieItem;)Lcom/mediatek/gallery3d/ext/IMovieItem;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mediatek/gallery3d/ext/MovieList;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
