.class public Lcom/mediatek/filemanager/FileManagerOperationActivity$RenameDoneListener;
.super Ljava/lang/Object;
.source "FileManagerOperationActivity.java"

# interfaces
.implements Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment$EditTextDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/filemanager/FileManagerOperationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "RenameDoneListener"
.end annotation


# instance fields
.field mSrcfileInfo:Lcom/mediatek/filemanager/FileInfo;

.field final synthetic this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;


# direct methods
.method public constructor <init>(Lcom/mediatek/filemanager/FileManagerOperationActivity;Lcom/mediatek/filemanager/FileInfo;)V
    .locals 0
    .parameter
    .parameter "srcFile"

    .prologue
    .line 951
    iput-object p1, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$RenameDoneListener;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 952
    iput-object p2, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$RenameDoneListener;->mSrcfileInfo:Lcom/mediatek/filemanager/FileInfo;

    .line 953
    return-void
.end method


# virtual methods
.method public onClick(Ljava/lang/String;)V
    .locals 8
    .parameter "text"

    .prologue
    .line 957
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$RenameDoneListener;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    iget-object v2, v2, Lcom/mediatek/filemanager/AbsBaseActivity;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 958
    .local v0, newFilePath:Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$RenameDoneListener;->mSrcfileInfo:Lcom/mediatek/filemanager/FileInfo;

    if-nez v1, :cond_1

    .line 959
    const-string v1, "FileManagerOperationActivity"

    const-string v2, "mSrcfileInfo is null."

    invoke-static {v1, v2}, Lcom/mediatek/filemanager/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    :cond_0
    :goto_0
    return-void

    .line 962
    :cond_1
    iget-object v1, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$RenameDoneListener;->mSrcfileInfo:Lcom/mediatek/filemanager/FileInfo;

    invoke-virtual {v1}, Lcom/mediatek/filemanager/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/filemanager/utils/FileUtils;->isExtensionChange(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 963
    iget-object v1, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$RenameDoneListener;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    iget-object v2, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$RenameDoneListener;->mSrcfileInfo:Lcom/mediatek/filemanager/FileInfo;

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/filemanager/FileManagerOperationActivity;->showRenameExtensionDialog(Lcom/mediatek/filemanager/FileInfo;Ljava/lang/String;)V

    goto :goto_0

    .line 965
    :cond_2
    iget-object v1, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$RenameDoneListener;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    iget-object v1, v1, Lcom/mediatek/filemanager/AbsBaseActivity;->mService:Lcom/mediatek/filemanager/service/FileManagerService;

    if-eqz v1, :cond_0

    .line 966
    iget-object v1, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$RenameDoneListener;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    #getter for: Lcom/mediatek/filemanager/FileManagerOperationActivity;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v1}, Lcom/mediatek/filemanager/FileManagerOperationActivity;->access$200(Lcom/mediatek/filemanager/FileManagerOperationActivity;)Landroid/view/ActionMode;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 967
    iget-object v1, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$RenameDoneListener;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    #getter for: Lcom/mediatek/filemanager/FileManagerOperationActivity;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v1}, Lcom/mediatek/filemanager/FileManagerOperationActivity;->access$200(Lcom/mediatek/filemanager/FileManagerOperationActivity;)Landroid/view/ActionMode;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    .line 969
    :cond_3
    iget-object v1, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$RenameDoneListener;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    iget-object v1, v1, Lcom/mediatek/filemanager/AbsBaseActivity;->mService:Lcom/mediatek/filemanager/service/FileManagerService;

    iget-object v2, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$RenameDoneListener;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$RenameDoneListener;->mSrcfileInfo:Lcom/mediatek/filemanager/FileInfo;

    new-instance v4, Lcom/mediatek/filemanager/FileInfo;

    invoke-direct {v4, v0}, Lcom/mediatek/filemanager/FileInfo;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/mediatek/filemanager/AbsBaseActivity$LightOperationListener;

    iget-object v6, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$RenameDoneListener;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    invoke-static {v0}, Lcom/mediatek/filemanager/utils/FileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/mediatek/filemanager/AbsBaseActivity$LightOperationListener;-><init>(Lcom/mediatek/filemanager/AbsBaseActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/mediatek/filemanager/service/FileManagerService;->rename(Ljava/lang/String;Lcom/mediatek/filemanager/FileInfo;Lcom/mediatek/filemanager/FileInfo;Lcom/mediatek/filemanager/service/FileManagerService$OperationEventListener;)V

    goto :goto_0
.end method
