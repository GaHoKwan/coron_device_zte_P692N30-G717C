.class public Lcom/mediatek/gallery3d/ext/MovieItem;
.super Ljava/lang/Object;
.source "MovieItem.java"

# interfaces
.implements Lcom/mediatek/gallery3d/ext/IMovieItem;


# static fields
.field private static final LOG:Z = true

.field private static final TAG:Ljava/lang/String; = "Gallery2/MovieItem"


# instance fields
.field private mError:Z

.field private mMimeType:Ljava/lang/String;

.field private mOriginal:Landroid/net/Uri;

.field private mStereoType:I

.field private mTitle:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "uri"
    .parameter "mimeType"
    .parameter "title"

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/mediatek/gallery3d/ext/MovieItem;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "uri"
    .parameter "mimeType"
    .parameter "title"
    .parameter "stereoType"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/mediatek/gallery3d/ext/MovieItem;->mUri:Landroid/net/Uri;

    .line 19
    iput-object p2, p0, Lcom/mediatek/gallery3d/ext/MovieItem;->mMimeType:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lcom/mediatek/gallery3d/ext/MovieItem;->mTitle:Ljava/lang/String;

    .line 21
    iput p4, p0, Lcom/mediatek/gallery3d/ext/MovieItem;->mStereoType:I

    .line 22
    iput-object p1, p0, Lcom/mediatek/gallery3d/ext/MovieItem;->mOriginal:Landroid/net/Uri;

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "uri"
    .parameter "mimeType"
    .parameter "title"

    .prologue
    .line 34
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/mediatek/gallery3d/ext/MovieItem;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "uri"
    .parameter "mimeType"
    .parameter "title"
    .parameter "stereoType"

    .prologue
    .line 26
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/mediatek/gallery3d/ext/MovieItem;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)V

    .line 27
    return-void
.end method


# virtual methods
.method public getError()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/mediatek/gallery3d/ext/MovieItem;->mError:Z

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/mediatek/gallery3d/ext/MovieItem;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/mediatek/gallery3d/ext/MovieItem;->mOriginal:Landroid/net/Uri;

    return-object v0
.end method

.method public getStereoType()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/mediatek/gallery3d/ext/MovieItem;->mStereoType:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/mediatek/gallery3d/ext/MovieItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mediatek/gallery3d/ext/MovieItem;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public setError()V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/gallery3d/ext/MovieItem;->mError:Z

    .line 84
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0
    .parameter "mimeType"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/mediatek/gallery3d/ext/MovieItem;->mMimeType:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setOriginalUri(Landroid/net/Uri;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/mediatek/gallery3d/ext/MovieItem;->mOriginal:Landroid/net/Uri;

    .line 94
    return-void
.end method

.method public setStereoType(I)V
    .locals 0
    .parameter "stereoType"

    .prologue
    .line 78
    iput p1, p0, Lcom/mediatek/gallery3d/ext/MovieItem;->mStereoType:I

    .line 79
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/mediatek/gallery3d/ext/MovieItem;->mTitle:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/mediatek/gallery3d/ext/MovieItem;->mUri:Landroid/net/Uri;

    .line 69
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MovieItem(uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/gallery3d/ext/MovieItem;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/gallery3d/ext/MovieItem;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/gallery3d/ext/MovieItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/gallery3d/ext/MovieItem;->mError:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", support3D="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/gallery3d/ext/MovieItem;->mStereoType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOriginal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/gallery3d/ext/MovieItem;->mOriginal:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
