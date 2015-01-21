.class public Lcom/zte/retrieve/presenter/SecurityPasswordPresenter;
.super Lcom/zte/retrieve/presenter/Presenter;
.source "SecurityPasswordPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zte/retrieve/presenter/Presenter",
        "<",
        "Lcom/zte/retrieve/iview/IPasswordAffirmView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/zte/retrieve/presenter/Presenter;-><init>()V

    return-void
.end method


# virtual methods
.method public checkPasswordLength(Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 4
    .parameter "str1"
    .parameter "str2"
    .parameter "minLen"
    .parameter "maxLen"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 33
    invoke-static {}, Lcom/zte/retrieve/utils/config/RetrieveConfig;->isMonkeySwitch()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Lcom/zte/retrieve/utils/TextHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 46
    :cond_0
    :goto_0
    return v0

    .line 37
    :cond_1
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 38
    iget-object v0, p0, Lcom/zte/retrieve/presenter/SecurityPasswordPresenter;->mView:Lcom/zte/retrieve/iview/IView;

    check-cast v0, Lcom/zte/retrieve/iview/IPasswordAffirmView;

    iget-object v2, p0, Lcom/zte/retrieve/presenter/SecurityPasswordPresenter;->mContext:Landroid/content/Context;

    const v3, 0x7f06001a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/zte/retrieve/iview/IPasswordAffirmView;->showToast(Ljava/lang/String;)V

    move v0, v1

    .line 39
    goto :goto_0

    .line 41
    :cond_2
    invoke-static {p1, p3, p4}, Lcom/zte/retrieve/utils/TextHelper;->isValidLength(Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p2, p3, p4}, Lcom/zte/retrieve/utils/TextHelper;->isValidLength(Ljava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 42
    :cond_3
    iget-object v0, p0, Lcom/zte/retrieve/presenter/SecurityPasswordPresenter;->mView:Lcom/zte/retrieve/iview/IView;

    check-cast v0, Lcom/zte/retrieve/iview/IPasswordAffirmView;

    iget-object v2, p0, Lcom/zte/retrieve/presenter/SecurityPasswordPresenter;->mContext:Landroid/content/Context;

    const v3, 0x7f06001b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/zte/retrieve/iview/IPasswordAffirmView;->showToast(Ljava/lang/String;)V

    move v0, v1

    .line 43
    goto :goto_0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/zte/retrieve/presenter/SecurityPasswordPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    iget-object v1, p0, Lcom/zte/retrieve/presenter/SecurityPasswordPresenter;->mView:Lcom/zte/retrieve/iview/IView;

    invoke-virtual {v0, v1}, Lcom/zte/retrieve/controller/Controller;->addPendingActivity(Lcom/zte/retrieve/iview/IView;)V

    .line 20
    iget-object v0, p0, Lcom/zte/retrieve/presenter/SecurityPasswordPresenter;->mView:Lcom/zte/retrieve/iview/IView;

    check-cast v0, Lcom/zte/retrieve/iview/IPasswordAffirmView;

    invoke-interface {v0}, Lcom/zte/retrieve/iview/IPasswordAffirmView;->checkEmptyInput()V

    .line 21
    return-void
.end method

.method public isPasswordEmpty(Ljava/lang/String;)Z
    .locals 1
    .parameter "str"

    .prologue
    .line 24
    invoke-static {p1}, Lcom/zte/retrieve/utils/TextHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public savePassword(Ljava/lang/String;)V
    .locals 3
    .parameter "str"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/zte/retrieve/presenter/SecurityPasswordPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v0, p1}, Lcom/zte/retrieve/controller/Controller;->setPassword(Ljava/lang/String;)Z

    .line 58
    iget-object v0, p0, Lcom/zte/retrieve/presenter/SecurityPasswordPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    iget-object v1, p0, Lcom/zte/retrieve/presenter/SecurityPasswordPresenter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;

    invoke-virtual {v0, v1, v2}, Lcom/zte/retrieve/controller/Controller;->navigateTo(Landroid/content/Context;Ljava/lang/Class;)V

    .line 59
    return-void
.end method
