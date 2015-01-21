.class public Lcom/zte/retrieve/presenter/PasswordResetPresenter;
.super Lcom/zte/retrieve/presenter/Presenter;
.source "PasswordResetPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zte/retrieve/presenter/Presenter",
        "<",
        "Lcom/zte/retrieve/iview/IView;",
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
.method public cancelButtonHandle()V
    .locals 4

    .prologue
    .line 65
    iget-object v0, p0, Lcom/zte/retrieve/presenter/PasswordResetPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    iget-object v1, p0, Lcom/zte/retrieve/presenter/PasswordResetPresenter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/zte/retrieve/activity/RetrieveInfoSettingActivity;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/zte/retrieve/controller/Controller;->navigateToExistActivity(Landroid/content/Context;Ljava/lang/Class;Ljava/util/ArrayList;)V

    .line 66
    iget-object v0, p0, Lcom/zte/retrieve/presenter/PasswordResetPresenter;->mView:Lcom/zte/retrieve/iview/IView;

    invoke-interface {v0}, Lcom/zte/retrieve/iview/IView;->finish()V

    .line 67
    return-void
.end method

.method public checkPasswordLength(Ljava/lang/String;II)Z
    .locals 1
    .parameter "str"
    .parameter "minLen"
    .parameter "maxLen"

    .prologue
    .line 31
    invoke-static {p1, p2, p3}, Lcom/zte/retrieve/utils/TextHelper;->isValidLength(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public isPasswordEmpty(Ljava/lang/String;)Z
    .locals 3
    .parameter "str"

    .prologue
    .line 18
    invoke-static {p1}, Lcom/zte/retrieve/utils/TextHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    .line 19
    .local v0, bResult:Z
    if-eqz v0, :cond_0

    .line 20
    iget-object v1, p0, Lcom/zte/retrieve/presenter/PasswordResetPresenter;->mContext:Landroid/content/Context;

    const v2, 0x7f060002

    invoke-static {v1, v2}, Lcom/zte/retrieve/utils/ToastHelper;->toastShow(Landroid/content/Context;I)V

    .line 23
    :cond_0
    return v0
.end method

.method public resetPassword(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "strNew"
    .parameter "strVerify"

    .prologue
    .line 40
    const/4 v0, 0x0

    .line 41
    .local v0, checkLen:Z
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 42
    const/4 v2, 0x6

    const/16 v3, 0xc

    invoke-virtual {p0, p1, v2, v3}, Lcom/zte/retrieve/presenter/PasswordResetPresenter;->checkPasswordLength(Ljava/lang/String;II)Z

    move-result v0

    .line 43
    if-eqz v0, :cond_0

    .line 45
    :try_start_0
    iget-object v2, p0, Lcom/zte/retrieve/presenter/PasswordResetPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v2, p1}, Lcom/zte/retrieve/controller/Controller;->setPassword(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :goto_0
    iget-object v2, p0, Lcom/zte/retrieve/presenter/PasswordResetPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    iget-object v3, p0, Lcom/zte/retrieve/presenter/PasswordResetPresenter;->mContext:Landroid/content/Context;

    const-class v4, Lcom/zte/retrieve/activity/RetrieveInfoSettingActivity;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/zte/retrieve/controller/Controller;->navigateToExistActivity(Landroid/content/Context;Ljava/lang/Class;Ljava/util/ArrayList;)V

    .line 50
    iget-object v2, p0, Lcom/zte/retrieve/presenter/PasswordResetPresenter;->mContext:Landroid/content/Context;

    const v3, 0x7f06006e

    invoke-static {v2, v3}, Lcom/zte/retrieve/utils/ToastHelper;->toastShow(Landroid/content/Context;I)V

    .line 51
    iget-object v2, p0, Lcom/zte/retrieve/presenter/PasswordResetPresenter;->mView:Lcom/zte/retrieve/iview/IView;

    invoke-interface {v2}, Lcom/zte/retrieve/iview/IView;->finish()V

    .line 58
    :goto_1
    return-void

    .line 46
    :catch_0
    move-exception v1

    .line 47
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 53
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    iget-object v2, p0, Lcom/zte/retrieve/presenter/PasswordResetPresenter;->mContext:Landroid/content/Context;

    const v3, 0x7f06001b

    invoke-static {v2, v3}, Lcom/zte/retrieve/utils/ToastHelper;->toastShow(Landroid/content/Context;I)V

    goto :goto_1

    .line 56
    :cond_1
    iget-object v2, p0, Lcom/zte/retrieve/presenter/PasswordResetPresenter;->mContext:Landroid/content/Context;

    const v3, 0x7f06001a

    invoke-static {v2, v3}, Lcom/zte/retrieve/utils/ToastHelper;->toastShow(Landroid/content/Context;I)V

    goto :goto_1
.end method
