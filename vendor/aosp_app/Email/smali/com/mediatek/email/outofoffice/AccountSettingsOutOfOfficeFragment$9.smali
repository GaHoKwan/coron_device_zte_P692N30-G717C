.class Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$9;
.super Ljava/lang/Object;
.source "AccountSettingsOutOfOfficeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->loadSettings(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;


# direct methods
.method constructor <init>(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 397
    iput-object p1, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$9;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 400
    iget-object v2, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$9;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mSaveButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$200(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 401
    iget-object v2, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$9;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 402
    .local v1, fm:Landroid/app/FragmentManager;
    const-string v2, "CancelAlert"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$AlertDialogFragment;

    .line 404
    .local v0, adf:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$AlertDialogFragment;
    if-nez v0, :cond_0

    .line 405
    const v2, 0x7f08005a

    const v3, 0x7f08005b

    iget-object v4, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$9;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mCallback:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$Callback;
    invoke-static {v4}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$600(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$Callback;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$AlertDialogFragment;->newInstance(IILcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$Callback;)Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$AlertDialogFragment;

    move-result-object v0

    .line 408
    iget-object v2, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$9;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "CancelAlert"

    invoke-virtual {v0, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 413
    .end local v0           #adf:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$AlertDialogFragment;
    .end local v1           #fm:Landroid/app/FragmentManager;
    :cond_0
    :goto_0
    return-void

    .line 411
    :cond_1
    iget-object v2, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$9;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mCallback:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$Callback;
    invoke-static {v2}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$600(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$Callback;

    move-result-object v2

    invoke-interface {v2}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$Callback;->onSettingFinished()V

    goto :goto_0
.end method
