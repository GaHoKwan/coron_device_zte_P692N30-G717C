.class final Lcom/mediatek/gallery3d/panorama/PanoramaMesh$1;
.super Ljava/util/LinkedHashMap;
.source "PanoramaMesh.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gallery3d/panorama/PanoramaMesh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Ljava/lang/Integer;",
        "Lcom/mediatek/gallery3d/panorama/PanoramaMesh;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/mediatek/gallery3d/panorama/PanoramaMesh;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, eldest:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/mediatek/gallery3d/panorama/PanoramaMesh;>;"
    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-static {}, Lcom/mediatek/gallery3d/panorama/PanoramaMesh;->access$000()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
