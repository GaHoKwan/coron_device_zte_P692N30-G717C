.class Lcom/android/mms/ui/SlideEditorActivity$13;
.super Ljava/lang/Object;
.source "SlideEditorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SlideEditorActivity;->addRestrictedMedia(Landroid/net/Uri;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideEditorActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideEditorActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1312
    iput-object p1, p0, Lcom/android/mms/ui/SlideEditorActivity$13;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .parameter "dialog"
    .parameter "which"

    .prologue
    const v9, 0x7f0b026d

    const v8, 0x7f0b026c

    const v5, 0x7f0b026b

    const v7, 0x7f0b026f

    const/4 v6, 0x0

    .line 1314
    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity$13;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    #getter for: Lcom/android/mms/ui/SlideEditorActivity;->mRestritedUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/mms/ui/SlideEditorActivity;->access$1900(Lcom/android/mms/ui/SlideEditorActivity;)Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity$13;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    #getter for: Lcom/android/mms/ui/SlideEditorActivity;->mMediaType:I
    invoke-static {v2}, Lcom/android/mms/ui/SlideEditorActivity;->access$2000(Lcom/android/mms/ui/SlideEditorActivity;)I

    move-result v2

    if-nez v2, :cond_1

    .line 1418
    :cond_0
    :goto_0
    return-void

    .line 1317
    :cond_1
    sget v0, Lcom/android/mms/data/WorkingMessage;->sCreationMode:I

    .line 1318
    .local v0, createMode:I
    sput v6, Lcom/android/mms/data/WorkingMessage;->sCreationMode:I

    .line 1319
    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity$13;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    #getter for: Lcom/android/mms/ui/SlideEditorActivity;->mMediaType:I
    invoke-static {v2}, Lcom/android/mms/ui/SlideEditorActivity;->access$2000(Lcom/android/mms/ui/SlideEditorActivity;)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 1412
    const-string v2, "SlideEditorActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error Restricted Midea: dataUri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/SlideEditorActivity$13;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    #getter for: Lcom/android/mms/ui/SlideEditorActivity;->mRestritedUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/android/mms/ui/SlideEditorActivity;->access$1900(Lcom/android/mms/ui/SlideEditorActivity;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1415
    :goto_1
    sput v0, Lcom/android/mms/data/WorkingMessage;->sCreationMode:I

    .line 1417
    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity$13;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    #calls: Lcom/android/mms/ui/SlideEditorActivity;->showSizeDisplay()V
    invoke-static {v2}, Lcom/android/mms/ui/SlideEditorActivity;->access$500(Lcom/android/mms/ui/SlideEditorActivity;)V

    goto :goto_0

    .line 1323
    :sswitch_0
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity$13;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    #getter for: Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;
    invoke-static {v2}, Lcom/android/mms/ui/SlideEditorActivity;->access$300(Lcom/android/mms/ui/SlideEditorActivity;)Lcom/android/mms/ui/SlideshowEditor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity$13;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    #getter for: Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I
    invoke-static {v3}, Lcom/android/mms/ui/SlideEditorActivity;->access$100(Lcom/android/mms/ui/SlideEditorActivity;)I

    move-result v3

    iget-object v4, p0, Lcom/android/mms/ui/SlideEditorActivity$13;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    #getter for: Lcom/android/mms/ui/SlideEditorActivity;->mRestritedUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/android/mms/ui/SlideEditorActivity;->access$1900(Lcom/android/mms/ui/SlideEditorActivity;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/mms/ui/SlideshowEditor;->changeImage(ILandroid/net/Uri;)V

    .line 1324
    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity$13;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    const v3, 0x7f0b0288

    #calls: Lcom/android/mms/ui/SlideEditorActivity;->setReplaceButtonText(I)V
    invoke-static {v2, v3}, Lcom/android/mms/ui/SlideEditorActivity;->access$1600(Lcom/android/mms/ui/SlideEditorActivity;I)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/mms/ResolutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_1

    .line 1325
    :catch_0
    move-exception v1

    .line 1326
    .local v1, e:Lcom/google/android/mms/MmsException;
    const-string v2, "SlideEditorActivity"

    const-string v3, "add image failed"

    invoke-static {v2, v3, v1}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1327
    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity$13;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    const-string v3, "add picture failed"

    #calls: Lcom/android/mms/ui/SlideEditorActivity;->notifyUser(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/mms/ui/SlideEditorActivity;->access$1700(Lcom/android/mms/ui/SlideEditorActivity;Ljava/lang/String;)V

    .line 1328
    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity$13;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity$13;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    iget-object v4, p0, Lcom/android/mms/ui/SlideEditorActivity$13;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    #calls: Lcom/android/mms/ui/SlideEditorActivity;->getPictureString()Ljava/lang/String;
    invoke-static {v4}, Lcom/android/mms/ui/SlideEditorActivity;->access$1300(Lcom/android/mms/ui/SlideEditorActivity;)Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v7, v4}, Lcom/android/mms/ui/SlideEditorActivity;->access$1400(Lcom/android/mms/ui/SlideEditorActivity;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 1331
    .end local v1           #e:Lcom/google/android/mms/MmsException;
    :catch_1
    move-exception v1

    .line 1332
    .local v1, e:Lcom/android/mms/UnsupportContentTypeException;
    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity$13;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity$13;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    iget-object v4, p0, Lcom/android/mms/ui/SlideEditorActivity$13;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    #calls: Lcom/android/mms/ui/SlideEditorActivity;->getPictureString()Ljava/lang/String;
    invoke-static {v4}, Lcom/android/mms/ui/SlideEditorActivity;->access$1300(Lcom/android/mms/ui/SlideEditorActivity;)Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v5, v4}, Lcom/android/mms/ui/SlideEditorActivity;->access$1400(Lcom/android/mms/ui/SlideEditorActivity;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/SlideEditorActivity$13;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    iget-object v5, p0, Lcom/android/mms/ui/SlideEditorActivity$13;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    #calls: Lcom/android/mms/ui/SlideEditorActivity;->getPictureString()Ljava/lang/String;
    invoke-static {v5}, Lcom/android/mms/ui/SlideEditorActivity;->access$1300(Lcom/android/mms/ui/SlideEditorActivity;)Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;
    invoke-static {v4, v8, v5}, Lcom/android/mms/ui/SlideEditorActivity;->access$1400(Lcom/android/mms/ui/SlideEditorActivity;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1335
    .end local v1           #e:Lcom/android/mms/UnsupportContentTypeException;
    :catch_2
    move-exception v1

    .line 1336
    .local v1, e:Lcom/android/mms/ResolutionException;
    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity$13;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity$13;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    #getter for: Lcom/android/mms/ui/SlideEditorActivity;->mRestritedUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/mms/ui/SlideEditorActivity;->access$1900(Lcom/android/mms/ui/SlideEditorActivity;)Landroid/net/Uri;

    move-result-object v3

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iget-object v5, p0, Lcom/android/mms/ui/SlideEditorActivity$13;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    #getter for: Lcom/android/mms/ui/SlideEditorActivity;->mResizeImageCallback:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;
    invoke-static {v5}, Lcom/android/mms/ui/SlideEditorActivity;->access$2100(Lcom/android/mms/ui/SlideEditorActivity;)Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

    move-result-object v5

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/mms/ui/MessageUtils;->resizeImageAsync(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Handler;Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;Z)V

    goto/16 :goto_1

    .line 1338
    .end local v1           #e:Lcom/android/mms/ResolutionException;
    :catch_3
    move-exception v1

    .line 1339
    .local v1, e:Lcom/android/mms/ExceedMessageSizeException;
    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity$13;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity$13;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    #getter for: Lcom/android/mms/ui/SlideEditorActivity;->mRestritedUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/mms/ui/SlideEditorActivity;->access$1900(Lcom/android/mms/ui/SlideEditorActivity;)Landroid/net/Uri;

    move-result-object v3

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iget-object v5, p0, Lcom/android/mms/ui/SlideEditorActivity$13;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    #getter for: Lcom/android/mms/ui/SlideEditorActivity;->mResizeImageCallback:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;
    invoke-static {v5}, Lcom/android/mms/ui/SlideEditorActivity;->access$2100(Lcom/android/mms/ui/SlideEditorActivity;)Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

    move-result-object v5

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/mms/ui/MessageUtils;->resizeImageAsync(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Handler;Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;Z)V

    goto/16 :goto_1

    .line 1347
    .end local v1           #e:Lcom/android/mms/ExceedMessageSizeException;
    :sswitch_1
    :try_start_1
    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity$13;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    #getter for: Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;
    invoke-static {v2}, Lcom/android/mms/ui/SlideEditorActivity;->access$300(Lcom/android/mms/ui/SlideEditorActivity;)Lcom/android/mms/ui/SlideshowEditor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity$13;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    #getter for: Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I
    invoke-static {v3}, Lcom/android/mms/ui/SlideEditorActivity;->access$100(Lcom/android/mms/ui/SlideEditorActivity;)I

    move-result v3

    iget-object v4, p0, Lcom/android/mms/ui/SlideEditorActivity$13;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    #getter for: Lcom/android/mms/ui/SlideEditorActivity;->mRestritedUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/android/mms/ui/SlideEditorActivity;->access$1900(Lcom/android/mms/ui/SlideEditorActivity;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/mms/ui/SlideshowEditor;->changeAudio(ILandroid/net/Uri;)V
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_1 .. :try_end_1} :catch_6

    goto/16 :goto_1

    .line 1348
    :catch_4
    move-exception v1

    .line 1349
    .local v1, e:Lcom/google/android/mms/MmsException;
    const-string v2, "SlideEditorActivity"

    const-string v3, "add audio failed"

    invoke-static {v2, v3, v1}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1350
    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity$13;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    const-string v3, "add music failed"

    #calls: Lcom/android/mms/ui/SlideEditorActivity;->notifyUser(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/mms/ui/SlideEditorActivity;->access$1700(Lcom/android/mms/ui/SlideEditorActivity;Ljava/lang/String;)V

    .line 1351
    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity$13;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity$13;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    iget-object v4, p0, Lcom/android/mms/ui/SlideEditorActivity$13;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    #calls: Lcom/android/mms/ui/SlideEditorActivity;->getAudioString()Ljava/lang/String;
    invoke-static {v4}, Lcom/android/mms/ui/SlideEditorActivity;->access$2200(Lcom/android/mms/ui/SlideEditorActivity;)Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v7, v4}, Lcom/android/mms/ui/SlideEditorActivity;->access$1400(Lcom/android/mms/ui/SlideEditorActivity;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 1354
    .end local v1           #e:Lcom/google/android/mms/MmsException;
    :catch_5
    move-exception v1

    .line 1355
    .local v1, e:Lcom/android/mms/UnsupportContentTypeException;
    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity$13;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity$13;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    iget-object v4, p0, Lcom/android/mms/ui/SlideEditorActivity$13;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    #calls: Lcom/android/mms/ui/SlideEditorActivity;->getAudioString()Ljava/lang/String;
    invoke-static {v4}, Lcom/android/mms/ui/SlideEditorActivity;->access$2200(Lcom/android/mms/ui/SlideEditorActivity;)Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v5, v4}, Lcom/android/mms/ui/SlideEditorActivity;->access$1400(Lcom/android/mms/ui/SlideEditorActivity;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/SlideEditorActivity$13;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    iget-object v5, p0, Lcom/android/mms/ui/SlideEditorActivity$13;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    #calls: Lcom/android/mms/ui/SlideEditorActivity;->getAudioString()Ljava/lang/String;
    invoke-static {v5}, Lcom/android/mms/ui/SlideEditorActivity;->access$2200(Lcom/android/mms/ui/SlideEditorActivity;)Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;
    invoke-static {v4, v8, v5}, Lcom/android/mms/ui/SlideEditorActivity;->access$1400(Lcom/android/mms/ui/SlideEditorActivity;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1358
    .end local v1           #e:Lcom/android/mms/UnsupportContentTypeException;
    :catch_6
    move-exception v1

    .line 1359
    .local v1, e:Lcom/android/mms/ExceedMessageSizeException;
    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity$13;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity$13;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    #calls: Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;
    invoke-static {v3, v9}, Lcom/android/mms/ui/SlideEditorActivity;->access$600(Lcom/android/mms/ui/SlideEditorActivity;I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/SlideEditorActivity$13;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    iget-object v5, p0, Lcom/android/mms/ui/SlideEditorActivity$13;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    #calls: Lcom/android/mms/ui/SlideEditorActivity;->getAudioString()Ljava/lang/String;
    invoke-static {v5}, Lcom/android/mms/ui/SlideEditorActivity;->access$2200(Lcom/android/mms/ui/SlideEditorActivity;)Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;
    invoke-static {v4, v7, v5}, Lcom/android/mms/ui/SlideEditorActivity;->access$1400(Lcom/android/mms/ui/SlideEditorActivity;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1367
    .end local v1           #e:Lcom/android/mms/ExceedMessageSizeException;
    :sswitch_2
    :try_start_2
    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity$13;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    #getter for: Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;
    invoke-static {v2}, Lcom/android/mms/ui/SlideEditorActivity;->access$300(Lcom/android/mms/ui/SlideEditorActivity;)Lcom/android/mms/ui/SlideshowEditor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity$13;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    #getter for: Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I
    invoke-static {v3}, Lcom/android/mms/ui/SlideEditorActivity;->access$100(Lcom/android/mms/ui/SlideEditorActivity;)I

    move-result v3

    iget-object v4, p0, Lcom/android/mms/ui/SlideEditorActivity$13;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    #getter for: Lcom/android/mms/ui/SlideEditorActivity;->mRestritedUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/android/mms/ui/SlideEditorActivity;->access$1900(Lcom/android/mms/ui/SlideEditorActivity;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/mms/ui/SlideshowEditor;->changeAudio(ILandroid/net/Uri;)V
    :try_end_2
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_2 .. :try_end_2} :catch_9

    goto/16 :goto_1

    .line 1368
    :catch_7
    move-exception v1

    .line 1369
    .local v1, e:Lcom/google/android/mms/MmsException;
    const-string v2, "SlideEditorActivity"

    const-string v3, "add audio failed"

    invoke-static {v2, v3, v1}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1370
    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity$13;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    const-string v3, "add music failed"

    #calls: Lcom/android/mms/ui/SlideEditorActivity;->notifyUser(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/mms/ui/SlideEditorActivity;->access$1700(Lcom/android/mms/ui/SlideEditorActivity;Ljava/lang/String;)V

    .line 1371
    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity$13;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity$13;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    iget-object v4, p0, Lcom/android/mms/ui/SlideEditorActivity$13;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    #calls: Lcom/android/mms/ui/SlideEditorActivity;->getAudioString()Ljava/lang/String;
    invoke-static {v4}, Lcom/android/mms/ui/SlideEditorActivity;->access$2200(Lcom/android/mms/ui/SlideEditorActivity;)Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v7, v4}, Lcom/android/mms/ui/SlideEditorActivity;->access$1400(Lcom/android/mms/ui/SlideEditorActivity;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 1374
    .end local v1           #e:Lcom/google/android/mms/MmsException;
    :catch_8
    move-exception v1

    .line 1375
    .local v1, e:Lcom/android/mms/UnsupportContentTypeException;
    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity$13;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity$13;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    iget-object v4, p0, Lcom/android/mms/ui/SlideEditorActivity$13;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    #calls: Lcom/android/mms/ui/SlideEditorActivity;->getAudioString()Ljava/lang/String;
    invoke-static {v4}, Lcom/android/mms/ui/SlideEditorActivity;->access$2200(Lcom/android/mms/ui/SlideEditorActivity;)Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v5, v4}, Lcom/android/mms/ui/SlideEditorActivity;->access$1400(Lcom/android/mms/ui/SlideEditorActivity;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/SlideEditorActivity$13;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    iget-object v5, p0, Lcom/android/mms/ui/SlideEditorActivity$13;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    #calls: Lcom/android/mms/ui/SlideEditorActivity;->getAudioString()Ljava/lang/String;
    invoke-static {v5}, Lcom/android/mms/ui/SlideEditorActivity;->access$2200(Lcom/android/mms/ui/SlideEditorActivity;)Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;
    invoke-static {v4, v8, v5}, Lcom/android/mms/ui/SlideEditorActivity;->access$1400(Lcom/android/mms/ui/SlideEditorActivity;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1378
    .end local v1           #e:Lcom/android/mms/UnsupportContentTypeException;
    :catch_9
    move-exception v1

    .line 1379
    .local v1, e:Lcom/android/mms/ExceedMessageSizeException;
    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity$13;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity$13;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    #calls: Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;
    invoke-static {v3, v9}, Lcom/android/mms/ui/SlideEditorActivity;->access$600(Lcom/android/mms/ui/SlideEditorActivity;I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/SlideEditorActivity$13;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    iget-object v5, p0, Lcom/android/mms/ui/SlideEditorActivity$13;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    #calls: Lcom/android/mms/ui/SlideEditorActivity;->getAudioString()Ljava/lang/String;
    invoke-static {v5}, Lcom/android/mms/ui/SlideEditorActivity;->access$2200(Lcom/android/mms/ui/SlideEditorActivity;)Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;
    invoke-static {v4, v7, v5}, Lcom/android/mms/ui/SlideEditorActivity;->access$1400(Lcom/android/mms/ui/SlideEditorActivity;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1388
    .end local v1           #e:Lcom/android/mms/ExceedMessageSizeException;
    :sswitch_3
    :try_start_3
    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity$13;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    #getter for: Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;
    invoke-static {v2}, Lcom/android/mms/ui/SlideEditorActivity;->access$300(Lcom/android/mms/ui/SlideEditorActivity;)Lcom/android/mms/ui/SlideshowEditor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity$13;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    #getter for: Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I
    invoke-static {v3}, Lcom/android/mms/ui/SlideEditorActivity;->access$100(Lcom/android/mms/ui/SlideEditorActivity;)I

    move-result v3

    iget-object v4, p0, Lcom/android/mms/ui/SlideEditorActivity$13;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    #getter for: Lcom/android/mms/ui/SlideEditorActivity;->mRestritedUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/android/mms/ui/SlideEditorActivity;->access$1900(Lcom/android/mms/ui/SlideEditorActivity;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/mms/ui/SlideshowEditor;->changeVideo(ILandroid/net/Uri;)V
    :try_end_3
    .catch Lcom/google/android/mms/MmsException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_d

    goto/16 :goto_1

    .line 1389
    :catch_a
    move-exception v1

    .line 1390
    .local v1, e:Lcom/google/android/mms/MmsException;
    const-string v2, "SlideEditorActivity"

    const-string v3, "add video failed"

    invoke-static {v2, v3, v1}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1391
    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity$13;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    const-string v3, "add video failed"

    #calls: Lcom/android/mms/ui/SlideEditorActivity;->notifyUser(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/mms/ui/SlideEditorActivity;->access$1700(Lcom/android/mms/ui/SlideEditorActivity;Ljava/lang/String;)V

    .line 1392
    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity$13;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity$13;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    iget-object v4, p0, Lcom/android/mms/ui/SlideEditorActivity$13;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    #calls: Lcom/android/mms/ui/SlideEditorActivity;->getVideoString()Ljava/lang/String;
    invoke-static {v4}, Lcom/android/mms/ui/SlideEditorActivity;->access$2300(Lcom/android/mms/ui/SlideEditorActivity;)Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v7, v4}, Lcom/android/mms/ui/SlideEditorActivity;->access$1400(Lcom/android/mms/ui/SlideEditorActivity;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 1395
    .end local v1           #e:Lcom/google/android/mms/MmsException;
    :catch_b
    move-exception v1

    .line 1396
    .local v1, e:Lcom/android/mms/UnsupportContentTypeException;
    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity$13;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity$13;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    iget-object v4, p0, Lcom/android/mms/ui/SlideEditorActivity$13;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    #calls: Lcom/android/mms/ui/SlideEditorActivity;->getVideoString()Ljava/lang/String;
    invoke-static {v4}, Lcom/android/mms/ui/SlideEditorActivity;->access$2300(Lcom/android/mms/ui/SlideEditorActivity;)Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v5, v4}, Lcom/android/mms/ui/SlideEditorActivity;->access$1400(Lcom/android/mms/ui/SlideEditorActivity;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/SlideEditorActivity$13;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    iget-object v5, p0, Lcom/android/mms/ui/SlideEditorActivity$13;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    #calls: Lcom/android/mms/ui/SlideEditorActivity;->getVideoString()Ljava/lang/String;
    invoke-static {v5}, Lcom/android/mms/ui/SlideEditorActivity;->access$2300(Lcom/android/mms/ui/SlideEditorActivity;)Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;
    invoke-static {v4, v8, v5}, Lcom/android/mms/ui/SlideEditorActivity;->access$1400(Lcom/android/mms/ui/SlideEditorActivity;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1399
    .end local v1           #e:Lcom/android/mms/UnsupportContentTypeException;
    :catch_c
    move-exception v1

    .line 1400
    .local v1, e:Lcom/android/mms/ExceedMessageSizeException;
    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity$13;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity$13;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    #calls: Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;
    invoke-static {v3, v9}, Lcom/android/mms/ui/SlideEditorActivity;->access$600(Lcom/android/mms/ui/SlideEditorActivity;I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/SlideEditorActivity$13;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    iget-object v5, p0, Lcom/android/mms/ui/SlideEditorActivity$13;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    #calls: Lcom/android/mms/ui/SlideEditorActivity;->getVideoString()Ljava/lang/String;
    invoke-static {v5}, Lcom/android/mms/ui/SlideEditorActivity;->access$2300(Lcom/android/mms/ui/SlideEditorActivity;)Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;
    invoke-static {v4, v7, v5}, Lcom/android/mms/ui/SlideEditorActivity;->access$1400(Lcom/android/mms/ui/SlideEditorActivity;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1403
    .end local v1           #e:Lcom/android/mms/ExceedMessageSizeException;
    :catch_d
    move-exception v1

    .line 1406
    .local v1, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity$13;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    #calls: Lcom/android/mms/ui/SlideEditorActivity;->finishAndBack()V
    invoke-static {v2}, Lcom/android/mms/ui/SlideEditorActivity;->access$2400(Lcom/android/mms/ui/SlideEditorActivity;)V

    goto/16 :goto_1

    .line 1319
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x4 -> :sswitch_2
        0x5 -> :sswitch_3
        0xf -> :sswitch_2
        0x14 -> :sswitch_1
    .end sparse-switch
.end method
