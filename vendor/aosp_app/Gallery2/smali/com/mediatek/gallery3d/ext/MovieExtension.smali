.class public Lcom/mediatek/gallery3d/ext/MovieExtension;
.super Ljava/lang/Object;
.source "MovieExtension.java"

# interfaces
.implements Lcom/mediatek/gallery3d/ext/IMovieExtension;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFeatureList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 9
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHooker()Lcom/mediatek/gallery3d/ext/IActivityHooker;
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMovieStrategy()Lcom/mediatek/gallery3d/ext/IMovieStrategy;
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/mediatek/gallery3d/ext/MovieStrategy;

    invoke-direct {v0}, Lcom/mediatek/gallery3d/ext/MovieStrategy;-><init>()V

    return-object v0
.end method
