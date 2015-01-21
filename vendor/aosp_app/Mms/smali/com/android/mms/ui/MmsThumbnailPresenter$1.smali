.class Lcom/android/mms/ui/MmsThumbnailPresenter$1;
.super Ljava/lang/Object;
.source "MmsThumbnailPresenter.java"

# interfaces
.implements Lcom/android/mms/util/ItemLoadedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MmsThumbnailPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/mms/util/ItemLoadedCallback",
        "<",
        "Lcom/android/mms/util/ThumbnailManager$ImageLoaded;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MmsThumbnailPresenter;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MmsThumbnailPresenter;)V
    .locals 0
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/mms/ui/MmsThumbnailPresenter$1;->this$0:Lcom/android/mms/ui/MmsThumbnailPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLoaded(Lcom/android/mms/util/ThumbnailManager$ImageLoaded;Ljava/lang/Throwable;)V
    .locals 7
    .parameter "imageLoaded"
    .parameter "exception"

    .prologue
    const/4 v6, 0x0

    .line 140
    if-nez p2, :cond_1

    .line 143
    iget-object v3, p0, Lcom/android/mms/ui/MmsThumbnailPresenter$1;->this$0:Lcom/android/mms/ui/MmsThumbnailPresenter;

    #getter for: Lcom/android/mms/ui/MmsThumbnailPresenter;->mItemLoadedFuture:Lcom/android/mms/util/ItemLoadedFuture;
    invoke-static {v3}, Lcom/android/mms/ui/MmsThumbnailPresenter;->access$000(Lcom/android/mms/ui/MmsThumbnailPresenter;)Lcom/android/mms/util/ItemLoadedFuture;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 144
    iget-object v3, p0, Lcom/android/mms/ui/MmsThumbnailPresenter$1;->this$0:Lcom/android/mms/ui/MmsThumbnailPresenter;

    #getter for: Lcom/android/mms/ui/MmsThumbnailPresenter;->mItemLoadedFuture:Lcom/android/mms/util/ItemLoadedFuture;
    invoke-static {v3}, Lcom/android/mms/ui/MmsThumbnailPresenter;->access$000(Lcom/android/mms/ui/MmsThumbnailPresenter;)Lcom/android/mms/util/ItemLoadedFuture;

    move-result-object v4

    monitor-enter v4

    .line 145
    :try_start_0
    iget-object v3, p0, Lcom/android/mms/ui/MmsThumbnailPresenter$1;->this$0:Lcom/android/mms/ui/MmsThumbnailPresenter;

    #getter for: Lcom/android/mms/ui/MmsThumbnailPresenter;->mItemLoadedFuture:Lcom/android/mms/util/ItemLoadedFuture;
    invoke-static {v3}, Lcom/android/mms/ui/MmsThumbnailPresenter;->access$000(Lcom/android/mms/ui/MmsThumbnailPresenter;)Lcom/android/mms/util/ItemLoadedFuture;

    move-result-object v3

    const/4 v5, 0x1

    invoke-interface {v3, v5}, Lcom/android/mms/util/ItemLoadedFuture;->setIsDone(Z)V

    .line 146
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/MmsThumbnailPresenter$1;->this$0:Lcom/android/mms/ui/MmsThumbnailPresenter;

    #getter for: Lcom/android/mms/ui/MmsThumbnailPresenter;->mOnLoadedCallback:Lcom/android/mms/util/ItemLoadedCallback;
    invoke-static {v3}, Lcom/android/mms/ui/MmsThumbnailPresenter;->access$100(Lcom/android/mms/ui/MmsThumbnailPresenter;)Lcom/android/mms/util/ItemLoadedCallback;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 150
    iget-object v3, p0, Lcom/android/mms/ui/MmsThumbnailPresenter$1;->this$0:Lcom/android/mms/ui/MmsThumbnailPresenter;

    #getter for: Lcom/android/mms/ui/MmsThumbnailPresenter;->mOnLoadedCallback:Lcom/android/mms/util/ItemLoadedCallback;
    invoke-static {v3}, Lcom/android/mms/ui/MmsThumbnailPresenter;->access$100(Lcom/android/mms/ui/MmsThumbnailPresenter;)Lcom/android/mms/util/ItemLoadedCallback;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/android/mms/util/ItemLoadedCallback;->onItemLoaded(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 195
    :cond_1
    :goto_0
    return-void

    .line 146
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 153
    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/MmsThumbnailPresenter$1;->this$0:Lcom/android/mms/ui/MmsThumbnailPresenter;

    iget-object v3, v3, Lcom/android/mms/ui/Presenter;->mModel:Lcom/android/mms/model/Model;

    check-cast v3, Lcom/android/mms/model/SlideshowModel;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    .line 154
    .local v0, slide:Lcom/android/mms/model/SlideModel;
    if-eqz v0, :cond_1

    .line 155
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-boolean v3, p1, Lcom/android/mms/util/ThumbnailManager$ImageLoaded;->mIsVideo:Z

    if-eqz v3, :cond_4

    .line 164
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getVideo()Lcom/android/mms/model/VideoModel;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/util/ThumbnailManager;->getThumbnailUri(Lcom/android/mms/model/MediaModel;)Landroid/net/Uri;

    move-result-object v1

    .line 165
    .local v1, slideUri:Landroid/net/Uri;
    invoke-virtual {p1}, Lcom/android/mms/util/ThumbnailManager$ImageLoaded;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 166
    .local v2, thumbnailUriStr:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/mms/util/ThumbnailManager$ImageLoaded;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 167
    iget-object v3, p0, Lcom/android/mms/ui/MmsThumbnailPresenter$1;->this$0:Lcom/android/mms/ui/MmsThumbnailPresenter;

    iget-object v3, v3, Lcom/android/mms/ui/Presenter;->mView:Lcom/android/mms/ui/ViewInterface;

    check-cast v3, Lcom/android/mms/ui/SlideViewInterface;

    iget-object v4, p1, Lcom/android/mms/util/ThumbnailManager$ImageLoaded;->mBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v3, v6, v4}, Lcom/android/mms/ui/SlideViewInterface;->setVideoThumbnail(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 169
    :cond_3
    const-string v3, "content://mms/part"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 170
    iget-object v3, p0, Lcom/android/mms/ui/MmsThumbnailPresenter$1;->this$0:Lcom/android/mms/ui/MmsThumbnailPresenter;

    iget-object v3, v3, Lcom/android/mms/ui/Presenter;->mView:Lcom/android/mms/ui/ViewInterface;

    check-cast v3, Lcom/android/mms/ui/SlideViewInterface;

    iget-object v4, p1, Lcom/android/mms/util/ThumbnailManager$ImageLoaded;->mBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v3, v6, v4}, Lcom/android/mms/ui/SlideViewInterface;->setVideoThumbnail(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 174
    .end local v1           #slideUri:Landroid/net/Uri;
    .end local v2           #thumbnailUriStr:Ljava/lang/String;
    :cond_4
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p1, Lcom/android/mms/util/ThumbnailManager$ImageLoaded;->mIsVideo:Z

    if-nez v3, :cond_1

    .line 183
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/util/ThumbnailManager;->getThumbnailUri(Lcom/android/mms/model/MediaModel;)Landroid/net/Uri;

    move-result-object v1

    .line 184
    .restart local v1       #slideUri:Landroid/net/Uri;
    invoke-virtual {p1}, Lcom/android/mms/util/ThumbnailManager$ImageLoaded;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 185
    .restart local v2       #thumbnailUriStr:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/mms/util/ThumbnailManager$ImageLoaded;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 186
    iget-object v3, p0, Lcom/android/mms/ui/MmsThumbnailPresenter$1;->this$0:Lcom/android/mms/ui/MmsThumbnailPresenter;

    iget-object v3, v3, Lcom/android/mms/ui/Presenter;->mView:Lcom/android/mms/ui/ViewInterface;

    check-cast v3, Lcom/android/mms/ui/SlideViewInterface;

    iget-object v4, p1, Lcom/android/mms/util/ThumbnailManager$ImageLoaded;->mBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v3, v6, v4}, Lcom/android/mms/ui/SlideViewInterface;->setImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 187
    :cond_5
    const-string v3, "content://mms/part"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 188
    iget-object v3, p0, Lcom/android/mms/ui/MmsThumbnailPresenter$1;->this$0:Lcom/android/mms/ui/MmsThumbnailPresenter;

    iget-object v3, v3, Lcom/android/mms/ui/Presenter;->mView:Lcom/android/mms/ui/ViewInterface;

    check-cast v3, Lcom/android/mms/ui/SlideViewInterface;

    iget-object v4, p1, Lcom/android/mms/util/ThumbnailManager$ImageLoaded;->mBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v3, v6, v4}, Lcom/android/mms/ui/SlideViewInterface;->setImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto/16 :goto_0
.end method

.method public bridge synthetic onItemLoaded(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 138
    check-cast p1, Lcom/android/mms/util/ThumbnailManager$ImageLoaded;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/ui/MmsThumbnailPresenter$1;->onItemLoaded(Lcom/android/mms/util/ThumbnailManager$ImageLoaded;Ljava/lang/Throwable;)V

    return-void
.end method
