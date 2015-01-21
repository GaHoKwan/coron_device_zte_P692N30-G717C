.class Lcom/android/gallery3d/app/CropImage$9;
.super Landroid/os/Handler;
.source "CropImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/CropImage;->initWorkerThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/CropImage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/CropImage;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 1785
    iput-object p1, p0, Lcom/android/gallery3d/app/CropImage$9;->this$0:Lcom/android/gallery3d/app/CropImage;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 1788
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1803
    :cond_0
    :goto_0
    return-void

    .line 1790
    :pswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage$9;->this$0:Lcom/android/gallery3d/app/CropImage;

    #calls: Lcom/android/gallery3d/app/CropImage;->checkStorageState()Z
    invoke-static {v0}, Lcom/android/gallery3d/app/CropImage;->access$2100(Lcom/android/gallery3d/app/CropImage;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1791
    const-string v0, "Gallery2/CropImage"

    const-string v1, "MSG_CHECK_STORAGE: failed"

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1792
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage$9;->this$0:Lcom/android/gallery3d/app/CropImage;

    #getter for: Lcom/android/gallery3d/app/CropImage;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/app/CropImage;->access$1200(Lcom/android/gallery3d/app/CropImage;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/gallery3d/app/CropImage$9$1;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/CropImage$9$1;-><init>(Lcom/android/gallery3d/app/CropImage$9;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1788
    :pswitch_data_0
    .packed-switch 0x68
        :pswitch_0
    .end packed-switch
.end method
