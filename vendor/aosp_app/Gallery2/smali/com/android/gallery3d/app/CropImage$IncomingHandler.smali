.class Lcom/android/gallery3d/app/CropImage$IncomingHandler;
.super Landroid/os/Handler;
.source "CropImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/CropImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IncomingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/CropImage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/CropImage;)V
    .locals 0
    .parameter

    .prologue
    .line 1504
    iput-object p1, p0, Lcom/android/gallery3d/app/CropImage$IncomingHandler;->this$0:Lcom/android/gallery3d/app/CropImage;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x4

    .line 1507
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1532
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1534
    :goto_0
    return-void

    .line 1509
    :pswitch_0
    const-string v0, "Gallery2/CropImage"

    const-string v1, "IncomingHandler:Received from service: OK"

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1510
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage$IncomingHandler;->this$0:Lcom/android/gallery3d/app/CropImage;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/CropImage;->doUnbindService()V

    .line 1511
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage$IncomingHandler;->this$0:Lcom/android/gallery3d/app/CropImage;

    #getter for: Lcom/android/gallery3d/app/CropImage;->mStereoWallpaperIntent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/android/gallery3d/app/CropImage;->access$1300(Lcom/android/gallery3d/app/CropImage;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1513
    const-string v0, "Gallery2/CropImage"

    const-string v1, "IncomingHandler:send comlete mesage"

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1514
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage$IncomingHandler;->this$0:Lcom/android/gallery3d/app/CropImage;

    #getter for: Lcom/android/gallery3d/app/CropImage;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/app/CropImage;->access$1200(Lcom/android/gallery3d/app/CropImage;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/CropImage$IncomingHandler;->this$0:Lcom/android/gallery3d/app/CropImage;

    #getter for: Lcom/android/gallery3d/app/CropImage;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/gallery3d/app/CropImage;->access$1200(Lcom/android/gallery3d/app/CropImage;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/gallery3d/app/CropImage$IncomingHandler;->this$0:Lcom/android/gallery3d/app/CropImage;

    #getter for: Lcom/android/gallery3d/app/CropImage;->mStereoWallpaperIntent:Landroid/content/Intent;
    invoke-static {v3}, Lcom/android/gallery3d/app/CropImage;->access$1300(Lcom/android/gallery3d/app/CropImage;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1517
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage$IncomingHandler;->this$0:Lcom/android/gallery3d/app/CropImage;

    #setter for: Lcom/android/gallery3d/app/CropImage;->mStereoWallpaperIntent:Landroid/content/Intent;
    invoke-static {v0, v4}, Lcom/android/gallery3d/app/CropImage;->access$1302(Lcom/android/gallery3d/app/CropImage;Landroid/content/Intent;)Landroid/content/Intent;

    goto :goto_0

    .line 1519
    :cond_0
    const-string v0, "Gallery2/CropImage"

    const-string v1, "IncomingHandler:send ERROR mesage"

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage$IncomingHandler;->this$0:Lcom/android/gallery3d/app/CropImage;

    #getter for: Lcom/android/gallery3d/app/CropImage;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/app/CropImage;->access$1200(Lcom/android/gallery3d/app/CropImage;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1524
    :pswitch_1
    const-string v0, "Gallery2/CropImage"

    const-string v1, "IncomingHandler:Received from service: ERROR"

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage$IncomingHandler;->this$0:Lcom/android/gallery3d/app/CropImage;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/CropImage;->doUnbindService()V

    .line 1526
    const-string v0, "Gallery2/CropImage"

    const-string v1, "IncomingHandler:send ERROR mesage"

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage$IncomingHandler;->this$0:Lcom/android/gallery3d/app/CropImage;

    #getter for: Lcom/android/gallery3d/app/CropImage;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/app/CropImage;->access$1200(Lcom/android/gallery3d/app/CropImage;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1529
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage$IncomingHandler;->this$0:Lcom/android/gallery3d/app/CropImage;

    #setter for: Lcom/android/gallery3d/app/CropImage;->mStereoWallpaperIntent:Landroid/content/Intent;
    invoke-static {v0, v4}, Lcom/android/gallery3d/app/CropImage;->access$1302(Lcom/android/gallery3d/app/CropImage;Landroid/content/Intent;)Landroid/content/Intent;

    goto :goto_0

    .line 1507
    nop

    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
