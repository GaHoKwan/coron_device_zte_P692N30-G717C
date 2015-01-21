.class public Lcom/zte/retrieve/presenter/AuthFailPresenter;
.super Lcom/zte/retrieve/presenter/Presenter;
.source "AuthFailPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/retrieve/presenter/AuthFailPresenter$SendSmsCallback;
    }
.end annotation

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
    .line 22
    invoke-direct {p0}, Lcom/zte/retrieve/presenter/Presenter;-><init>()V

    return-void
.end method


# virtual methods
.method public sendPwdToSecNumber()V
    .locals 6

    .prologue
    .line 25
    iget-object v4, p0, Lcom/zte/retrieve/presenter/AuthFailPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v4}, Lcom/zte/retrieve/controller/Controller;->getSecurityNum()Ljava/lang/String;

    move-result-object v2

    .line 26
    .local v2, securityNum:Ljava/lang/String;
    const/4 v1, 0x0

    .line 28
    .local v1, password:Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/zte/retrieve/presenter/AuthFailPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v4}, Lcom/zte/retrieve/controller/Controller;->getPassword()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 33
    :goto_0
    new-instance v3, Lcom/zte/retrieve/presenter/SmsHandle;

    invoke-direct {v3}, Lcom/zte/retrieve/presenter/SmsHandle;-><init>()V

    .line 34
    .local v3, smsPrsenter:Lcom/zte/retrieve/presenter/SmsHandle;
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/zte/retrieve/presenter/SmsHandle;->setMsgType(I)V

    .line 35
    iget-object v4, p0, Lcom/zte/retrieve/presenter/AuthFailPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/zte/retrieve/presenter/SmsHandle;->setContext(Landroid/content/Context;)V

    .line 36
    new-instance v4, Lcom/zte/retrieve/presenter/AuthFailPresenter$SendSmsCallback;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/zte/retrieve/presenter/AuthFailPresenter$SendSmsCallback;-><init>(Lcom/zte/retrieve/presenter/AuthFailPresenter;Lcom/zte/retrieve/presenter/AuthFailPresenter$SendSmsCallback;)V

    invoke-virtual {v3, v4}, Lcom/zte/retrieve/presenter/SmsHandle;->setCallback(Landroid/os/Handler$Callback;)V

    .line 37
    invoke-virtual {v3}, Lcom/zte/retrieve/presenter/SmsHandle;->smsRegister()V

    .line 38
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2, v1}, Lcom/zte/retrieve/presenter/SmsHandle;->onSmsSend(ILjava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-object v4, p0, Lcom/zte/retrieve/presenter/AuthFailPresenter;->mContext:Landroid/content/Context;

    const v5, 0x7f060062

    invoke-static {v4, v5}, Lcom/zte/retrieve/utils/ToastHelper;->toastShow(Landroid/content/Context;I)V

    .line 44
    return-void

    .line 29
    .end local v3           #smsPrsenter:Lcom/zte/retrieve/presenter/SmsHandle;
    :catch_0
    move-exception v0

    .line 30
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public tryAgain()V
    .locals 3

    .prologue
    .line 51
    iget-object v0, p0, Lcom/zte/retrieve/presenter/AuthFailPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    iget-object v1, p0, Lcom/zte/retrieve/presenter/AuthFailPresenter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/zte/retrieve/activity/PasswordCheckActivity;

    invoke-virtual {v0, v1, v2}, Lcom/zte/retrieve/controller/Controller;->navigateTo(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    iget-object v0, p0, Lcom/zte/retrieve/presenter/AuthFailPresenter;->mView:Lcom/zte/retrieve/iview/IView;

    invoke-interface {v0}, Lcom/zte/retrieve/iview/IView;->finish()V

    .line 53
    return-void
.end method
