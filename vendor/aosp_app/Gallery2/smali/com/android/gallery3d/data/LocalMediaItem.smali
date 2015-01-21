.class public abstract Lcom/android/gallery3d/data/LocalMediaItem;
.super Lcom/android/gallery3d/data/MediaItem;
.source "LocalMediaItem.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Gallery2/LocalMediaItem"

.field public static TPT_DIRECT_PLAY:I

.field public static TPT_GENERATE_PLAY:I

.field public static TPT_NO_PLAY:I

.field public static TPT_UNKNOWN:I

.field private static final mIsDrmSupported:Z

.field private static final mIsMpoSupported:Z

.field private static final mIsStereoDisplaySupported:Z


# instance fields
.field public bucketId:I

.field public caption:Ljava/lang/String;

.field public dataDirty:Z

.field public dateAddedInSec:J

.field public dateModifiedInSec:J

.field public dateTakenInMs:J

.field public drm_method:I

.field public filePath:Ljava/lang/String;

.field public fileSize:J

.field public height:I

.field public id:I

.field public is_drm:I

.field public latitude:D

.field public longitude:D

.field public mMavListener:Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;

.field public mVideoGenerator:Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoGenerator;

.field public mimeType:Ljava/lang/String;

.field public stereoType:I

.field public thumbnailPlayType:I

.field public width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isDrmSupported()Z

    move-result v0

    sput-boolean v0, Lcom/android/gallery3d/data/LocalMediaItem;->mIsDrmSupported:Z

    .line 68
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isMpoSupported()Z

    move-result v0

    sput-boolean v0, Lcom/android/gallery3d/data/LocalMediaItem;->mIsMpoSupported:Z

    .line 70
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isStereoDisplaySupported()Z

    move-result v0

    sput-boolean v0, Lcom/android/gallery3d/data/LocalMediaItem;->mIsStereoDisplaySupported:Z

    .line 152
    const/4 v0, 0x0

    sput v0, Lcom/android/gallery3d/data/LocalMediaItem;->TPT_UNKNOWN:I

    .line 153
    const/4 v0, 0x1

    sput v0, Lcom/android/gallery3d/data/LocalMediaItem;->TPT_NO_PLAY:I

    .line 154
    const/4 v0, 0x2

    sput v0, Lcom/android/gallery3d/data/LocalMediaItem;->TPT_DIRECT_PLAY:I

    .line 155
    const/4 v0, 0x3

    sput v0, Lcom/android/gallery3d/data/LocalMediaItem;->TPT_GENERATE_PLAY:I

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/data/Path;J)V
    .locals 2
    .parameter "path"
    .parameter "version"

    .prologue
    const-wide/16 v0, 0x0

    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/data/MediaItem;-><init>(Lcom/android/gallery3d/data/Path;J)V

    .line 46
    iput-wide v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->latitude:D

    .line 47
    iput-wide v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->longitude:D

    .line 75
    return-void
.end method


# virtual methods
.method public getBucketId()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->bucketId:I

    return v0
.end method

.method public getDateInMs()J
    .locals 2

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->dateTakenInMs:J

    return-wide v0
.end method

.method public getDetails()Lcom/android/gallery3d/data/MediaDetails;
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 111
    invoke-super {p0}, Lcom/android/gallery3d/data/MediaObject;->getDetails()Lcom/android/gallery3d/data/MediaDetails;

    move-result-object v0

    .line 112
    .local v0, details:Lcom/android/gallery3d/data/MediaDetails;
    const/16 v2, 0xc8

    iget-object v3, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 113
    iget-object v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->caption:Ljava/lang/String;

    invoke-virtual {v0, v8, v2}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 114
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v1

    .line 115
    .local v1, formater:Ljava/text/DateFormat;
    const/4 v2, 0x3

    new-instance v3, Ljava/util/Date;

    iget-wide v4, p0, Lcom/android/gallery3d/data/LocalMediaItem;->dateModifiedInSec:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 117
    const/4 v2, 0x5

    iget v3, p0, Lcom/android/gallery3d/data/LocalMediaItem;->width:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 118
    const/4 v2, 0x6

    iget v3, p0, Lcom/android/gallery3d/data/LocalMediaItem;->height:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 120
    iget-wide v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->latitude:D

    iget-wide v4, p0, Lcom/android/gallery3d/data/LocalMediaItem;->longitude:D

    invoke-static {v2, v3, v4, v5}, Lcom/android/gallery3d/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 121
    const/4 v2, 0x4

    const/4 v3, 0x2

    new-array v3, v3, [D

    const/4 v4, 0x0

    iget-wide v5, p0, Lcom/android/gallery3d/data/LocalMediaItem;->latitude:D

    aput-wide v5, v3, v4

    iget-wide v4, p0, Lcom/android/gallery3d/data/LocalMediaItem;->longitude:D

    aput-wide v4, v3, v8

    invoke-virtual {v0, v2, v3}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 123
    :cond_0
    iget-wide v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->fileSize:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    const/16 v2, 0xa

    iget-wide v3, p0, Lcom/android/gallery3d/data/LocalMediaItem;->fileSize:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 124
    :cond_1
    return-object v0
.end method

.method public getLatLong([D)V
    .locals 3
    .parameter "latLong"

    .prologue
    .line 89
    const/4 v0, 0x0

    iget-wide v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->latitude:D

    aput-wide v1, p1, v0

    .line 90
    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->longitude:D

    aput-wide v1, p1, v0

    .line 91
    return-void
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->caption:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 134
    iget-wide v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->fileSize:J

    return-wide v0
.end method

.method public getVideoPlayer()Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoPlayer;
    .locals 1

    .prologue
    .line 164
    new-instance v0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer;

    invoke-direct {v0}, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer;-><init>()V

    return-object v0
.end method

.method protected initThumbnailPlayType()V
    .locals 1

    .prologue
    .line 180
    sget v0, Lcom/android/gallery3d/data/LocalMediaItem;->TPT_NO_PLAY:I

    iput v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->thumbnailPlayType:I

    .line 181
    return-void
.end method

.method protected initVideoGenerator()V
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->mVideoGenerator:Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoGenerator;

    .line 189
    return-void
.end method

.method public invalidateThumbnailPlayType()V
    .locals 1

    .prologue
    .line 192
    sget v0, Lcom/android/gallery3d/data/LocalMediaItem;->TPT_UNKNOWN:I

    iput v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->thumbnailPlayType:I

    .line 193
    return-void
.end method

.method public isDrm()Z
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->drm_method:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDrmMethod(I)Z
    .locals 1
    .parameter "method"

    .prologue
    .line 142
    iget v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->drm_method:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public prepareThumbnailPlay()V
    .locals 2

    .prologue
    .line 168
    sget v0, Lcom/android/gallery3d/data/LocalMediaItem;->TPT_UNKNOWN:I

    iget v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->thumbnailPlayType:I

    if-ne v0, v1, :cond_1

    .line 170
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->mVideoGenerator:Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoGenerator;

    if-nez v0, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/android/gallery3d/data/LocalMediaItem;->initVideoGenerator()V

    .line 173
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/data/LocalMediaItem;->initThumbnailPlayType()V

    .line 175
    :cond_1
    return-void
.end method

.method public setMavListener(Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->mMavListener:Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;

    .line 148
    return-void
.end method

.method public updateContent(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 101
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/LocalMediaItem;->updateFromCursor(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-static {}, Lcom/android/gallery3d/data/LocalMediaItem;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->dataDirty:Z

    .line 107
    :goto_0
    return-void

    .line 105
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->dataDirty:Z

    goto :goto_0
.end method

.method protected abstract updateFromCursor(Landroid/database/Cursor;)Z
.end method
