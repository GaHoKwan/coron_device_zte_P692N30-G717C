.class public Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;
.super Lcom/zte/retrieve/presenter/Presenter;
.source "RetrieveEntryPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/retrieve/presenter/RetrieveEntryPresenter$NormalCloudBindPresenter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zte/retrieve/presenter/Presenter",
        "<",
        "Lcom/zte/retrieve/iview/IRetrieveEntryView;",
        ">;"
    }
.end annotation


# instance fields
.field private cloudBindController:Lcom/zte/retrieve/presenter/RetrieveEntryPresenter$NormalCloudBindPresenter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/zte/retrieve/presenter/Presenter;-><init>()V

    return-void
.end method

.method private saveCheckStatus()V
    .locals 2

    .prologue
    .line 112
    iget-object v1, p0, Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;->mView:Lcom/zte/retrieve/iview/IView;

    check-cast v0, Lcom/zte/retrieve/iview/IRetrieveEntryView;

    invoke-interface {v0}, Lcom/zte/retrieve/iview/IRetrieveEntryView;->getLocalcheckStatus()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/zte/retrieve/controller/Controller;->setLocalSelectStatus(I)Z

    .line 113
    iget-object v1, p0, Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;->mView:Lcom/zte/retrieve/iview/IView;

    check-cast v0, Lcom/zte/retrieve/iview/IRetrieveEntryView;

    invoke-interface {v0}, Lcom/zte/retrieve/iview/IRetrieveEntryView;->getCloudCheckStatus()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/zte/retrieve/controller/Controller;->setCloudSelectStatus(I)Z

    .line 114
    return-void
.end method


# virtual methods
.method public checkActivation()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 98
    iget-object v1, p0, Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v1}, Lcom/zte/retrieve/controller/Controller;->isActive()Z

    move-result v0

    .line 99
    .local v0, isActive:Z
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "VersionFlag() ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v2}, Lcom/zte/retrieve/controller/Controller;->getVersionFlag()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",active"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";localActive="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 100
    iget-object v2, p0, Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    iget-object v3, p0, Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/zte/retrieve/controller/Controller;->isImsiExist(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 99
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->d(Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v1}, Lcom/zte/retrieve/controller/Controller;->getVersionFlag()I

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 102
    iget-object v1, p0, Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    iget-object v2, p0, Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;->mContext:Landroid/content/Context;

    const-class v3, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;

    invoke-virtual {v1, v2, v3}, Lcom/zte/retrieve/controller/Controller;->navigateTo(Landroid/content/Context;Ljava/lang/Class;)V

    .line 103
    iget-object v1, p0, Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;->mView:Lcom/zte/retrieve/iview/IView;

    check-cast v1, Lcom/zte/retrieve/iview/IRetrieveEntryView;

    invoke-interface {v1}, Lcom/zte/retrieve/iview/IRetrieveEntryView;->finish()V

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    iget-object v1, p0, Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v1}, Lcom/zte/retrieve/controller/Controller;->isVersionSecondUpdateThreeWithLocalOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;->mView:Lcom/zte/retrieve/iview/IView;

    check-cast v1, Lcom/zte/retrieve/iview/IRetrieveEntryView;

    invoke-interface {v1}, Lcom/zte/retrieve/iview/IRetrieveEntryView;->setLocalBtnDisable()V

    .line 106
    iget-object v1, p0, Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v1, v4}, Lcom/zte/retrieve/controller/Controller;->setVersionUpdateInfo(Z)V

    .line 107
    iget-object v1, p0, Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v1, v4}, Lcom/zte/retrieve/controller/Controller;->setLocalActiveStatus(I)Z

    goto :goto_0
.end method

.method public init()V
    .locals 3

    .prologue
    .line 23
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    iget-object v1, p0, Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;->mView:Lcom/zte/retrieve/iview/IView;

    invoke-virtual {v0, v1}, Lcom/zte/retrieve/controller/Controller;->addPendingActivity(Lcom/zte/retrieve/iview/IView;)V

    .line 24
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zte/retrieve/controller/Controller;->setVersionFlag(I)V

    .line 25
    new-instance v1, Lcom/zte/retrieve/presenter/RetrieveEntryPresenter$NormalCloudBindPresenter;

    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;->mView:Lcom/zte/retrieve/iview/IView;

    check-cast v0, Lcom/zte/retrieve/iview/IRetrieveEntryView;

    iget-object v2, p0, Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v0, v2}, Lcom/zte/retrieve/presenter/RetrieveEntryPresenter$NormalCloudBindPresenter;-><init>(Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;Lcom/zte/retrieve/iview/IRetrieveEntryView;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;->cloudBindController:Lcom/zte/retrieve/presenter/RetrieveEntryPresenter$NormalCloudBindPresenter;

    .line 26
    return-void
.end method

.method public jumpToIntructView()V
    .locals 3

    .prologue
    .line 174
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    iget-object v1, p0, Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/zte/retrieve/activity/InstructGuideViewActivity;

    invoke-virtual {v0, v1, v2}, Lcom/zte/retrieve/controller/Controller;->navigateTo(Landroid/content/Context;Ljava/lang/Class;)V

    .line 175
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;->mView:Lcom/zte/retrieve/iview/IView;

    check-cast v0, Lcom/zte/retrieve/iview/IRetrieveEntryView;

    invoke-interface {v0}, Lcom/zte/retrieve/iview/IRetrieveEntryView;->finish()V

    .line 176
    return-void
.end method

.method public jumpToRetrieveMasterView()V
    .locals 3

    .prologue
    .line 169
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    iget-object v1, p0, Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;

    invoke-virtual {v0, v1, v2}, Lcom/zte/retrieve/controller/Controller;->navigateTo(Landroid/content/Context;Ljava/lang/Class;)V

    .line 170
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;->mView:Lcom/zte/retrieve/iview/IView;

    check-cast v0, Lcom/zte/retrieve/iview/IRetrieveEntryView;

    invoke-interface {v0}, Lcom/zte/retrieve/iview/IRetrieveEntryView;->finish()V

    .line 171
    return-void
.end method

.method public loginStatusJudged()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 135
    const/4 v1, 0x0

    .line 138
    .local v1, tokenSaved:Ljava/lang/String;
    invoke-static {}, Lcom/zte/retrieve/cloud/account/AccountManager;->isRegisterServiceConnected()Z

    move-result v3

    if-nez v3, :cond_0

    .line 139
    const-string v3, "Haven\'t bind sevice"

    invoke-static {v3}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 151
    :goto_0
    return v2

    .line 143
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/zte/retrieve/cloud/account/AccountManager;->getMyService()Lorg/zx/AuthComp/IMyService;

    move-result-object v3

    invoke-interface {v3}, Lorg/zx/AuthComp/IMyService;->getToken()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 147
    :goto_1
    if-eqz v1, :cond_1

    .line 148
    const/4 v2, 0x1

    goto :goto_0

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 150
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    const-string v3, "Haven\'t get token"

    invoke-static {v3}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public openFunctionClickHandler()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    .line 49
    invoke-direct {p0}, Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;->saveCheckStatus()V

    .line 50
    iget-object v5, p0, Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v5}, Lcom/zte/retrieve/controller/Controller;->isIIupdateToIII()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;->mView:Lcom/zte/retrieve/iview/IView;

    check-cast v5, Lcom/zte/retrieve/iview/IRetrieveEntryView;

    invoke-interface {v5}, Lcom/zte/retrieve/iview/IRetrieveEntryView;->getCloudCheckStatus()I

    move-result v5

    if-ne v5, v6, :cond_0

    .line 51
    iget-object v5, p0, Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;->mView:Lcom/zte/retrieve/iview/IView;

    check-cast v5, Lcom/zte/retrieve/iview/IRetrieveEntryView;

    invoke-interface {v5}, Lcom/zte/retrieve/iview/IRetrieveEntryView;->showOpenCloudPromptDialog()V

    .line 82
    :goto_0
    return-void

    .line 52
    :cond_0
    iget-object v5, p0, Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v5}, Lcom/zte/retrieve/controller/Controller;->isIIupdateToIII()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;->mView:Lcom/zte/retrieve/iview/IView;

    check-cast v5, Lcom/zte/retrieve/iview/IRetrieveEntryView;

    invoke-interface {v5}, Lcom/zte/retrieve/iview/IRetrieveEntryView;->getCloudCheckStatus()I

    move-result v5

    if-nez v5, :cond_1

    .line 53
    iget-object v5, p0, Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;->mView:Lcom/zte/retrieve/iview/IView;

    check-cast v5, Lcom/zte/retrieve/iview/IRetrieveEntryView;

    iget-object v6, p0, Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;->mContext:Landroid/content/Context;

    const v7, 0x7f06002d

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 54
    iget-object v7, p0, Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;->mContext:Landroid/content/Context;

    const v8, 0x7f06002e

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 53
    invoke-interface {v5, v6, v7}, Lcom/zte/retrieve/iview/IRetrieveEntryView;->showLocalOpenedDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :cond_1
    const-string v5, "tiao zhuan"

    invoke-static {v5}, Lcom/zte/retrieve/utils/LogHelper;->e(Ljava/lang/String;)V

    .line 59
    invoke-static {}, Lcom/zte/retrieve/utils/config/RetrieveConfig;->isMonkeySwitch()Z

    move-result v5

    if-nez v5, :cond_4

    .line 62
    iget-object v5, p0, Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v5}, Lcom/zte/retrieve/controller/Controller;->isModeDualcard()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 63
    iget-object v5, p0, Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v5}, Lcom/zte/retrieve/controller/Controller;->getSiminfo()Lcom/zte/retrieve/service/siminfo/ISiminfoManager;

    move-result-object v5

    iget-object v7, p0, Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v7, v6}, Lcom/zte/retrieve/service/siminfo/ISiminfoManager;->getIdentificationforSimcard(Landroid/content/Context;Z)V

    .line 64
    iget-object v5, p0, Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v5}, Lcom/zte/retrieve/controller/Controller;->getSiminfo()Lcom/zte/retrieve/service/siminfo/ISiminfoManager;

    move-result-object v5

    iget-object v2, v5, Lcom/zte/retrieve/service/siminfo/ISiminfoManager;->simCardIdOne:Ljava/lang/String;

    .line 65
    .local v2, simCardID1:Ljava/lang/String;
    iget-object v5, p0, Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v5}, Lcom/zte/retrieve/controller/Controller;->getSiminfo()Lcom/zte/retrieve/service/siminfo/ISiminfoManager;

    move-result-object v5

    iget-object v3, v5, Lcom/zte/retrieve/service/siminfo/ISiminfoManager;->simCardIdTwo:Ljava/lang/String;

    .line 66
    .local v3, simCardID2:Ljava/lang/String;
    invoke-static {v2}, Lcom/zte/retrieve/utils/CommonFunctions;->isSimInfoNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v3}, Lcom/zte/retrieve/utils/CommonFunctions;->isSimInfoNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v0, v6

    .line 72
    .end local v2           #simCardID1:Ljava/lang/String;
    .end local v3           #simCardID2:Ljava/lang/String;
    .local v0, isSimNull:Z
    :goto_1
    if-eqz v0, :cond_4

    .line 73
    iget-object v5, p0, Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;->mView:Lcom/zte/retrieve/iview/IView;

    check-cast v5, Lcom/zte/retrieve/iview/IRetrieveEntryView;

    iget-object v6, p0, Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;->mContext:Landroid/content/Context;

    const v7, 0x7f060012

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/zte/retrieve/iview/IRetrieveEntryView;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 66
    .end local v0           #isSimNull:Z
    .restart local v2       #simCardID1:Ljava/lang/String;
    .restart local v3       #simCardID2:Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 68
    .end local v2           #simCardID1:Ljava/lang/String;
    .end local v3           #simCardID2:Ljava/lang/String;
    :cond_3
    new-instance v1, Lcom/zte/retrieve/utils/PhoneInfo;

    iget-object v5, p0, Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Lcom/zte/retrieve/utils/PhoneInfo;-><init>(Landroid/content/Context;)V

    .line 69
    .local v1, phoneInfo:Lcom/zte/retrieve/utils/PhoneInfo;
    invoke-virtual {v1}, Lcom/zte/retrieve/utils/PhoneInfo;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v4

    .line 70
    .local v4, simInfo:Ljava/lang/String;
    invoke-static {v4}, Lcom/zte/retrieve/utils/CommonFunctions;->isSimInfoNull(Ljava/lang/String;)Z

    move-result v0

    .restart local v0       #isSimNull:Z
    goto :goto_1

    .line 79
    .end local v0           #isSimNull:Z
    .end local v1           #phoneInfo:Lcom/zte/retrieve/utils/PhoneInfo;
    .end local v4           #simInfo:Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v5, v6}, Lcom/zte/retrieve/controller/Controller;->setRetrieveLoginPath(I)Z

    .line 80
    iget-object v5, p0, Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    iget-object v6, p0, Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;->mContext:Landroid/content/Context;

    const-class v7, Lcom/zte/retrieve/activity/SecurityPasswordActivity;

    invoke-virtual {v5, v6, v7}, Lcom/zte/retrieve/controller/Controller;->navigateTo(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_0
.end method

.method public remoteControlClickHandler()V
    .locals 3

    .prologue
    .line 89
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    iget-object v1, p0, Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/zte/retrieve/activity/RemoteInputActivity;

    invoke-virtual {v0, v1, v2}, Lcom/zte/retrieve/controller/Controller;->navigateTo(Landroid/content/Context;Ljava/lang/Class;)V

    .line 90
    return-void
.end method

.method public saveUid(Ljava/lang/String;)V
    .locals 1
    .parameter "userId"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v0, p1}, Lcom/zte/retrieve/controller/Controller;->setUid(Ljava/lang/String;)Z

    .line 162
    return-void
.end method

.method public showLocalOpenDialog()V
    .locals 4

    .prologue
    .line 187
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;->mView:Lcom/zte/retrieve/iview/IView;

    check-cast v0, Lcom/zte/retrieve/iview/IRetrieveEntryView;

    iget-object v1, p0, Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;->mContext:Landroid/content/Context;

    const v2, 0x7f06002d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 188
    iget-object v2, p0, Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;->mContext:Landroid/content/Context;

    const v3, 0x7f06002e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 187
    invoke-interface {v0, v1, v2}, Lcom/zte/retrieve/iview/IRetrieveEntryView;->showLocalOpenedDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    return-void
.end method

.method public showLoginDialog()V
    .locals 3

    .prologue
    .line 157
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;->mView:Lcom/zte/retrieve/iview/IView;

    check-cast v0, Lcom/zte/retrieve/iview/IRetrieveEntryView;

    const v1, 0x7f06003e

    const v2, 0x7f06003f

    invoke-interface {v0, v1, v2}, Lcom/zte/retrieve/iview/IRetrieveEntryView;->showLoginDialog(II)V

    .line 158
    return-void
.end method

.method public showLoginFailedDialog()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;->cloudBindController:Lcom/zte/retrieve/presenter/RetrieveEntryPresenter$NormalCloudBindPresenter;

    invoke-virtual {v0}, Lcom/zte/retrieve/presenter/RetrieveEntryPresenter$NormalCloudBindPresenter;->showLoginFailedDialog()V

    .line 184
    return-void
.end method

.method public startBindingProcess()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;->cloudBindController:Lcom/zte/retrieve/presenter/RetrieveEntryPresenter$NormalCloudBindPresenter;

    invoke-virtual {v0}, Lcom/zte/retrieve/presenter/RetrieveEntryPresenter$NormalCloudBindPresenter;->startBindingProcess()V

    .line 166
    return-void
.end method

.method public startLoginAccount()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;->mView:Lcom/zte/retrieve/iview/IView;

    check-cast v0, Lcom/zte/retrieve/iview/IRetrieveEntryView;

    invoke-interface {v0}, Lcom/zte/retrieve/iview/IRetrieveEntryView;->initAccountManager()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;->loginStatusJudged()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;->cloudBindController:Lcom/zte/retrieve/presenter/RetrieveEntryPresenter$NormalCloudBindPresenter;

    invoke-virtual {v0}, Lcom/zte/retrieve/presenter/RetrieveEntryPresenter$NormalCloudBindPresenter;->startBindingProcess()V

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    const-string v0, "user is not logined, start account manager"

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;->mView:Lcom/zte/retrieve/iview/IView;

    check-cast v0, Lcom/zte/retrieve/iview/IRetrieveEntryView;

    invoke-interface {v0}, Lcom/zte/retrieve/iview/IRetrieveEntryView;->startAccountManagerView()V

    goto :goto_0
.end method
