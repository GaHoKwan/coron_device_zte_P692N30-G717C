.class public Lcom/android/mms/ui/MmsThumbnailPresenter;
.super Lcom/android/mms/ui/Presenter;
.source "MmsThumbnailPresenter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MmsThumbnailPresenter"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mImageLoadedCallback:Lcom/android/mms/util/ItemLoadedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/mms/util/ItemLoadedCallback",
            "<",
            "Lcom/android/mms/util/ThumbnailManager$ImageLoaded;",
            ">;"
        }
    .end annotation
.end field

.field private mItemLoadedFuture:Lcom/android/mms/util/ItemLoadedFuture;

.field private mOnLoadedCallback:Lcom/android/mms/util/ItemLoadedCallback;

.field private mSlideCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/mms/ui/ViewInterface;Lcom/android/mms/model/Model;)V
    .locals 1
    .parameter "context"
    .parameter "view"
    .parameter "model"

    .prologue
    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/Presenter;-><init>(Landroid/content/Context;Lcom/android/mms/ui/ViewInterface;Lcom/android/mms/model/Model;)V

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/MmsThumbnailPresenter;->mSlideCount:I

    .line 137
    new-instance v0, Lcom/android/mms/ui/MmsThumbnailPresenter$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsThumbnailPresenter$1;-><init>(Lcom/android/mms/ui/MmsThumbnailPresenter;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsThumbnailPresenter;->mImageLoadedCallback:Lcom/android/mms/util/ItemLoadedCallback;

    .line 92
    iput-object p1, p0, Lcom/android/mms/ui/MmsThumbnailPresenter;->mContext:Landroid/content/Context;

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MmsThumbnailPresenter;)Lcom/android/mms/util/ItemLoadedFuture;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/mms/ui/MmsThumbnailPresenter;->mItemLoadedFuture:Lcom/android/mms/util/ItemLoadedFuture;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/MmsThumbnailPresenter;)Lcom/android/mms/util/ItemLoadedCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/mms/ui/MmsThumbnailPresenter;->mOnLoadedCallback:Lcom/android/mms/util/ItemLoadedCallback;

    return-object v0
.end method

.method private presentFirstSlide(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/SlideModel;)V
    .locals 3
    .parameter "view"
    .parameter "slide"

    .prologue
    .line 110
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->reset()V

    .line 112
    const/4 v0, 0x1

    .line 114
    .local v0, imageVisibility:Z
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    const-string v1, "MmsThumbnailPresenter"

    const-string v2, "The first slide has image."

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/mms/ui/MmsThumbnailPresenter;->presentImageThumbnail(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/ImageModel;)V

    .line 133
    :goto_0
    invoke-interface {p1, v0}, Lcom/android/mms/ui/SlideViewInterface;->setImageVisibility(Z)V

    .line 135
    return-void

    .line 117
    :cond_0
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 118
    const-string v1, "MmsThumbnailPresenter"

    const-string v2, "The first slide has video."

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->getVideo()Lcom/android/mms/model/VideoModel;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/mms/ui/MmsThumbnailPresenter;->presentVideoThumbnail(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/VideoModel;)V

    goto :goto_0

    .line 120
    :cond_1
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 121
    const-string v1, "MmsThumbnailPresenter"

    const-string v2, "The first slide has audio."

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->getAudio()Lcom/android/mms/model/AudioModel;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/mms/ui/MmsThumbnailPresenter;->presentAudioThumbnail(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/AudioModel;)V

    .line 126
    const/4 v0, 0x0

    goto :goto_0

    .line 130
    :cond_2
    const-string v1, "MmsThumbnailPresenter"

    const-string v2, "The first slide has only text."

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private presentImageThumbnail(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/ImageModel;)V
    .locals 8
    .parameter "view"
    .parameter "image"

    .prologue
    .line 231
    if-nez p2, :cond_1

    .line 232
    const-string v5, "MmsThumbnailPresenter"

    const-string v6, "presentImageThumbnail(). iamge is null"

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    if-eqz p2, :cond_2

    .line 236
    const-string v5, "MmsThumbnailPresenter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MmsThumbnailPresent. presentImageThumbnail. image src:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    :cond_2
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x2e

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 241
    .local v3, extName:Ljava/lang/String;
    const-string v5, "dcf"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget v5, p0, Lcom/android/mms/ui/MmsThumbnailPresenter;->mSlideCount:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 242
    iget-object v5, p0, Lcom/android/mms/ui/MmsThumbnailPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0200d3

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 244
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/android/mms/ui/MmsThumbnailPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/mediatek/encapsulation/com/mediatek/internal/EncapsulatedR$drawable;->drm_red_lock:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 246
    .local v4, front:Landroid/graphics/drawable/Drawable;
    new-instance v2, Lcom/mediatek/encapsulation/android/drm/EncapsulatedDrmManagerClient;

    iget-object v5, p0, Lcom/android/mms/ui/MmsThumbnailPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/mediatek/encapsulation/android/drm/EncapsulatedDrmManagerClient;-><init>(Landroid/content/Context;)V

    .line 247
    .local v2, drmManager:Lcom/mediatek/encapsulation/android/drm/EncapsulatedDrmManagerClient;
    invoke-static {v2, v0, v4}, Lcom/mediatek/encapsulation/android/drm/EncapsulatedDrmUiUtils;->overlayBitmap(Lcom/mediatek/encapsulation/android/drm/EncapsulatedDrmManagerClient;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 248
    .local v1, drmBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5, v1}, Lcom/android/mms/ui/SlideViewInterface;->setImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 249
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 250
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 254
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #drmBitmap:Landroid/graphics/Bitmap;
    .end local v2           #drmManager:Lcom/mediatek/encapsulation/android/drm/EncapsulatedDrmManagerClient;
    .end local v4           #front:Landroid/graphics/drawable/Drawable;
    :cond_3
    iget-object v5, p0, Lcom/android/mms/ui/MmsThumbnailPresenter;->mImageLoadedCallback:Lcom/android/mms/util/ItemLoadedCallback;

    invoke-virtual {p2, v5}, Lcom/android/mms/model/ImageModel;->loadThumbnailBitmap(Lcom/android/mms/util/ItemLoadedCallback;)Lcom/android/mms/util/ItemLoadedFuture;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/ui/MmsThumbnailPresenter;->mItemLoadedFuture:Lcom/android/mms/util/ItemLoadedFuture;

    goto :goto_0
.end method

.method private presentVideoThumbnail(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/VideoModel;)V
    .locals 8
    .parameter "view"
    .parameter "video"

    .prologue
    .line 199
    if-nez p2, :cond_1

    .line 200
    const-string v5, "MmsThumbnailPresenter"

    const-string v6, "presentVideoThumbnail(). video is null"

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    if-eqz p2, :cond_2

    .line 204
    const-string v5, "MmsThumbnailPresenter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MmsThumbnailPresent. presentVideoThumbnail. video src:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :cond_2
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x2e

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 209
    .local v3, extName:Ljava/lang/String;
    const-string v5, "dcf"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget v5, p0, Lcom/android/mms/ui/MmsThumbnailPresenter;->mSlideCount:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    instance-of v5, p1, Lcom/android/mms/ui/MessageListItem;

    if-nez v5, :cond_3

    .line 210
    iget-object v5, p0, Lcom/android/mms/ui/MmsThumbnailPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0200d4

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 212
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/android/mms/ui/MmsThumbnailPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/mediatek/encapsulation/com/mediatek/internal/EncapsulatedR$drawable;->drm_red_lock:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 214
    .local v4, front:Landroid/graphics/drawable/Drawable;
    new-instance v2, Lcom/mediatek/encapsulation/android/drm/EncapsulatedDrmManagerClient;

    iget-object v5, p0, Lcom/android/mms/ui/MmsThumbnailPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/mediatek/encapsulation/android/drm/EncapsulatedDrmManagerClient;-><init>(Landroid/content/Context;)V

    .line 215
    .local v2, drmManager:Lcom/mediatek/encapsulation/android/drm/EncapsulatedDrmManagerClient;
    invoke-static {v2, v0, v4}, Lcom/mediatek/encapsulation/android/drm/EncapsulatedDrmUiUtils;->overlayBitmap(Lcom/mediatek/encapsulation/android/drm/EncapsulatedDrmManagerClient;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 216
    .local v1, drmBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5, v1}, Lcom/android/mms/ui/SlideViewInterface;->setVideoThumbnail(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 217
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 218
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 222
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #drmBitmap:Landroid/graphics/Bitmap;
    .end local v2           #drmManager:Lcom/mediatek/encapsulation/android/drm/EncapsulatedDrmManagerClient;
    .end local v4           #front:Landroid/graphics/drawable/Drawable;
    :cond_3
    iget-object v5, p0, Lcom/android/mms/ui/MmsThumbnailPresenter;->mImageLoadedCallback:Lcom/android/mms/util/ItemLoadedCallback;

    invoke-virtual {p2, v5}, Lcom/android/mms/model/VideoModel;->loadThumbnailBitmap(Lcom/android/mms/util/ItemLoadedCallback;)Lcom/android/mms/util/ItemLoadedFuture;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/ui/MmsThumbnailPresenter;->mItemLoadedFuture:Lcom/android/mms/util/ItemLoadedFuture;

    goto/16 :goto_0
.end method


# virtual methods
.method public cancelBackgroundLoading()V
    .locals 3

    .prologue
    .line 273
    iget-object v1, p0, Lcom/android/mms/ui/Presenter;->mModel:Lcom/android/mms/model/Model;

    check-cast v1, Lcom/android/mms/model/SlideshowModel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    .line 274
    .local v0, slide:Lcom/android/mms/model/SlideModel;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/model/ImageModel;->cancelThumbnailLoading()V

    .line 277
    :cond_0
    return-void
.end method

.method public onModelChanged(Lcom/android/mms/model/Model;Z)V
    .locals 0
    .parameter "model"
    .parameter "dataChanged"

    .prologue
    .line 268
    return-void
.end method

.method public present(Lcom/android/mms/util/ItemLoadedCallback;)V
    .locals 3
    .parameter "callback"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/mms/ui/MmsThumbnailPresenter;->mOnLoadedCallback:Lcom/android/mms/util/ItemLoadedCallback;

    .line 99
    iget-object v1, p0, Lcom/android/mms/ui/Presenter;->mModel:Lcom/android/mms/model/Model;

    check-cast v1, Lcom/android/mms/model/SlideshowModel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    .line 101
    .local v0, slide:Lcom/android/mms/model/SlideModel;
    iget-object v1, p0, Lcom/android/mms/ui/Presenter;->mModel:Lcom/android/mms/model/Model;

    check-cast v1, Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MmsThumbnailPresenter;->mSlideCount:I

    .line 103
    if-eqz v0, :cond_0

    .line 104
    const-string v1, "MmsThumbnailPresenter"

    const-string v2, "The first slide is not null."

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v1, p0, Lcom/android/mms/ui/Presenter;->mView:Lcom/android/mms/ui/ViewInterface;

    check-cast v1, Lcom/android/mms/ui/SlideViewInterface;

    invoke-direct {p0, v1, v0}, Lcom/android/mms/ui/MmsThumbnailPresenter;->presentFirstSlide(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/SlideModel;)V

    .line 107
    :cond_0
    return-void
.end method

.method protected presentAudioThumbnail(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/AudioModel;)V
    .locals 3
    .parameter "view"
    .parameter "audio"

    .prologue
    .line 263
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/mms/model/AudioModel;->getExtras()Ljava/util/Map;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/android/mms/ui/SlideViewInterface;->setAudio(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)V

    .line 264
    return-void
.end method
