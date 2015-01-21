.class public Lcom/zte/retrieve/presenter/RemoteControlPresenter;
.super Lcom/zte/retrieve/presenter/Presenter;
.source "RemoteControlPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/retrieve/presenter/RemoteControlPresenter$SendSmsCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zte/retrieve/presenter/Presenter",
        "<",
        "Lcom/zte/retrieve/iview/IRemoteControlView;",
        ">;"
    }
.end annotation


# instance fields
.field private listenFlag:Z

.field private mInstrOper:Lcom/zte/retrieve/service/instruct/InstructionOperator;

.field private processDialog:Landroid/app/ProgressDialog;

.field private remoteNum:Ljava/lang/String;

.field private remotePwd:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/zte/retrieve/presenter/Presenter;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/retrieve/presenter/RemoteControlPresenter;->listenFlag:Z

    .line 33
    return-void
.end method

.method static synthetic access$0(Lcom/zte/retrieve/presenter/RemoteControlPresenter;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RemoteControlPresenter;->processDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private fakeSendMsgAndCallback(I)V
    .locals 1
    .parameter "orderType"

    .prologue
    .line 138
    new-instance v0, Lcom/zte/retrieve/presenter/RemoteControlPresenter$1;

    invoke-direct {v0, p0, p1}, Lcom/zte/retrieve/presenter/RemoteControlPresenter$1;-><init>(Lcom/zte/retrieve/presenter/RemoteControlPresenter;I)V

    .line 151
    .local v0, thread:Lcom/zte/retrieve/cloud/account/AliveWithUIThread;
    invoke-virtual {v0}, Lcom/zte/retrieve/cloud/account/AliveWithUIThread;->start()V

    .line 152
    return-void
.end method

.method private setText()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 74
    iget-object v2, p0, Lcom/zte/retrieve/presenter/RemoteControlPresenter;->mContext:Landroid/content/Context;

    const v3, 0x7f060099

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/zte/retrieve/presenter/RemoteControlPresenter;->remoteNum:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, phoneNumText:Ljava/lang/String;
    iget-object v2, p0, Lcom/zte/retrieve/presenter/RemoteControlPresenter;->mContext:Landroid/content/Context;

    const v3, 0x7f06009a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/zte/retrieve/presenter/RemoteControlPresenter;->remotePwd:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, pwdText:Ljava/lang/String;
    iget-object v2, p0, Lcom/zte/retrieve/presenter/RemoteControlPresenter;->mView:Lcom/zte/retrieve/iview/IView;

    check-cast v2, Lcom/zte/retrieve/iview/IRemoteControlView;

    invoke-interface {v2, v0, v1}, Lcom/zte/retrieve/iview/IRemoteControlView;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method private startCommonOrderProcess(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "orderType"
    .parameter "remotePhoneNumber"
    .parameter "remotePassword"

    .prologue
    .line 109
    invoke-static {p1, p3}, Lcom/zte/retrieve/service/instruct/InstructionPreprocess;->getSmsContentByType(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, smsContent:Ljava/lang/String;
    invoke-direct {p0, p1, p2, v0}, Lcom/zte/retrieve/presenter/RemoteControlPresenter;->startOrderProcessByType(ILjava/lang/String;Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method private startOrderProcessByType(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "orderType"
    .parameter "remotePhoneNumber"
    .parameter "smsContent"

    .prologue
    .line 121
    invoke-virtual {p0, p1}, Lcom/zte/retrieve/presenter/RemoteControlPresenter;->getOrderTextByType(I)Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, orderText:Ljava/lang/String;
    iget-object v2, p0, Lcom/zte/retrieve/presenter/RemoteControlPresenter;->mView:Lcom/zte/retrieve/iview/IView;

    check-cast v2, Lcom/zte/retrieve/iview/IRemoteControlView;

    invoke-interface {v2, v0}, Lcom/zte/retrieve/iview/IRemoteControlView;->showProcessDlg(Ljava/lang/String;)Landroid/app/ProgressDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/retrieve/presenter/RemoteControlPresenter;->processDialog:Landroid/app/ProgressDialog;

    .line 124
    invoke-static {}, Lcom/zte/retrieve/utils/config/RetrieveConfig;->isMonkeySwitch()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 125
    invoke-direct {p0, p1}, Lcom/zte/retrieve/presenter/RemoteControlPresenter;->fakeSendMsgAndCallback(I)V

    .line 135
    :goto_0
    return-void

    .line 129
    :cond_0
    new-instance v1, Lcom/zte/retrieve/presenter/SmsHandle;

    invoke-direct {v1}, Lcom/zte/retrieve/presenter/SmsHandle;-><init>()V

    .line 130
    .local v1, smsPresenter:Lcom/zte/retrieve/presenter/SmsHandle;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/zte/retrieve/presenter/SmsHandle;->setMsgType(I)V

    .line 131
    iget-object v2, p0, Lcom/zte/retrieve/presenter/RemoteControlPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/zte/retrieve/presenter/SmsHandle;->setContext(Landroid/content/Context;)V

    .line 132
    new-instance v2, Lcom/zte/retrieve/presenter/RemoteControlPresenter$SendSmsCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/zte/retrieve/presenter/RemoteControlPresenter$SendSmsCallback;-><init>(Lcom/zte/retrieve/presenter/RemoteControlPresenter;Lcom/zte/retrieve/presenter/RemoteControlPresenter$SendSmsCallback;)V

    invoke-virtual {v1, v2}, Lcom/zte/retrieve/presenter/SmsHandle;->setCallback(Landroid/os/Handler$Callback;)V

    .line 133
    invoke-virtual {v1}, Lcom/zte/retrieve/presenter/SmsHandle;->smsRegister()V

    .line 134
    invoke-virtual {v1, p1, p2, p3}, Lcom/zte/retrieve/presenter/SmsHandle;->onSmsSend(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public editRemoteInfo()V
    .locals 4

    .prologue
    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v0, paraList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/retrieve/controller/IntentParaInfo;>;"
    new-instance v1, Lcom/zte/retrieve/controller/IntentParaInfo;

    const-string v2, "lostPhoneNum"

    iget-object v3, p0, Lcom/zte/retrieve/presenter/RemoteControlPresenter;->remoteNum:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/zte/retrieve/controller/IntentParaInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    new-instance v1, Lcom/zte/retrieve/controller/IntentParaInfo;

    const-string v2, "funcPassword"

    iget-object v3, p0, Lcom/zte/retrieve/presenter/RemoteControlPresenter;->remotePwd:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/zte/retrieve/controller/IntentParaInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v1, p0, Lcom/zte/retrieve/presenter/RemoteControlPresenter;->mController:Lcom/zte/retrieve/controller/Controller;

    iget-object v2, p0, Lcom/zte/retrieve/presenter/RemoteControlPresenter;->mContext:Landroid/content/Context;

    const-class v3, Lcom/zte/retrieve/activity/RemoteInputActivity;

    invoke-virtual {v1, v2, v3, v0}, Lcom/zte/retrieve/controller/Controller;->navigateTo(Landroid/content/Context;Ljava/lang/Class;Ljava/util/ArrayList;)V

    .line 88
    return-void
.end method

.method public getMsgTextByResult(I)Ljava/lang/String;
    .locals 3
    .parameter "resultCode"

    .prologue
    .line 197
    const/4 v0, 0x0

    .line 199
    .local v0, resultText:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 212
    :goto_0
    :pswitch_0
    return-object v0

    .line 201
    :pswitch_1
    iget-object v1, p0, Lcom/zte/retrieve/presenter/RemoteControlPresenter;->mContext:Landroid/content/Context;

    const v2, 0x7f06009c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 202
    goto :goto_0

    .line 207
    :pswitch_2
    iget-object v1, p0, Lcom/zte/retrieve/presenter/RemoteControlPresenter;->mContext:Landroid/content/Context;

    const v2, 0x7f06009d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 208
    goto :goto_0

    .line 199
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getOrderTextByType(I)Ljava/lang/String;
    .locals 3
    .parameter "orderType"

    .prologue
    .line 169
    const/4 v0, 0x0

    .line 171
    .local v0, resultText:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 187
    :goto_0
    :pswitch_0
    return-object v0

    .line 173
    :pswitch_1
    iget-object v1, p0, Lcom/zte/retrieve/presenter/RemoteControlPresenter;->mContext:Landroid/content/Context;

    const v2, 0x7f06008e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 174
    goto :goto_0

    .line 176
    :pswitch_2
    iget-object v1, p0, Lcom/zte/retrieve/presenter/RemoteControlPresenter;->mContext:Landroid/content/Context;

    const v2, 0x7f06008d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 177
    goto :goto_0

    .line 179
    :pswitch_3
    iget-object v1, p0, Lcom/zte/retrieve/presenter/RemoteControlPresenter;->mContext:Landroid/content/Context;

    const v2, 0x7f06008c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 180
    goto :goto_0

    .line 182
    :pswitch_4
    iget-object v1, p0, Lcom/zte/retrieve/presenter/RemoteControlPresenter;->mContext:Landroid/content/Context;

    const v2, 0x7f06008f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 183
    goto :goto_0

    .line 171
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getRemotePB()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RemoteControlPresenter;->remoteNum:Ljava/lang/String;

    return-object v0
.end method

.method public getRemotePwd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RemoteControlPresenter;->remotePwd:Ljava/lang/String;

    return-object v0
.end method

.method public handleInstructBtnClick(I)V
    .locals 2
    .parameter "orderType"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RemoteControlPresenter;->remoteNum:Ljava/lang/String;

    iget-object v1, p0, Lcom/zte/retrieve/presenter/RemoteControlPresenter;->remotePwd:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/zte/retrieve/presenter/RemoteControlPresenter;->startCommonOrderProcess(ILjava/lang/String;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public handleListenClick()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 45
    iget-boolean v0, p0, Lcom/zte/retrieve/presenter/RemoteControlPresenter;->listenFlag:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/zte/retrieve/presenter/RemoteControlPresenter;->listenFlag:Z

    .line 46
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RemoteControlPresenter;->mInstrOper:Lcom/zte/retrieve/service/instruct/InstructionOperator;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/zte/retrieve/service/instruct/InstructionOperator;

    iget-object v3, p0, Lcom/zte/retrieve/presenter/RemoteControlPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/zte/retrieve/service/instruct/InstructionOperator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/retrieve/presenter/RemoteControlPresenter;->mInstrOper:Lcom/zte/retrieve/service/instruct/InstructionOperator;

    .line 49
    :cond_0
    iget-boolean v0, p0, Lcom/zte/retrieve/presenter/RemoteControlPresenter;->listenFlag:Z

    if-eqz v0, :cond_2

    .line 50
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RemoteControlPresenter;->mInstrOper:Lcom/zte/retrieve/service/instruct/InstructionOperator;

    invoke-virtual {v0, v2}, Lcom/zte/retrieve/service/instruct/InstructionOperator;->preListen(Z)I

    .line 51
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RemoteControlPresenter;->mView:Lcom/zte/retrieve/iview/IView;

    check-cast v0, Lcom/zte/retrieve/iview/IRemoteControlView;

    const v1, 0x7f060098

    const v2, 0x7f02000d

    invoke-interface {v0, v1, v2}, Lcom/zte/retrieve/iview/IRemoteControlView;->setTextAndImage(II)V

    .line 56
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 45
    goto :goto_0

    .line 53
    :cond_2
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RemoteControlPresenter;->mInstrOper:Lcom/zte/retrieve/service/instruct/InstructionOperator;

    invoke-virtual {v0, v1}, Lcom/zte/retrieve/service/instruct/InstructionOperator;->preListen(Z)I

    .line 54
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RemoteControlPresenter;->mView:Lcom/zte/retrieve/iview/IView;

    check-cast v0, Lcom/zte/retrieve/iview/IRemoteControlView;

    const v1, 0x7f060097

    const v2, 0x7f020009

    invoke-interface {v0, v1, v2}, Lcom/zte/retrieve/iview/IRemoteControlView;->setTextAndImage(II)V

    goto :goto_1
.end method

.method public handlePrelistenClick()V
    .locals 3

    .prologue
    .line 227
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RemoteControlPresenter;->mInstrOper:Lcom/zte/retrieve/service/instruct/InstructionOperator;

    if-nez v0, :cond_0

    .line 232
    :goto_0
    return-void

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RemoteControlPresenter;->mInstrOper:Lcom/zte/retrieve/service/instruct/InstructionOperator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/retrieve/service/instruct/InstructionOperator;->preListen(Z)I

    .line 231
    iget-object v0, p0, Lcom/zte/retrieve/presenter/RemoteControlPresenter;->mView:Lcom/zte/retrieve/iview/IView;

    check-cast v0, Lcom/zte/retrieve/iview/IRemoteControlView;

    const v1, 0x7f060097

    const v2, 0x7f020009

    invoke-interface {v0, v1, v2}, Lcom/zte/retrieve/iview/IRemoteControlView;->setTextAndImage(II)V

    goto :goto_0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/zte/retrieve/presenter/RemoteControlPresenter;->setPhoneNumberAndPwd()V

    .line 64
    return-void
.end method

.method public sendFakeSendResMsg(II)V
    .locals 4
    .parameter "orderType"
    .parameter "resultCode"

    .prologue
    .line 155
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 156
    .local v1, msg:Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 157
    iput p2, v1, Landroid/os/Message;->arg2:I

    .line 158
    new-instance v0, Landroid/os/Handler;

    new-instance v2, Lcom/zte/retrieve/presenter/RemoteControlPresenter$SendSmsCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/zte/retrieve/presenter/RemoteControlPresenter$SendSmsCallback;-><init>(Lcom/zte/retrieve/presenter/RemoteControlPresenter;Lcom/zte/retrieve/presenter/RemoteControlPresenter$SendSmsCallback;)V

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    .line 159
    .local v0, mHandler:Landroid/os/Handler;
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "-----------sendInternalMsg msg = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method public setPhoneNumberAndPwd()V
    .locals 2

    .prologue
    .line 67
    iget-object v1, p0, Lcom/zte/retrieve/presenter/RemoteControlPresenter;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 68
    .local v0, mBundle:Landroid/os/Bundle;
    const-string v1, "lostPhoneNum"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/retrieve/presenter/RemoteControlPresenter;->remoteNum:Ljava/lang/String;

    .line 69
    const-string v1, "funcPassword"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/retrieve/presenter/RemoteControlPresenter;->remotePwd:Ljava/lang/String;

    .line 70
    invoke-direct {p0}, Lcom/zte/retrieve/presenter/RemoteControlPresenter;->setText()V

    .line 71
    return-void
.end method

.method public updatePhoneNumberAndPwdFromIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 221
    const-string v0, "lostPhoneNum"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/retrieve/presenter/RemoteControlPresenter;->remoteNum:Ljava/lang/String;

    .line 222
    const-string v0, "funcPassword"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/retrieve/presenter/RemoteControlPresenter;->remotePwd:Ljava/lang/String;

    .line 223
    invoke-direct {p0}, Lcom/zte/retrieve/presenter/RemoteControlPresenter;->setText()V

    .line 224
    return-void
.end method
