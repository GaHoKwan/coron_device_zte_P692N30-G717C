.class Lcom/mediatek/security/service/PermControlService$1;
.super Landroid/os/Handler;
.source "PermControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/security/service/PermControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/security/service/PermControlService;


# direct methods
.method constructor <init>(Lcom/mediatek/security/service/PermControlService;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/mediatek/security/service/PermControlService$1;->this$0:Lcom/mediatek/security/service/PermControlService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 74
    iget v4, p1, Landroid/os/Message;->what:I

    const/16 v5, 0x66

    if-ne v4, v5, :cond_1

    .line 75
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 76
    .local v0, data:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 77
    const-string v4, "PermControlService"

    const-string v5, "Always deny show the toast"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const-string v4, "exta_package_name"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, pkgName:Ljava/lang/String;
    const-string v4, "extra_permission_name"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, permName:Ljava/lang/String;
    iget-object v4, p0, Lcom/mediatek/security/service/PermControlService$1;->this$0:Lcom/mediatek/security/service/PermControlService;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2, v1}, Lcom/mediatek/security/service/PermControlUtils;->showDenyToast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .end local v0           #data:Landroid/os/Bundle;
    .end local v1           #permName:Ljava/lang/String;
    .end local v2           #pkgName:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    iget v4, p1, Landroid/os/Message;->what:I

    const/16 v5, 0x67

    if-ne v4, v5, :cond_2

    .line 83
    const-string v4, "PermControlService"

    const-string v5, "Show confirm dialog"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v4, p0, Lcom/mediatek/security/service/PermControlService$1;->this$0:Lcom/mediatek/security/service/PermControlService;

    iget-object v5, p0, Lcom/mediatek/security/service/PermControlService$1;->this$0:Lcom/mediatek/security/service/PermControlService;

    #getter for: Lcom/mediatek/security/service/PermControlService;->mCurrentPermRecord:Lcom/mediatek/common/mom/PermissionRecord;
    invoke-static {v5}, Lcom/mediatek/security/service/PermControlService;->access$000(Lcom/mediatek/security/service/PermControlService;)Lcom/mediatek/common/mom/PermissionRecord;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/mediatek/security/service/PermControlService;->showDialog(Lcom/mediatek/common/mom/PermissionRecord;I)V
    invoke-static {v4, v5, v6}, Lcom/mediatek/security/service/PermControlService;->access$100(Lcom/mediatek/security/service/PermControlService;Lcom/mediatek/common/mom/PermissionRecord;I)V

    goto :goto_0

    .line 85
    :cond_2
    iget v4, p1, Landroid/os/Message;->what:I

    const/16 v5, 0x68

    if-ne v4, v5, :cond_0

    .line 86
    iget v4, p1, Landroid/os/Message;->arg1:I

    add-int/lit8 v3, v4, -0x1

    .line 87
    .local v3, timer:I
    const-string v4, "PermControlService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "timer is = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    if-lez v3, :cond_3

    .line 89
    iget-object v4, p0, Lcom/mediatek/security/service/PermControlService$1;->this$0:Lcom/mediatek/security/service/PermControlService;

    #calls: Lcom/mediatek/security/service/PermControlService;->updateCount(I)V
    invoke-static {v4, v3}, Lcom/mediatek/security/service/PermControlService;->access$200(Lcom/mediatek/security/service/PermControlService;I)V

    goto :goto_0

    .line 91
    :cond_3
    const-string v4, "PermControlService"

    const-string v5, "time out and deny the permission"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v4, p0, Lcom/mediatek/security/service/PermControlService$1;->this$0:Lcom/mediatek/security/service/PermControlService;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/security/service/PermControlService$1;->this$0:Lcom/mediatek/security/service/PermControlService;

    #getter for: Lcom/mediatek/security/service/PermControlService;->mCurrentPermRecord:Lcom/mediatek/common/mom/PermissionRecord;
    invoke-static {v5}, Lcom/mediatek/security/service/PermControlService;->access$000(Lcom/mediatek/security/service/PermControlService;)Lcom/mediatek/common/mom/PermissionRecord;

    move-result-object v5

    iget-object v5, v5, Lcom/mediatek/common/mom/PermissionRecord;->mPackageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/mediatek/security/service/PermControlService$1;->this$0:Lcom/mediatek/security/service/PermControlService;

    #getter for: Lcom/mediatek/security/service/PermControlService;->mCurrentPermRecord:Lcom/mediatek/common/mom/PermissionRecord;
    invoke-static {v6}, Lcom/mediatek/security/service/PermControlService;->access$000(Lcom/mediatek/security/service/PermControlService;)Lcom/mediatek/common/mom/PermissionRecord;

    move-result-object v6

    iget-object v6, v6, Lcom/mediatek/common/mom/PermissionRecord;->mPermissionName:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/mediatek/security/service/PermControlUtils;->showDenyToast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v4, p0, Lcom/mediatek/security/service/PermControlService$1;->this$0:Lcom/mediatek/security/service/PermControlService;

    const/4 v5, 0x0

    #setter for: Lcom/mediatek/security/service/PermControlService;->mIsPermit:Z
    invoke-static {v4, v5}, Lcom/mediatek/security/service/PermControlService;->access$302(Lcom/mediatek/security/service/PermControlService;Z)Z

    .line 96
    iget-object v4, p0, Lcom/mediatek/security/service/PermControlService$1;->this$0:Lcom/mediatek/security/service/PermControlService;

    #getter for: Lcom/mediatek/security/service/PermControlService;->mAlertDlg:Landroid/app/AlertDialog;
    invoke-static {v4}, Lcom/mediatek/security/service/PermControlService;->access$400(Lcom/mediatek/security/service/PermControlService;)Landroid/app/AlertDialog;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 97
    iget-object v4, p0, Lcom/mediatek/security/service/PermControlService$1;->this$0:Lcom/mediatek/security/service/PermControlService;

    #getter for: Lcom/mediatek/security/service/PermControlService;->mAlertDlg:Landroid/app/AlertDialog;
    invoke-static {v4}, Lcom/mediatek/security/service/PermControlService;->access$400(Lcom/mediatek/security/service/PermControlService;)Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0
.end method
