.class public Lcom/android/gallery3d/util/MediaSetUtils;
.super Ljava/lang/Object;
.source "MediaSetUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/util/MediaSetUtils$NameComparator;
    }
.end annotation


# static fields
.field public static CAMERA_BUCKET_ID:I

.field private static CAMERA_PATHS:[Lcom/android/gallery3d/data/Path;

.field private static CAMERA_PATH_STRINGS:[Ljava/lang/String;

.field public static DOWNLOAD_BUCKET_ID:I

.field public static EDITED_ONLINE_PHOTOS_BUCKET_ID:I

.field public static IMPORTED_BUCKET_ID:I

.field public static final NAME_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/gallery3d/data/MediaSet;",
            ">;"
        }
    .end annotation
.end field

.field public static SNAPSHOT_BUCKET_ID:I

.field private static mTempCameraPaths:[Lcom/android/gallery3d/data/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 28
    new-instance v0, Lcom/android/gallery3d/util/MediaSetUtils$NameComparator;

    invoke-direct {v0}, Lcom/android/gallery3d/util/MediaSetUtils$NameComparator;-><init>()V

    sput-object v0, Lcom/android/gallery3d/util/MediaSetUtils;->NAME_COMPARATOR:Ljava/util/Comparator;

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mediatek/gallery3d/util/MtkUtils;->getMtkDefaultPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DCIM/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/gallery3d/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mediatek/gallery3d/util/MtkUtils;->getMtkDefaultPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "download"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/gallery3d/util/MediaSetUtils;->DOWNLOAD_BUCKET_ID:I

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mediatek/gallery3d/util/MtkUtils;->getMtkDefaultPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "EditedOnlinePhotos"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/gallery3d/util/MediaSetUtils;->EDITED_ONLINE_PHOTOS_BUCKET_ID:I

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mediatek/gallery3d/util/MtkUtils;->getMtkDefaultPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Imported"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/gallery3d/util/MediaSetUtils;->IMPORTED_BUCKET_ID:I

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mediatek/gallery3d/util/MtkUtils;->getMtkDefaultPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Pictures/Screenshots"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/gallery3d/util/MediaSetUtils;->SNAPSHOT_BUCKET_ID:I

    .line 45
    new-array v0, v6, [Lcom/android/gallery3d/data/Path;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/local/all/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/gallery3d/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v1

    aput-object v1, v0, v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/local/image/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/gallery3d/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v1

    aput-object v1, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/local/video/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/gallery3d/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v1

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/gallery3d/util/MediaSetUtils;->CAMERA_PATHS:[Lcom/android/gallery3d/data/Path;

    .line 75
    new-array v0, v6, [Ljava/lang/String;

    sget-object v1, Lcom/android/gallery3d/util/MediaSetUtils;->CAMERA_PATHS:[Lcom/android/gallery3d/data/Path;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/gallery3d/util/MediaSetUtils;->CAMERA_PATHS:[Lcom/android/gallery3d/data/Path;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/gallery3d/util/MediaSetUtils;->CAMERA_PATHS:[Lcom/android/gallery3d/data/Path;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/gallery3d/util/MediaSetUtils;->CAMERA_PATH_STRINGS:[Ljava/lang/String;

    .line 81
    new-array v0, v6, [Lcom/android/gallery3d/data/Path;

    sget-object v1, Lcom/android/gallery3d/util/MediaSetUtils;->CAMERA_PATHS:[Lcom/android/gallery3d/data/Path;

    aget-object v1, v1, v3

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/gallery3d/util/MediaSetUtils;->CAMERA_PATHS:[Lcom/android/gallery3d/data/Path;

    aget-object v1, v1, v4

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/gallery3d/util/MediaSetUtils;->CAMERA_PATHS:[Lcom/android/gallery3d/data/Path;

    aget-object v1, v1, v5

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/gallery3d/util/MediaSetUtils;->mTempCameraPaths:[Lcom/android/gallery3d/data/Path;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    return-void
.end method

.method private static getCameraPathWithInclusion(II)Lcom/android/gallery3d/data/Path;
    .locals 2
    .parameter "index"
    .parameter "mtkInclusion"

    .prologue
    .line 85
    if-ltz p0, :cond_0

    const/4 v0, 0x2

    if-le p0, v0, :cond_1

    .line 86
    :cond_0
    const/4 v0, 0x0

    .line 94
    :goto_0
    return-object v0

    .line 88
    :cond_1
    sget-object v0, Lcom/android/gallery3d/util/MediaSetUtils;->mTempCameraPaths:[Lcom/android/gallery3d/data/Path;

    aget-object v0, v0, p0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/gallery3d/util/MediaSetUtils;->mTempCameraPaths:[Lcom/android/gallery3d/data/Path;

    aget-object v0, v0, p0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/Path;->getMtkInclusion()I

    move-result v0

    if-ne v0, p1, :cond_2

    .line 90
    sget-object v0, Lcom/android/gallery3d/util/MediaSetUtils;->mTempCameraPaths:[Lcom/android/gallery3d/data/Path;

    aget-object v0, v0, p0

    goto :goto_0

    .line 92
    :cond_2
    sget-object v0, Lcom/android/gallery3d/util/MediaSetUtils;->mTempCameraPaths:[Lcom/android/gallery3d/data/Path;

    sget-object v1, Lcom/android/gallery3d/util/MediaSetUtils;->CAMERA_PATH_STRINGS:[Ljava/lang/String;

    aget-object v1, v1, p0

    invoke-static {v1, p1}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;I)Lcom/android/gallery3d/data/Path;

    move-result-object v1

    aput-object v1, v0, p0

    .line 94
    sget-object v0, Lcom/android/gallery3d/util/MediaSetUtils;->mTempCameraPaths:[Lcom/android/gallery3d/data/Path;

    aget-object v0, v0, p0

    goto :goto_0
.end method

.method public static isCameraSource(Lcom/android/gallery3d/data/Path;)Z
    .locals 5
    .parameter "path"

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 53
    if-eqz p0, :cond_2

    .line 54
    invoke-virtual {p0}, Lcom/android/gallery3d/data/Path;->getMtkInclusion()I

    move-result v0

    .line 55
    .local v0, mtkInclusion:I
    if-eqz v0, :cond_2

    .line 56
    invoke-static {v1, v0}, Lcom/android/gallery3d/util/MediaSetUtils;->getCameraPathWithInclusion(II)Lcom/android/gallery3d/data/Path;

    move-result-object v3

    if-eq v3, p0, :cond_0

    invoke-static {v2, v0}, Lcom/android/gallery3d/util/MediaSetUtils;->getCameraPathWithInclusion(II)Lcom/android/gallery3d/data/Path;

    move-result-object v3

    if-eq v3, p0, :cond_0

    invoke-static {v4, v0}, Lcom/android/gallery3d/util/MediaSetUtils;->getCameraPathWithInclusion(II)Lcom/android/gallery3d/data/Path;

    move-result-object v3

    if-ne v3, p0, :cond_1

    :cond_0
    move v1, v2

    .line 61
    .end local v0           #mtkInclusion:I
    :cond_1
    :goto_0
    return v1

    :cond_2
    sget-object v3, Lcom/android/gallery3d/util/MediaSetUtils;->CAMERA_PATHS:[Lcom/android/gallery3d/data/Path;

    aget-object v3, v3, v1

    if-eq v3, p0, :cond_3

    sget-object v3, Lcom/android/gallery3d/util/MediaSetUtils;->CAMERA_PATHS:[Lcom/android/gallery3d/data/Path;

    aget-object v3, v3, v2

    if-eq v3, p0, :cond_3

    sget-object v3, Lcom/android/gallery3d/util/MediaSetUtils;->CAMERA_PATHS:[Lcom/android/gallery3d/data/Path;

    aget-object v3, v3, v4

    if-ne v3, p0, :cond_1

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public static refreshBucketId()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mediatek/gallery3d/util/MtkUtils;->getMtkDefaultPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DCIM/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/gallery3d/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mediatek/gallery3d/util/MtkUtils;->getMtkDefaultPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "download"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/gallery3d/util/MediaSetUtils;->DOWNLOAD_BUCKET_ID:I

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mediatek/gallery3d/util/MtkUtils;->getMtkDefaultPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "EditedOnlinePhotos"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/gallery3d/util/MediaSetUtils;->EDITED_ONLINE_PHOTOS_BUCKET_ID:I

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mediatek/gallery3d/util/MtkUtils;->getMtkDefaultPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Imported"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/gallery3d/util/MediaSetUtils;->IMPORTED_BUCKET_ID:I

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mediatek/gallery3d/util/MtkUtils;->getMtkDefaultPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Pictures/Screenshots"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/gallery3d/util/MediaSetUtils;->SNAPSHOT_BUCKET_ID:I

    .line 115
    sget-object v0, Lcom/android/gallery3d/util/MediaSetUtils;->CAMERA_PATHS:[Lcom/android/gallery3d/data/Path;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/local/all/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/gallery3d/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v1

    aput-object v1, v0, v3

    .line 116
    sget-object v0, Lcom/android/gallery3d/util/MediaSetUtils;->CAMERA_PATHS:[Lcom/android/gallery3d/data/Path;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/local/image/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/gallery3d/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v1

    aput-object v1, v0, v4

    .line 117
    sget-object v0, Lcom/android/gallery3d/util/MediaSetUtils;->CAMERA_PATHS:[Lcom/android/gallery3d/data/Path;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/local/video/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/gallery3d/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v1

    aput-object v1, v0, v5

    .line 118
    sget-object v0, Lcom/android/gallery3d/util/MediaSetUtils;->CAMERA_PATH_STRINGS:[Ljava/lang/String;

    sget-object v1, Lcom/android/gallery3d/util/MediaSetUtils;->CAMERA_PATHS:[Lcom/android/gallery3d/data/Path;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 119
    sget-object v0, Lcom/android/gallery3d/util/MediaSetUtils;->CAMERA_PATH_STRINGS:[Ljava/lang/String;

    sget-object v1, Lcom/android/gallery3d/util/MediaSetUtils;->CAMERA_PATHS:[Lcom/android/gallery3d/data/Path;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 120
    sget-object v0, Lcom/android/gallery3d/util/MediaSetUtils;->CAMERA_PATH_STRINGS:[Ljava/lang/String;

    sget-object v1, Lcom/android/gallery3d/util/MediaSetUtils;->CAMERA_PATHS:[Lcom/android/gallery3d/data/Path;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 121
    sget-object v0, Lcom/android/gallery3d/util/MediaSetUtils;->mTempCameraPaths:[Lcom/android/gallery3d/data/Path;

    sget-object v1, Lcom/android/gallery3d/util/MediaSetUtils;->CAMERA_PATHS:[Lcom/android/gallery3d/data/Path;

    aget-object v1, v1, v3

    aput-object v1, v0, v3

    .line 122
    sget-object v0, Lcom/android/gallery3d/util/MediaSetUtils;->mTempCameraPaths:[Lcom/android/gallery3d/data/Path;

    sget-object v1, Lcom/android/gallery3d/util/MediaSetUtils;->CAMERA_PATHS:[Lcom/android/gallery3d/data/Path;

    aget-object v1, v1, v4

    aput-object v1, v0, v4

    .line 123
    sget-object v0, Lcom/android/gallery3d/util/MediaSetUtils;->mTempCameraPaths:[Lcom/android/gallery3d/data/Path;

    sget-object v1, Lcom/android/gallery3d/util/MediaSetUtils;->CAMERA_PATHS:[Lcom/android/gallery3d/data/Path;

    aget-object v1, v1, v5

    aput-object v1, v0, v5

    .line 124
    return-void
.end method
