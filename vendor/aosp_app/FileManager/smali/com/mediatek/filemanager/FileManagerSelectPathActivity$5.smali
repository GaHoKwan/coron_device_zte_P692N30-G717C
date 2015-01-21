.class Lcom/mediatek/filemanager/FileManagerSelectPathActivity$5;
.super Ljava/lang/Object;
.source "FileManagerSelectPathActivity.java"

# interfaces
.implements Lcom/mediatek/filemanager/service/FileManagerService$OperationEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/filemanager/FileManagerSelectPathActivity;->initCurrentFileInfo()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/filemanager/FileManagerSelectPathActivity;

.field final synthetic val$downloadPathKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mediatek/filemanager/FileManagerSelectPathActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/mediatek/filemanager/FileManagerSelectPathActivity$5;->this$0:Lcom/mediatek/filemanager/FileManagerSelectPathActivity;

    iput-object p2, p0, Lcom/mediatek/filemanager/FileManagerSelectPathActivity$5;->val$downloadPathKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskPrepare()V
    .locals 0

    .prologue
    .line 181
    return-void
.end method

.method public onTaskProgress(Lcom/mediatek/filemanager/service/ProgressInfo;)V
    .locals 0
    .parameter "progressInfo"

    .prologue
    .line 176
    return-void
.end method

.method public onTaskResult(I)V
    .locals 3
    .parameter "result"

    .prologue
    const/4 v2, 0x1

    .line 163
    if-eqz p1, :cond_0

    const/4 v0, -0x4

    if-ne p1, v0, :cond_1

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/mediatek/filemanager/FileManagerSelectPathActivity$5;->this$0:Lcom/mediatek/filemanager/FileManagerSelectPathActivity;

    #getter for: Lcom/mediatek/filemanager/FileManagerSelectPathActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/filemanager/FileManagerSelectPathActivity;->access$000(Lcom/mediatek/filemanager/FileManagerSelectPathActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/filemanager/FileManagerSelectPathActivity$5;->val$downloadPathKey:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 172
    :goto_0
    return-void

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/mediatek/filemanager/FileManagerSelectPathActivity$5;->this$0:Lcom/mediatek/filemanager/FileManagerSelectPathActivity;

    #getter for: Lcom/mediatek/filemanager/FileManagerSelectPathActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/filemanager/FileManagerSelectPathActivity;->access$000(Lcom/mediatek/filemanager/FileManagerSelectPathActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/filemanager/FileManagerSelectPathActivity$5;->this$0:Lcom/mediatek/filemanager/FileManagerSelectPathActivity;

    iget-object v1, v1, Lcom/mediatek/filemanager/AbsBaseActivity;->mMountPointManager:Lcom/mediatek/filemanager/MountPointManager;

    invoke-virtual {v1}, Lcom/mediatek/filemanager/MountPointManager;->getRootPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
