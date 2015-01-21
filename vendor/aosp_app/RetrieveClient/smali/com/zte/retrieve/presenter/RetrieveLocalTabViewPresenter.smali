.class public Lcom/zte/retrieve/presenter/RetrieveLocalTabViewPresenter;
.super Lcom/zte/retrieve/presenter/Presenter;
.source "RetrieveLocalTabViewPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zte/retrieve/presenter/Presenter",
        "<",
        "Lcom/zte/retrieve/iview/IRetrieveLocalControlView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/zte/retrieve/presenter/Presenter;-><init>()V

    return-void
.end method

.method private reactiveRetrieve()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveLocalTabViewPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    iget-object v1, p0, Lcom/zte/retrieve/presenter/RetrieveLocalTabViewPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/zte/retrieve/controller/Controller;->setICCIDConfigFile(Landroid/content/Context;)V

    .line 63
    return-void
.end method


# virtual methods
.method public activeButtonClick()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 71
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveLocalTabViewPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v0}, Lcom/zte/retrieve/controller/Controller;->isLocalActiveStatus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveLocalTabViewPresenter;->mView:Lcom/zte/retrieve/iview/IView;

    check-cast v0, Lcom/zte/retrieve/iview/IRetrieveLocalControlView;

    invoke-interface {v0, v1}, Lcom/zte/retrieve/iview/IRetrieveLocalControlView;->setActiveViewSwitch(Z)V

    .line 73
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveLocalTabViewPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v0, v1}, Lcom/zte/retrieve/controller/Controller;->setLocalActiveStatus(I)Z

    .line 74
    invoke-direct {p0}, Lcom/zte/retrieve/presenter/RetrieveLocalTabViewPresenter;->reactiveRetrieve()V

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveLocalTabViewPresenter;->mView:Lcom/zte/retrieve/iview/IView;

    check-cast v0, Lcom/zte/retrieve/iview/IRetrieveLocalControlView;

    iget-object v1, p0, Lcom/zte/retrieve/presenter/RetrieveLocalTabViewPresenter;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/zte/retrieve/iview/IRetrieveLocalControlView;->showCloseDialog(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public disableRetrieve()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveLocalTabViewPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v0}, Lcom/zte/retrieve/controller/Controller;->isCloudActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveLocalTabViewPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v0}, Lcom/zte/retrieve/controller/Controller;->cleanIMSIConfig()V

    .line 55
    :cond_0
    return-void
.end method

.method public getActiveStatus()Z
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveLocalTabViewPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v0}, Lcom/zte/retrieve/controller/Controller;->isLocalActiveStatus()Z

    move-result v0

    return v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveLocalTabViewPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v0}, Lcom/zte/retrieve/controller/Controller;->closePendingActivity()V

    .line 28
    return-void
.end method

.method public instructBackupClick()V
    .locals 5

    .prologue
    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "smsto:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/zte/retrieve/presenter/RetrieveLocalTabViewPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v3}, Lcom/zte/retrieve/controller/Controller;->getSecurityNum()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, urlString:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 43
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "sms_body"

    iget-object v3, p0, Lcom/zte/retrieve/presenter/RetrieveLocalTabViewPresenter;->mContext:Landroid/content/Context;

    const v4, 0x7f060079

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    iget-object v2, p0, Lcom/zte/retrieve/presenter/RetrieveLocalTabViewPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 45
    return-void
.end method

.method public instructPresentClick(Ljava/lang/String;)V
    .locals 4
    .parameter "itemFlag"

    .prologue
    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .local v0, paraList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/retrieve/controller/IntentParaInfo;>;"
    new-instance v1, Lcom/zte/retrieve/controller/IntentParaInfo;

    const-string v2, "securityParamType"

    invoke-direct {v1, v2, p1}, Lcom/zte/retrieve/controller/IntentParaInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    iget-object v1, p0, Lcom/zte/retrieve/presenter/RetrieveLocalTabViewPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    iget-object v2, p0, Lcom/zte/retrieve/presenter/RetrieveLocalTabViewPresenter;->mContext:Landroid/content/Context;

    const-class v3, Lcom/zte/retrieve/activity/InstructGuideViewActivity;

    invoke-virtual {v1, v2, v3, v0}, Lcom/zte/retrieve/controller/Controller;->navigateTo(Landroid/content/Context;Ljava/lang/Class;Ljava/util/ArrayList;)V

    .line 34
    return-void
.end method

.method public isPasswordCorrect(Ljava/lang/String;)Z
    .locals 3
    .parameter "password"

    .prologue
    .line 95
    const/4 v0, 0x0

    .line 97
    .local v0, correctPwd:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/zte/retrieve/presenter/RetrieveLocalTabViewPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v2}, Lcom/zte/retrieve/controller/Controller;->getPassword()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 101
    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 102
    const/4 v2, 0x1

    .line 104
    :goto_1
    return v2

    .line 98
    :catch_0
    move-exception v1

    .line 99
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 104
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public remoteControlClick()V
    .locals 3

    .prologue
    .line 48
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveLocalTabViewPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    iget-object v1, p0, Lcom/zte/retrieve/presenter/RetrieveLocalTabViewPresenter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/zte/retrieve/activity/RemoteInputActivity;

    invoke-virtual {v0, v1, v2}, Lcom/zte/retrieve/controller/Controller;->navigateTo(Landroid/content/Context;Ljava/lang/Class;)V

    .line 49
    return-void
.end method

.method public setDialogCancelAble(Landroid/content/DialogInterface;Z)V
    .locals 4
    .parameter "dialog"
    .parameter "cancelAble"

    .prologue
    .line 81
    const/4 v1, 0x0

    .line 84
    .local v1, field:Ljava/lang/reflect/Field;
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mShowing"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 85
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 87
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 88
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_0
    return-void

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
