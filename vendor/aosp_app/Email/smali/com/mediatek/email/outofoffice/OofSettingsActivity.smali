.class public Lcom/mediatek/email/outofoffice/OofSettingsActivity;
.super Landroid/app/Activity;
.source "OofSettingsActivity.java"

# interfaces
.implements Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/email/outofoffice/OofSettingsActivity$AlertDialogFragment;
    }
.end annotation


# static fields
.field private static final ACCOUNT_ID:Ljava/lang/String; = "account_id"

.field private static final OOF_PARAMS:Ljava/lang/String; = "oof_params"

.field public static final OOF_SETTING_ACTION:Ljava/lang/String; = "android.intent.action.OOF_SETTING_ACTION"


# instance fields
.field private mAccountId:J

.field private mActionBar:Landroid/app/ActionBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 107
    return-void
.end method

.method public static createIntent(Landroid/content/Context;JLandroid/os/Parcelable;)Landroid/content/Intent;
    .locals 2
    .parameter "context"
    .parameter "accountId"
    .parameter "oofParams"

    .prologue
    .line 40
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 41
    .local v0, i:Landroid/content/Intent;
    const-string v1, "android.intent.action.OOF_SETTING_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    const-string v1, "account_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 43
    const-string v1, "oof_params"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 44
    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 6

    .prologue
    .line 88
    invoke-static {p0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v2

    .line 89
    .local v2, controller:Lcom/android/email/Controller;
    iget-wide v4, p0, Lcom/mediatek/email/outofoffice/OofSettingsActivity;->mAccountId:J

    invoke-virtual {v2, v4, v5}, Lcom/android/email/Controller;->stopOof(J)V

    .line 90
    sget-object v1, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->sSavebutton:Landroid/view/View;

    check-cast v1, Landroid/widget/Button;

    .line 91
    .local v1, btn:Landroid/widget/Button;
    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 92
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    .line 93
    .local v3, fm:Landroid/app/FragmentManager;
    const-string v4, "CancelAlert"

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/mediatek/email/outofoffice/OofSettingsActivity$AlertDialogFragment;

    .line 95
    .local v0, adf:Lcom/mediatek/email/outofoffice/OofSettingsActivity$AlertDialogFragment;
    if-nez v0, :cond_0

    .line 96
    const v4, 0x7f08005a

    const v5, 0x7f08005b

    invoke-static {v4, v5}, Lcom/mediatek/email/outofoffice/OofSettingsActivity$AlertDialogFragment;->newInstance(II)Lcom/mediatek/email/outofoffice/OofSettingsActivity$AlertDialogFragment;

    move-result-object v0

    .line 99
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "CancelAlert"

    invoke-virtual {v0, v4, v5}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 105
    .end local v0           #adf:Lcom/mediatek/email/outofoffice/OofSettingsActivity$AlertDialogFragment;
    .end local v3           #fm:Landroid/app/FragmentManager;
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const-wide/16 v7, -0x1

    const/4 v6, 0x4

    .line 49
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const v4, 0x7f040053

    invoke-virtual {p0, v4}, Landroid/app/Activity;->setContentView(I)V

    .line 52
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 53
    .local v1, i:Landroid/content/Intent;
    const-string v4, "account_id"

    invoke-virtual {v1, v4, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/mediatek/email/outofoffice/OofSettingsActivity;->mAccountId:J

    .line 54
    const-string v4, "oof_params"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/android/emailcommon/service/OofParams;

    .line 55
    .local v3, oofParams:Lcom/android/emailcommon/service/OofParams;
    if-nez p1, :cond_0

    iget-wide v4, p0, Lcom/mediatek/email/outofoffice/OofSettingsActivity;->mAccountId:J

    cmp-long v4, v4, v7

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    .line 57
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 58
    .local v0, ft:Landroid/app/FragmentTransaction;
    iget-wide v4, p0, Lcom/mediatek/email/outofoffice/OofSettingsActivity;->mAccountId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->newInstance(Ljava/lang/Long;Landroid/os/Parcelable;)Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    move-result-object v2

    .line 59
    .local v2, newFragment:Landroid/app/Fragment;
    const v4, 0x7f0f00fc

    invoke-virtual {v0, v4, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 60
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 62
    .end local v0           #ft:Landroid/app/FragmentTransaction;
    .end local v2           #newFragment:Landroid/app/Fragment;
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/email/outofoffice/OofSettingsActivity;->mActionBar:Landroid/app/ActionBar;

    .line 64
    iget-object v4, p0, Lcom/mediatek/email/outofoffice/OofSettingsActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v4, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 66
    iget-object v4, p0, Lcom/mediatek/email/outofoffice/OofSettingsActivity;->mActionBar:Landroid/app/ActionBar;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 67
    iget-object v4, p0, Lcom/mediatek/email/outofoffice/OofSettingsActivity;->mActionBar:Landroid/app/ActionBar;

    const v5, 0x7f08004e

    invoke-virtual {v4, v5}, Landroid/app/ActionBar;->setTitle(I)V

    .line 68
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 72
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 81
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 83
    :goto_0
    return v0

    .line 78
    :pswitch_0
    invoke-virtual {p0}, Lcom/mediatek/email/outofoffice/OofSettingsActivity;->onBackPressed()V

    .line 83
    const/4 v0, 0x1

    goto :goto_0

    .line 72
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onSettingFinished()V
    .locals 0

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/mediatek/email/outofoffice/OofSettingsActivity;->onBackPressed()V

    .line 37
    return-void
.end method
