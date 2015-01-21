.class Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$7;
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
    .line 358
    iput-object p1, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$7;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 361
    iget-object v3, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$7;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mSaveButton:Landroid/widget/Button;
    invoke-static {v3}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$200(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)Landroid/widget/Button;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 362
    iget-object v3, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$7;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 363
    .local v0, fm:Landroid/app/FragmentManager;
    const-string v3, "AutoReplyDialogFragment"

    invoke-virtual {v0, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/mediatek/email/outofoffice/AutoReplyDialogFragment;

    .line 365
    .local v1, fragment:Lcom/mediatek/email/outofoffice/AutoReplyDialogFragment;
    if-nez v1, :cond_0

    .line 366
    iget-object v3, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$7;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mAccount:Lcom/android/emailcommon/provider/Account;
    invoke-static {v3}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$300(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)Lcom/android/emailcommon/provider/Account;

    move-result-object v3

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4}, Lcom/mediatek/email/outofoffice/AutoReplyDialogFragment;->newInstance(J)Lcom/mediatek/email/outofoffice/AutoReplyDialogFragment;

    move-result-object v2

    .line 368
    .local v2, newFragment:Landroid/app/DialogFragment;
    iget-object v3, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$7;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "AutoReplyDialogFragment"

    invoke-virtual {v2, v3, v4}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 370
    .end local v2           #newFragment:Landroid/app/DialogFragment;
    :cond_0
    return-void
.end method
