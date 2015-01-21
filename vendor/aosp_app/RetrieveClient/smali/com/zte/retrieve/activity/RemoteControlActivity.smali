.class public Lcom/zte/retrieve/activity/RemoteControlActivity;
.super Landroid/app/Activity;
.source "RemoteControlActivity.java"

# interfaces
.implements Lcom/zte/retrieve/iview/IRemoteControlView;


# instance fields
.field private lastTime:J

.field private mContext:Landroid/content/Context;

.field private mPresenter:Lcom/zte/retrieve/presenter/RemoteControlPresenter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 33
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/zte/retrieve/activity/RemoteControlActivity;->lastTime:J

    .line 30
    return-void
.end method

.method private setLockControlSubtitle()V
    .locals 3

    .prologue
    .line 55
    const v1, 0x7f090038

    invoke-virtual {p0, v1}, Lcom/zte/retrieve/activity/RemoteControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 56
    .local v0, lockSubtitleText:Landroid/widget/TextView;
    invoke-static {}, Lcom/zte/retrieve/controller/Controller;->getInstance()Lcom/zte/retrieve/controller/Controller;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/retrieve/controller/Controller;->isMTKPlatform()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ZTE Q801U"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 57
    :cond_0
    const-string v1, "mtk platform, delete take picture function"

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 58
    const v1, 0x7f060092

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 62
    :goto_0
    return-void

    .line 60
    :cond_1
    const v1, 0x7f060091

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private validClick()Z
    .locals 6

    .prologue
    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 123
    .local v0, curTime:J
    iget-wide v4, p0, Lcom/zte/retrieve/activity/RemoteControlActivity;->lastTime:J

    sub-long v2, v0, v4

    .line 124
    .local v2, useTime:J
    iput-wide v0, p0, Lcom/zte/retrieve/activity/RemoteControlActivity;->lastTime:J

    .line 125
    const-wide/16 v4, 0x1f4

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    .line 126
    const/4 v4, 0x0

    .line 128
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x1

    goto :goto_0
.end method


# virtual methods
.method public clickController(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/zte/retrieve/activity/RemoteControlActivity;->validClick()Z

    move-result v1

    if-nez v1, :cond_0

    .line 118
    :goto_0
    return-void

    .line 92
    :cond_0
    const/4 v0, 0x0

    .line 93
    .local v0, orderType:I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 99
    :sswitch_0
    iget-object v1, p0, Lcom/zte/retrieve/activity/RemoteControlActivity;->mPresenter:Lcom/zte/retrieve/presenter/RemoteControlPresenter;

    invoke-virtual {v1}, Lcom/zte/retrieve/presenter/RemoteControlPresenter;->handleListenClick()V

    goto :goto_0

    .line 95
    :sswitch_1
    const-string v1, "clickController layout in"

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 96
    iget-object v1, p0, Lcom/zte/retrieve/activity/RemoteControlActivity;->mPresenter:Lcom/zte/retrieve/presenter/RemoteControlPresenter;

    invoke-virtual {v1}, Lcom/zte/retrieve/presenter/RemoteControlPresenter;->editRemoteInfo()V

    goto :goto_0

    .line 102
    :sswitch_2
    const/4 v0, 0x1

    .line 117
    :goto_1
    iget-object v1, p0, Lcom/zte/retrieve/activity/RemoteControlActivity;->mPresenter:Lcom/zte/retrieve/presenter/RemoteControlPresenter;

    invoke-virtual {v1, v0}, Lcom/zte/retrieve/presenter/RemoteControlPresenter;->handleInstructBtnClick(I)V

    goto :goto_0

    .line 105
    :sswitch_3
    const/4 v0, 0x3

    .line 106
    goto :goto_1

    .line 108
    :sswitch_4
    const/16 v0, 0x9

    .line 109
    goto :goto_1

    .line 111
    :sswitch_5
    const/4 v0, 0x4

    .line 112
    goto :goto_1

    .line 93
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090028 -> :sswitch_0
        0x7f090034 -> :sswitch_1
        0x7f090037 -> :sswitch_2
        0x7f090039 -> :sswitch_4
        0x7f09003a -> :sswitch_5
        0x7f09003b -> :sswitch_3
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v1, 0x7f030011

    invoke-virtual {p0, v1}, Lcom/zte/retrieve/activity/RemoteControlActivity;->setContentView(I)V

    .line 39
    invoke-virtual {p0}, Lcom/zte/retrieve/activity/RemoteControlActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 40
    .local v0, actionBar:Landroid/app/ActionBar;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 41
    iput-object p0, p0, Lcom/zte/retrieve/activity/RemoteControlActivity;->mContext:Landroid/content/Context;

    .line 42
    new-instance v1, Lcom/zte/retrieve/presenter/RemoteControlPresenter;

    invoke-direct {v1}, Lcom/zte/retrieve/presenter/RemoteControlPresenter;-><init>()V

    iput-object v1, p0, Lcom/zte/retrieve/activity/RemoteControlActivity;->mPresenter:Lcom/zte/retrieve/presenter/RemoteControlPresenter;

    .line 43
    iget-object v1, p0, Lcom/zte/retrieve/activity/RemoteControlActivity;->mPresenter:Lcom/zte/retrieve/presenter/RemoteControlPresenter;

    iget-object v2, p0, Lcom/zte/retrieve/activity/RemoteControlActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/zte/retrieve/presenter/RemoteControlPresenter;->setContext(Landroid/content/Context;)V

    .line 44
    iget-object v1, p0, Lcom/zte/retrieve/activity/RemoteControlActivity;->mPresenter:Lcom/zte/retrieve/presenter/RemoteControlPresenter;

    invoke-virtual {v1, p0}, Lcom/zte/retrieve/presenter/RemoteControlPresenter;->setView(Lcom/zte/retrieve/iview/IView;)V

    .line 45
    iget-object v1, p0, Lcom/zte/retrieve/activity/RemoteControlActivity;->mPresenter:Lcom/zte/retrieve/presenter/RemoteControlPresenter;

    invoke-virtual {v1}, Lcom/zte/retrieve/presenter/RemoteControlPresenter;->init()V

    .line 47
    invoke-direct {p0}, Lcom/zte/retrieve/activity/RemoteControlActivity;->setLockControlSubtitle()V

    .line 48
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 82
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 83
    iget-object v0, p0, Lcom/zte/retrieve/activity/RemoteControlActivity;->mPresenter:Lcom/zte/retrieve/presenter/RemoteControlPresenter;

    invoke-virtual {v0}, Lcom/zte/retrieve/presenter/RemoteControlPresenter;->handlePrelistenClick()V

    .line 84
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/zte/retrieve/activity/RemoteControlActivity;->mPresenter:Lcom/zte/retrieve/presenter/RemoteControlPresenter;

    invoke-virtual {v0, p1}, Lcom/zte/retrieve/presenter/RemoteControlPresenter;->updatePhoneNumberAndPwdFromIntent(Landroid/content/Intent;)V

    .line 67
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 68
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 77
    iget-object v0, p0, Lcom/zte/retrieve/activity/RemoteControlActivity;->mPresenter:Lcom/zte/retrieve/presenter/RemoteControlPresenter;

    invoke-virtual {v0}, Lcom/zte/retrieve/presenter/RemoteControlPresenter;->handlePrelistenClick()V

    .line 78
    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "phoneNumText"
    .parameter "pwdText"

    .prologue
    .line 157
    const v0, 0x7f090035

    invoke-virtual {p0, v0}, Lcom/zte/retrieve/activity/RemoteControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    const v0, 0x7f090036

    invoke-virtual {p0, v0}, Lcom/zte/retrieve/activity/RemoteControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    return-void
.end method

.method public setTextAndImage(II)V
    .locals 1
    .parameter "text"
    .parameter "icon"

    .prologue
    .line 151
    const v0, 0x7f090029

    invoke-virtual {p0, v0}, Lcom/zte/retrieve/activity/RemoteControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 152
    const v0, 0x7f09002a

    invoke-virtual {p0, v0}, Lcom/zte/retrieve/activity/RemoteControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 153
    return-void
.end method

.method public showProcessDlg(Ljava/lang/String;)Landroid/app/ProgressDialog;
    .locals 3
    .parameter "orderTitle"

    .prologue
    const/4 v2, 0x0

    .line 138
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 140
    .local v0, m_pDialog:Landroid/app/ProgressDialog;
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 142
    const v1, 0x7f06009b

    invoke-virtual {p0, v1}, Lcom/zte/retrieve/activity/RemoteControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 143
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 144
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 145
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 146
    return-object v0
.end method

.method public showSendResWindow(II)V
    .locals 7
    .parameter "orderType"
    .parameter "resultCode"

    .prologue
    const/4 v4, 0x1

    .line 168
    iget-object v1, p0, Lcom/zte/retrieve/activity/RemoteControlActivity;->mPresenter:Lcom/zte/retrieve/presenter/RemoteControlPresenter;

    invoke-virtual {v1, p1}, Lcom/zte/retrieve/presenter/RemoteControlPresenter;->getOrderTextByType(I)Ljava/lang/String;

    move-result-object v2

    .line 169
    .local v2, orderTitle:Ljava/lang/String;
    iget-object v1, p0, Lcom/zte/retrieve/activity/RemoteControlActivity;->mPresenter:Lcom/zte/retrieve/presenter/RemoteControlPresenter;

    invoke-virtual {v1, p2}, Lcom/zte/retrieve/presenter/RemoteControlPresenter;->getMsgTextByResult(I)Ljava/lang/String;

    move-result-object v3

    .line 171
    .local v3, msgText:Ljava/lang/String;
    new-instance v0, Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;

    iget-object v1, p0, Lcom/zte/retrieve/activity/RemoteControlActivity;->mContext:Landroid/content/Context;

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 172
    .local v0, dialog:Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;
    invoke-virtual {v0}, Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;->getDialogLayout()Landroid/view/View;

    move-result-object v6

    .line 174
    .local v6, dialogLayout:Landroid/view/View;
    const v1, 0x7f090012

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v4, Lcom/zte/retrieve/activity/RemoteControlActivity$1;

    invoke-direct {v4, p0, v0}, Lcom/zte/retrieve/activity/RemoteControlActivity$1;-><init>(Lcom/zte/retrieve/activity/RemoteControlActivity;Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    return-void
.end method
