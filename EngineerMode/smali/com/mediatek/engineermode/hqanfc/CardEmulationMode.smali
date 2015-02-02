.class public Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;
.super Landroid/app/Activity;
.source "CardEmulationMode.java"


# static fields
.field private static final DIALOG_ID_WAIT:I = 0x0

.field private static final HANDLER_MSG_GET_RSP:I = 0xc8


# instance fields
.field private mBtnClearAll:Landroid/widget/Button;

.field private mBtnReturn:Landroid/widget/Button;

.field private mBtnRunInBack:Landroid/widget/Button;

.field private mBtnSelectAll:Landroid/widget/Button;

.field private mBtnStart:Landroid/widget/Button;

.field private mCbTypeA:Landroid/widget/CheckBox;

.field private mCbTypeB:Landroid/widget/CheckBox;

.field private mCbTypeF:Landroid/widget/CheckBox;

.field private final mClickListener:Landroid/view/View$OnClickListener;

.field private mEnableBackKey:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mResponse:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsCardmRsp;

.field private mRgSwio:Landroid/widget/RadioGroup;

.field private mRspArray:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;->mEnableBackKey:Z

    .line 48
    new-instance v0, Lcom/mediatek/engineermode/hqanfc/CardEmulationMode$1;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/hqanfc/CardEmulationMode$1;-><init>(Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 67
    new-instance v0, Lcom/mediatek/engineermode/hqanfc/CardEmulationMode$2;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/hqanfc/CardEmulationMode$2;-><init>(Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;->mHandler:Landroid/os/Handler;

    .line 98
    new-instance v0, Lcom/mediatek/engineermode/hqanfc/CardEmulationMode$3;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/hqanfc/CardEmulationMode$3;-><init>(Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;->mClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;->mRspArray:[B

    return-object v0
.end method

.method static synthetic access$002(Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;[B)[B
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;->mRspArray:[B

    return-object p1
.end method

.method static synthetic access$100(Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;)Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsCardmRsp;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;->mResponse:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsCardmRsp;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;->mBtnRunInBack:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$102(Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsCardmRsp;)Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsCardmRsp;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;->mResponse:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsCardmRsp;

    return-object p1
.end method

.method static synthetic access$200(Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;->mBtnStart:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;->setButtonsStatus(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;Ljava/lang/Boolean;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;->doTestAction(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;->mBtnSelectAll:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;->changeAllSelect(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;->mBtnClearAll:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$900(Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;->mBtnReturn:Landroid/widget/Button;

    return-object v0
.end method

.method private changeAllSelect(Z)V
    .locals 3
    .parameter "checked"

    .prologue
    .line 185
    const-string v0, "EM/HQA/NFC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeDisplay status is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    if-eqz p1, :cond_0

    .line 187
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;->mRgSwio:Landroid/widget/RadioGroup;

    const v1, 0x7f0b0215

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;->mCbTypeA:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 191
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;->mCbTypeB:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 192
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;->mCbTypeF:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 196
    return-void
.end method

.method private doTestAction(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "bStart"

    .prologue
    .line 199
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;->sendCommand(Ljava/lang/Boolean;)V

    .line 200
    return-void
.end method

.method private fillRequest(Ljava/lang/Boolean;Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsCardmReq;)V
    .locals 5
    .parameter "bStart"
    .parameter "requestCmd"

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 209
    if-nez p1, :cond_0

    .line 210
    iput v3, p2, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsCardmReq;->mAction:I

    .line 216
    :goto_0
    const/4 v0, 0x0

    .line 218
    .local v0, temp:I
    iget-object v4, p0, Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;->mCbTypeA:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_1
    or-int/2addr v0, v1

    .line 219
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;->mCbTypeB:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v3

    :goto_2
    or-int/2addr v0, v1

    .line 220
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;->mCbTypeF:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    :goto_3
    or-int/2addr v0, v1

    .line 222
    iput v0, p2, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsCardmReq;->mSupportType:I

    .line 223
    const/4 v0, 0x0

    .line 224
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;->mRgSwio:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 242
    :goto_4
    iput v0, p2, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsCardmReq;->mSwNum:I

    .line 243
    iput v2, p2, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsCardmReq;->mFgVirtualCard:I

    .line 244
    return-void

    .line 211
    .end local v0           #temp:I
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 212
    iput v2, p2, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsCardmReq;->mAction:I

    goto :goto_0

    .line 214
    :cond_1
    iput v1, p2, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsCardmReq;->mAction:I

    goto :goto_0

    .restart local v0       #temp:I
    :cond_2
    move v1, v2

    .line 218
    goto :goto_1

    :cond_3
    move v1, v2

    .line 219
    goto :goto_2

    :cond_4
    move v1, v2

    .line 220
    goto :goto_3

    .line 226
    :pswitch_0
    const/4 v0, 0x1

    .line 227
    goto :goto_4

    .line 229
    :pswitch_1
    const/4 v0, 0x2

    .line 230
    goto :goto_4

    .line 232
    :pswitch_2
    const/4 v0, 0x4

    .line 233
    goto :goto_4

    .line 224
    :pswitch_data_0
    .packed-switch 0x7f0b0215
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private initComponents()V
    .locals 2

    .prologue
    .line 150
    const-string v0, "EM/HQA/NFC"

    const-string v1, "initComponents"

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const v0, 0x7f0b0214

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;->mRgSwio:Landroid/widget/RadioGroup;

    .line 153
    const v0, 0x7f0b0218

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;->mCbTypeA:Landroid/widget/CheckBox;

    .line 154
    const v0, 0x7f0b0219

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;->mCbTypeB:Landroid/widget/CheckBox;

    .line 155
    const v0, 0x7f0b021a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;->mCbTypeF:Landroid/widget/CheckBox;

    .line 158
    const v0, 0x7f0b021b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;->mBtnSelectAll:Landroid/widget/Button;

    .line 159
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;->mBtnSelectAll:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    const v0, 0x7f0b021c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;->mBtnClearAll:Landroid/widget/Button;

    .line 161
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;->mBtnClearAll:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    const v0, 0x7f0b021d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;->mBtnStart:Landroid/widget/Button;

    .line 163
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;->mBtnStart:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    const v0, 0x7f0b021e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;->mBtnReturn:Landroid/widget/Button;

    .line 165
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;->mBtnReturn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    const v0, 0x7f0b021f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;->mBtnRunInBack:Landroid/widget/Button;

    .line 167
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;->mBtnRunInBack:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;->mBtnRunInBack:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 169
    return-void
.end method

.method private sendCommand(Ljava/lang/Boolean;)V
    .locals 3
    .parameter "bStart"

    .prologue
    .line 203
    new-instance v0, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsCardmReq;

    invoke-direct {v0}, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsCardmReq;-><init>()V

    .line 204
    .local v0, requestCmd:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsCardmReq;
    invoke-direct {p0, p1, v0}, Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;->fillRequest(Ljava/lang/Boolean;Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsCardmReq;)V

    .line 205
    invoke-static {}, Lcom/mediatek/engineermode/hqanfc/NfcClient;->getInstance()Lcom/mediatek/engineermode/hqanfc/NfcClient;

    move-result-object v1

    const/16 v2, 0x6b

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/engineermode/hqanfc/NfcClient;->sendCommand(ILcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmReq;)I

    .line 206
    return-void
.end method

.method private setButtonsStatus(Z)V
    .locals 2
    .parameter "b"

    .prologue
    .line 172
    if-eqz p1, :cond_0

    .line 173
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;->mBtnStart:Landroid/widget/Button;

    const v1, 0x7f0804aa

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 177
    :goto_0
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;->mBtnRunInBack:Landroid/widget/Button;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 178
    iput-boolean p1, p0, Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;->mEnableBackKey:Z

    .line 179
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;->mBtnReturn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 180
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;->mBtnSelectAll:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 181
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;->mBtnClearAll:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 182
    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;->mBtnStart:Landroid/widget/Button;

    const v1, 0x7f0804ab

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 177
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;->mEnableBackKey:Z

    if-nez v0, :cond_0

    .line 147
    :goto_0
    return-void

    .line 146
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 125
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 126
    const v1, 0x7f030044

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 127
    invoke-direct {p0}, Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;->initComponents()V

    .line 128
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;->changeAllSelect(Z)V

    .line 130
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 131
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.mediatek.hqanfc.108"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 133
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 248
    const/4 v0, 0x0

    .line 249
    .local v0, dialog:Landroid/app/ProgressDialog;
    if-nez p1, :cond_0

    .line 250
    new-instance v0, Landroid/app/ProgressDialog;

    .end local v0           #dialog:Landroid/app/ProgressDialog;
    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 251
    .restart local v0       #dialog:Landroid/app/ProgressDialog;
    const v2, 0x7f0804d6

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 252
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 253
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    move-object v1, v0

    .line 256
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
    .line 137
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 138
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 139
    return-void
.end method
