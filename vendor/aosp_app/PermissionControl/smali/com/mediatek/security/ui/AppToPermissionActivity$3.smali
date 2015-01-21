.class Lcom/mediatek/security/ui/AppToPermissionActivity$3;
.super Ljava/lang/Object;
.source "AppToPermissionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/security/ui/AppToPermissionActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
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
    .line 236
    iput-object p1, p0, Lcom/mediatek/security/ui/AppToPermissionActivity$3;->this$0:Lcom/mediatek/security/ui/AppToPermissionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 238
    const-string v0, "AppToPermActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selected which "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v0, p0, Lcom/mediatek/security/ui/AppToPermissionActivity$3;->this$0:Lcom/mediatek/security/ui/AppToPermissionActivity;

    #setter for: Lcom/mediatek/security/ui/AppToPermissionActivity;->mSavedSelectedIndex:I
    invoke-static {v0, p2}, Lcom/mediatek/security/ui/AppToPermissionActivity;->access$302(Lcom/mediatek/security/ui/AppToPermissionActivity;I)I

    .line 240
    iget-object v0, p0, Lcom/mediatek/security/ui/AppToPermissionActivity$3;->this$0:Lcom/mediatek/security/ui/AppToPermissionActivity;

    iget-object v0, v0, Lcom/mediatek/security/ui/AppToPermissionActivity;->mSelectPermInfo:Lcom/mediatek/common/mom/PermissionRecord;

    sget-object v1, Lcom/mediatek/security/ui/UiUtils;->PERM_STATUS_ARRAY:[I

    aget v1, v1, p2

    invoke-virtual {v0, v1}, Lcom/mediatek/common/mom/PermissionRecord;->setStatus(I)V

    .line 241
    iget-object v0, p0, Lcom/mediatek/security/ui/AppToPermissionActivity$3;->this$0:Lcom/mediatek/security/ui/AppToPermissionActivity;

    iget-object v0, v0, Lcom/mediatek/security/ui/AppToPermissionActivity;->mSelectPermInfo:Lcom/mediatek/common/mom/PermissionRecord;

    iget-object v1, p0, Lcom/mediatek/security/ui/AppToPermissionActivity$3;->this$0:Lcom/mediatek/security/ui/AppToPermissionActivity;

    #getter for: Lcom/mediatek/security/ui/AppToPermissionActivity;->mCxt:Landroid/content/Context;
    invoke-static {v1}, Lcom/mediatek/security/ui/AppToPermissionActivity;->access$400(Lcom/mediatek/security/ui/AppToPermissionActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/security/service/PermControlUtils;->changePermission(Lcom/mediatek/common/mom/PermissionRecord;Landroid/content/Context;)V

    .line 242
    iget-object v0, p0, Lcom/mediatek/security/ui/AppToPermissionActivity$3;->this$0:Lcom/mediatek/security/ui/AppToPermissionActivity;

    #getter for: Lcom/mediatek/security/ui/AppToPermissionActivity;->mApdater:Lcom/mediatek/security/ui/AppToPermissionActivity$PermAdapter;
    invoke-static {v0}, Lcom/mediatek/security/ui/AppToPermissionActivity;->access$500(Lcom/mediatek/security/ui/AppToPermissionActivity;)Lcom/mediatek/security/ui/AppToPermissionActivity$PermAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 243
    iget-object v0, p0, Lcom/mediatek/security/ui/AppToPermissionActivity$3;->this$0:Lcom/mediatek/security/ui/AppToPermissionActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->removeDialog(I)V

    .line 244
    return-void
.end method
