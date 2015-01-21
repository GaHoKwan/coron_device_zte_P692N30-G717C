.class public Lcom/mediatek/gallery3d/conshots/ContainerImage;
.super Lcom/android/gallery3d/data/LocalImage;
.source "ContainerImage.java"


# static fields
.field private static final INDEX_BUCKET_ID:I = 0xa

.field private static final INDEX_CAPTION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Gallery2/ContainerImage"

.field private static final mIsConShotsSupported:Z

.field private static final mIsMotionTrackSupported:Z


# instance fields
.field public dateLastModifiedInSec:J

.field private mGroupCount:I

.field private mGroupId:J

.field private mIsConshot:Z

.field private mIsContainer:Z

.field private mIsMotion:Z

.field private mRelatedMediaSet:Lcom/android/gallery3d/data/MediaSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isConShotsImagesSupported()Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/gallery3d/conshots/ContainerImage;->mIsConShotsSupported:Z

    .line 43
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isMotionTrackSupported()Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/gallery3d/conshots/ContainerImage;->mIsMotionTrackSupported:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;I)V
    .locals 0
    .parameter "path"
    .parameter "application"
    .parameter "id"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/data/LocalImage;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;I)V

    .line 53
    invoke-virtual {p0}, Lcom/mediatek/gallery3d/conshots/ContainerImage;->judgeType()V

    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;Landroid/database/Cursor;)V
    .locals 0
    .parameter "path"
    .parameter "application"
    .parameter "cursor"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/data/LocalImage;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;Landroid/database/Cursor;)V

    .line 48
    invoke-virtual {p0}, Lcom/mediatek/gallery3d/conshots/ContainerImage;->judgeType()V

    .line 49
    return-void
.end method

.method public static isCameraRoll(J)Z
    .locals 3
    .parameter "bucketId"

    .prologue
    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mediatek/gallery3d/util/MtkUtils;->getMtkDefaultPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/DCIM/Camera"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, defaultPath:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v1

    int-to-long v1, v1

    cmp-long v1, p0, v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isConShotType()Z
    .locals 4

    .prologue
    .line 113
    iget-wide v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerImage;->mGroupId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->caption:Ljava/lang/String;

    const-string v1, "^IMG[0-9_]*CS$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    const/4 v0, 0x1

    .line 116
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isContainerItem(Lcom/android/gallery3d/app/GalleryApp;Landroid/database/Cursor;)Z
    .locals 6
    .parameter "application"
    .parameter "cursor"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 63
    if-nez p1, :cond_1

    .line 76
    :cond_0
    :goto_0
    return v3

    .line 65
    :cond_1
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, title:Ljava/lang/String;
    const/16 v5, 0xa

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 69
    .local v0, backetID:J
    sget-boolean v5, Lcom/mediatek/gallery3d/conshots/ContainerImage;->mIsConShotsSupported:Z

    if-eqz v5, :cond_2

    const-string v5, "^IMG[0-9_]*CS$"

    invoke-virtual {v2, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v3, v4

    .line 70
    goto :goto_0

    .line 72
    :cond_2
    sget-boolean v5, Lcom/mediatek/gallery3d/conshots/ContainerImage;->mIsMotionTrackSupported:Z

    if-eqz v5, :cond_0

    const-string v5, "^IMG[0-9_]*MT$"

    invoke-virtual {v2, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v4

    .line 73
    goto :goto_0
.end method

.method private isMotionType()Z
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->caption:Ljava/lang/String;

    const-string v1, "^IMG[0-9_]*MT$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    const/4 v0, 0x1

    .line 124
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private reGenerateVideo()V
    .locals 2

    .prologue
    .line 237
    const-string v0, "Gallery2/ContainerImage"

    const-string v1, "reGenerateVideo"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->mVideoGenerator:Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoGenerator;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->mVideoGenerator:Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoGenerator;

    invoke-virtual {v0, p0}, Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoGenerator;->prepareToRegenerate(Lcom/android/gallery3d/data/LocalMediaItem;)V

    .line 240
    const-string v0, "Gallery2/ContainerImage"

    const-string v1, "prepareToRegenerate"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_0
    return-void
.end method

.method private setGroupCount(I)V
    .locals 9
    .parameter "count"

    .prologue
    const/4 v5, 0x1

    .line 278
    invoke-static {}, Lcom/android/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    .line 279
    iput p1, p0, Lcom/mediatek/gallery3d/conshots/ContainerImage;->mGroupCount:I

    .line 280
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 281
    .local v0, baseUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/mediatek/gallery3d/conshots/ContainerImage;->isConShot()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 282
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 283
    .local v1, cv:Landroid/content/ContentValues;
    const-string v4, "group_count"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 285
    :try_start_0
    iget-object v4, p0, Lcom/android/gallery3d/data/LocalImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v4}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/gallery3d/data/LocalMediaItem;->id:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v0, v1, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 287
    .local v3, result:I
    const-string v4, "Gallery2/ContainerImage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<setIsBestShot> update mGroupCount value of id["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/gallery3d/data/LocalMediaItem;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] result = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    .end local v1           #cv:Landroid/content/ContentValues;
    .end local v3           #result:I
    :cond_0
    :goto_0
    return-void

    .line 289
    .restart local v1       #cv:Landroid/content/ContentValues;
    :catch_0
    move-exception v2

    .line 290
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "Gallery2/ContainerImage"

    const-string v5, "Exception when getContentResolver"

    invoke-static {v4, v5, v2}, Lcom/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public delete()V
    .locals 1

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/mediatek/gallery3d/conshots/ContainerImage;->isContainer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerImage;->mRelatedMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaObject;->delete()V

    .line 151
    :cond_0
    invoke-super {p0}, Lcom/android/gallery3d/data/LocalImage;->delete()V

    .line 152
    return-void
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 4

    .prologue
    .line 208
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 209
    .local v0, baseUri:Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "mtkInclusion"

    iget-object v3, p0, Lcom/android/gallery3d/data/MediaObject;->mPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v3}, Lcom/android/gallery3d/data/Path;->getMtkInclusion()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    iget v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public getDetails()Lcom/android/gallery3d/data/MediaDetails;
    .locals 1

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/mediatek/gallery3d/conshots/ContainerImage;->isContainer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerImage;->mRelatedMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaSet;->getDetails()Lcom/android/gallery3d/data/MediaDetails;

    move-result-object v0

    .line 159
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/android/gallery3d/data/LocalImage;->getDetails()Lcom/android/gallery3d/data/MediaDetails;

    move-result-object v0

    goto :goto_0
.end method

.method public getGroupId()J
    .locals 2

    .prologue
    .line 184
    iget-wide v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerImage;->mGroupId:J

    return-wide v0
.end method

.method public getRelatedMediaSet()Lcom/android/gallery3d/data/MediaSet;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerImage;->mRelatedMediaSet:Lcom/android/gallery3d/data/MediaSet;

    return-object v0
.end method

.method public getSubType()I
    .locals 2

    .prologue
    .line 189
    const/4 v0, 0x0

    .line 190
    .local v0, subType:I
    iget-boolean v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerImage;->mIsConshot:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerImage;->mIsMotion:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerImage;->mIsContainer:Z

    if-nez v1, :cond_0

    .line 191
    invoke-super {p0}, Lcom/android/gallery3d/data/LocalImage;->getSubType()I

    move-result v1

    .line 203
    :goto_0
    return v1

    .line 194
    :cond_0
    iget-boolean v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerImage;->mIsConshot:Z

    if-eqz v1, :cond_1

    .line 195
    or-int/lit16 v0, v0, 0x400

    .line 197
    :cond_1
    iget-boolean v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerImage;->mIsMotion:Z

    if-eqz v1, :cond_2

    .line 198
    or-int/lit16 v0, v0, 0x800

    .line 200
    :cond_2
    iget-boolean v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerImage;->mIsContainer:Z

    if-eqz v1, :cond_3

    .line 201
    or-int/lit16 v0, v0, 0x1000

    :cond_3
    move v1, v0

    .line 203
    goto :goto_0
.end method

.method public getSupportedOperations()I
    .locals 1

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/mediatek/gallery3d/conshots/ContainerImage;->isContainer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerImage;->mRelatedMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaObject;->getSupportedOperations()I

    move-result v0

    .line 143
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/android/gallery3d/data/LocalImage;->getSupportedOperations()I

    move-result v0

    goto :goto_0
.end method

.method protected initThumbnailPlayType()V
    .locals 1

    .prologue
    .line 214
    iget-boolean v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerImage;->mIsContainer:Z

    if-eqz v0, :cond_0

    .line 215
    sget v0, Lcom/mediatek/gallery3d/conshots/ContainerImage;->TPT_GENERATE_PLAY:I

    iput v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->thumbnailPlayType:I

    .line 221
    :goto_0
    return-void

    .line 219
    :cond_0
    invoke-super {p0}, Lcom/android/gallery3d/data/LocalImage;->initThumbnailPlayType()V

    goto :goto_0
.end method

.method protected initVideoGenerator()V
    .locals 2

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerImage;->mIsContainer:Z

    if-eqz v0, :cond_1

    .line 225
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->mVideoGenerator:Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoGenerator;

    if-nez v0, :cond_0

    .line 226
    new-instance v0, Lcom/mediatek/gallery3d/videothumbnail/ContainerToVideoGenerator;

    iget-object v1, p0, Lcom/android/gallery3d/data/LocalImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-direct {v0, v1}, Lcom/mediatek/gallery3d/videothumbnail/ContainerToVideoGenerator;-><init>(Lcom/android/gallery3d/app/GalleryApp;)V

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->mVideoGenerator:Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoGenerator;

    .line 227
    invoke-virtual {p0}, Lcom/mediatek/gallery3d/conshots/ContainerImage;->updateState()V

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    invoke-super {p0}, Lcom/android/gallery3d/data/LocalImage;->initVideoGenerator()V

    goto :goto_0
.end method

.method public isConShot()Z
    .locals 1

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerImage;->mIsConshot:Z

    return v0
.end method

.method public isContainer()Z
    .locals 1

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerImage;->mIsContainer:Z

    return v0
.end method

.method public isMotion()Z
    .locals 1

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerImage;->mIsMotion:Z

    return v0
.end method

.method public judgeType()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 82
    invoke-direct {p0}, Lcom/mediatek/gallery3d/conshots/ContainerImage;->isConShotType()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 83
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    iget-wide v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerImage;->mGroupId:J

    iget v3, p0, Lcom/android/gallery3d/data/LocalMediaItem;->bucketId:I

    invoke-static {v0, v1, v2, v3}, Lcom/mediatek/gallery3d/conshots/ContainerHelper;->getConShotSet(Lcom/android/gallery3d/app/GalleryApp;JI)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerImage;->mRelatedMediaSet:Lcom/android/gallery3d/data/MediaSet;

    .line 84
    iget-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerImage;->mRelatedMediaSet:Lcom/android/gallery3d/data/MediaSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerImage;->mRelatedMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v0

    if-gt v0, v4, :cond_3

    .line 85
    :cond_0
    iput-object v6, p0, Lcom/mediatek/gallery3d/conshots/ContainerImage;->mRelatedMediaSet:Lcom/android/gallery3d/data/MediaSet;

    .line 86
    iput-boolean v5, p0, Lcom/mediatek/gallery3d/conshots/ContainerImage;->mIsContainer:Z

    .line 87
    iput-boolean v5, p0, Lcom/mediatek/gallery3d/conshots/ContainerImage;->mIsConshot:Z

    .line 106
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerImage;->mIsContainer:Z

    if-eqz v0, :cond_2

    .line 107
    invoke-virtual {p0}, Lcom/mediatek/gallery3d/conshots/ContainerImage;->initVideoGenerator()V

    .line 109
    :cond_2
    return-void

    .line 89
    :cond_3
    iput-boolean v4, p0, Lcom/mediatek/gallery3d/conshots/ContainerImage;->mIsContainer:Z

    .line 90
    iput-boolean v4, p0, Lcom/mediatek/gallery3d/conshots/ContainerImage;->mIsConshot:Z

    goto :goto_0

    .line 92
    :cond_4
    invoke-direct {p0}, Lcom/mediatek/gallery3d/conshots/ContainerImage;->isMotionType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-virtual {p0}, Lcom/android/gallery3d/data/LocalMediaItem;->getName()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->id:I

    invoke-static {v0, v1, v2}, Lcom/mediatek/gallery3d/conshots/ContainerHelper;->getMotionSet(Lcom/android/gallery3d/app/GalleryApp;Ljava/lang/String;I)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerImage;->mRelatedMediaSet:Lcom/android/gallery3d/data/MediaSet;

    .line 95
    iget-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerImage;->mRelatedMediaSet:Lcom/android/gallery3d/data/MediaSet;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerImage;->mRelatedMediaSet:Lcom/android/gallery3d/data/MediaSet;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerImage;->mRelatedMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v0

    if-nez v0, :cond_6

    .line 96
    :cond_5
    iput-object v6, p0, Lcom/mediatek/gallery3d/conshots/ContainerImage;->mRelatedMediaSet:Lcom/android/gallery3d/data/MediaSet;

    .line 97
    iput-boolean v5, p0, Lcom/mediatek/gallery3d/conshots/ContainerImage;->mIsContainer:Z

    .line 98
    iput-boolean v5, p0, Lcom/mediatek/gallery3d/conshots/ContainerImage;->mIsMotion:Z

    goto :goto_0

    .line 100
    :cond_6
    iput-boolean v4, p0, Lcom/mediatek/gallery3d/conshots/ContainerImage;->mIsContainer:Z

    .line 101
    iput-boolean v4, p0, Lcom/mediatek/gallery3d/conshots/ContainerImage;->mIsMotion:Z

    .line 102
    iget-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerImage;->mRelatedMediaSet:Lcom/android/gallery3d/data/MediaSet;

    check-cast v0, Lcom/mediatek/gallery3d/conshots/MotionSet;

    iget v1, p0, Lcom/android/gallery3d/data/LocalImage;->rotation:I

    invoke-virtual {v0, v1}, Lcom/mediatek/gallery3d/conshots/MotionSet;->setRotation(I)V

    .line 103
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/gallery3d/data/LocalImage;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerImage;->dateLastModifiedInSec:J

    goto :goto_0
.end method

.method protected loadFromCursor(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/android/gallery3d/data/LocalImage;->loadFromCursor(Landroid/database/Cursor;)V

    .line 57
    const/16 v0, 0x12

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerImage;->mGroupId:J

    .line 58
    const/16 v0, 0x17

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerImage;->mGroupCount:I

    .line 59
    invoke-virtual {p0}, Lcom/mediatek/gallery3d/conshots/ContainerImage;->updateState()V

    .line 60
    return-void
.end method

.method public requestImage(I)Lcom/android/gallery3d/util/ThreadPool$Job;
    .locals 7
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/gallery3d/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 265
    iget-boolean v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerImage;->mIsContainer:Z

    if-eqz v0, :cond_0

    .line 266
    invoke-virtual {p0}, Lcom/mediatek/gallery3d/conshots/ContainerImage;->updateState()V

    .line 268
    :cond_0
    iget-boolean v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerImage;->mIsContainer:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerImage;->mIsMotion:Z

    if-eqz v0, :cond_1

    .line 269
    new-instance v0, Lcom/android/gallery3d/data/LocalImage$LocalImageRequest;

    iget-object v1, p0, Lcom/android/gallery3d/data/LocalImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    iget-object v2, p0, Lcom/android/gallery3d/data/MediaObject;->mPath:Lcom/android/gallery3d/data/Path;

    iget-object v4, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    iget-wide v5, p0, Lcom/mediatek/gallery3d/conshots/ContainerImage;->dateLastModifiedInSec:J

    move v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/gallery3d/data/LocalImage$LocalImageRequest;-><init>(Lcom/android/gallery3d/app/GalleryApp;Lcom/android/gallery3d/data/Path;ILjava/lang/String;J)V

    .line 272
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/android/gallery3d/data/LocalImage$LocalImageRequest;

    iget-object v1, p0, Lcom/android/gallery3d/data/LocalImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    iget-object v2, p0, Lcom/android/gallery3d/data/MediaObject;->mPath:Lcom/android/gallery3d/data/Path;

    iget-object v4, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    iget-wide v5, p0, Lcom/android/gallery3d/data/LocalMediaItem;->dateModifiedInSec:J

    move v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/gallery3d/data/LocalImage$LocalImageRequest;-><init>(Lcom/android/gallery3d/app/GalleryApp;Lcom/android/gallery3d/data/Path;ILjava/lang/String;J)V

    goto :goto_0
.end method

.method public updateContent(Landroid/database/Cursor;)V
    .locals 0
    .parameter "cursor"

    .prologue
    .line 134
    invoke-super {p0, p1}, Lcom/android/gallery3d/data/LocalMediaItem;->updateContent(Landroid/database/Cursor;)V

    .line 135
    invoke-virtual {p0}, Lcom/mediatek/gallery3d/conshots/ContainerImage;->judgeType()V

    .line 136
    return-void
.end method

.method public updateState()V
    .locals 5

    .prologue
    .line 245
    iget-boolean v3, p0, Lcom/mediatek/gallery3d/conshots/ContainerImage;->mIsContainer:Z

    if-nez v3, :cond_1

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    iget-boolean v3, p0, Lcom/mediatek/gallery3d/conshots/ContainerImage;->mIsMotion:Z

    if-eqz v3, :cond_2

    .line 247
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/gallery3d/data/LocalImage;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    .line 248
    .local v1, modifiedInSec:J
    iget-wide v3, p0, Lcom/mediatek/gallery3d/conshots/ContainerImage;->dateLastModifiedInSec:J

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    .line 249
    iput-wide v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerImage;->dateLastModifiedInSec:J

    .line 250
    invoke-direct {p0}, Lcom/mediatek/gallery3d/conshots/ContainerImage;->reGenerateVideo()V

    .line 252
    iget-object v3, p0, Lcom/android/gallery3d/data/LocalImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/data/DataManager;->broadcastUpdatePicture()V

    goto :goto_0

    .line 254
    .end local v1           #modifiedInSec:J
    :cond_2
    iget-boolean v3, p0, Lcom/mediatek/gallery3d/conshots/ContainerImage;->mIsConshot:Z

    if-eqz v3, :cond_0

    .line 255
    iget-object v3, p0, Lcom/mediatek/gallery3d/conshots/ContainerImage;->mRelatedMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v0

    .line 256
    .local v0, itmeCount:I
    iget v3, p0, Lcom/mediatek/gallery3d/conshots/ContainerImage;->mGroupCount:I

    if-eq v0, v3, :cond_0

    iget-object v3, p0, Lcom/android/gallery3d/data/LocalMediaItem;->mVideoGenerator:Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoGenerator;

    if-eqz v3, :cond_0

    .line 257
    invoke-direct {p0, v0}, Lcom/mediatek/gallery3d/conshots/ContainerImage;->setGroupCount(I)V

    .line 258
    invoke-direct {p0}, Lcom/mediatek/gallery3d/conshots/ContainerImage;->reGenerateVideo()V

    goto :goto_0
.end method
