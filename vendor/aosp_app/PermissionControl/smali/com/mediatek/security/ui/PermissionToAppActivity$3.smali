.class Lcom/mediatek/security/ui/PermissionToAppActivity$3;
.super Ljava/lang/Object;
.source "PermissionToAppActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/security/ui/PermissionToAppActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/security/ui/PermissionToAppActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/security/ui/PermissionToAppActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 201
    iput-object p1, p0, Lcom/mediatek/security/ui/PermissionToAppActivity$3;->this$0:Lcom/mediatek/security/ui/PermissionToAppActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 203
    const-string v0, "PermToAppActivity"

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

    .line 204
    iget-object v0, p0, Lcom/mediatek/security/ui/PermissionToAppActivity$3;->this$0:Lcom/mediatek/security/ui/PermissionToAppActivity;

    #setter for: Lcom/mediatek/security/ui/PermissionToAppActivity;->mSavedSelectedIndex:I
    invoke-static {v0, p2}, Lcom/mediatek/security/ui/PermissionToAppActivity;->access$302(Lcom/mediatek/security/ui/PermissionToAppActivity;I)I

    .line 205
    iget-object v0, p0, Lcom/mediatek/security/ui/PermissionToAppActivity$3;->this$0:Lcom/mediatek/security/ui/PermissionToAppActivity;

    #getter for: Lcom/mediatek/security/ui/PermissionToAppActivity;->mSelectPermInfo:Lcom/mediatek/security/ui/PermissionToAppActivity$MyPermissionRecord;
    invoke-static {v0}, Lcom/mediatek/security/ui/PermissionToAppActivity;->access$400(Lcom/mediatek/security/ui/PermissionToAppActivity;)Lcom/mediatek/security/ui/PermissionToAppActivity$MyPermissionRecord;

    move-result-object v0

    sget-object v1, Lcom/mediatek/security/ui/UiUtils;->PERM_STATUS_ARRAY:[I

    aget v1, v1, p2

    invoke-virtual {v0, v1}, Lcom/mediatek/common/mom/PermissionRecord;->setStatus(I)V

    .line 206
    iget-object v0, p0, Lcom/mediatek/security/ui/PermissionToAppActivity$3;->this$0:Lcom/mediatek/security/ui/PermissionToAppActivity;

    #getter for: Lcom/mediatek/security/ui/PermissionToAppActivity;->mSelectPermInfo:Lcom/mediatek/security/ui/PermissionToAppActivity$MyPermissionRecord;
    invoke-static {v0}, Lcom/mediatek/security/ui/PermissionToAppActivity;->access$400(Lcom/mediatek/security/ui/PermissionToAppActivity;)Lcom/mediatek/security/ui/PermissionToAppActivity$MyPermissionRecord;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/security/ui/PermissionToAppActivity$3;->this$0:Lcom/mediatek/security/ui/PermissionToAppActivity;

    #getter for: Lcom/mediatek/security/ui/PermissionToAppActivity;->mCxt:Landroid/content/Context;
    invoke-static {v1}, Lcom/mediatek/security/ui/PermissionToAppActivity;->access$500(Lcom/mediatek/security/ui/PermissionToAppActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/security/service/PermControlUtils;->changePermission(Lcom/mediatek/common/mom/PermissionRecord;Landroid/content/Context;)V

    .line 207
    iget-object v0, p0, Lcom/mediatek/security/ui/PermissionToAppActivity$3;->this$0:Lcom/mediatek/security/ui/PermissionToAppActivity;

    #getter for: Lcom/mediatek/security/ui/PermissionToAppActivity;->mApdater:Lcom/mediatek/security/ui/PermissionToAppActivity$PermToAppAdapter;
    invoke-static {v0}, Lcom/mediatek/security/ui/PermissionToAppActivity;->access$600(Lcom/mediatek/security/ui/PermissionToAppActivity;)Lcom/mediatek/security/ui/PermissionToAppActivity$PermToAppAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 208
    iget-object v0, p0, Lcom/mediatek/security/ui/PermissionToAppActivity$3;->this$0:Lcom/mediatek/security/ui/PermissionToAppActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->removeDialog(I)V

    .line 209
    return-void
.end method
