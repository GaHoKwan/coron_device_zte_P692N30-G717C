.class Lcom/mediatek/filemanager/FileManagerOperationActivity$RenameExtensionListener;
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
    name = "RenameExtensionListener"
.end annotation


# instance fields
.field private final mNewFilePath:Ljava/lang/String;

.field private final mSrcFile:Lcom/mediatek/filemanager/FileInfo;

.field final synthetic this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;


# direct methods
.method public constructor <init>(Lcom/mediatek/filemanager/FileManagerOperationActivity;Lcom/mediatek/filemanager/FileInfo;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "fileInfo"
    .parameter "newFilePath"

    .prologue
    .line 870
    iput-object p1, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$RenameExtensionListener;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 871
    iput-object p3, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$RenameExtensionListener;->mNewFilePath:Ljava/lang/String;

    .line 872
    iput-object p2, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$RenameExtensionListener;->mSrcFile:Lcom/mediatek/filemanager/FileInfo;

    .line 873
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 877
    iget-object v0, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$RenameExtensionListener;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    iget-object v0, v0, Lcom/mediatek/filemanager/AbsBaseActivity;->mService:Lcom/mediatek/filemanager/service/FileManagerService;

    if-eqz v0, :cond_1

    .line 878
    iget-object v0, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$RenameExtensionListener;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    #getter for: Lcom/mediatek/filemanager/FileManagerOperationActivity;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v0}, Lcom/mediatek/filemanager/FileManagerOperationActivity;->access$200(Lcom/mediatek/filemanager/FileManagerOperationActivity;)Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 879
    iget-object v0, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$RenameExtensionListener;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    #getter for: Lcom/mediatek/filemanager/FileManagerOperationActivity;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v0}, Lcom/mediatek/filemanager/FileManagerOperationActivity;->access$200(Lcom/mediatek/filemanager/FileManagerOperationActivity;)Landroid/view/ActionMode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 881
    :cond_0
    iget-object v0, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$RenameExtensionListener;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    iget-object v0, v0, Lcom/mediatek/filemanager/AbsBaseActivity;->mService:Lcom/mediatek/filemanager/service/FileManagerService;

    iget-object v1, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$RenameExtensionListener;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$RenameExtensionListener;->mSrcFile:Lcom/mediatek/filemanager/FileInfo;

    new-instance v3, Lcom/mediatek/filemanager/FileInfo;

    iget-object v4, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$RenameExtensionListener;->mNewFilePath:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/mediatek/filemanager/FileInfo;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/mediatek/filemanager/AbsBaseActivity$LightOperationListener;

    iget-object v5, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$RenameExtensionListener;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    iget-object v6, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$RenameExtensionListener;->mNewFilePath:Ljava/lang/String;

    invoke-static {v6}, Lcom/mediatek/filemanager/utils/FileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/mediatek/filemanager/AbsBaseActivity$LightOperationListener;-><init>(Lcom/mediatek/filemanager/AbsBaseActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mediatek/filemanager/service/FileManagerService;->rename(Ljava/lang/String;Lcom/mediatek/filemanager/FileInfo;Lcom/mediatek/filemanager/FileInfo;Lcom/mediatek/filemanager/service/FileManagerService$OperationEventListener;)V

    .line 885
    :cond_1
    return-void
.end method
