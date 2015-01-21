.class Lcom/android/camera/manager/ThumbnailManager$1;
.super Landroid/content/BroadcastReceiver;
.source "ThumbnailManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/manager/ThumbnailManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/manager/ThumbnailManager;


# direct methods
.method constructor <init>(Lcom/android/camera/manager/ThumbnailManager;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/camera/manager/ThumbnailManager$1;->this$0:Lcom/android/camera/manager/ThumbnailManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 60
    const-string v1, "ThumbnailManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDeletePictureReceiver.onReceive("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v1, p0, Lcom/android/camera/manager/ThumbnailManager$1;->this$0:Lcom/android/camera/manager/ThumbnailManager;

    invoke-virtual {v1}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 63
    .local v0, filesDir:Ljava/io/File;
    invoke-static {v0}, Lcom/android/camera/Thumbnail;->deleteFrom(Ljava/io/File;)V

    .line 64
    iget-object v1, p0, Lcom/android/camera/manager/ThumbnailManager$1;->this$0:Lcom/android/camera/manager/ThumbnailManager;

    invoke-virtual {v1}, Lcom/android/camera/manager/ViewManager;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/android/camera/manager/ThumbnailManager$1;->this$0:Lcom/android/camera/manager/ThumbnailManager;

    #calls: Lcom/android/camera/manager/ThumbnailManager;->getLastThumbnailUncached()V
    invoke-static {v1}, Lcom/android/camera/manager/ThumbnailManager;->access$000(Lcom/android/camera/manager/ThumbnailManager;)V

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_0
    iget-object v1, p0, Lcom/android/camera/manager/ThumbnailManager$1;->this$0:Lcom/android/camera/manager/ThumbnailManager;

    const/4 v2, 0x1

    #setter for: Lcom/android/camera/manager/ThumbnailManager;->mUpdateThumbnailDelayed:Z
    invoke-static {v1, v2}, Lcom/android/camera/manager/ThumbnailManager;->access$102(Lcom/android/camera/manager/ThumbnailManager;Z)Z

    goto :goto_0
.end method
