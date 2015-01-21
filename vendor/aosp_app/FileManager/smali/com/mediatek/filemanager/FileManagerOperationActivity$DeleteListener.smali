.class Lcom/mediatek/filemanager/FileManagerOperationActivity$DeleteListener;
.super Ljava/lang/Object;
.source "FileManagerOperationActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/filemanager/FileManagerOperationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;


# direct methods
.method private constructor <init>(Lcom/mediatek/filemanager/FileManagerOperationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 828
    iput-object p1, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$DeleteListener;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/filemanager/FileManagerOperationActivity;Lcom/mediatek/filemanager/FileManagerOperationActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 828
    invoke-direct {p0, p1}, Lcom/mediatek/filemanager/FileManagerOperationActivity$DeleteListener;-><init>(Lcom/mediatek/filemanager/FileManagerOperationActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 831
    const-string v0, "FileManagerOperationActivity"

    const-string v1, "onClick() method for alertDeleteDialog, OK button"

    invoke-static {v0, v1}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    iget-object v0, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$DeleteListener;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    iget-object v0, v0, Lcom/mediatek/filemanager/AbsBaseActivity;->mService:Lcom/mediatek/filemanager/service/FileManagerService;

    if-eqz v0, :cond_0

    .line 833
    iget-object v0, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$DeleteListener;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    iget-object v0, v0, Lcom/mediatek/filemanager/AbsBaseActivity;->mService:Lcom/mediatek/filemanager/service/FileManagerService;

    iget-object v1, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$DeleteListener;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$DeleteListener;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    iget-object v2, v2, Lcom/mediatek/filemanager/AbsBaseActivity;->mAdapter:Lcom/mediatek/filemanager/FileInfoAdapter;

    invoke-virtual {v2}, Lcom/mediatek/filemanager/FileInfoAdapter;->getCheckedFileInfoItemsList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mediatek/filemanager/FileManagerOperationActivity$HeavyOperationListener;

    iget-object v4, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$DeleteListener;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    const v5, 0x7f08000d

    invoke-direct {v3, v4, v5}, Lcom/mediatek/filemanager/FileManagerOperationActivity$HeavyOperationListener;-><init>(Lcom/mediatek/filemanager/FileManagerOperationActivity;I)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/filemanager/service/FileManagerService;->deleteFiles(Ljava/lang/String;Ljava/util/List;Lcom/mediatek/filemanager/service/FileManagerService$OperationEventListener;)V

    .line 837
    :cond_0
    iget-object v0, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$DeleteListener;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    #getter for: Lcom/mediatek/filemanager/FileManagerOperationActivity;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v0}, Lcom/mediatek/filemanager/FileManagerOperationActivity;->access$200(Lcom/mediatek/filemanager/FileManagerOperationActivity;)Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 838
    iget-object v0, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$DeleteListener;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    #getter for: Lcom/mediatek/filemanager/FileManagerOperationActivity;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v0}, Lcom/mediatek/filemanager/FileManagerOperationActivity;->access$200(Lcom/mediatek/filemanager/FileManagerOperationActivity;)Landroid/view/ActionMode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 840
    :cond_1
    return-void
.end method
