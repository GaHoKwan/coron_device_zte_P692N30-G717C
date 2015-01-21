.class public Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter;
.super Lcom/zte/retrieve/presenter/Presenter;
.source "RetrieveCloudTabViewPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter$NormalCloudBindPresenter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zte/retrieve/presenter/Presenter",
        "<",
        "Lcom/zte/retrieve/iview/IRetrieveCloudControlView;",
        ">;"
    }
.end annotation


# instance fields
.field private cloudBindController:Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter$NormalCloudBindPresenter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/zte/retrieve/presenter/Presenter;-><init>()V

    return-void
.end method

.method private loginStatusJudged()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 66
    const/4 v1, 0x0

    .line 68
    .local v1, tokenSaved:Ljava/lang/String;
    invoke-static {}, Lcom/zte/retrieve/cloud/account/AccountManager;->isRegisterServiceConnected()Z

    move-result v3

    if-nez v3, :cond_0

    .line 69
    const-string v3, "Haven\'t bind sevice"

    invoke-static {v3}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 81
    :goto_0
    return v2

    .line 73
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/zte/retrieve/cloud/account/AccountManager;->getMyService()Lorg/zx/AuthComp/IMyService;

    move-result-object v3

    invoke-interface {v3}, Lorg/zx/AuthComp/IMyService;->getToken()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 77
    :goto_1
    if-eqz v1, :cond_1

    .line 78
    const/4 v2, 0x1

    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 80
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    const-string v3, "Haven\'t get token"

    invoke-static {v3}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public activeCloudRetrieve()V
    .locals 3

    .prologue
    .line 86
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/retrieve/controller/Controller;->setLocalSelectStatus(I)Z

    .line 88
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter;->mView:Lcom/zte/retrieve/iview/IView;

    check-cast v0, Lcom/zte/retrieve/iview/IRetrieveCloudControlView;

    invoke-interface {v0}, Lcom/zte/retrieve/iview/IRetrieveCloudControlView;->initAccountManager()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-direct {p0}, Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter;->loginStatusJudged()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter;->cloudBindController:Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter$NormalCloudBindPresenter;

    invoke-virtual {v0}, Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter$NormalCloudBindPresenter;->startBindingProcess()V

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter;->mView:Lcom/zte/retrieve/iview/IView;

    check-cast v0, Lcom/zte/retrieve/iview/IRetrieveCloudControlView;

    const v1, 0x7f06003e

    const v2, 0x7f06003f

    invoke-interface {v0, v1, v2}, Lcom/zte/retrieve/iview/IRetrieveCloudControlView;->showLoginDialog(II)V

    goto :goto_0
.end method

.method public backupCloudWebAddress()V
    .locals 6

    .prologue
    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "smsto:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v3}, Lcom/zte/retrieve/controller/Controller;->getSecurityNum()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, urlString:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 120
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "sms_body"

    .line 121
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter;->mContext:Landroid/content/Context;

    const v5, 0x7f06004c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter;->mContext:Landroid/content/Context;

    const v5, 0x7f06004a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 120
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    iget-object v2, p0, Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 123
    return-void
.end method

.method public disableCloudRetrieve()I
    .locals 5

    .prologue
    .line 99
    const/4 v2, 0x0

    .line 101
    .local v2, deactiveStatus:I
    new-instance v3, Lcom/zte/retrieve/utils/PhoneInfo;

    iget-object v4, p0, Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/zte/retrieve/utils/PhoneInfo;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/zte/retrieve/utils/PhoneInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, IMEI:Ljava/lang/String;
    new-instance v1, Lcom/zte/retrieve/cloud/PRControl;

    iget-object v3, p0, Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/zte/retrieve/cloud/PRControl;-><init>(Landroid/content/Context;)V

    .line 105
    .local v1, control:Lcom/zte/retrieve/cloud/PRControl;
    invoke-virtual {v1, v0}, Lcom/zte/retrieve/cloud/PRControl;->sendDeactivationRequest(Ljava/lang/String;)I

    move-result v2

    .line 106
    packed-switch v2, :pswitch_data_0

    .line 111
    iget-object v3, p0, Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/zte/retrieve/controller/Controller;->setCloudActiveStatus(I)Z

    .line 114
    :goto_0
    return v2

    .line 108
    :pswitch_0
    iget-object v3, p0, Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/zte/retrieve/controller/Controller;->setCloudActiveStatus(I)Z

    goto :goto_0

    .line 106
    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
    .end packed-switch
.end method

.method public handleNetErrorDialogClick()V
    .locals 3

    .prologue
    .line 161
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    iget-object v1, p0, Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;

    invoke-virtual {v0, v1, v2}, Lcom/zte/retrieve/controller/Controller;->navigateTo(Landroid/content/Context;Ljava/lang/Class;)V

    .line 162
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter;->mView:Lcom/zte/retrieve/iview/IView;

    check-cast v0, Lcom/zte/retrieve/iview/IRetrieveCloudControlView;

    invoke-interface {v0}, Lcom/zte/retrieve/iview/IRetrieveCloudControlView;->finish()V

    .line 163
    return-void
.end method

.method public init()V
    .locals 3

    .prologue
    .line 33
    new-instance v1, Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter$NormalCloudBindPresenter;

    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter;->mView:Lcom/zte/retrieve/iview/IView;

    check-cast v0, Lcom/zte/retrieve/iview/IRetrieveCloudControlView;

    iget-object v2, p0, Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v0, v2}, Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter$NormalCloudBindPresenter;-><init>(Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter;Lcom/zte/retrieve/iview/IRetrieveCloudControlView;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter;->cloudBindController:Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter$NormalCloudBindPresenter;

    .line 34
    return-void
.end method

.method public isPasswordCorrect(Ljava/lang/String;)Z
    .locals 3
    .parameter "password"

    .prologue
    .line 130
    const/4 v0, 0x0

    .line 132
    .local v0, correctPwd:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v2}, Lcom/zte/retrieve/controller/Controller;->getPassword()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 136
    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 137
    const/4 v2, 0x1

    .line 139
    :goto_1
    return v2

    .line 133
    :catch_0
    move-exception v1

    .line 134
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 139
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public queryCloudStatus()Z
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v0}, Lcom/zte/retrieve/controller/Controller;->isCloudActive()Z

    move-result v0

    return v0
.end method

.method public saveUid(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v0, p1}, Lcom/zte/retrieve/controller/Controller;->setUid(Ljava/lang/String;)Z

    .line 127
    return-void
.end method

.method public setCloudStatusClose()Z
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v0}, Lcom/zte/retrieve/controller/Controller;->isLocalActiveStatus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v0}, Lcom/zte/retrieve/controller/Controller;->cleanIMSIConfig()V

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/retrieve/controller/Controller;->setCloudActiveStatus(I)Z

    move-result v0

    return v0
.end method

.method public showLoginFailedDialog()V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter;->cloudBindController:Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter$NormalCloudBindPresenter;

    invoke-virtual {v0}, Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter$NormalCloudBindPresenter;->showLoginFailedDialog()V

    .line 171
    return-void
.end method

.method public startBindingProcess()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter;->cloudBindController:Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter$NormalCloudBindPresenter;

    invoke-virtual {v0}, Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter$NormalCloudBindPresenter;->startBindingProcess()V

    .line 62
    return-void
.end method

.method public startLoginAccount()V
    .locals 1

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter;->loginStatusJudged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter;->cloudBindController:Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter$NormalCloudBindPresenter;

    invoke-virtual {v0}, Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter$NormalCloudBindPresenter;->startBindingProcess()V

    .line 156
    :goto_0
    return-void

    .line 153
    :cond_0
    const-string v0, "user is not logined, start account manager"

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter;->mView:Lcom/zte/retrieve/iview/IView;

    check-cast v0, Lcom/zte/retrieve/iview/IRetrieveCloudControlView;

    invoke-interface {v0}, Lcom/zte/retrieve/iview/IRetrieveCloudControlView;->startAccountManagerView()V

    goto :goto_0
.end method
