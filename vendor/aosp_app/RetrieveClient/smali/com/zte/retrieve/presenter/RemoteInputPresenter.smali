.class public Lcom/zte/retrieve/presenter/RemoteInputPresenter;
.super Lcom/zte/retrieve/presenter/Presenter;
.source "RemoteInputPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zte/retrieve/presenter/Presenter",
        "<",
        "Lcom/zte/retrieve/iview/IRemoteInputView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/zte/retrieve/presenter/Presenter;-><init>()V

    return-void
.end method


# virtual methods
.method public handleOKBtnClick(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "lostPhoneNum"
    .parameter "funcPassword"

    .prologue
    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/zte/retrieve/presenter/RemoteInputPresenter;->isCheckInputNull(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    :goto_0
    return-void

    .line 28
    :cond_0
    invoke-static {p1}, Lcom/zte/retrieve/utils/TextHelper;->isPhoneNum(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 29
    iget-object v1, p0, Lcom/zte/retrieve/presenter/RemoteInputPresenter;->mView:Lcom/zte/retrieve/iview/IView;

    check-cast v1, Lcom/zte/retrieve/iview/IRemoteInputView;

    iget-object v2, p0, Lcom/zte/retrieve/presenter/RemoteInputPresenter;->mContext:Landroid/content/Context;

    const v3, 0x7f06003c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/zte/retrieve/iview/IRemoteInputView;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 32
    :cond_1
    const/4 v1, 0x6

    const/16 v2, 0xc

    invoke-static {p2, v1, v2}, Lcom/zte/retrieve/utils/TextHelper;->isValidLength(Ljava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_2

    .line 33
    iget-object v1, p0, Lcom/zte/retrieve/presenter/RemoteInputPresenter;->mView:Lcom/zte/retrieve/iview/IView;

    check-cast v1, Lcom/zte/retrieve/iview/IRemoteInputView;

    iget-object v2, p0, Lcom/zte/retrieve/presenter/RemoteInputPresenter;->mContext:Landroid/content/Context;

    const v3, 0x7f06001b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/zte/retrieve/iview/IRemoteInputView;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 36
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .local v0, paraList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/retrieve/controller/IntentParaInfo;>;"
    new-instance v1, Lcom/zte/retrieve/controller/IntentParaInfo;

    const-string v2, "lostPhoneNum"

    invoke-direct {v1, v2, p1}, Lcom/zte/retrieve/controller/IntentParaInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    new-instance v1, Lcom/zte/retrieve/controller/IntentParaInfo;

    const-string v2, "funcPassword"

    invoke-direct {v1, v2, p2}, Lcom/zte/retrieve/controller/IntentParaInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    iget-object v1, p0, Lcom/zte/retrieve/presenter/RemoteInputPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    iget-object v2, p0, Lcom/zte/retrieve/presenter/RemoteInputPresenter;->mContext:Landroid/content/Context;

    const-class v3, Lcom/zte/retrieve/activity/RemoteControlActivity;

    invoke-virtual {v1, v2, v3, v0}, Lcom/zte/retrieve/controller/Controller;->navigateToExistActivity(Landroid/content/Context;Ljava/lang/Class;Ljava/util/ArrayList;)V

    .line 40
    iget-object v1, p0, Lcom/zte/retrieve/presenter/RemoteInputPresenter;->mView:Lcom/zte/retrieve/iview/IView;

    check-cast v1, Lcom/zte/retrieve/iview/IRemoteInputView;

    invoke-interface {v1}, Lcom/zte/retrieve/iview/IRemoteInputView;->finish()V

    goto :goto_0
.end method

.method public init()V
    .locals 4

    .prologue
    .line 54
    const/4 v0, 0x0

    .line 56
    .local v0, mBundle:Landroid/os/Bundle;
    iget-object v3, p0, Lcom/zte/retrieve/presenter/RemoteInputPresenter;->mView:Lcom/zte/retrieve/iview/IView;

    check-cast v3, Lcom/zte/retrieve/iview/IRemoteInputView;

    invoke-interface {v3}, Lcom/zte/retrieve/iview/IRemoteInputView;->checkPhoneNumberInput()V

    .line 57
    iget-object v3, p0, Lcom/zte/retrieve/presenter/RemoteInputPresenter;->mView:Lcom/zte/retrieve/iview/IView;

    check-cast v3, Lcom/zte/retrieve/iview/IRemoteInputView;

    invoke-interface {v3}, Lcom/zte/retrieve/iview/IRemoteInputView;->checkSecurityPasswordInput()V

    .line 59
    iget-object v3, p0, Lcom/zte/retrieve/presenter/RemoteInputPresenter;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 60
    if-nez v0, :cond_1

    .line 61
    iget-object v3, p0, Lcom/zte/retrieve/presenter/RemoteInputPresenter;->mView:Lcom/zte/retrieve/iview/IView;

    check-cast v3, Lcom/zte/retrieve/iview/IRemoteInputView;

    invoke-interface {v3}, Lcom/zte/retrieve/iview/IRemoteInputView;->setConfirmButtonGray()V

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    const-string v3, "lostPhoneNum"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, remotePB:Ljava/lang/String;
    const-string v3, "funcPassword"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, remotePwd:Ljava/lang/String;
    invoke-static {v1}, Lcom/zte/retrieve/utils/TextHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Lcom/zte/retrieve/utils/TextHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 68
    iget-object v3, p0, Lcom/zte/retrieve/presenter/RemoteInputPresenter;->mView:Lcom/zte/retrieve/iview/IView;

    check-cast v3, Lcom/zte/retrieve/iview/IRemoteInputView;

    invoke-interface {v3, v1, v2}, Lcom/zte/retrieve/iview/IRemoteInputView;->setText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isCheckInputNull(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "lostPhoneNum"
    .parameter "funcPassword"

    .prologue
    const/4 v0, 0x1

    .line 44
    invoke-static {p1}, Lcom/zte/retrieve/utils/TextHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 49
    :cond_0
    :goto_0
    return v0

    .line 46
    :cond_1
    invoke-static {p2}, Lcom/zte/retrieve/utils/TextHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 49
    const/4 v0, 0x0

    goto :goto_0
.end method
