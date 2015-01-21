.class Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$8;
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
    .line 377
    iput-object p1, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$8;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 380
    iget-object v1, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$8;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    invoke-virtual {v1}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->timeCheck()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 393
    :cond_0
    :goto_0
    return-void

    .line 383
    :cond_1
    iget-object v1, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$8;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "oof_reply"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 385
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "oof_external"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$8;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mAccount:Lcom/android/emailcommon/provider/Account;
    invoke-static {v2}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$300(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)Lcom/android/emailcommon/provider/Account;

    move-result-object v2

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$8;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mSeverCheck:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$100(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 386
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 387
    iget-object v1, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$8;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mOofAsyncTask:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$OofAsyncTask;
    invoke-static {v1}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$400(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$OofAsyncTask;

    move-result-object v1

    if-nez v1, :cond_0

    .line 388
    iget-object v2, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$8;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    new-instance v1, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$OofAsyncTask;

    iget-object v3, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$8;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    invoke-direct {v1, v3}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$OofAsyncTask;-><init>(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v3}, Lcom/android/emailcommon/utility/EmailAsyncTask;->executeParallel([Ljava/lang/Object;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    move-result-object v1

    check-cast v1, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$OofAsyncTask;

    #setter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mOofAsyncTask:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$OofAsyncTask;
    invoke-static {v2, v1}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$402(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$OofAsyncTask;)Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$OofAsyncTask;

    .line 389
    iget-object v1, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$8;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    iget-object v2, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$8;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    invoke-static {v2}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$WaitingFetchOofDialog;->newInstance(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$WaitingFetchOofDialog;

    move-result-object v2

    #setter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mDialog:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$WaitingFetchOofDialog;
    invoke-static {v1, v2}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$502(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$WaitingFetchOofDialog;)Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$WaitingFetchOofDialog;

    .line 391
    iget-object v1, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$8;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mDialog:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$WaitingFetchOofDialog;
    invoke-static {v1}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$500(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$WaitingFetchOofDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$8;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "WaitingFetchOofDialog"

    invoke-virtual {v1, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method
