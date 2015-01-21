.class public Lcom/zte/retrieve/activity/RetrieveInfoSettingActivity;
.super Lcom/zte/retrieve/activity/PasswordRelatedActivity;
.source "RetrieveInfoSettingActivity.java"

# interfaces
.implements Lcom/zte/retrieve/iview/IRetrieveInfoSettingView;


# instance fields
.field private ACCOUNT_MANAGER_ACTIVITY_ID:I

.field private lastTime:J

.field private mContext:Landroid/content/Context;

.field private mPresenter:Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/zte/retrieve/activity/PasswordRelatedActivity;-><init>()V

    .line 39
    const/16 v0, 0xbba

    iput v0, p0, Lcom/zte/retrieve/activity/RetrieveInfoSettingActivity;->ACCOUNT_MANAGER_ACTIVITY_ID:I

    .line 40
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/zte/retrieve/activity/RetrieveInfoSettingActivity;->lastTime:J

    .line 36
    return-void
.end method

.method static synthetic access$0(Lcom/zte/retrieve/activity/RetrieveInfoSettingActivity;)Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveInfoSettingActivity;->mPresenter:Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;

    return-object v0
.end method

.method private installAccountDialog(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 184
    const-string v1, "alert dialog start!"

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 186
    new-instance v0, Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;

    invoke-virtual {p0}, Lcom/zte/retrieve/activity/RetrieveInfoSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 187
    invoke-virtual {p0}, Lcom/zte/retrieve/activity/RetrieveInfoSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0600cb

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, p1

    move v5, v4

    .line 186
    invoke-direct/range {v0 .. v5}, Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 188
    .local v0, dialog:Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;
    invoke-virtual {v0}, Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;->getDialogLayout()Landroid/view/View;

    move-result-object v6

    .line 190
    .local v6, dialogLayout:Landroid/view/View;
    const v1, 0x7f090012

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/zte/retrieve/activity/RetrieveInfoSettingActivity$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/zte/retrieve/activity/RetrieveInfoSettingActivity$1;-><init>(Lcom/zte/retrieve/activity/RetrieveInfoSettingActivity;Landroid/content/Context;Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    const v1, 0x7f090011

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/zte/retrieve/activity/RetrieveInfoSettingActivity$2;

    invoke-direct {v2, p0, v0}, Lcom/zte/retrieve/activity/RetrieveInfoSettingActivity$2;-><init>(Lcom/zte/retrieve/activity/RetrieveInfoSettingActivity;Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    return-void
.end method

.method private setUserInfo()V
    .locals 5

    .prologue
    .line 63
    const v4, 0x7f090065

    invoke-virtual {p0, v4}, Lcom/zte/retrieve/activity/RetrieveInfoSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 64
    .local v0, securityNumView:Landroid/widget/TextView;
    const v4, 0x7f090066

    invoke-virtual {p0, v4}, Lcom/zte/retrieve/activity/RetrieveInfoSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 65
    .local v3, smsView:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/zte/retrieve/activity/RetrieveInfoSettingActivity;->mPresenter:Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;

    invoke-virtual {v4}, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->getSecurityNumber()Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, securityNumber:Ljava/lang/String;
    iget-object v4, p0, Lcom/zte/retrieve/activity/RetrieveInfoSettingActivity;->mPresenter:Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;

    invoke-virtual {v4}, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->getSmsContent()Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, smsContent:Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 69
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 70
    return-void
.end method

.method private validClick()Z
    .locals 6

    .prologue
    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 99
    .local v0, curTime:J
    iget-wide v4, p0, Lcom/zte/retrieve/activity/RetrieveInfoSettingActivity;->lastTime:J

    sub-long v2, v0, v4

    .line 100
    .local v2, useTime:J
    iput-wide v0, p0, Lcom/zte/retrieve/activity/RetrieveInfoSettingActivity;->lastTime:J

    .line 101
    const-wide/16 v4, 0x1f4

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    .line 102
    const/4 v4, 0x0

    .line 104
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x1

    goto :goto_0
.end method


# virtual methods
.method public clickController(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/zte/retrieve/activity/RetrieveInfoSettingActivity;->validClick()Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    :goto_0
    return-void

    .line 78
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 89
    :sswitch_0
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveInfoSettingActivity;->mPresenter:Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;

    invoke-virtual {v0}, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->doUpdate()V

    goto :goto_0

    .line 80
    :sswitch_1
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveInfoSettingActivity;->mPresenter:Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;

    invoke-virtual {v0}, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->modifySecurityNumber()V

    goto :goto_0

    .line 83
    :sswitch_2
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveInfoSettingActivity;->mPresenter:Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;

    invoke-virtual {v0}, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->modifyPwd()V

    goto :goto_0

    .line 86
    :sswitch_3
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveInfoSettingActivity;->mPresenter:Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;

    invoke-virtual {v0}, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->changeAccount()V

    goto :goto_0

    .line 78
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090019 -> :sswitch_0
        0x7f090064 -> :sswitch_1
        0x7f090068 -> :sswitch_2
        0x7f09006a -> :sswitch_3
    .end sparse-switch
.end method

.method public finishView()V
    .locals 0

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/zte/retrieve/activity/RetrieveInfoSettingActivity;->finish()V

    .line 269
    return-void
.end method

.method public initAccountManager()Z
    .locals 2

    .prologue
    .line 172
    const-string v1, "initAccountManager start"

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 173
    iget-object v1, p0, Lcom/zte/retrieve/activity/RetrieveInfoSettingActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/zte/retrieve/utils/CommonFunctions;->loadCloudAccountApp(Landroid/content/Context;)V

    .line 174
    iget-object v1, p0, Lcom/zte/retrieve/activity/RetrieveInfoSettingActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/zte/retrieve/utils/CommonFunctions;->prepareAuthEnvir(Landroid/content/Context;)Z

    move-result v0

    .line 175
    .local v0, bflag:Z
    if-nez v0, :cond_0

    .line 176
    iget-object v1, p0, Lcom/zte/retrieve/activity/RetrieveInfoSettingActivity;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/zte/retrieve/activity/RetrieveInfoSettingActivity;->installAccountDialog(Landroid/content/Context;)V

    .line 177
    const-string v1, "alert dialog show finish"

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 180
    :cond_0
    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v4, 0x1

    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onActivityResult resultCode = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 135
    if-nez p2, :cond_1

    if-nez p3, :cond_1

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    iget v2, p0, Lcom/zte/retrieve/activity/RetrieveInfoSettingActivity;->ACCOUNT_MANAGER_ACTIVITY_ID:I

    if-ne p1, v2, :cond_0

    .line 138
    const/4 v0, -0x1

    .line 139
    .local v0, changeresult:I
    const/4 v1, -0x1

    .line 140
    .local v1, singoutRes:I
    const/4 v2, -0x1

    if-ne p2, v2, :cond_2

    if-eqz p3, :cond_2

    .line 141
    const-string v2, "switch_user_result"

    invoke-virtual {p3, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 142
    const-string v2, "sign_out_result"

    invoke-virtual {p3, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 144
    :cond_2
    if-eqz p3, :cond_3

    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RetrieveInfoSetting onActivityResult,result="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",data="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zte/retrieve/utils/LogHelper;->v(Ljava/lang/String;)V

    .line 147
    :cond_3
    if-eqz v0, :cond_4

    if-nez v1, :cond_0

    .line 149
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RetrieveInfoSetting onActivityResult,uid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/zte/retrieve/cloud/account/AccountManager;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zte/retrieve/utils/LogHelper;->v(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x4

    .line 44
    invoke-super {p0, p1}, Lcom/zte/retrieve/activity/PasswordRelatedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v1, 0x7f030019

    invoke-virtual {p0, v1}, Lcom/zte/retrieve/activity/RetrieveInfoSettingActivity;->setContentView(I)V

    .line 47
    invoke-virtual {p0}, Lcom/zte/retrieve/activity/RetrieveInfoSettingActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 49
    new-instance v1, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;

    invoke-direct {v1}, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;-><init>()V

    iput-object v1, p0, Lcom/zte/retrieve/activity/RetrieveInfoSettingActivity;->mPresenter:Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;

    .line 50
    iput-object p0, p0, Lcom/zte/retrieve/activity/RetrieveInfoSettingActivity;->mContext:Landroid/content/Context;

    .line 51
    iget-object v1, p0, Lcom/zte/retrieve/activity/RetrieveInfoSettingActivity;->mPresenter:Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;

    iget-object v2, p0, Lcom/zte/retrieve/activity/RetrieveInfoSettingActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->setContext(Landroid/content/Context;)V

    .line 52
    iget-object v1, p0, Lcom/zte/retrieve/activity/RetrieveInfoSettingActivity;->mPresenter:Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;

    invoke-virtual {v1, p0}, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->setView(Lcom/zte/retrieve/iview/IView;)V

    .line 54
    invoke-static {}, Lcom/zte/retrieve/utils/config/RetrieveConfig;->getInstance()Lcom/zte/retrieve/utils/config/RetrieveConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/retrieve/utils/config/RetrieveConfig;->isSupportCloud()Z

    move-result v1

    if-nez v1, :cond_0

    .line 55
    const v1, 0x7f09006a

    invoke-virtual {p0, v1}, Lcom/zte/retrieve/activity/RetrieveInfoSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 56
    .local v0, accountView:Landroid/view/View;
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 57
    const v1, 0x7f09006b

    invoke-virtual {p0, v1}, Lcom/zte/retrieve/activity/RetrieveInfoSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 59
    .end local v0           #accountView:Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/zte/retrieve/activity/RetrieveInfoSettingActivity;->mPresenter:Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;

    invoke-virtual {v1}, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->setTopViewHandle()V

    .line 60
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveInfoSettingActivity;->mPresenter:Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;

    invoke-virtual {v0}, Lcom/zte/retrieve/presenter/RetrieveInfoSettingPresenter;->cancelHandler()V

    .line 274
    invoke-super {p0}, Lcom/zte/retrieve/activity/PasswordRelatedActivity;->onDestroy()V

    .line 275
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 166
    invoke-super {p0}, Lcom/zte/retrieve/activity/PasswordRelatedActivity;->onPause()V

    .line 167
    invoke-static {}, Lcom/zte/retrieve/cloud/account/AccountManager;->isRegisterServiceConnected()Z

    move-result v0

    invoke-static {v0}, Lcom/zte/retrieve/cloud/account/AccountManager;->unBindRegisterService(Z)V

    .line 168
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 156
    invoke-super {p0}, Lcom/zte/retrieve/activity/PasswordRelatedActivity;->onResume()V

    .line 158
    invoke-direct {p0}, Lcom/zte/retrieve/activity/RetrieveInfoSettingActivity;->setUserInfo()V

    .line 160
    const-string v0, "RetrieveInfoSetting onResume"

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveInfoSettingActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/retrieve/cloud/account/AccountManager;->init(Landroid/content/Context;)V

    .line 162
    return-void
.end method

.method public showResultDialog(IILandroid/content/Context;)V
    .locals 7
    .parameter "nocardtitle"
    .parameter "nosdcard"
    .parameter "context"

    .prologue
    .line 253
    new-instance v0, Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;

    invoke-virtual {p0}, Lcom/zte/retrieve/activity/RetrieveInfoSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/zte/retrieve/activity/RetrieveInfoSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 254
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p3

    .line 253
    invoke-direct/range {v0 .. v5}, Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 255
    .local v0, dialog:Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;
    invoke-virtual {v0}, Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;->getDialogLayout()Landroid/view/View;

    move-result-object v6

    .line 257
    .local v6, dialogLayout:Landroid/view/View;
    const v1, 0x7f090012

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/zte/retrieve/activity/RetrieveInfoSettingActivity$5;

    invoke-direct {v2, p0, v0}, Lcom/zte/retrieve/activity/RetrieveInfoSettingActivity$5;-><init>(Lcom/zte/retrieve/activity/RetrieveInfoSettingActivity;Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    return-void
.end method

.method public showUpdatePromptDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 5
    .parameter "title"
    .parameter "msg"
    .parameter "context"

    .prologue
    const v4, 0x7f090012

    .line 225
    new-instance v0, Lcom/zte/retrieve/utils/dialogcustom/DialogUpdate;

    const/4 v2, 0x0

    invoke-direct {v0, p3, p1, p2, v2}, Lcom/zte/retrieve/utils/dialogcustom/DialogUpdate;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 226
    .local v0, dialog:Lcom/zte/retrieve/utils/dialogcustom/DialogUpdate;
    invoke-virtual {v0}, Lcom/zte/retrieve/utils/dialogcustom/DialogUpdate;->getDialogLayout()Landroid/view/View;

    move-result-object v1

    .line 228
    .local v1, dialogLayout:Landroid/view/View;
    new-instance v2, Lcom/zte/retrieve/upgrade/UpdateVersionInfo;

    invoke-direct {v2, p3, p2, v1}, Lcom/zte/retrieve/upgrade/UpdateVersionInfo;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)V

    .line 230
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const v3, 0x7f0600b9

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 232
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    new-instance v3, Lcom/zte/retrieve/activity/RetrieveInfoSettingActivity$3;

    invoke-direct {v3, p0, v0}, Lcom/zte/retrieve/activity/RetrieveInfoSettingActivity$3;-><init>(Lcom/zte/retrieve/activity/RetrieveInfoSettingActivity;Lcom/zte/retrieve/utils/dialogcustom/DialogUpdate;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    const v2, 0x7f090011

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    new-instance v3, Lcom/zte/retrieve/activity/RetrieveInfoSettingActivity$4;

    invoke-direct {v3, p0, v0}, Lcom/zte/retrieve/activity/RetrieveInfoSettingActivity$4;-><init>(Lcom/zte/retrieve/activity/RetrieveInfoSettingActivity;Lcom/zte/retrieve/utils/dialogcustom/DialogUpdate;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    return-void
.end method

.method public startAccountView()V
    .locals 5

    .prologue
    .line 114
    const-string v3, "startAccountView ACCOUNT_ADDNEW_ACTIVITY_ID"

    invoke-static {v3}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 116
    invoke-static {}, Lcom/zte/retrieve/cloud/account/AccountManager;->isRegisterServiceConnected()Z

    move-result v3

    if-nez v3, :cond_0

    .line 130
    :goto_0
    return-void

    .line 120
    :cond_0
    const/4 v2, 0x0

    .line 122
    .local v2, result:Landroid/os/Bundle;
    :try_start_0
    invoke-static {}, Lcom/zte/retrieve/cloud/account/AccountManager;->getMyService()Lorg/zx/AuthComp/IMyService;

    move-result-object v3

    invoke-interface {v3}, Lorg/zx/AuthComp/IMyService;->startAccountManagerActivity()Landroid/os/Bundle;

    move-result-object v2

    .line 123
    const-string v3, "intent"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 124
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "invoker"

    const-string v4, "phoneretrieve"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    iget v3, p0, Lcom/zte/retrieve/activity/RetrieveInfoSettingActivity;->ACCOUNT_MANAGER_ACTIVITY_ID:I

    invoke-virtual {p0, v1, v3}, Lcom/zte/retrieve/activity/RetrieveInfoSettingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 126
    const-string v3, "startActivityForResult ACCOUNT_ADDNEW_ACTIVITY_ID"

    invoke-static {v3}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 127
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 128
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
