.class public Lcom/mediatek/gallery3d/data/RequestManager;
.super Ljava/lang/Object;
.source "RequestManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Gallery2/RequestManager"

.field private static mDefaultImageRequest:Lcom/mediatek/gallery3d/data/IMediaRequest;

.field private static mRequestMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mediatek/gallery3d/data/IMediaRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/mediatek/gallery3d/data/RequestManager;->mRequestMap:Ljava/util/HashMap;

    .line 37
    new-instance v0, Lcom/mediatek/gallery3d/data/ImageRequest;

    invoke-direct {v0}, Lcom/mediatek/gallery3d/data/ImageRequest;-><init>()V

    sput-object v0, Lcom/mediatek/gallery3d/data/RequestManager;->mDefaultImageRequest:Lcom/mediatek/gallery3d/data/IMediaRequest;

    .line 40
    sget-object v0, Lcom/mediatek/gallery3d/data/RequestManager;->mRequestMap:Ljava/util/HashMap;

    const-string v1, "image/mpo"

    new-instance v2, Lcom/mediatek/gallery3d/mpo/MpoRequest;

    invoke-direct {v2}, Lcom/mediatek/gallery3d/mpo/MpoRequest;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/mediatek/gallery3d/data/RequestManager;->mRequestMap:Ljava/util/HashMap;

    const-string v1, "image/x-jps"

    new-instance v2, Lcom/mediatek/gallery3d/jps/JpsRequest;

    invoke-direct {v2}, Lcom/mediatek/gallery3d/jps/JpsRequest;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/mediatek/gallery3d/data/RequestManager;->mRequestMap:Ljava/util/HashMap;

    const-string v1, "image/gif"

    new-instance v2, Lcom/mediatek/gallery3d/gif/GifRequest;

    invoke-direct {v2}, Lcom/mediatek/gallery3d/gif/GifRequest;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMediaRequest(Ljava/lang/String;)Lcom/mediatek/gallery3d/data/IMediaRequest;
    .locals 1
    .parameter "mimeType"

    .prologue
    .line 46
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/mediatek/gallery3d/data/RequestManager;->getMediaRequest(Ljava/lang/String;Z)Lcom/mediatek/gallery3d/data/IMediaRequest;

    move-result-object v0

    return-object v0
.end method

.method public static getMediaRequest(Ljava/lang/String;Z)Lcom/mediatek/gallery3d/data/IMediaRequest;
    .locals 5
    .parameter "mimeType"
    .parameter "allowDefault"

    .prologue
    const/4 v1, 0x0

    .line 51
    const-string v2, "Gallery2/RequestManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMediaRequest(mimeType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    if-nez p0, :cond_1

    move-object v0, v1

    .line 60
    :cond_0
    :goto_0
    return-object v0

    .line 54
    :cond_1
    sget-object v2, Lcom/mediatek/gallery3d/data/RequestManager;->mRequestMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/gallery3d/data/IMediaRequest;

    .line 55
    .local v0, request:Lcom/mediatek/gallery3d/data/IMediaRequest;
    if-nez v0, :cond_0

    .line 58
    if-eqz p1, :cond_2

    sget-object v0, Lcom/mediatek/gallery3d/data/RequestManager;->mDefaultImageRequest:Lcom/mediatek/gallery3d/data/IMediaRequest;

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 60
    goto :goto_0
.end method
