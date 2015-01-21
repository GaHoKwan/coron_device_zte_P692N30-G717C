.class Lcom/android/gallery3d/data/ClusterAlbumSet$1;
.super Ljava/lang/Object;
.source "ClusterAlbumSet.java"

# interfaces
.implements Lcom/android/gallery3d/data/MediaSet$ItemConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/data/ClusterAlbumSet;->updateClustersContents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/data/ClusterAlbumSet;

.field final synthetic val$existing:Ljava/util/HashSet;

.field final synthetic val$existingMediaItem:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/data/ClusterAlbumSet;Ljava/util/HashSet;Ljava/util/HashMap;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Lcom/android/gallery3d/data/ClusterAlbumSet$1;->this$0:Lcom/android/gallery3d/data/ClusterAlbumSet;

    iput-object p2, p0, Lcom/android/gallery3d/data/ClusterAlbumSet$1;->val$existing:Ljava/util/HashSet;

    iput-object p3, p0, Lcom/android/gallery3d/data/ClusterAlbumSet$1;->val$existingMediaItem:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(ILcom/android/gallery3d/data/MediaItem;)V
    .locals 2
    .parameter "index"
    .parameter "item"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet$1;->val$existing:Ljava/util/HashSet;

    invoke-virtual {p2}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 249
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet$1;->val$existingMediaItem:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    return-void
.end method
