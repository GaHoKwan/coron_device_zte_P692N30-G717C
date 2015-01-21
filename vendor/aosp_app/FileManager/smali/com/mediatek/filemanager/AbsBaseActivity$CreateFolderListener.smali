.class public final Lcom/mediatek/filemanager/AbsBaseActivity$CreateFolderListener;
.super Ljava/lang/Object;
.source "AbsBaseActivity.java"

# interfaces
.implements Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment$EditTextDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/filemanager/AbsBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "CreateFolderListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/filemanager/AbsBaseActivity;


# direct methods
.method protected constructor <init>(Lcom/mediatek/filemanager/AbsBaseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 353
    iput-object p1, p0, Lcom/mediatek/filemanager/AbsBaseActivity$CreateFolderListener;->this$0:Lcom/mediatek/filemanager/AbsBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Ljava/lang/String;)V
    .locals 5
    .parameter "text"

    .prologue
    .line 355
    iget-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity$CreateFolderListener;->this$0:Lcom/mediatek/filemanager/AbsBaseActivity;

    iget-object v1, v1, Lcom/mediatek/filemanager/AbsBaseActivity;->mService:Lcom/mediatek/filemanager/service/FileManagerService;

    if-eqz v1, :cond_0

    .line 356
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mediatek/filemanager/AbsBaseActivity$CreateFolderListener;->this$0:Lcom/mediatek/filemanager/AbsBaseActivity;

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

    .line 357
    .local v0, dstPath:Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity$CreateFolderListener;->this$0:Lcom/mediatek/filemanager/AbsBaseActivity;

    iget-object v1, v1, Lcom/mediatek/filemanager/AbsBaseActivity;->mService:Lcom/mediatek/filemanager/service/FileManagerService;

    iget-object v2, p0, Lcom/mediatek/filemanager/AbsBaseActivity$CreateFolderListener;->this$0:Lcom/mediatek/filemanager/AbsBaseActivity;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/mediatek/filemanager/AbsBaseActivity$LightOperationListener;

    iget-object v4, p0, Lcom/mediatek/filemanager/AbsBaseActivity$CreateFolderListener;->this$0:Lcom/mediatek/filemanager/AbsBaseActivity;

    invoke-direct {v3, v4, p1}, Lcom/mediatek/filemanager/AbsBaseActivity$LightOperationListener;-><init>(Lcom/mediatek/filemanager/AbsBaseActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/mediatek/filemanager/service/FileManagerService;->createFolder(Ljava/lang/String;Ljava/lang/String;Lcom/mediatek/filemanager/service/FileManagerService$OperationEventListener;)V

    .line 360
    .end local v0           #dstPath:Ljava/lang/String;
    :cond_0
    return-void
.end method
