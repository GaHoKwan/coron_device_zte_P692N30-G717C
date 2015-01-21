.class Lcom/mediatek/gallery3d/conshots/ContainerPage$8;
.super Landroid/content/BroadcastReceiver;
.source "ContainerPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/gallery3d/conshots/ContainerPage;->registerStorageReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/gallery3d/conshots/ContainerPage;


# direct methods
.method constructor <init>(Lcom/mediatek/gallery3d/conshots/ContainerPage;)V
    .locals 0
    .parameter

    .prologue
    .line 981
    iput-object p1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage$8;->this$0:Lcom/mediatek/gallery3d/conshots/ContainerPage;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 984
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 985
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 986
    const-string v1, "Gallery2/ContainerPage"

    const-string v2, "storage is unmount"

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    iget-object v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage$8;->this$0:Lcom/mediatek/gallery3d/conshots/ContainerPage;

    #getter for: Lcom/mediatek/gallery3d/conshots/ContainerPage;->mInMotionMode:Z
    invoke-static {v1}, Lcom/mediatek/gallery3d/conshots/ContainerPage;->access$2100(Lcom/mediatek/gallery3d/conshots/ContainerPage;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage$8;->this$0:Lcom/mediatek/gallery3d/conshots/ContainerPage;

    #getter for: Lcom/mediatek/gallery3d/conshots/ContainerPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;
    invoke-static {v1}, Lcom/mediatek/gallery3d/conshots/ContainerPage;->access$1900(Lcom/mediatek/gallery3d/conshots/ContainerPage;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 988
    iget-object v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage$8;->this$0:Lcom/mediatek/gallery3d/conshots/ContainerPage;

    #getter for: Lcom/mediatek/gallery3d/conshots/ContainerPage;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/mediatek/gallery3d/conshots/ContainerPage;->access$2300(Lcom/mediatek/gallery3d/conshots/ContainerPage;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage$8;->this$0:Lcom/mediatek/gallery3d/conshots/ContainerPage;

    #getter for: Lcom/mediatek/gallery3d/conshots/ContainerPage;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/mediatek/gallery3d/conshots/ContainerPage;->access$2300(Lcom/mediatek/gallery3d/conshots/ContainerPage;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v4, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 992
    :cond_0
    return-void
.end method
