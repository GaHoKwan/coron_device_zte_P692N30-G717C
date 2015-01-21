.class public Lcom/zte/retrieve/presenter/PasswordCheckPresenter;
.super Lcom/zte/retrieve/presenter/Presenter;
.source "PasswordCheckPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zte/retrieve/presenter/Presenter",
        "<",
        "Lcom/zte/retrieve/iview/IPasswordCheckView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/zte/retrieve/presenter/Presenter;-><init>()V

    return-void
.end method

.method private authSuccessAndToNext()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 57
    iget-object v0, p0, Lcom/zte/retrieve/presenter/PasswordCheckPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v0}, Lcom/zte/retrieve/controller/Controller;->isFromRecentapps()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zte/retrieve/presenter/PasswordCheckPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v0}, Lcom/zte/retrieve/controller/Controller;->isScreenOff2On()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/zte/retrieve/presenter/PasswordCheckPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v0, v1}, Lcom/zte/retrieve/controller/Controller;->setFromRecentapps(Z)V

    .line 59
    iget-object v0, p0, Lcom/zte/retrieve/presenter/PasswordCheckPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v0, v1}, Lcom/zte/retrieve/controller/Controller;->setScreenOff2On(Z)V

    .line 63
    :goto_0
    iget-object v0, p0, Lcom/zte/retrieve/presenter/PasswordCheckPresenter;->mView:Lcom/zte/retrieve/iview/IView;

    check-cast v0, Lcom/zte/retrieve/iview/IPasswordCheckView;

    invoke-interface {v0}, Lcom/zte/retrieve/iview/IPasswordCheckView;->finish()V

    .line 64
    return-void

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/zte/retrieve/presenter/PasswordCheckPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    iget-object v1, p0, Lcom/zte/retrieve/presenter/PasswordCheckPresenter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/zte/retrieve/activity/RetrieveInfoSettingActivity;

    invoke-virtual {v0, v1, v2}, Lcom/zte/retrieve/controller/Controller;->navigateTo(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method private isPasswordCorrect(Ljava/lang/String;)Z
    .locals 3
    .parameter "password"

    .prologue
    .line 74
    const/4 v0, 0x0

    .line 76
    .local v0, correctPwd:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/zte/retrieve/presenter/PasswordCheckPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v2}, Lcom/zte/retrieve/controller/Controller;->getPassword()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 80
    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    const/4 v2, 0x1

    .line 83
    :goto_1
    return v2

    .line 77
    :catch_0
    move-exception v1

    .line 78
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 83
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public authRemotePassword(Ljava/lang/String;)V
    .locals 1
    .parameter "password"

    .prologue
    .line 44
    invoke-static {}, Lcom/zte/retrieve/utils/config/RetrieveConfig;->isMonkeySwitch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    invoke-direct {p0}, Lcom/zte/retrieve/presenter/PasswordCheckPresenter;->authSuccessAndToNext()V

    .line 54
    :goto_0
    return-void

    .line 49
    :cond_0
    invoke-direct {p0, p1}, Lcom/zte/retrieve/presenter/PasswordCheckPresenter;->isPasswordCorrect(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    invoke-direct {p0}, Lcom/zte/retrieve/presenter/PasswordCheckPresenter;->authSuccessAndToNext()V

    goto :goto_0

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/zte/retrieve/presenter/PasswordCheckPresenter;->mView:Lcom/zte/retrieve/iview/IView;

    check-cast v0, Lcom/zte/retrieve/iview/IPasswordCheckView;

    invoke-interface {v0}, Lcom/zte/retrieve/iview/IPasswordCheckView;->dispWrongPwdWarning()V

    goto :goto_0
.end method

.method public getActivePic()I
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/zte/retrieve/presenter/PasswordCheckPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v0}, Lcom/zte/retrieve/controller/Controller;->isCloudActive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zte/retrieve/presenter/PasswordCheckPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v0}, Lcom/zte/retrieve/controller/Controller;->isLocalActiveStatus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    const v0, 0x7f020052

    .line 122
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f020015

    goto :goto_0
.end method

.method public getActiveText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 94
    iget-object v1, p0, Lcom/zte/retrieve/presenter/PasswordCheckPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v1}, Lcom/zte/retrieve/controller/Controller;->isCloudActive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    iget-object v1, p0, Lcom/zte/retrieve/presenter/PasswordCheckPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v1}, Lcom/zte/retrieve/controller/Controller;->isLocalActiveStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    const v0, 0x7f060066

    .line 109
    .local v0, stringId:I
    :goto_0
    iget-object v1, p0, Lcom/zte/retrieve/presenter/PasswordCheckPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 98
    .end local v0           #stringId:I
    :cond_0
    const v0, 0x7f060065

    .restart local v0       #stringId:I
    goto :goto_0

    .line 101
    .end local v0           #stringId:I
    :cond_1
    iget-object v1, p0, Lcom/zte/retrieve/presenter/PasswordCheckPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v1}, Lcom/zte/retrieve/controller/Controller;->isLocalActiveStatus()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 102
    const v0, 0x7f060064

    .restart local v0       #stringId:I
    goto :goto_0

    .line 104
    .end local v0           #stringId:I
    :cond_2
    const v0, 0x7f060067

    .line 105
    .restart local v0       #stringId:I
    const-string v1, "fatal error!!!!  none active,but come enter pwd activity "

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/zte/retrieve/presenter/PasswordCheckPresenter;->mView:Lcom/zte/retrieve/iview/IView;

    check-cast v0, Lcom/zte/retrieve/iview/IPasswordCheckView;

    invoke-interface {v0}, Lcom/zte/retrieve/iview/IPasswordCheckView;->checkPasswordInput()V

    .line 23
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 126
    iget-object v1, p0, Lcom/zte/retrieve/presenter/PasswordCheckPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v1}, Lcom/zte/retrieve/controller/Controller;->isFromRecentapps()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/zte/retrieve/presenter/PasswordCheckPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v1}, Lcom/zte/retrieve/controller/Controller;->isScreenOff2On()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 127
    :cond_0
    iget-object v1, p0, Lcom/zte/retrieve/presenter/PasswordCheckPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v1, v2}, Lcom/zte/retrieve/controller/Controller;->setFromRecentapps(Z)V

    .line 128
    iget-object v1, p0, Lcom/zte/retrieve/presenter/PasswordCheckPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v1, v2}, Lcom/zte/retrieve/controller/Controller;->setScreenOff2On(Z)V

    .line 129
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zte.retrieve.back_pressed_on_pwd_activity"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 130
    .local v0, mIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/zte/retrieve/presenter/PasswordCheckPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 132
    .end local v0           #mIntent:Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public verifyPasswordForModify(Ljava/lang/String;)V
    .locals 0
    .parameter "password"

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/zte/retrieve/presenter/PasswordCheckPresenter;->authRemotePassword(Ljava/lang/String;)V

    .line 33
    return-void
.end method
