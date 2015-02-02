.class public Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;
.super Landroid/app/Activity;
.source "VirtualCardFunction.java"


# static fields
.field private static final CHECKBOXS_NUMBER:I = 0x5

.field private static final CHECKBOX_TYPEA:I = 0x0

.field private static final CHECKBOX_TYPEB:I = 0x1

.field private static final CHECKBOX_TYPEF:I = 0x2

.field private static final CHECKBOX_TYPEF_212:I = 0x3

.field private static final CHECKBOX_TYPEF_424:I = 0x4

.field private static final DIALOG_ID_WAIT:I = 0x0

.field private static final HANDLER_MSG_GET_RSP:I = 0xc8

.field private static final RADIO_NUMBER:I = 0x2

.field private static final RADIO_TYPEF_212:I = 0x0

.field private static final RADIO_TYPEF_424:I = 0x1


# instance fields
.field private mBtnClearAll:Landroid/widget/Button;

.field private mBtnReturn:Landroid/widget/Button;

.field private mBtnRunInBack:Landroid/widget/Button;

.field private mBtnSelectAll:Landroid/widget/Button;

.field private mBtnStart:Landroid/widget/Button;

.field private final mCheckedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private final mClickListener:Landroid/view/View$OnClickListener;

.field private mEnableBackKey:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mResponse:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmVirtualCardRsp;

.field private mRspArray:[B

.field private mSettingsCkBoxs:[Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 56
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->mEnableBackKey:Z

    .line 68
    new-instance v0, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction$1;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction$1;-><init>(Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 87
    new-instance v0, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction$2;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction$2;-><init>(Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->mHandler:Landroid/os/Handler;

    .line 119
    new-instance v0, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction$3;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction$3;-><init>(Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->mCheckedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 142
    new-instance v0, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction$4;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction$4;-><init>(Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->mClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->mRspArray:[B

    return-object v0
.end method

.method static synthetic access$002(Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;[B)[B
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->mRspArray:[B

    return-object p1
.end method

.method static synthetic access$100(Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;)Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmVirtualCardRsp;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->mResponse:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmVirtualCardRsp;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->mBtnReturn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$102(Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmVirtualCardRsp;)Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmVirtualCardRsp;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->mResponse:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmVirtualCardRsp;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->mBtnRunInBack:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->mBtnStart:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->setButtonsStatus(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;)[Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;Ljava/lang/Boolean;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->doTestAction(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$700(Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->mBtnSelectAll:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->changeAllSelect(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->mBtnClearAll:Landroid/widget/Button;

    return-object v0
.end method

.method private changeAllSelect(Z)V
    .locals 4
    .parameter "checked"

    .prologue
    .line 235
    const-string v1, "EM/HQA/NFC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[VirtualCardFunction]changeAllSelect status is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 237
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 236
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 239
    :cond_0
    if-eqz p1, :cond_1

    .line 240
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 243
    :cond_1
    return-void
.end method

.method private doTestAction(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "bStart"

    .prologue
    .line 246
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->sendCommand(Ljava/lang/Boolean;)V

    .line 247
    return-void
.end method

.method private fillRequest(Ljava/lang/Boolean;Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmVirtualCardReq;)V
    .locals 7
    .parameter "bStart"
    .parameter "requestCmd"

    .prologue
    const/4 v6, 0x4

    const/4 v3, 0x1

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 256
    if-nez p1, :cond_0

    .line 257
    iput v5, p2, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmVirtualCardReq;->mAction:I

    .line 263
    :goto_0
    const/4 v1, 0x0

    .line 264
    .local v1, temp:I
    iget-object v2, p0, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_1
    or-int/2addr v1, v2

    .line 265
    iget-object v2, p0, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v5

    :goto_2
    or-int/2addr v1, v2

    .line 266
    iget-object v2, p0, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v6

    :goto_3
    or-int/2addr v1, v2

    .line 268
    iput v1, p2, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmVirtualCardReq;->mSupportType:I

    .line 270
    const/4 v0, 0x0

    .line 271
    .local v0, rateVaule:I
    iget-object v2, p0, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_5

    :goto_4
    or-int/2addr v0, v5

    .line 272
    iget-object v2, p0, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    aget-object v2, v2, v6

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_6

    :goto_5
    or-int/2addr v0, v6

    .line 274
    iput v0, p2, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmVirtualCardReq;->mTypeFDataRate:I

    .line 275
    return-void

    .line 258
    .end local v0           #rateVaule:I
    .end local v1           #temp:I
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 259
    iput v4, p2, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmVirtualCardReq;->mAction:I

    goto :goto_0

    .line 261
    :cond_1
    iput v3, p2, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmVirtualCardReq;->mAction:I

    goto :goto_0

    .restart local v1       #temp:I
    :cond_2
    move v2, v4

    .line 264
    goto :goto_1

    :cond_3
    move v2, v4

    .line 265
    goto :goto_2

    :cond_4
    move v2, v4

    .line 266
    goto :goto_3

    .restart local v0       #rateVaule:I
    :cond_5
    move v5, v4

    .line 271
    goto :goto_4

    :cond_6
    move v6, v4

    .line 272
    goto :goto_5
.end method

.method private initComponents()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 194
    const-string v0, "EM/HQA/NFC"

    const-string v1, "[VirtualCardFunction]initComponents"

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    const v0, 0x7f0b02c2

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    aput-object v0, v1, v3

    .line 196
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    const/4 v2, 0x1

    const v0, 0x7f0b02c3

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    aput-object v0, v1, v2

    .line 198
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    const v0, 0x7f0b02c4

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    aput-object v0, v1, v4

    .line 199
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    aget-object v0, v0, v4

    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->mCheckedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 200
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    const/4 v2, 0x3

    const v0, 0x7f0b02c5

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    aput-object v0, v1, v2

    .line 201
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    const/4 v2, 0x4

    const v0, 0x7f0b02c6

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    aput-object v0, v1, v2

    .line 208
    const v0, 0x7f0b02c7

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->mBtnSelectAll:Landroid/widget/Button;

    .line 209
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->mBtnSelectAll:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    const v0, 0x7f0b02c8

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->mBtnClearAll:Landroid/widget/Button;

    .line 211
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->mBtnClearAll:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    const v0, 0x7f0b02c9

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->mBtnStart:Landroid/widget/Button;

    .line 213
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->mBtnStart:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    const v0, 0x7f0b02ca

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->mBtnReturn:Landroid/widget/Button;

    .line 215
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->mBtnReturn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    const v0, 0x7f0b02cb

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->mBtnRunInBack:Landroid/widget/Button;

    .line 217
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->mBtnRunInBack:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->mBtnRunInBack:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 219
    return-void
.end method

.method private sendCommand(Ljava/lang/Boolean;)V
    .locals 3
    .parameter "bStart"

    .prologue
    .line 250
    new-instance v0, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmVirtualCardReq;

    invoke-direct {v0}, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmVirtualCardReq;-><init>()V

    .line 251
    .local v0, requestCmd:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmVirtualCardReq;
    invoke-direct {p0, p1, v0}, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->fillRequest(Ljava/lang/Boolean;Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmVirtualCardReq;)V

    .line 252
    invoke-static {}, Lcom/mediatek/engineermode/hqanfc/NfcClient;->getInstance()Lcom/mediatek/engineermode/hqanfc/NfcClient;

    move-result-object v1

    const/16 v2, 0x71

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/engineermode/hqanfc/NfcClient;->sendCommand(ILcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmReq;)I

    .line 253
    return-void
.end method

.method private setButtonsStatus(Z)V
    .locals 2
    .parameter "b"

    .prologue
    .line 222
    if-eqz p1, :cond_0

    .line 223
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->mBtnStart:Landroid/widget/Button;

    const v1, 0x7f0804aa

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 227
    :goto_0
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->mBtnRunInBack:Landroid/widget/Button;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 228
    iput-boolean p1, p0, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->mEnableBackKey:Z

    .line 229
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->mBtnReturn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 230
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->mBtnSelectAll:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 231
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->mBtnClearAll:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 232
    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->mBtnStart:Landroid/widget/Button;

    const v1, 0x7f0804ab

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 227
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->mEnableBackKey:Z

    if-nez v0, :cond_0

    .line 191
    :goto_0
    return-void

    .line 190
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 170
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 171
    const v1, 0x7f030051

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 172
    invoke-direct {p0}, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->initComponents()V

    .line 173
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->changeAllSelect(Z)V

    .line 174
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 175
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.mediatek.hqanfc.114"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 176
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 177
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 279
    const/4 v0, 0x0

    .line 280
    .local v0, dialog:Landroid/app/ProgressDialog;
    if-nez p1, :cond_0

    .line 281
    new-instance v0, Landroid/app/ProgressDialog;

    .end local v0           #dialog:Landroid/app/ProgressDialog;
    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 282
    .restart local v0       #dialog:Landroid/app/ProgressDialog;
    const v2, 0x7f0804d6

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 283
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 284
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    move-object v1, v0

    .line 287
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
    .line 181
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 182
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 183
    return-void
.end method
