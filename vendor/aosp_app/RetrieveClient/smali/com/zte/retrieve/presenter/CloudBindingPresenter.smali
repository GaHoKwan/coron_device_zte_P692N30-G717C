.class public abstract Lcom/zte/retrieve/presenter/CloudBindingPresenter;
.super Lcom/zte/retrieve/presenter/Presenter;
.source "CloudBindingPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zte/retrieve/presenter/Presenter",
        "<",
        "Lcom/zte/retrieve/iview/IView;",
        ">;"
    }
.end annotation


# instance fields
.field private mLoginHandler:Landroid/os/Handler;

.field private mView:Lcom/zte/retrieve/iview/ICloudBindingControlView;

.field private m_pDialog:Landroid/app/ProgressDialog;

.field private userinfo:Lcom/zte/retrieve/cloud/UserInfo;


# direct methods
.method public constructor <init>(Lcom/zte/retrieve/iview/ICloudBindingControlView;Landroid/content/Context;)V
    .locals 0
    .parameter "view"
    .parameter "context"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/zte/retrieve/presenter/Presenter;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/zte/retrieve/presenter/CloudBindingPresenter;->mView:Lcom/zte/retrieve/iview/ICloudBindingControlView;

    .line 50
    iput-object p2, p0, Lcom/zte/retrieve/presenter/CloudBindingPresenter;->mContext:Landroid/content/Context;

    .line 51
    invoke-direct {p0}, Lcom/zte/retrieve/presenter/CloudBindingPresenter;->createBindingHandler()V

    .line 52
    return-void
.end method

.method static synthetic access$0(Lcom/zte/retrieve/presenter/CloudBindingPresenter;)Lcom/zte/retrieve/cloud/UserInfo;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/zte/retrieve/presenter/CloudBindingPresenter;->userinfo:Lcom/zte/retrieve/cloud/UserInfo;

    return-object v0
.end method

.method static synthetic access$1(Lcom/zte/retrieve/presenter/CloudBindingPresenter;Lcom/zte/retrieve/cloud/UserInfo;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 154
    invoke-direct {p0, p1}, Lcom/zte/retrieve/presenter/CloudBindingPresenter;->bind(Lcom/zte/retrieve/cloud/UserInfo;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lcom/zte/retrieve/presenter/CloudBindingPresenter;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/zte/retrieve/presenter/CloudBindingPresenter;->mLoginHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3(Lcom/zte/retrieve/presenter/CloudBindingPresenter;Landroid/os/Handler;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 170
    invoke-direct {p0, p1, p2, p3}, Lcom/zte/retrieve/presenter/CloudBindingPresenter;->sendMsg(Landroid/os/Handler;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$4(Lcom/zte/retrieve/presenter/CloudBindingPresenter;Lcom/zte/retrieve/cloud/UserInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 258
    invoke-direct {p0, p1}, Lcom/zte/retrieve/presenter/CloudBindingPresenter;->handleCloudActiveSuccess(Lcom/zte/retrieve/cloud/UserInfo;)V

    return-void
.end method

.method static synthetic access$5(Lcom/zte/retrieve/presenter/CloudBindingPresenter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 206
    invoke-direct {p0, p1, p2}, Lcom/zte/retrieve/presenter/CloudBindingPresenter;->showNetErrorDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6(Lcom/zte/retrieve/presenter/CloudBindingPresenter;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 280
    invoke-direct {p0, p1}, Lcom/zte/retrieve/presenter/CloudBindingPresenter;->promptBindingResult(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7(Lcom/zte/retrieve/presenter/CloudBindingPresenter;)Lcom/zte/retrieve/iview/ICloudBindingControlView;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/zte/retrieve/presenter/CloudBindingPresenter;->mView:Lcom/zte/retrieve/iview/ICloudBindingControlView;

    return-object v0
.end method

.method private activation(Lcom/zte/retrieve/cloud/UserInfo;)I
    .locals 2
    .parameter "userinfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 252
    const-string v1, "SecuritySMSActivityPresenter_activation: activetype=1"

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 253
    new-instance v0, Lcom/zte/retrieve/cloud/PRControl;

    iget-object v1, p0, Lcom/zte/retrieve/presenter/CloudBindingPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/zte/retrieve/cloud/PRControl;-><init>(Landroid/content/Context;)V

    .line 255
    .local v0, prcontrol:Lcom/zte/retrieve/cloud/PRControl;
    invoke-virtual {v0, p1}, Lcom/zte/retrieve/cloud/PRControl;->sendActivationRequest(Lcom/zte/retrieve/cloud/UserInfo;)I

    move-result v1

    return v1
.end method

.method private bind(Lcom/zte/retrieve/cloud/UserInfo;)I
    .locals 3
    .parameter "userinfo"

    .prologue
    .line 155
    const/4 v1, -0x2

    .line 157
    .local v1, rc:I
    if-nez p1, :cond_0

    move v2, v1

    .line 167
    .end local v1           #rc:I
    .local v2, rc:I
    :goto_0
    return v2

    .line 161
    .end local v2           #rc:I
    .restart local v1       #rc:I
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/zte/retrieve/presenter/CloudBindingPresenter;->activation(Lcom/zte/retrieve/cloud/UserInfo;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 167
    .end local v1           #rc:I
    .restart local v2       #rc:I
    goto :goto_0

    .line 163
    .end local v2           #rc:I
    .restart local v1       #rc:I
    :catch_0
    move-exception v0

    .line 164
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private bindPhone()V
    .locals 4

    .prologue
    .line 91
    const-string v1, ""

    iget-object v2, p0, Lcom/zte/retrieve/presenter/CloudBindingPresenter;->mContext:Landroid/content/Context;

    const v3, 0x7f0600a0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/zte/retrieve/presenter/CloudBindingPresenter;->showProgressDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    new-instance v0, Lcom/zte/retrieve/presenter/CloudBindingPresenter$1;

    invoke-direct {v0, p0}, Lcom/zte/retrieve/presenter/CloudBindingPresenter$1;-><init>(Lcom/zte/retrieve/presenter/CloudBindingPresenter;)V

    .line 123
    .local v0, thLogIn:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 124
    return-void
.end method

.method private createBindingHandler()V
    .locals 1

    .prologue
    .line 182
    new-instance v0, Lcom/zte/retrieve/presenter/CloudBindingPresenter$2;

    invoke-direct {v0, p0}, Lcom/zte/retrieve/presenter/CloudBindingPresenter$2;-><init>(Lcom/zte/retrieve/presenter/CloudBindingPresenter;)V

    iput-object v0, p0, Lcom/zte/retrieve/presenter/CloudBindingPresenter;->mLoginHandler:Landroid/os/Handler;

    .line 204
    return-void
.end method

.method private handleCloudActiveSuccess(Lcom/zte/retrieve/cloud/UserInfo;)V
    .locals 2
    .parameter "userinfo"

    .prologue
    .line 259
    iget-object v0, p0, Lcom/zte/retrieve/presenter/CloudBindingPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {p1}, Lcom/zte/retrieve/cloud/UserInfo;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/retrieve/controller/Controller;->setUid(Ljava/lang/String;)Z

    .line 262
    iget-object v0, p0, Lcom/zte/retrieve/presenter/CloudBindingPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    iget-object v1, p0, Lcom/zte/retrieve/presenter/CloudBindingPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/zte/retrieve/controller/Controller;->isIccidExist(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/zte/retrieve/presenter/CloudBindingPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    iget-object v1, p0, Lcom/zte/retrieve/presenter/CloudBindingPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/zte/retrieve/controller/Controller;->setICCIDConfigFile(Landroid/content/Context;)V

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/zte/retrieve/presenter/CloudBindingPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zte/retrieve/controller/Controller;->setCloudActiveStatus(I)Z

    .line 266
    iget-object v0, p0, Lcom/zte/retrieve/presenter/CloudBindingPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {p1}, Lcom/zte/retrieve/cloud/UserInfo;->getSecurityNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/retrieve/controller/Controller;->setSecurityNum(Ljava/lang/String;)Z

    .line 267
    iget-object v0, p0, Lcom/zte/retrieve/presenter/CloudBindingPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v0}, Lcom/zte/retrieve/controller/Controller;->isLocalActiveStatus()Z

    move-result v0

    if-nez v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/zte/retrieve/presenter/CloudBindingPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    iget-object v1, p0, Lcom/zte/retrieve/presenter/CloudBindingPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/zte/retrieve/controller/Controller;->startService(Landroid/content/Context;)V

    .line 271
    :cond_1
    invoke-virtual {p0}, Lcom/zte/retrieve/presenter/CloudBindingPresenter;->displayBindingResultView()V

    .line 272
    return-void
.end method

.method private initCloudActiveInfo()Lcom/zte/retrieve/cloud/UserInfo;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zte/retrieve/exception/InvalidRequestParaException;
        }
    .end annotation

    .prologue
    .line 71
    new-instance v4, Lcom/zte/retrieve/utils/PhoneInfo;

    iget-object v5, p0, Lcom/zte/retrieve/presenter/CloudBindingPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/zte/retrieve/utils/PhoneInfo;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Lcom/zte/retrieve/utils/PhoneInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, IMEI:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "initCloudActiveInfo get IMEI is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 74
    invoke-static {v0}, Lcom/zte/retrieve/utils/TextHelper;->isIMEIValid(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 75
    new-instance v4, Lcom/zte/retrieve/exception/InvalidRequestParaException;

    const-string v5, "bad imei"

    invoke-direct {v4, v5}, Lcom/zte/retrieve/exception/InvalidRequestParaException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 77
    :cond_0
    new-instance v4, Lcom/zte/retrieve/utils/PhoneInfo;

    iget-object v5, p0, Lcom/zte/retrieve/presenter/CloudBindingPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/zte/retrieve/utils/PhoneInfo;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Lcom/zte/retrieve/utils/PhoneInfo;->getPhoneModelNumber()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x20

    const/16 v6, 0x5f

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, userAgent:Ljava/lang/String;
    invoke-static {}, Lcom/zte/retrieve/controller/Controller;->getInstance()Lcom/zte/retrieve/controller/Controller;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zte/retrieve/controller/Controller;->getSecurityNum()Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, securityNum:Ljava/lang/String;
    new-instance v3, Lcom/zte/retrieve/cloud/UserInfo;

    invoke-direct {v3}, Lcom/zte/retrieve/cloud/UserInfo;-><init>()V

    .line 81
    .local v3, userinfo:Lcom/zte/retrieve/cloud/UserInfo;
    invoke-virtual {v3, v0}, Lcom/zte/retrieve/cloud/UserInfo;->setIMEI(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v3, v1}, Lcom/zte/retrieve/cloud/UserInfo;->setSecurityNumber(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v3, v2}, Lcom/zte/retrieve/cloud/UserInfo;->setUserAgent(Ljava/lang/String;)V

    .line 84
    invoke-static {}, Lcom/zte/retrieve/cloud/account/AccountManager;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/zte/retrieve/cloud/UserInfo;->setUid(Ljava/lang/String;)V

    .line 85
    invoke-static {}, Lcom/zte/retrieve/cloud/account/AccountManager;->getToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/zte/retrieve/cloud/UserInfo;->setToken(Ljava/lang/String;)V

    .line 86
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "the Uid = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/zte/retrieve/cloud/UserInfo;->getUid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 87
    return-object v3
.end method

.method private promptBindingResult(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 281
    iget-object v0, p0, Lcom/zte/retrieve/presenter/CloudBindingPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/zte/retrieve/utils/ToastHelper;->toastShow(Landroid/content/Context;Ljava/lang/String;)V

    .line 282
    return-void
.end method

.method private sendMsg(Landroid/os/Handler;ILjava/lang/String;)V
    .locals 4
    .parameter "handler"
    .parameter "code"
    .parameter "msgStr"

    .prologue
    .line 171
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 172
    .local v0, bundle:Landroid/os/Bundle;
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 174
    .local v1, msg:Landroid/os/Message;
    const-string v2, "result"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iput p2, v1, Landroid/os/Message;->what:I

    .line 176
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 177
    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 178
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "code="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zte/retrieve/utils/LogHelper;->v(Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method private showNetErrorDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "title"
    .parameter "content"

    .prologue
    const/4 v4, 0x1

    .line 208
    new-instance v0, Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;

    iget-object v1, p0, Lcom/zte/retrieve/presenter/CloudBindingPresenter;->mContext:Landroid/content/Context;

    move-object v2, p1

    move-object v3, p2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 209
    .local v0, dialog:Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;
    invoke-virtual {v0}, Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;->getDialogLayout()Landroid/view/View;

    move-result-object v6

    .line 211
    .local v6, dialogLayout:Landroid/view/View;
    const v1, 0x7f090012

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/zte/retrieve/presenter/CloudBindingPresenter$3;

    invoke-direct {v2, p0, v0}, Lcom/zte/retrieve/presenter/CloudBindingPresenter$3;-><init>(Lcom/zte/retrieve/presenter/CloudBindingPresenter;Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    return-void
.end method

.method private showProgressDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "title"
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 145
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/zte/retrieve/presenter/CloudBindingPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/retrieve/presenter/CloudBindingPresenter;->m_pDialog:Landroid/app/ProgressDialog;

    .line 146
    iget-object v0, p0, Lcom/zte/retrieve/presenter/CloudBindingPresenter;->m_pDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 147
    iget-object v0, p0, Lcom/zte/retrieve/presenter/CloudBindingPresenter;->m_pDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v0, p0, Lcom/zte/retrieve/presenter/CloudBindingPresenter;->m_pDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v0, p0, Lcom/zte/retrieve/presenter/CloudBindingPresenter;->m_pDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 150
    iget-object v0, p0, Lcom/zte/retrieve/presenter/CloudBindingPresenter;->m_pDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 151
    iget-object v0, p0, Lcom/zte/retrieve/presenter/CloudBindingPresenter;->m_pDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 152
    return-void
.end method

.method private startBinding()V
    .locals 3

    .prologue
    .line 61
    :try_start_0
    invoke-direct {p0}, Lcom/zte/retrieve/presenter/CloudBindingPresenter;->initCloudActiveInfo()Lcom/zte/retrieve/cloud/UserInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/retrieve/presenter/CloudBindingPresenter;->userinfo:Lcom/zte/retrieve/cloud/UserInfo;
    :try_end_0
    .catch Lcom/zte/retrieve/exception/InvalidRequestParaException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    invoke-direct {p0}, Lcom/zte/retrieve/presenter/CloudBindingPresenter;->bindPhone()V

    .line 68
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, e:Lcom/zte/retrieve/exception/InvalidRequestParaException;
    iget-object v1, p0, Lcom/zte/retrieve/presenter/CloudBindingPresenter;->mContext:Landroid/content/Context;

    const v2, 0x7f06009e

    invoke-static {v1, v2}, Lcom/zte/retrieve/utils/ToastHelper;->toastShow(Landroid/content/Context;I)V

    .line 64
    invoke-virtual {v0}, Lcom/zte/retrieve/exception/InvalidRequestParaException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected dismissProgressDialog()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/zte/retrieve/presenter/CloudBindingPresenter;->m_pDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/zte/retrieve/presenter/CloudBindingPresenter;->m_pDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/retrieve/presenter/CloudBindingPresenter;->m_pDialog:Landroid/app/ProgressDialog;

    .line 135
    :cond_0
    return-void
.end method

.method public abstract displayBindingResultView()V
.end method

.method public handleNetErrorDialogClick()V
    .locals 3

    .prologue
    .line 247
    iget-object v0, p0, Lcom/zte/retrieve/presenter/CloudBindingPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    iget-object v1, p0, Lcom/zte/retrieve/presenter/CloudBindingPresenter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;

    invoke-virtual {v0, v1, v2}, Lcom/zte/retrieve/controller/Controller;->navigateTo(Landroid/content/Context;Ljava/lang/Class;)V

    .line 248
    iget-object v0, p0, Lcom/zte/retrieve/presenter/CloudBindingPresenter;->mView:Lcom/zte/retrieve/iview/ICloudBindingControlView;

    invoke-interface {v0}, Lcom/zte/retrieve/iview/ICloudBindingControlView;->finish()V

    .line 249
    return-void
.end method

.method public showLoginFailedDialog()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 223
    const/4 v4, 0x2

    new-array v0, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/zte/retrieve/presenter/CloudBindingPresenter;->mContext:Landroid/content/Context;

    const v6, 0x7f060041

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    .line 224
    iget-object v4, p0, Lcom/zte/retrieve/presenter/CloudBindingPresenter;->mContext:Landroid/content/Context;

    const v5, 0x7f060042

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v7

    .line 226
    .local v0, array:[Ljava/lang/String;
    new-instance v2, Lcom/zte/retrieve/utils/dialogcustom/DialogListView;

    iget-object v4, p0, Lcom/zte/retrieve/presenter/CloudBindingPresenter;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/zte/retrieve/presenter/CloudBindingPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 227
    const v6, 0x7f060040

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 226
    invoke-direct {v2, v4, v5, v0, v7}, Lcom/zte/retrieve/utils/dialogcustom/DialogListView;-><init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 228
    .local v2, dialog:Lcom/zte/retrieve/utils/dialogcustom/DialogListView;
    invoke-virtual {v2}, Lcom/zte/retrieve/utils/dialogcustom/DialogListView;->getApplist()Landroid/widget/ListView;

    move-result-object v1

    .line 230
    .local v1, contactList:Landroid/widget/ListView;
    new-instance v3, Lcom/zte/retrieve/presenter/CloudBindingPresenter$4;

    invoke-direct {v3, p0, v2}, Lcom/zte/retrieve/presenter/CloudBindingPresenter$4;-><init>(Lcom/zte/retrieve/presenter/CloudBindingPresenter;Lcom/zte/retrieve/utils/dialogcustom/DialogListView;)V

    .line 243
    .local v3, listener:Landroid/widget/AdapterView$OnItemClickListener;,"Landroid/widget/AdapterView$OnItemClickListener;"
    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 244
    return-void
.end method

.method public startBindingProcess()V
    .locals 1

    .prologue
    .line 55
    const-string v0, "user is logined, start binding"

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 56
    invoke-direct {p0}, Lcom/zte/retrieve/presenter/CloudBindingPresenter;->startBinding()V

    .line 57
    return-void
.end method
