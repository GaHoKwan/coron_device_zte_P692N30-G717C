.class Lcom/android/gallery3d/app/CropImage$SaveOutput;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/CropImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveOutput"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCropRect:Landroid/graphics/RectF;

.field final synthetic this$0:Lcom/android/gallery3d/app/CropImage;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/CropImage;Landroid/graphics/RectF;)V
    .locals 0
    .parameter
    .parameter "cropRect"

    .prologue
    .line 362
    iput-object p1, p0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->this$0:Lcom/android/gallery3d/app/CropImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 363
    iput-object p2, p0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->mCropRect:Landroid/graphics/RectF;

    .line 364
    return-void
.end method


# virtual methods
.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/content/Intent;
    .locals 12
    .parameter "jc"

    .prologue
    .line 368
    const-string v8, "Gallery2/CropImage"

    const-string v9, "SaveOutput.run"

    invoke-static {v8, v9}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->mCropRect:Landroid/graphics/RectF;

    .line 370
    .local v0, cropRect:Landroid/graphics/RectF;
    iget-object v8, p0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->this$0:Lcom/android/gallery3d/app/CropImage;

    invoke-virtual {v8}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 372
    .local v3, extra:Landroid/os/Bundle;
    new-instance v5, Landroid/graphics/Rect;

    iget v8, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iget v9, v0, Landroid/graphics/RectF;->top:F

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    iget v10, v0, Landroid/graphics/RectF;->right:F

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    iget v11, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-direct {v5, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 376
    .local v5, rect:Landroid/graphics/Rect;
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 377
    .local v6, result:Landroid/content/Intent;
    const-string v8, "cropped-rect"

    invoke-virtual {v6, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 378
    const/4 v1, 0x0

    .line 379
    .local v1, cropped:Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 380
    .local v4, outputted:Z
    if-eqz v3, :cond_9

    .line 381
    const-string v8, "output"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 382
    .local v7, uri:Landroid/net/Uri;
    if-eqz v7, :cond_1

    .line 383
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v6, 0x0

    .line 436
    .end local v6           #result:Landroid/content/Intent;
    .end local v7           #uri:Landroid/net/Uri;
    :goto_0
    return-object v6

    .line 384
    .restart local v6       #result:Landroid/content/Intent;
    .restart local v7       #uri:Landroid/net/Uri;
    :cond_0
    const/4 v4, 0x1

    .line 385
    iget-object v8, p0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->this$0:Lcom/android/gallery3d/app/CropImage;

    #calls: Lcom/android/gallery3d/app/CropImage;->getCroppedImage(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    invoke-static {v8, p1, v5}, Lcom/android/gallery3d/app/CropImage;->access$400(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 386
    iget-object v8, p0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->this$0:Lcom/android/gallery3d/app/CropImage;

    #calls: Lcom/android/gallery3d/app/CropImage;->saveBitmapToUri(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/net/Uri;)Z
    invoke-static {v8, p1, v1, v7}, Lcom/android/gallery3d/app/CropImage;->access$500(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/net/Uri;)Z

    move-result v8

    if-nez v8, :cond_1

    const/4 v6, 0x0

    goto :goto_0

    .line 388
    :cond_1
    const-string v8, "return-data"

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 389
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v6, 0x0

    goto :goto_0

    .line 390
    :cond_2
    const-string v8, "Gallery2/CropImage"

    const-string v9, "SaveOutput: KEY_RETURN_DATA"

    invoke-static {v8, v9}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const/4 v4, 0x1

    .line 392
    if-nez v1, :cond_3

    iget-object v8, p0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->this$0:Lcom/android/gallery3d/app/CropImage;

    #calls: Lcom/android/gallery3d/app/CropImage;->getCroppedImage(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    invoke-static {v8, p1, v5}, Lcom/android/gallery3d/app/CropImage;->access$400(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 393
    :cond_3
    const-string v8, "data"

    invoke-virtual {v6, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 395
    :cond_4
    const-string v8, "set-as-wallpaper"

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 396
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v6, 0x0

    goto :goto_0

    .line 397
    :cond_5
    const-string v8, "Gallery2/CropImage"

    const-string v9, "SaveOutput: KEY_SET_AS_WALLPAPER"

    invoke-static {v8, v9}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    const/4 v4, 0x1

    .line 401
    iget-object v8, p0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->this$0:Lcom/android/gallery3d/app/CropImage;

    #getter for: Lcom/android/gallery3d/app/CropImage;->mSetStereoWallpaper:Z
    invoke-static {v8}, Lcom/android/gallery3d/app/CropImage;->access$600(Lcom/android/gallery3d/app/CropImage;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 402
    const-string v8, "Gallery2/CropImage"

    const-string v9, "SaveOutput: KEY_SET_AS_WALLPAPER: stereo"

    invoke-static {v8, v9}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iget-object v8, p0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->this$0:Lcom/android/gallery3d/app/CropImage;

    iget-object v9, p0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->this$0:Lcom/android/gallery3d/app/CropImage;

    invoke-virtual {v9}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    #setter for: Lcom/android/gallery3d/app/CropImage;->mStereoWallpaperUri:Landroid/net/Uri;
    invoke-static {v8, v9}, Lcom/android/gallery3d/app/CropImage;->access$702(Lcom/android/gallery3d/app/CropImage;Landroid/net/Uri;)Landroid/net/Uri;

    .line 404
    const-string v8, "Gallery2/CropImage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "saveoutput:run:mStereoWallpaperUri="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->this$0:Lcom/android/gallery3d/app/CropImage;

    #getter for: Lcom/android/gallery3d/app/CropImage;->mStereoWallpaperUri:Landroid/net/Uri;
    invoke-static {v10}, Lcom/android/gallery3d/app/CropImage;->access$700(Lcom/android/gallery3d/app/CropImage;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget-object v8, p0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->this$0:Lcom/android/gallery3d/app/CropImage;

    invoke-virtual {v8}, Lcom/android/gallery3d/app/CropImage;->doBindService()Z

    move-result v8

    if-nez v8, :cond_9

    .line 411
    iget-object v8, p0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->this$0:Lcom/android/gallery3d/app/CropImage;

    const/4 v9, 0x3

    #setter for: Lcom/android/gallery3d/app/CropImage;->mState:I
    invoke-static {v8, v9}, Lcom/android/gallery3d/app/CropImage;->access$802(Lcom/android/gallery3d/app/CropImage;I)I

    .line 412
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 415
    :cond_6
    const-string v8, "Gallery2/CropImage"

    const-string v9, "SaveOutput: [wallpaper] => getCroppedImage"

    invoke-static {v8, v9}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    if-nez v1, :cond_7

    iget-object v8, p0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->this$0:Lcom/android/gallery3d/app/CropImage;

    #calls: Lcom/android/gallery3d/app/CropImage;->getCroppedImage(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    invoke-static {v8, p1, v5}, Lcom/android/gallery3d/app/CropImage;->access$400(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 417
    :cond_7
    const-string v8, "Gallery2/CropImage"

    const-string v9, "SaveOutput: [wallpaper] <= getCroppedImage"

    invoke-static {v8, v9}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    const-string v8, "Gallery2/CropImage"

    const-string v9, "SaveOutput: [wallpaper] => setAsWallpaper"

    invoke-static {v8, v9}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget-object v8, p0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->this$0:Lcom/android/gallery3d/app/CropImage;

    #calls: Lcom/android/gallery3d/app/CropImage;->setAsWallpaper(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Z
    invoke-static {v8, p1, v1}, Lcom/android/gallery3d/app/CropImage;->access$900(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Z

    move-result v8

    if-nez v8, :cond_8

    const/4 v6, 0x0

    goto/16 :goto_0

    .line 420
    :cond_8
    const-string v8, "Gallery2/CropImage"

    const-string v9, "SaveOutput: [wallpaper] <= setAsWallpaper"

    invoke-static {v8, v9}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    .end local v7           #uri:Landroid/net/Uri;
    :cond_9
    if-nez v4, :cond_c

    .line 425
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v8

    if-eqz v8, :cond_a

    const/4 v6, 0x0

    goto/16 :goto_0

    .line 426
    :cond_a
    const-string v8, "Gallery2/CropImage"

    const-string v9, "SaveOutput: ordinary crop"

    invoke-static {v8, v9}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    const-string v8, "Gallery2/CropImage"

    const-string v9, "SaveOutput: [ordinary] => getCroppedImage"

    invoke-static {v8, v9}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    if-nez v1, :cond_b

    iget-object v8, p0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->this$0:Lcom/android/gallery3d/app/CropImage;

    #calls: Lcom/android/gallery3d/app/CropImage;->getCroppedImage(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    invoke-static {v8, p1, v5}, Lcom/android/gallery3d/app/CropImage;->access$400(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 429
    :cond_b
    const-string v8, "Gallery2/CropImage"

    const-string v9, "SaveOutput: [ordinary] <= getCroppedImage"

    invoke-static {v8, v9}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    const-string v8, "Gallery2/CropImage"

    const-string v9, "SaveOutput: [ordinary] => saveToMediaProvider"

    invoke-static {v8, v9}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    iget-object v8, p0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->this$0:Lcom/android/gallery3d/app/CropImage;

    #calls: Lcom/android/gallery3d/app/CropImage;->saveToMediaProvider(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;
    invoke-static {v8, p1, v1}, Lcom/android/gallery3d/app/CropImage;->access$1000(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v2

    .line 432
    .local v2, data:Landroid/net/Uri;
    const-string v8, "Gallery2/CropImage"

    const-string v9, "SaveOutput: [ordinary] <= saveToMediaProvider"

    invoke-static {v8, v9}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    if-eqz v2, :cond_c

    invoke-virtual {v6, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 435
    .end local v2           #data:Landroid/net/Uri;
    :cond_c
    iget-object v8, p0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->this$0:Lcom/android/gallery3d/app/CropImage;

    const/4 v9, 0x3

    #setter for: Lcom/android/gallery3d/app/CropImage;->mState:I
    invoke-static {v8, v9}, Lcom/android/gallery3d/app/CropImage;->access$802(Lcom/android/gallery3d/app/CropImage;I)I

    goto/16 :goto_0
.end method

.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 359
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/app/CropImage$SaveOutput;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
