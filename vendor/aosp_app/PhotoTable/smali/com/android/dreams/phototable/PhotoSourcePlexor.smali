.class public Lcom/android/dreams/phototable/PhotoSourcePlexor;
.super Lcom/android/dreams/phototable/PhotoSource;
.source "PhotoSourcePlexor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PhotoTable.PhotoSourcePlexor"


# instance fields
.field private final mLocalSource:Lcom/android/dreams/phototable/PhotoSource;

.field private final mPicasaSource:Lcom/android/dreams/phototable/PhotoSource;

.field private mSettings:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 1
    .parameter "context"
    .parameter "settings"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/dreams/phototable/PhotoSource;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 41
    const-string v0, "PhotoTable.PhotoSourcePlexor"

    iput-object v0, p0, Lcom/android/dreams/phototable/PhotoSource;->mSourceName:Ljava/lang/String;

    .line 42
    new-instance v0, Lcom/android/dreams/phototable/PicasaSource;

    invoke-direct {v0, p1, p2}, Lcom/android/dreams/phototable/PicasaSource;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    iput-object v0, p0, Lcom/android/dreams/phototable/PhotoSourcePlexor;->mPicasaSource:Lcom/android/dreams/phototable/PhotoSource;

    .line 43
    new-instance v0, Lcom/android/dreams/phototable/LocalSource;

    invoke-direct {v0, p1, p2}, Lcom/android/dreams/phototable/LocalSource;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    iput-object v0, p0, Lcom/android/dreams/phototable/PhotoSourcePlexor;->mLocalSource:Lcom/android/dreams/phototable/PhotoSource;

    .line 44
    return-void
.end method


# virtual methods
.method public findAlbums()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/dreams/phototable/PhotoSource$AlbumData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    const-string v1, "PhotoTable.PhotoSourcePlexor"

    const-string v2, "finding albums"

    invoke-static {v1, v2}, Lcom/android/dreams/phototable/PhotoSourcePlexor;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 51
    .local v0, foundAlbums:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/dreams/phototable/PhotoSource$AlbumData;>;"
    iget-object v1, p0, Lcom/android/dreams/phototable/PhotoSourcePlexor;->mPicasaSource:Lcom/android/dreams/phototable/PhotoSource;

    invoke-virtual {v1}, Lcom/android/dreams/phototable/PhotoSource;->findAlbums()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 52
    const-string v1, "PhotoTable.PhotoSourcePlexor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " network albums"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/dreams/phototable/PhotoSourcePlexor;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v1, p0, Lcom/android/dreams/phototable/PhotoSourcePlexor;->mLocalSource:Lcom/android/dreams/phototable/PhotoSource;

    invoke-virtual {v1}, Lcom/android/dreams/phototable/PhotoSource;->findAlbums()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 55
    const-string v1, "PhotoTable.PhotoSourcePlexor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " user albums"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/dreams/phototable/PhotoSourcePlexor;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-object v0
.end method

.method protected findImages(I)Ljava/util/Collection;
    .locals 4
    .parameter "howMany"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/dreams/phototable/PhotoSource$ImageData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    const-string v1, "PhotoTable.PhotoSourcePlexor"

    const-string v2, "finding images"

    invoke-static {v1, v2}, Lcom/android/dreams/phototable/PhotoSourcePlexor;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 65
    .local v0, foundImages:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/dreams/phototable/PhotoSource$ImageData;>;"
    iget-object v1, p0, Lcom/android/dreams/phototable/PhotoSourcePlexor;->mPicasaSource:Lcom/android/dreams/phototable/PhotoSource;

    invoke-virtual {v1, p1}, Lcom/android/dreams/phototable/PhotoSource;->findImages(I)Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 66
    const-string v1, "PhotoTable.PhotoSourcePlexor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " network images"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/dreams/phototable/PhotoSourcePlexor;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v1, p0, Lcom/android/dreams/phototable/PhotoSourcePlexor;->mLocalSource:Lcom/android/dreams/phototable/PhotoSource;

    invoke-virtual {v1, p1}, Lcom/android/dreams/phototable/PhotoSource;->findImages(I)Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 69
    const-string v1, "PhotoTable.PhotoSourcePlexor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " user images"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/dreams/phototable/PhotoSourcePlexor;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-object v0
.end method

.method protected getStream(Lcom/android/dreams/phototable/PhotoSource$ImageData;I)Ljava/io/InputStream;
    .locals 1
    .parameter "data"
    .parameter "longSide"

    .prologue
    .line 76
    invoke-virtual {p1, p2}, Lcom/android/dreams/phototable/PhotoSource$ImageData;->getStream(I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
