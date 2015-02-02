.class public Lcom/mediatek/engineermode/hqanfc/VersionQuery;
.super Landroid/app/Activity;
.source "VersionQuery.java"


# static fields
.field private static final DIALOG_ID_WAIT:I = 0x0

.field private static final END_STR:Ljava/lang/String; = "*"

.field private static final HANDLER_MSG_GET_RSP:I = 0xc8

.field private static final START_STR:Ljava/lang/String; = "$PNFC"


# instance fields
.field private mBtnReturn:Landroid/widget/Button;

.field private final mClickListener:Landroid/view/View$OnClickListener;

.field private final mHandler:Landroid/os/Handler;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mResponse:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmVersionRsp;

.field private mRspArray:[B

.field private mTvFwVersion:Landroid/widget/TextView;

.field private mTvHwVersion:Landroid/widget/TextView;

.field private mTvMwVersion:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 44
    new-instance v0, Lcom/mediatek/engineermode/hqanfc/VersionQuery$1;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/hqanfc/VersionQuery$1;-><init>(Lcom/mediatek/engineermode/hqanfc/VersionQuery;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/VersionQuery;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 63
    new-instance v0, Lcom/mediatek/engineermode/hqanfc/VersionQuery$2;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/hqanfc/VersionQuery$2;-><init>(Lcom/mediatek/engineermode/hqanfc/VersionQuery;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/VersionQuery;->mHandler:Landroid/os/Handler;

    .line 81
    new-instance v0, Lcom/mediatek/engineermode/hqanfc/VersionQuery$3;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/hqanfc/VersionQuery$3;-><init>(Lcom/mediatek/engineermode/hqanfc/VersionQuery;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/VersionQuery;->mClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/engineermode/hqanfc/VersionQuery;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/VersionQuery;->mRspArray:[B

    return-object v0
.end method

.method static synthetic access$002(Lcom/mediatek/engineermode/hqanfc/VersionQuery;[B)[B
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/mediatek/engineermode/hqanfc/VersionQuery;->mRspArray:[B

    return-object p1
.end method

.method static synthetic access$100(Lcom/mediatek/engineermode/hqanfc/VersionQuery;)Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmVersionRsp;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/VersionQuery;->mResponse:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmVersionRsp;

    return-object v0
.end method

.method static synthetic access$102(Lcom/mediatek/engineermode/hqanfc/VersionQuery;Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmVersionRsp;)Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmVersionRsp;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/mediatek/engineermode/hqanfc/VersionQuery;->mResponse:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmVersionRsp;

    return-object p1
.end method

.method static synthetic access$200(Lcom/mediatek/engineermode/hqanfc/VersionQuery;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/VersionQuery;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/engineermode/hqanfc/VersionQuery;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/VersionQuery;->mTvMwVersion:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/engineermode/hqanfc/VersionQuery;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/VersionQuery;->mTvFwVersion:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/engineermode/hqanfc/VersionQuery;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/VersionQuery;->mTvHwVersion:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/engineermode/hqanfc/VersionQuery;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/VersionQuery;->mBtnReturn:Landroid/widget/Button;

    return-object v0
.end method

.method private sendCommand()V
    .locals 3

    .prologue
    .line 148
    invoke-static {}, Lcom/mediatek/engineermode/hqanfc/NfcClient;->getInstance()Lcom/mediatek/engineermode/hqanfc/NfcClient;

    move-result-object v0

    const/16 v1, 0x83

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/engineermode/hqanfc/NfcClient;->sendCommand(ILcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmReq;)I

    .line 149
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 129
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 130
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 95
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 96
    const v1, 0x7f030050

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 97
    const v1, 0x7f0b02c1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mediatek/engineermode/hqanfc/VersionQuery;->mBtnReturn:Landroid/widget/Button;

    .line 98
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/VersionQuery;->mBtnReturn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/mediatek/engineermode/hqanfc/VersionQuery;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    const v1, 0x7f0b02be

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/engineermode/hqanfc/VersionQuery;->mTvMwVersion:Landroid/widget/TextView;

    .line 100
    const v1, 0x7f0b02bf

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/engineermode/hqanfc/VersionQuery;->mTvFwVersion:Landroid/widget/TextView;

    .line 101
    const v1, 0x7f0b02c0

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/engineermode/hqanfc/VersionQuery;->mTvHwVersion:Landroid/widget/TextView;

    .line 103
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 104
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.mediatek.hqanfc.132"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/VersionQuery;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 106
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 134
    const/4 v0, 0x0

    .line 135
    .local v0, dialog:Landroid/app/ProgressDialog;
    if-nez p1, :cond_0

    .line 136
    new-instance v0, Landroid/app/ProgressDialog;

    .end local v0           #dialog:Landroid/app/ProgressDialog;
    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 137
    .restart local v0       #dialog:Landroid/app/ProgressDialog;
    const v2, 0x7f0804d6

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 138
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 139
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    move-object v1, v0

    .line 142
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
    .line 120
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/VersionQuery;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 121
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 122
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 110
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 114
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    .line 115
    invoke-direct {p0}, Lcom/mediatek/engineermode/hqanfc/VersionQuery;->sendCommand()V

    .line 116
    return-void
.end method
