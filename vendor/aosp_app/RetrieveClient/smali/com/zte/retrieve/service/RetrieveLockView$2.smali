.class Lcom/zte/retrieve/service/RetrieveLockView$2;
.super Ljava/lang/Object;
.source "RetrieveLockView.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/retrieve/service/RetrieveLockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/retrieve/service/RetrieveLockView;


# direct methods
.method constructor <init>(Lcom/zte/retrieve/service/RetrieveLockView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zte/retrieve/service/RetrieveLockView$2;->this$0:Lcom/zte/retrieve/service/RetrieveLockView;

    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 7
    .parameter "data"
    .parameter "camera"

    .prologue
    .line 391
    const-string v5, "mJpeg onPictureTaken start"

    invoke-static {v5}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 392
    iget-object v5, p0, Lcom/zte/retrieve/service/RetrieveLockView$2;->this$0:Lcom/zte/retrieve/service/RetrieveLockView;

    #calls: Lcom/zte/retrieve/service/RetrieveLockView;->getStoreDirectory()Ljava/lang/String;
    invoke-static {v5}, Lcom/zte/retrieve/service/RetrieveLockView;->access$2(Lcom/zte/retrieve/service/RetrieveLockView;)Ljava/lang/String;

    move-result-object v3

    .line 393
    .local v3, picStorePath:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "onPictureTaken picStorePath = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 394
    const/4 v5, 0x0

    array-length v6, p1

    invoke-static {p1, v5, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 395
    .local v0, bm:Landroid/graphics/Bitmap;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "onPictureTaken data is "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",the length is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 396
    array-length v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 395
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 397
    if-nez v0, :cond_0

    iget-object v5, p0, Lcom/zte/retrieve/service/RetrieveLockView$2;->this$0:Lcom/zte/retrieve/service/RetrieveLockView;

    #getter for: Lcom/zte/retrieve/service/RetrieveLockView;->mBmpPreview:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcom/zte/retrieve/service/RetrieveLockView;->access$3(Lcom/zte/retrieve/service/RetrieveLockView;)Landroid/graphics/Bitmap;

    move-result-object v5

    if-nez v5, :cond_0

    .line 427
    :goto_0
    return-void

    .line 399
    :cond_0
    if-nez v0, :cond_1

    iget-object v5, p0, Lcom/zte/retrieve/service/RetrieveLockView$2;->this$0:Lcom/zte/retrieve/service/RetrieveLockView;

    #getter for: Lcom/zte/retrieve/service/RetrieveLockView;->mBmpPreview:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcom/zte/retrieve/service/RetrieveLockView;->access$3(Lcom/zte/retrieve/service/RetrieveLockView;)Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 400
    const-string v5, "bm==null,save file instead"

    invoke-static {v5}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 401
    iget-object v5, p0, Lcom/zte/retrieve/service/RetrieveLockView$2;->this$0:Lcom/zte/retrieve/service/RetrieveLockView;

    #getter for: Lcom/zte/retrieve/service/RetrieveLockView;->mBmpPreview:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcom/zte/retrieve/service/RetrieveLockView;->access$3(Lcom/zte/retrieve/service/RetrieveLockView;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 404
    :cond_1
    iget-object v5, p0, Lcom/zte/retrieve/service/RetrieveLockView$2;->this$0:Lcom/zte/retrieve/service/RetrieveLockView;

    #calls: Lcom/zte/retrieve/service/RetrieveLockView;->savePicToSdcard(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/io/OutputStream;
    invoke-static {v5, v0, v3}, Lcom/zte/retrieve/service/RetrieveLockView;->access$4(Lcom/zte/retrieve/service/RetrieveLockView;Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v2

    .line 405
    .local v2, picFile:Ljava/io/OutputStream;
    iget-object v5, p0, Lcom/zte/retrieve/service/RetrieveLockView$2;->this$0:Lcom/zte/retrieve/service/RetrieveLockView;

    #calls: Lcom/zte/retrieve/service/RetrieveLockView;->storePicInDatabase(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/net/Uri;
    invoke-static {v5, v0, v3}, Lcom/zte/retrieve/service/RetrieveLockView;->access$5(Lcom/zte/retrieve/service/RetrieveLockView;Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 407
    .local v4, uri:Landroid/net/Uri;
    if-nez v2, :cond_2

    .line 408
    const-string v5, "get pic file failed!"

    invoke-static {v5}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 411
    :cond_2
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x5a

    invoke-virtual {v0, v5, v6, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 412
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 413
    iget-object v5, p0, Lcom/zte/retrieve/service/RetrieveLockView$2;->this$0:Lcom/zte/retrieve/service/RetrieveLockView;

    #getter for: Lcom/zte/retrieve/service/RetrieveLockView;->mBmpPreview:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcom/zte/retrieve/service/RetrieveLockView;->access$3(Lcom/zte/retrieve/service/RetrieveLockView;)Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 414
    iget-object v5, p0, Lcom/zte/retrieve/service/RetrieveLockView$2;->this$0:Lcom/zte/retrieve/service/RetrieveLockView;

    #getter for: Lcom/zte/retrieve/service/RetrieveLockView;->mBmpPreview:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcom/zte/retrieve/service/RetrieveLockView;->access$3(Lcom/zte/retrieve/service/RetrieveLockView;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 417
    :cond_3
    :try_start_0
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 418
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    :goto_1
    const-string v5, "PictureCallback sendMMS"

    invoke-static {v5}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 424
    iget-object v5, p0, Lcom/zte/retrieve/service/RetrieveLockView$2;->this$0:Lcom/zte/retrieve/service/RetrieveLockView;

    #calls: Lcom/zte/retrieve/service/RetrieveLockView;->sendMMS(Landroid/net/Uri;)V
    invoke-static {v5, v4}, Lcom/zte/retrieve/service/RetrieveLockView;->access$6(Lcom/zte/retrieve/service/RetrieveLockView;Landroid/net/Uri;)V

    .line 426
    const-string v5, "PictureCallback sendMMS end"

    invoke-static {v5}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 419
    :catch_0
    move-exception v1

    .line 420
    .local v1, e1:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
