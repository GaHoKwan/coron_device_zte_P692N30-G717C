.class public Lcom/mediatek/engineermode/hqanfc/LoopBackTest;
.super Landroid/app/Activity;
.source "LoopBackTest.java"


# static fields
.field private static final DIALOG_ID_WAIT:I = 0x0

.field private static final HANDLER_MSG_GET_RSP:I = 0xc8


# instance fields
.field private mBtnReturn:Landroid/widget/Button;

.field private mBtnStart:Landroid/widget/Button;

.field private final mClickListener:Landroid/view/View$OnClickListener;

.field private mEnableBackKey:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mResponse:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmLoopbackRsp;

.field private mRspArray:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/engineermode/hqanfc/LoopBackTest;->mEnableBackKey:Z

    .line 37
    new-instance v0, Lcom/mediatek/engineermode/hqanfc/LoopBackTest$1;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/hqanfc/LoopBackTest$1;-><init>(Lcom/mediatek/engineermode/hqanfc/LoopBackTest;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/LoopBackTest;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 57
    new-instance v0, Lcom/mediatek/engineermode/hqanfc/LoopBackTest$2;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/hqanfc/LoopBackTest$2;-><init>(Lcom/mediatek/engineermode/hqanfc/LoopBackTest;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/LoopBackTest;->mHandler:Landroid/os/Handler;

    .line 85
    new-instance v0, Lcom/mediatek/engineermode/hqanfc/LoopBackTest$3;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/hqanfc/LoopBackTest$3;-><init>(Lcom/mediatek/engineermode/hqanfc/LoopBackTest;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/LoopBackTest;->mClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/engineermode/hqanfc/LoopBackTest;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/LoopBackTest;->mRspArray:[B

    return-object v0
.end method

.method static synthetic access$002(Lcom/mediatek/engineermode/hqanfc/LoopBackTest;[B)[B
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/mediatek/engineermode/hqanfc/LoopBackTest;->mRspArray:[B

    return-object p1
.end method

.method static synthetic access$100(Lcom/mediatek/engineermode/hqanfc/LoopBackTest;)Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmLoopbackRsp;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/LoopBackTest;->mResponse:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmLoopbackRsp;

    return-object v0
.end method

.method static synthetic access$102(Lcom/mediatek/engineermode/hqanfc/LoopBackTest;Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmLoopbackRsp;)Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmLoopbackRsp;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/mediatek/engineermode/hqanfc/LoopBackTest;->mResponse:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmLoopbackRsp;

    return-object p1
.end method

.method static synthetic access$200(Lcom/mediatek/engineermode/hqanfc/LoopBackTest;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/LoopBackTest;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/engineermode/hqanfc/LoopBackTest;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/LoopBackTest;->mBtnStart:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/engineermode/hqanfc/LoopBackTest;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/hqanfc/LoopBackTest;->setButtonsStatus(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/engineermode/hqanfc/LoopBackTest;Ljava/lang/Boolean;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/hqanfc/LoopBackTest;->doTestAction(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/engineermode/hqanfc/LoopBackTest;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/LoopBackTest;->mBtnReturn:Landroid/widget/Button;

    return-object v0
.end method

.method private doTestAction(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "bStart"

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/hqanfc/LoopBackTest;->sendCommand(Ljava/lang/Boolean;)V

    .line 141
    return-void
.end method

.method private fillRequest(Ljava/lang/Boolean;Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmLoopbackReq;)V
    .locals 1
    .parameter "bStart"
    .parameter "requestCmd"

    .prologue
    .line 151
    if-nez p1, :cond_0

    .line 152
    const/4 v0, 0x2

    iput-byte v0, p2, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmLoopbackReq;->mAction:B

    .line 158
    :goto_0
    return-void

    .line 153
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    const/4 v0, 0x0

    iput-byte v0, p2, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmLoopbackReq;->mAction:B

    goto :goto_0

    .line 156
    :cond_1
    const/4 v0, 0x1

    iput-byte v0, p2, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmLoopbackReq;->mAction:B

    goto :goto_0
.end method

.method private sendCommand(Ljava/lang/Boolean;)V
    .locals 3
    .parameter "bStart"

    .prologue
    .line 144
    new-instance v0, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmLoopbackReq;

    invoke-direct {v0}, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmLoopbackReq;-><init>()V

    .line 145
    .local v0, requestCmd:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmLoopbackReq;
    invoke-direct {p0, p1, v0}, Lcom/mediatek/engineermode/hqanfc/LoopBackTest;->fillRequest(Ljava/lang/Boolean;Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmLoopbackReq;)V

    .line 146
    invoke-static {}, Lcom/mediatek/engineermode/hqanfc/NfcClient;->getInstance()Lcom/mediatek/engineermode/hqanfc/NfcClient;

    move-result-object v1

    const/16 v2, 0x81

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/engineermode/hqanfc/NfcClient;->sendCommand(ILcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmReq;)I

    .line 148
    return-void
.end method

.method private setButtonsStatus(Z)V
    .locals 3
    .parameter "b"

    .prologue
    .line 129
    const-string v0, "EM/HQA/NFC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LoopBackTest]setButtonsStatus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    if-eqz p1, :cond_0

    .line 131
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/LoopBackTest;->mBtnStart:Landroid/widget/Button;

    const v1, 0x7f0804aa

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 135
    :goto_0
    iput-boolean p1, p0, Lcom/mediatek/engineermode/hqanfc/LoopBackTest;->mEnableBackKey:Z

    .line 136
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/LoopBackTest;->mBtnReturn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 137
    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/LoopBackTest;->mBtnStart:Landroid/widget/Button;

    const v1, 0x7f0804ab

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/mediatek/engineermode/hqanfc/LoopBackTest;->mEnableBackKey:Z

    if-nez v0, :cond_0

    .line 126
    :goto_0
    return-void

    .line 125
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 103
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 104
    const v1, 0x7f030047

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 105
    const v1, 0x7f0b023a

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mediatek/engineermode/hqanfc/LoopBackTest;->mBtnStart:Landroid/widget/Button;

    .line 106
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/LoopBackTest;->mBtnStart:Landroid/widget/Button;

    iget-object v2, p0, Lcom/mediatek/engineermode/hqanfc/LoopBackTest;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    const v1, 0x7f0b023b

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mediatek/engineermode/hqanfc/LoopBackTest;->mBtnReturn:Landroid/widget/Button;

    .line 108
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/LoopBackTest;->mBtnReturn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/mediatek/engineermode/hqanfc/LoopBackTest;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 110
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.mediatek.hqanfc.130"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 111
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/LoopBackTest;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 112
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 162
    const/4 v0, 0x0

    .line 163
    .local v0, dialog:Landroid/app/ProgressDialog;
    if-nez p1, :cond_0

    .line 164
    new-instance v0, Landroid/app/ProgressDialog;

    .end local v0           #dialog:Landroid/app/ProgressDialog;
    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 165
    .restart local v0       #dialog:Landroid/app/ProgressDialog;
    const v2, 0x7f0804d6

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 166
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 167
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    move-object v1, v0

    .line 170
    .end local v0           #dialog:Landroid/app/ProgressDialog;
    .local v1, dialog:Landroid/app/ProgressDialog;
    :goto_0
    return-object v1

    .end local v1           #dialog:Landroid/app/ProgressDialog;
    .restart local v0       #dialog:Landroid/app/ProgressDialog;
    :cond_0
    move-object v1, v0

    .end local v0           #dialog:Landroid/app/ProgressDialog;
    .restart local v1       #dialog:Landroid/app/ProgressDialog;
    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/LoopBackTest;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 117
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 118
    return-void
.end method
