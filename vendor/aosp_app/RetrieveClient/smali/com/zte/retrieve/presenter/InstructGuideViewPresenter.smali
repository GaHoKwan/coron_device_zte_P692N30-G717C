.class public Lcom/zte/retrieve/presenter/InstructGuideViewPresenter;
.super Lcom/zte/retrieve/presenter/Presenter;
.source "InstructGuideViewPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zte/retrieve/presenter/Presenter",
        "<",
        "Lcom/zte/retrieve/iview/IRemoteActiveBusinessView;",
        ">;"
    }
.end annotation


# instance fields
.field public listenFlag:Z

.field private mInstrOper:Lcom/zte/retrieve/service/instruct/InstructionOperator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/zte/retrieve/presenter/Presenter;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/retrieve/presenter/InstructGuideViewPresenter;->listenFlag:Z

    .line 21
    return-void
.end method


# virtual methods
.method public getViewFrom()Z
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/zte/retrieve/presenter/InstructGuideViewPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v0}, Lcom/zte/retrieve/controller/Controller;->isFromAuthRetrieveView()Z

    move-result v0

    return v0
.end method

.method public getViewNumber()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 31
    iget-object v2, p0, Lcom/zte/retrieve/presenter/InstructGuideViewPresenter;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 32
    .local v0, mBundle:Landroid/os/Bundle;
    if-nez v0, :cond_0

    move v2, v3

    .line 48
    :goto_0
    return v2

    .line 35
    :cond_0
    const-string v2, "securityParamType"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 37
    .local v1, typeStr:Ljava/lang/String;
    const-string v2, "lock"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const-string v2, "ring"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 40
    const/4 v2, 0x1

    goto :goto_0

    .line 41
    :cond_2
    const-string v2, "locate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 42
    const/4 v2, 0x2

    goto :goto_0

    .line 43
    :cond_3
    const-string v2, "erase"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 44
    const/4 v2, 0x3

    goto :goto_0

    .line 45
    :cond_4
    const-string v2, "findkey"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 46
    const/4 v2, 0x4

    goto :goto_0

    :cond_5
    move v2, v3

    .line 48
    goto :goto_0
.end method

.method public handleListenClick()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 74
    iget-boolean v0, p0, Lcom/zte/retrieve/presenter/InstructGuideViewPresenter;->listenFlag:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/zte/retrieve/presenter/InstructGuideViewPresenter;->listenFlag:Z

    .line 75
    iget-object v0, p0, Lcom/zte/retrieve/presenter/InstructGuideViewPresenter;->mInstrOper:Lcom/zte/retrieve/service/instruct/InstructionOperator;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcom/zte/retrieve/service/instruct/InstructionOperator;

    iget-object v3, p0, Lcom/zte/retrieve/presenter/InstructGuideViewPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/zte/retrieve/service/instruct/InstructionOperator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/retrieve/presenter/InstructGuideViewPresenter;->mInstrOper:Lcom/zte/retrieve/service/instruct/InstructionOperator;

    .line 78
    :cond_0
    iget-boolean v0, p0, Lcom/zte/retrieve/presenter/InstructGuideViewPresenter;->listenFlag:Z

    if-eqz v0, :cond_2

    .line 79
    iget-object v0, p0, Lcom/zte/retrieve/presenter/InstructGuideViewPresenter;->mInstrOper:Lcom/zte/retrieve/service/instruct/InstructionOperator;

    invoke-virtual {v0, v2}, Lcom/zte/retrieve/service/instruct/InstructionOperator;->preListen(Z)I

    .line 80
    iget-object v0, p0, Lcom/zte/retrieve/presenter/InstructGuideViewPresenter;->mView:Lcom/zte/retrieve/iview/IView;

    check-cast v0, Lcom/zte/retrieve/iview/IRemoteActiveBusinessView;

    const v1, 0x7f060098

    const v2, 0x7f02000d

    invoke-interface {v0, v1, v2}, Lcom/zte/retrieve/iview/IRemoteActiveBusinessView;->setTextAndImage(II)V

    .line 85
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 74
    goto :goto_0

    .line 82
    :cond_2
    iget-object v0, p0, Lcom/zte/retrieve/presenter/InstructGuideViewPresenter;->mInstrOper:Lcom/zte/retrieve/service/instruct/InstructionOperator;

    invoke-virtual {v0, v1}, Lcom/zte/retrieve/service/instruct/InstructionOperator;->preListen(Z)I

    .line 83
    iget-object v0, p0, Lcom/zte/retrieve/presenter/InstructGuideViewPresenter;->mView:Lcom/zte/retrieve/iview/IView;

    check-cast v0, Lcom/zte/retrieve/iview/IRemoteActiveBusinessView;

    const v1, 0x7f060097

    const v2, 0x7f020009

    invoke-interface {v0, v1, v2}, Lcom/zte/retrieve/iview/IRemoteActiveBusinessView;->setTextAndImage(II)V

    goto :goto_1
.end method

.method public init()V
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/zte/retrieve/presenter/InstructGuideViewPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    iget-object v1, p0, Lcom/zte/retrieve/presenter/InstructGuideViewPresenter;->mView:Lcom/zte/retrieve/iview/IView;

    invoke-virtual {v0, v1}, Lcom/zte/retrieve/controller/Controller;->addPendingActivity(Lcom/zte/retrieve/iview/IView;)V

    .line 28
    return-void
.end method

.method public jumpToRetrieveMasterView()V
    .locals 3

    .prologue
    .line 105
    iget-object v0, p0, Lcom/zte/retrieve/presenter/InstructGuideViewPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    iget-object v1, p0, Lcom/zte/retrieve/presenter/InstructGuideViewPresenter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;

    invoke-virtual {v0, v1, v2}, Lcom/zte/retrieve/controller/Controller;->navigateTo(Landroid/content/Context;Ljava/lang/Class;)V

    .line 106
    iget-object v0, p0, Lcom/zte/retrieve/presenter/InstructGuideViewPresenter;->mView:Lcom/zte/retrieve/iview/IView;

    check-cast v0, Lcom/zte/retrieve/iview/IRemoteActiveBusinessView;

    invoke-interface {v0}, Lcom/zte/retrieve/iview/IRemoteActiveBusinessView;->finish()V

    .line 107
    return-void
.end method

.method public sendSmsCommand()V
    .locals 5

    .prologue
    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "smsto:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/zte/retrieve/presenter/InstructGuideViewPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v3}, Lcom/zte/retrieve/controller/Controller;->getSecurityNum()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, urlString:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 100
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "sms_body"

    iget-object v3, p0, Lcom/zte/retrieve/presenter/InstructGuideViewPresenter;->mContext:Landroid/content/Context;

    const v4, 0x7f060079

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    iget-object v2, p0, Lcom/zte/retrieve/presenter/InstructGuideViewPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 102
    return-void
.end method

.method public setBtnVisiblity()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 53
    iget-object v2, p0, Lcom/zte/retrieve/presenter/InstructGuideViewPresenter;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 54
    .local v0, mBundle:Landroid/os/Bundle;
    if-nez v0, :cond_0

    move v2, v3

    .line 69
    :goto_0
    return v2

    .line 57
    :cond_0
    const-string v2, "securityParamType"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, typeStr:Ljava/lang/String;
    if-nez v1, :cond_1

    move v2, v3

    .line 59
    goto :goto_0

    .line 62
    :cond_1
    const-string v2, "lock"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 63
    const-string v2, "ring"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 64
    const-string v2, "erase"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 65
    const-string v2, "locate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 66
    const-string v2, "findkey"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 67
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    move v2, v3

    .line 69
    goto :goto_0
.end method

.method public stopPreListen()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 89
    iget-object v0, p0, Lcom/zte/retrieve/presenter/InstructGuideViewPresenter;->mInstrOper:Lcom/zte/retrieve/service/instruct/InstructionOperator;

    if-nez v0, :cond_0

    .line 95
    :goto_0
    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/zte/retrieve/presenter/InstructGuideViewPresenter;->mInstrOper:Lcom/zte/retrieve/service/instruct/InstructionOperator;

    invoke-virtual {v0, v3}, Lcom/zte/retrieve/service/instruct/InstructionOperator;->preListen(Z)I

    .line 93
    iget-object v0, p0, Lcom/zte/retrieve/presenter/InstructGuideViewPresenter;->mView:Lcom/zte/retrieve/iview/IView;

    check-cast v0, Lcom/zte/retrieve/iview/IRemoteActiveBusinessView;

    const v1, 0x7f060097

    const v2, 0x7f020009

    invoke-interface {v0, v1, v2}, Lcom/zte/retrieve/iview/IRemoteActiveBusinessView;->setTextAndImage(II)V

    .line 94
    iput-boolean v3, p0, Lcom/zte/retrieve/presenter/InstructGuideViewPresenter;->listenFlag:Z

    goto :goto_0
.end method
