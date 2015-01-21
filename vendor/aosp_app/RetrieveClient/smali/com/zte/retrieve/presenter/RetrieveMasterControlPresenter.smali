.class public Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;
.super Lcom/zte/retrieve/presenter/Presenter;
.source "RetrieveMasterControlPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zte/retrieve/presenter/Presenter",
        "<",
        "Lcom/zte/retrieve/iview/IRetrieveMasterControlView;",
        ">;"
    }
.end annotation


# instance fields
.field private amReceiver:Lcom/zte/retrieve/receiver/AccountManagerReceiver;

.field private mProDialog:Landroid/app/ProgressDialog;

.field private updateHandler:Landroid/os/Handler;

.field private updateUrl:Ljava/lang/String;

.field private verProp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/zte/retrieve/presenter/Presenter;-><init>()V

    .line 45
    new-instance v0, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter$1;

    invoke-direct {v0, p0}, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter$1;-><init>(Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;)V

    iput-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->updateHandler:Landroid/os/Handler;

    .line 40
    return-void
.end method

.method static synthetic access$0(Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->verProp:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1(Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->updateUrl:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->verProp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->mProDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$4(Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->queryCloudStatusFromCloud(Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$5(Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->updateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private createVersionInfoString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "feature"

    .prologue
    .line 328
    iget-object v3, p0, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->verProp:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 329
    .local v0, featureIndex:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v0, v3

    .line 330
    iget-object v3, p0, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->verProp:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 331
    .local v2, name:Ljava/lang/String;
    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 332
    .local v1, indexEnd:I
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private queryCloudStatusFromCloud(Landroid/os/Handler;)V
    .locals 11
    .parameter "handler"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 123
    new-instance v7, Lcom/zte/retrieve/utils/PhoneInfo;

    iget-object v8, p0, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Lcom/zte/retrieve/utils/PhoneInfo;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7}, Lcom/zte/retrieve/utils/PhoneInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, IMEI:Ljava/lang/String;
    new-instance v3, Lcom/zte/retrieve/cloud/PRControl;

    iget-object v7, p0, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v7}, Lcom/zte/retrieve/cloud/PRControl;-><init>(Landroid/content/Context;)V

    .line 126
    .local v3, control:Lcom/zte/retrieve/cloud/PRControl;
    iget-object v7, p0, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v7}, Lcom/zte/retrieve/controller/Controller;->getUid()Ljava/lang/String;

    move-result-object v5

    .line 127
    .local v5, uid:Ljava/lang/String;
    if-nez v5, :cond_1

    .line 128
    if-eqz p1, :cond_0

    .line 129
    const/4 v7, 0x2

    invoke-virtual {p1, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    const/4 v7, 0x0

    invoke-virtual {v3, v0, v7}, Lcom/zte/retrieve/cloud/PRControl;->requireBindStatus(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 135
    .local v2, bindStatus:I
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "bindstatus="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/zte/retrieve/utils/LogHelper;->v(Ljava/lang/String;)V

    .line 136
    const/16 v7, 0x1c9

    if-ne v2, v7, :cond_3

    .line 137
    iget-object v7, p0, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v7, v10}, Lcom/zte/retrieve/controller/Controller;->setCloudActiveStatus(I)Z

    .line 139
    iget-object v7, p0, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v7}, Lcom/zte/retrieve/controller/Controller;->getQueryUserInfo()Lcom/zte/retrieve/utils/ServerResponseInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/zte/retrieve/utils/ServerResponseInfo;->getUid()Ljava/lang/String;

    move-result-object v4

    .line 140
    .local v4, queryUid:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "queryid="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";uid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/zte/retrieve/utils/LogHelper;->v(Ljava/lang/String;)V

    .line 141
    if-eqz v4, :cond_0

    .line 144
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 145
    new-instance v6, Landroid/os/Message;

    invoke-direct {v6}, Landroid/os/Message;-><init>()V

    .line 146
    .local v6, updateMsg:Landroid/os/Message;
    const/4 v7, 0x3

    iput v7, v6, Landroid/os/Message;->what:I

    .line 147
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 148
    .local v1, accountData:Landroid/os/Bundle;
    const-string v7, "account_update_uid"

    invoke-virtual {v1, v7, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-virtual {v6, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 150
    invoke-virtual {p1, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 160
    .end local v1           #accountData:Landroid/os/Bundle;
    .end local v4           #queryUid:Ljava/lang/String;
    .end local v6           #updateMsg:Landroid/os/Message;
    :cond_2
    :goto_1
    if-eqz p1, :cond_0

    .line 161
    invoke-virtual {p1, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 152
    :cond_3
    const/16 v7, 0x1ca

    if-ne v2, v7, :cond_4

    .line 153
    iget-object v7, p0, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v7, v9}, Lcom/zte/retrieve/controller/Controller;->setCloudActiveStatus(I)Z

    goto :goto_1

    .line 154
    :cond_4
    const/4 v7, -0x3

    if-eq v2, v7, :cond_0

    .line 157
    iget-object v7, p0, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v7, v9}, Lcom/zte/retrieve/controller/Controller;->setCloudActiveStatus(I)Z

    goto :goto_1
.end method

.method private showProgressDialog(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    const/4 v2, 0x0

    .line 234
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->mProDialog:Landroid/app/ProgressDialog;

    .line 236
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->mProDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 237
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->mProDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 238
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->mProDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 239
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->mProDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 241
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->mProDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter$3;

    invoke-direct {v1, p0}, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter$3;-><init>(Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 257
    return-void
.end method


# virtual methods
.method public checkUpdate()V
    .locals 1

    .prologue
    .line 346
    new-instance v0, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter$5;

    invoke-direct {v0, p0}, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter$5;-><init>(Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;)V

    .line 370
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 371
    return-void
.end method

.method public clearPendingView()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v0}, Lcom/zte/retrieve/controller/Controller;->closePendingActivity()V

    .line 113
    return-void
.end method

.method public dismissDialogWaitView()V
    .locals 2

    .prologue
    .line 223
    iget-object v1, p0, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->mProDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->mProDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 225
    :try_start_0
    iget-object v1, p0, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->mProDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->mProDialog:Landroid/app/ProgressDialog;

    .line 231
    :cond_0
    return-void

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getActiveTabStatus()Z
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v0}, Lcom/zte/retrieve/controller/Controller;->isLocalSelect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    const/4 v0, 0x1

    .line 93
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleCloudReactiveSuccess(Ljava/lang/String;)V
    .locals 2
    .parameter "uid"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zte/retrieve/controller/Controller;->setCloudActiveStatus(I)Z

    .line 186
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v0, p1}, Lcom/zte/retrieve/controller/Controller;->setUid(Ljava/lang/String;)Z

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "reactive OK, write new uid = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->d(Ljava/lang/String;)V

    .line 188
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 189
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->mContext:Landroid/content/Context;

    const v1, 0x7f0600aa

    invoke-static {v0, v1}, Lcom/zte/retrieve/utils/ToastHelper;->toastShow(Landroid/content/Context;I)V

    .line 190
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 191
    return-void
.end method

.method public handleUpdateDialogClick()V
    .locals 3

    .prologue
    .line 194
    iget-object v1, p0, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->mContext:Landroid/content/Context;

    const v2, 0x7f0600c3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->showProgressDialog(Ljava/lang/String;)V

    .line 195
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter$2;

    invoke-direct {v1, p0}, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter$2;-><init>(Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 212
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 214
    return-void
.end method

.method public init()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/retrieve/controller/Controller;->setRetrieveLoginPath(I)Z

    .line 80
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zte/retrieve/controller/Controller;->setLocalSelectStatus(I)Z

    .line 82
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    iget-object v1, p0, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/zte/retrieve/controller/Controller;->startService(Landroid/content/Context;)V

    .line 83
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    iget-object v1, p0, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/zte/retrieve/controller/Controller;->isUpdateNeed2Check(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    const-string v0, "mController.isUpdateNeed2Check(mContext)=true"

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->v(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->checkUpdate()V

    .line 87
    :cond_0
    return-void
.end method

.method public isFromAuthRetrieve()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 260
    iget-object v2, p0, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 261
    .local v0, mBundle:Landroid/os/Bundle;
    if-nez v0, :cond_0

    move v2, v3

    .line 269
    :goto_0
    return v2

    .line 264
    :cond_0
    const-string v2, "securityParamType"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 266
    .local v1, typeStr:Ljava/lang/String;
    const-string v2, "securityEntry"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 267
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    .line 269
    goto :goto_0
.end method

.method public listenAccountChanging(Landroid/os/Handler;)V
    .locals 6
    .parameter "handler"

    .prologue
    const/4 v5, 0x0

    .line 301
    iget-object v3, p0, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v3}, Lcom/zte/retrieve/controller/Controller;->getAccountManagerInfo()I

    move-result v1

    .line 302
    .local v1, info:I
    packed-switch v1, :pswitch_data_0

    .line 325
    :goto_0
    :pswitch_0
    return-void

    .line 306
    :pswitch_1
    if-eqz p1, :cond_0

    .line 307
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 309
    :cond_0
    iget-object v3, p0, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v3, v5}, Lcom/zte/retrieve/controller/Controller;->setAccountManagerInfo(I)V

    goto :goto_0

    .line 312
    :pswitch_2
    iget-object v3, p0, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v3}, Lcom/zte/retrieve/controller/Controller;->getUid()Ljava/lang/String;

    move-result-object v2

    .line 313
    .local v2, saveUid:Ljava/lang/String;
    invoke-static {}, Lcom/zte/retrieve/cloud/account/AccountManager;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, currentUid:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "uid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",currentuid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 315
    if-eqz v2, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 316
    if-eqz p1, :cond_1

    .line 317
    const/4 v3, 0x3

    invoke-virtual {p1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 320
    :cond_1
    iget-object v3, p0, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v3, v5}, Lcom/zte/retrieve/controller/Controller;->setAccountManagerInfo(I)V

    goto :goto_0

    .line 302
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public queryClearStatus()Z
    .locals 2

    .prologue
    .line 99
    iget-object v1, p0, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v1}, Lcom/zte/retrieve/controller/Controller;->getIMSI()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, imsi:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 101
    const/4 v1, 0x1

    .line 103
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public queryCloudStatus()Z
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v0}, Lcom/zte/retrieve/controller/Controller;->isCloudActive()Z

    move-result v0

    return v0
.end method

.method public regAccountManagerReceiver()V
    .locals 3

    .prologue
    .line 287
    new-instance v1, Lcom/zte/retrieve/receiver/AccountManagerReceiver;

    invoke-direct {v1}, Lcom/zte/retrieve/receiver/AccountManagerReceiver;-><init>()V

    iput-object v1, p0, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->amReceiver:Lcom/zte/retrieve/receiver/AccountManagerReceiver;

    .line 288
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 289
    .local v0, intent:Landroid/content/IntentFilter;
    const-string v1, "zte_account_added"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 290
    const-string v1, "zte_account_removed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 291
    iget-object v1, p0, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->amReceiver:Lcom/zte/retrieve/receiver/AccountManagerReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 292
    return-void
.end method

.method public setSwitchThread(Landroid/os/Handler;)V
    .locals 2
    .parameter "handler"

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->isFromAuthRetrieve()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter$4;

    invoke-direct {v1, p0, p1}, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter$4;-><init>(Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;Landroid/os/Handler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 281
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 284
    :cond_0
    return-void
.end method

.method public settingInfoClick()V
    .locals 3

    .prologue
    .line 108
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    iget-object v1, p0, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/zte/retrieve/activity/PasswordCheckActivity;

    invoke-virtual {v0, v1, v2}, Lcom/zte/retrieve/controller/Controller;->navigateTo(Landroid/content/Context;Ljava/lang/Class;)V

    .line 109
    return-void
.end method

.method public unRegAccountManagerReceiver()V
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->amReceiver:Lcom/zte/retrieve/receiver/AccountManagerReceiver;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->amReceiver:Lcom/zte/retrieve/receiver/AccountManagerReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 298
    :cond_0
    return-void
.end method

.method public updateBindingRelation(Ljava/lang/String;)I
    .locals 9
    .parameter "uid"

    .prologue
    .line 167
    new-instance v1, Lcom/zte/retrieve/cloud/PRControl;

    iget-object v6, p0, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v6}, Lcom/zte/retrieve/cloud/PRControl;-><init>(Landroid/content/Context;)V

    .line 168
    .local v1, prcontrol:Lcom/zte/retrieve/cloud/PRControl;
    new-instance v6, Lcom/zte/retrieve/utils/PhoneInfo;

    iget-object v7, p0, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/zte/retrieve/utils/PhoneInfo;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6}, Lcom/zte/retrieve/utils/PhoneInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, IMEI:Ljava/lang/String;
    new-instance v6, Lcom/zte/retrieve/utils/PhoneInfo;

    iget-object v7, p0, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/zte/retrieve/utils/PhoneInfo;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6}, Lcom/zte/retrieve/utils/PhoneInfo;->getPhoneModelNumber()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x20

    const/16 v8, 0x5f

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    .line 170
    .local v4, userAgent:Ljava/lang/String;
    iget-object v6, p0, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v6}, Lcom/zte/retrieve/controller/Controller;->getSecurityNum()Ljava/lang/String;

    move-result-object v3

    .line 172
    .local v3, securityNum:Ljava/lang/String;
    new-instance v5, Lcom/zte/retrieve/cloud/UserInfo;

    invoke-direct {v5}, Lcom/zte/retrieve/cloud/UserInfo;-><init>()V

    .line 173
    .local v5, userinfo:Lcom/zte/retrieve/cloud/UserInfo;
    invoke-virtual {v5, p1}, Lcom/zte/retrieve/cloud/UserInfo;->setUid(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v5, v0}, Lcom/zte/retrieve/cloud/UserInfo;->setIMEI(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v5, v4}, Lcom/zte/retrieve/cloud/UserInfo;->setUserAgent(Ljava/lang/String;)V

    .line 176
    invoke-static {}, Lcom/zte/retrieve/cloud/account/AccountManager;->getToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/zte/retrieve/cloud/UserInfo;->setToken(Ljava/lang/String;)V

    .line 177
    invoke-virtual {v5, v3}, Lcom/zte/retrieve/cloud/UserInfo;->setSecurityNumber(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v1, v5}, Lcom/zte/retrieve/cloud/PRControl;->sendReactivationRequest(Lcom/zte/retrieve/cloud/UserInfo;)I

    move-result v2

    .line 181
    .local v2, result:I
    return v2
.end method

.method public updateNow()V
    .locals 7

    .prologue
    .line 336
    invoke-static {}, Lcom/zte/retrieve/utils/CommonFunctions;->checkSDCardIsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->mView:Lcom/zte/retrieve/iview/IView;

    check-cast v0, Lcom/zte/retrieve/iview/IRetrieveMasterControlView;

    const v1, 0x7f0600c4

    const v2, 0x7f0600c5

    iget-object v3, p0, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, v2, v3}, Lcom/zte/retrieve/iview/IRetrieveMasterControlView;->showResultDialog(IILandroid/content/Context;)V

    .line 343
    :goto_0
    return-void

    .line 339
    :cond_0
    const-string v0, "name:"

    invoke-direct {p0, v0}, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->createVersionInfoString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 340
    .local v5, versionCode:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "download name=RetrieveClient"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->v(Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    iget-object v1, p0, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->updateUrl:Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "RetrieveClient"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ".apk"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Lcom/zte/retrieve/controller/Controller;->download(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
