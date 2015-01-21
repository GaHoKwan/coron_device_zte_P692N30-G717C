.class Lcom/mediatek/security/ui/AppToPermissionActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "AppToPermissionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/security/ui/AppToPermissionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/security/ui/AppToPermissionActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/security/ui/AppToPermissionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/mediatek/security/ui/AppToPermissionActivity$1;->this$0:Lcom/mediatek/security/ui/AppToPermissionActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 105
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, action:Ljava/lang/String;
    const-string v3, "com.mediatek.security.action.DATA_UPDATE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 107
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 108
    .local v1, bundle:Landroid/os/Bundle;
    const-string v3, "exta_package_name"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 110
    .local v2, updatePkg:Ljava/lang/String;
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/mediatek/security/ui/AppToPermissionActivity$1;->this$0:Lcom/mediatek/security/ui/AppToPermissionActivity;

    #getter for: Lcom/mediatek/security/ui/AppToPermissionActivity;->mPkgName:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/security/ui/AppToPermissionActivity;->access$000(Lcom/mediatek/security/ui/AppToPermissionActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 111
    const-string v3, "AppToPermActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "receiver ,re-loading for pkgname: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/security/ui/AppToPermissionActivity$1;->this$0:Lcom/mediatek/security/ui/AppToPermissionActivity;

    #getter for: Lcom/mediatek/security/ui/AppToPermissionActivity;->mPkgName:Ljava/lang/String;
    invoke-static {v5}, Lcom/mediatek/security/ui/AppToPermissionActivity;->access$000(Lcom/mediatek/security/ui/AppToPermissionActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v3, p0, Lcom/mediatek/security/ui/AppToPermissionActivity$1;->this$0:Lcom/mediatek/security/ui/AppToPermissionActivity;

    #calls: Lcom/mediatek/security/ui/AppToPermissionActivity;->load()V
    invoke-static {v3}, Lcom/mediatek/security/ui/AppToPermissionActivity;->access$100(Lcom/mediatek/security/ui/AppToPermissionActivity;)V

    .line 115
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v2           #updatePkg:Ljava/lang/String;
    :cond_0
    return-void
.end method
