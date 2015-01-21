.class Lcom/android/gallery3d/data/ClusterSource;
.super Lcom/android/gallery3d/data/MediaSource;
.source "ClusterSource.java"


# static fields
.field static final CLUSTER_ALBUMSET_FACE:I = 0x4

.field static final CLUSTER_ALBUMSET_LOCATION:I = 0x1

.field static final CLUSTER_ALBUMSET_SIZE:I = 0x3

.field static final CLUSTER_ALBUMSET_TAG:I = 0x2

.field static final CLUSTER_ALBUMSET_TIME:I = 0x0

.field static final CLUSTER_ALBUM_FACE:I = 0x104

.field static final CLUSTER_ALBUM_LOCATION:I = 0x101

.field static final CLUSTER_ALBUM_SIZE:I = 0x103

.field static final CLUSTER_ALBUM_TAG:I = 0x102

.field static final CLUSTER_ALBUM_TIME:I = 0x100

.field private static final IS_DRM_SUPPORTED:Z

.field private static final IS_STEREO_DISPLAY_SUPPORTED:Z


# instance fields
.field mApplication:Lcom/android/gallery3d/app/GalleryApp;

.field mMatcher:Lcom/android/gallery3d/data/PathMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isDrmSupported()Z

    move-result v0

    sput-boolean v0, Lcom/android/gallery3d/data/ClusterSource;->IS_DRM_SUPPORTED:Z

    .line 38
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isStereoDisplaySupported()Z

    move-result v0

    sput-boolean v0, Lcom/android/gallery3d/data/ClusterSource;->IS_STEREO_DISPLAY_SUPPORTED:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/app/GalleryApp;)V
    .locals 3
    .parameter "application"

    .prologue
    .line 45
    const-string v0, "cluster"

    invoke-direct {p0, v0}, Lcom/android/gallery3d/data/MediaSource;-><init>(Ljava/lang/String;)V

    .line 46
    iput-object p1, p0, Lcom/android/gallery3d/data/ClusterSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 47
    new-instance v0, Lcom/android/gallery3d/data/PathMatcher;

    invoke-direct {v0}, Lcom/android/gallery3d/data/PathMatcher;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/ClusterSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    .line 48
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v1, "/cluster/*/time"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 49
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v1, "/cluster/*/location"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 50
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v1, "/cluster/*/tag"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 51
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v1, "/cluster/*/size"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 52
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v1, "/cluster/*/face"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 54
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v1, "/cluster/*/time/*"

    const/16 v2, 0x100

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 55
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v1, "/cluster/*/location/*"

    const/16 v2, 0x101

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 56
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v1, "/cluster/*/tag/*"

    const/16 v2, 0x102

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 57
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v1, "/cluster/*/size/*"

    const/16 v2, 0x103

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 58
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v1, "/cluster/*/face/*"

    const/16 v2, 0x104

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 59
    return-void
.end method


# virtual methods
.method public createMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;
    .locals 8
    .parameter "path"

    .prologue
    const/4 v7, 0x0

    .line 68
    iget-object v5, p0, Lcom/android/gallery3d/data/ClusterSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    invoke-virtual {v5, p1}, Lcom/android/gallery3d/data/PathMatcher;->match(Lcom/android/gallery3d/data/Path;)I

    move-result v1

    .line 69
    .local v1, matchType:I
    iget-object v5, p0, Lcom/android/gallery3d/data/ClusterSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    invoke-virtual {v5, v7}, Lcom/android/gallery3d/data/PathMatcher;->getVar(I)Ljava/lang/String;

    move-result-object v4

    .line 70
    .local v4, setsName:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/gallery3d/data/ClusterSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v5}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v0

    .line 71
    .local v0, dataManager:Lcom/android/gallery3d/data/DataManager;
    const/4 v3, 0x0

    .line 72
    .local v3, sets:[Lcom/android/gallery3d/data/MediaSet;
    sget-boolean v5, Lcom/android/gallery3d/data/ClusterSource;->IS_DRM_SUPPORTED:Z

    if-nez v5, :cond_0

    sget-boolean v5, Lcom/android/gallery3d/data/ClusterSource;->IS_STEREO_DISPLAY_SUPPORTED:Z

    if-eqz v5, :cond_1

    .line 73
    :cond_0
    invoke-virtual {p1}, Lcom/android/gallery3d/data/Path;->getMtkInclusion()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lcom/android/gallery3d/data/DataManager;->getMediaSetsFromString(Ljava/lang/String;I)[Lcom/android/gallery3d/data/MediaSet;

    move-result-object v3

    .line 78
    :goto_0
    sparse-switch v1, :sswitch_data_0

    .line 96
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bad path: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 76
    :cond_1
    invoke-virtual {v0, v4}, Lcom/android/gallery3d/data/DataManager;->getMediaSetsFromString(Ljava/lang/String;)[Lcom/android/gallery3d/data/MediaSet;

    move-result-object v3

    goto :goto_0

    .line 84
    :sswitch_0
    new-instance v5, Lcom/android/gallery3d/data/ClusterAlbumSet;

    iget-object v6, p0, Lcom/android/gallery3d/data/ClusterSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    aget-object v7, v3, v7

    invoke-direct {v5, p1, v6, v7, v1}, Lcom/android/gallery3d/data/ClusterAlbumSet;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;Lcom/android/gallery3d/data/MediaSet;I)V

    .line 93
    :goto_1
    return-object v5

    .line 90
    :sswitch_1
    invoke-virtual {p1}, Lcom/android/gallery3d/data/Path;->getParent()Lcom/android/gallery3d/data/Path;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/gallery3d/data/DataManager;->getMediaSet(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v2

    .line 93
    .local v2, parent:Lcom/android/gallery3d/data/MediaSet;
    new-instance v5, Lcom/android/gallery3d/data/ClusterAlbum;

    invoke-direct {v5, p1, v0, v2}, Lcom/android/gallery3d/data/ClusterAlbum;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/data/DataManager;Lcom/android/gallery3d/data/MediaSet;)V

    goto :goto_1

    .line 78
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x100 -> :sswitch_1
        0x101 -> :sswitch_1
        0x102 -> :sswitch_1
        0x103 -> :sswitch_1
        0x104 -> :sswitch_1
    .end sparse-switch
.end method
