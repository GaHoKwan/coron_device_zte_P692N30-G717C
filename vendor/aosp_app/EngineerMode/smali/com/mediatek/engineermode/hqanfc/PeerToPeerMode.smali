.class public Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;
.super Landroid/app/Activity;
.source "PeerToPeerMode.java"


# static fields
.field private static final CHECKBOX_ACTIVE_MODE:I = 0x3

.field private static final CHECKBOX_DISABLE_CARD:I = 0x6

.field private static final CHECKBOX_INITIATOR:I = 0x4

.field private static final CHECKBOX_NUMBER:I = 0x7

.field private static final CHECKBOX_PASSIVE_MODE:I = 0x2

.field private static final CHECKBOX_TARGET:I = 0x5

.field private static final CHECKBOX_TYPEA:I = 0x0

.field private static final CHECKBOX_TYPEF:I = 0x1

.field private static final DIALOG_ID_RESULT:I = 0x0

.field private static final DIALOG_ID_WAIT:I = 0x1

.field private static final HANDLER_MSG_GET_NTF:I = 0xc9

.field private static final HANDLER_MSG_GET_RSP:I = 0xc8

.field protected static final KEY_P2P_RSP_ARRAY:Ljava/lang/String; = "p2p_rsp_array"

.field private static final RADIO_NUMBER:I = 0x6

.field private static final RADIO_P2P_TYPEA_106:I = 0x0

.field private static final RADIO_P2P_TYPEA_212:I = 0x1

.field private static final RADIO_P2P_TYPEA_424:I = 0x2

.field private static final RADIO_P2P_TYPEA_848:I = 0x3

.field private static final RADIO_P2P_TYPEF_212:I = 0x4

.field private static final RADIO_P2P_TYPEF_424:I = 0x5


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mBtnClearAll:Landroid/widget/Button;

.field private mBtnReturn:Landroid/widget/Button;

.field private mBtnRunInBack:Landroid/widget/Button;

.field private mBtnSelectAll:Landroid/widget/Button;

.field private mBtnStart:Landroid/widget/Button;

.field private final mCheckedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private final mClickListener:Landroid/view/View$OnClickListener;

.field private mEnableBackKey:Z

.field private final mHandler:Landroid/os/Handler;

.field private mNtfContent:Ljava/lang/String;

.field private mP2pNtf:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsP2pNtf;

.field private mP2pRsp:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsP2pRsp;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRgTypeA:Landroid/widget/RadioGroup;

.field private mRgTypeF:Landroid/widget/RadioGroup;

.field private mRspArray:[B

.field private mSettingsCkBoxs:[Landroid/widget/CheckBox;

.field private mSettingsRadioButtons:[Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 60
    const/4 v0, 0x7

    new-array v0, v0, [Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    .line 61
    const/4 v0, 0x6

    new-array v0, v0, [Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mSettingsRadioButtons:[Landroid/widget/RadioButton;

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mAlertDialog:Landroid/app/AlertDialog;

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mEnableBackKey:Z

    .line 77
    new-instance v0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode$1;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode$1;-><init>(Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 103
    new-instance v0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode$2;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode$2;-><init>(Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mHandler:Landroid/os/Handler;

    .line 144
    new-instance v0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode$3;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode$3;-><init>(Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mCheckedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 160
    new-instance v0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode$4;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode$4;-><init>(Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mRspArray:[B

    return-object v0
.end method

.method static synthetic access$002(Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;[B)[B
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mRspArray:[B

    return-object p1
.end method

.method static synthetic access$100(Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;)Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsP2pNtf;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mP2pNtf:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsP2pNtf;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->checkRoleSelect()Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsP2pNtf;)Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsP2pNtf;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mP2pNtf:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsP2pNtf;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;Ljava/lang/Boolean;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->doTestAction(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mBtnSelectAll:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->changeAllSelect(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mBtnClearAll:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mBtnReturn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mBtnRunInBack:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;)Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsP2pRsp;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mP2pRsp:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsP2pRsp;

    return-object v0
.end method

.method static synthetic access$302(Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsP2pRsp;)Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsP2pRsp;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mP2pRsp:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsP2pRsp;

    return-object p1
.end method

.method static synthetic access$400(Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mBtnStart:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->setButtonsStatus(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;)[Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;)Landroid/widget/RadioGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mRgTypeA:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method static synthetic access$900(Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;)Landroid/widget/RadioGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mRgTypeF:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method private changeAllSelect(Z)V
    .locals 4
    .parameter "checked"

    .prologue
    .line 263
    const-string v1, "EM/HQA/NFC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[PeerToPeerMode]changeAllSelect status is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 265
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 264
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 267
    :cond_0
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 268
    if-eqz p1, :cond_1

    .line 269
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mRgTypeA:Landroid/widget/RadioGroup;

    const v2, 0x7f0b0242

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 270
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mRgTypeF:Landroid/widget/RadioGroup;

    const v2, 0x7f0b0248

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 272
    :cond_1
    return-void
.end method

.method private checkRoleSelect()Z
    .locals 3

    .prologue
    .line 336
    const/4 v0, 0x1

    .line 337
    .local v0, result:Z
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 338
    const/4 v0, 0x0

    .line 340
    :cond_0
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    .line 341
    const/4 v0, 0x0

    .line 343
    :cond_1
    return v0
.end method

.method private doTestAction(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "bStart"

    .prologue
    .line 275
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->sendCommand(Ljava/lang/Boolean;)V

    .line 276
    return-void
.end method

.method private fillRequest(Ljava/lang/Boolean;Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsP2pReq;)V
    .locals 10
    .parameter "bStart"
    .parameter "requestCmd"

    .prologue
    const/4 v9, 0x3

    const/4 v6, 0x4

    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 285
    if-nez p1, :cond_0

    .line 286
    iput v7, p2, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsP2pReq;->mAction:I

    .line 292
    :goto_0
    const/4 v0, 0x0

    .line 293
    .local v0, temp:I
    iget-object v3, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    aget-object v3, v3, v5

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    :goto_1
    or-int/2addr v0, v3

    .line 294
    iget-object v3, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v6

    :goto_2
    or-int/2addr v0, v3

    .line 295
    iput v0, p2, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsP2pReq;->mSupportType:I

    .line 297
    new-array v1, v6, [Landroid/widget/RadioButton;

    iget-object v3, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mSettingsRadioButtons:[Landroid/widget/RadioButton;

    aget-object v3, v3, v5

    aput-object v3, v1, v5

    iget-object v3, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mSettingsRadioButtons:[Landroid/widget/RadioButton;

    aget-object v3, v3, v4

    aput-object v3, v1, v4

    iget-object v3, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mSettingsRadioButtons:[Landroid/widget/RadioButton;

    aget-object v3, v3, v7

    aput-object v3, v1, v7

    iget-object v3, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mSettingsRadioButtons:[Landroid/widget/RadioButton;

    aget-object v3, v3, v9

    aput-object v3, v1, v9

    .line 299
    .local v1, typeADateRateBoxs:[Landroid/widget/RadioButton;
    invoke-static {v1}, Lcom/mediatek/engineermode/hqanfc/NfcCommand$BitMapValue;->getTypeAbDataRateValue([Landroid/widget/RadioButton;)I

    move-result v3

    iput v3, p2, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsP2pReq;->mTypeADataRate:I

    .line 301
    new-array v2, v7, [Landroid/widget/RadioButton;

    iget-object v3, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mSettingsRadioButtons:[Landroid/widget/RadioButton;

    aget-object v3, v3, v6

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mSettingsRadioButtons:[Landroid/widget/RadioButton;

    const/4 v8, 0x5

    aget-object v3, v3, v8

    aput-object v3, v2, v4

    .line 302
    .local v2, typeFDateRateBoxs:[Landroid/widget/RadioButton;
    invoke-static {v2}, Lcom/mediatek/engineermode/hqanfc/NfcCommand$BitMapValue;->getTypeFDataRateValue([Landroid/widget/RadioButton;)I

    move-result v3

    iput v3, p2, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsP2pReq;->mTypeFDataRate:I

    .line 306
    iget-object v3, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    const/4 v8, 0x6

    aget-object v3, v3, v8

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v4

    :goto_3
    iput v3, p2, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsP2pReq;->mIsDisableCardM:I

    .line 308
    const/4 v0, 0x0

    .line 309
    iget-object v3, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v4

    :goto_4
    or-int/2addr v0, v3

    .line 310
    iget-object v3, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    const/4 v6, 0x5

    aget-object v3, v3, v6

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v7

    :goto_5
    or-int/2addr v0, v3

    .line 311
    iput v0, p2, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsP2pReq;->mRole:I

    .line 312
    const/4 v0, 0x0

    .line 313
    iget-object v3, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    aget-object v3, v3, v7

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_7

    :goto_6
    or-int/2addr v0, v4

    .line 314
    iget-object v3, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    aget-object v3, v3, v9

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_8

    :goto_7
    or-int/2addr v0, v7

    .line 315
    iput v0, p2, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsP2pReq;->mMode:I

    .line 316
    return-void

    .line 287
    .end local v0           #temp:I
    .end local v1           #typeADateRateBoxs:[Landroid/widget/RadioButton;
    .end local v2           #typeFDateRateBoxs:[Landroid/widget/RadioButton;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 288
    iput v5, p2, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsP2pReq;->mAction:I

    goto/16 :goto_0

    .line 290
    :cond_1
    iput v4, p2, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsP2pReq;->mAction:I

    goto/16 :goto_0

    .restart local v0       #temp:I
    :cond_2
    move v3, v5

    .line 293
    goto/16 :goto_1

    :cond_3
    move v3, v5

    .line 294
    goto/16 :goto_2

    .restart local v1       #typeADateRateBoxs:[Landroid/widget/RadioButton;
    .restart local v2       #typeFDateRateBoxs:[Landroid/widget/RadioButton;
    :cond_4
    move v3, v5

    .line 306
    goto :goto_3

    :cond_5
    move v3, v5

    .line 309
    goto :goto_4

    :cond_6
    move v3, v5

    .line 310
    goto :goto_5

    :cond_7
    move v4, v5

    .line 313
    goto :goto_6

    :cond_8
    move v7, v5

    .line 314
    goto :goto_7
.end method

.method private initComponents()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 215
    const-string v0, "EM/HQA/NFC"

    const-string v1, "[PeerToPeerMode]initComponents"

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    const v0, 0x7f0b0240

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    aput-object v0, v1, v3

    .line 217
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mCheckedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 218
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    const v0, 0x7f0b0246

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    aput-object v0, v1, v4

    .line 219
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    aget-object v0, v0, v4

    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mCheckedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 220
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    const v0, 0x7f0b024a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    aput-object v0, v1, v5

    .line 221
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    const v0, 0x7f0b024b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    aput-object v0, v1, v6

    .line 222
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    const v0, 0x7f0b024c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    aput-object v0, v1, v7

    .line 223
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    const/4 v2, 0x5

    const v0, 0x7f0b024d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    aput-object v0, v1, v2

    .line 224
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    const/4 v2, 0x6

    const v0, 0x7f0b024e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    aput-object v0, v1, v2

    .line 226
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mSettingsRadioButtons:[Landroid/widget/RadioButton;

    const v0, 0x7f0b0242

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    aput-object v0, v1, v3

    .line 227
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mSettingsRadioButtons:[Landroid/widget/RadioButton;

    const v0, 0x7f0b0243

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    aput-object v0, v1, v4

    .line 228
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mSettingsRadioButtons:[Landroid/widget/RadioButton;

    const v0, 0x7f0b0244

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    aput-object v0, v1, v5

    .line 229
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mSettingsRadioButtons:[Landroid/widget/RadioButton;

    const v0, 0x7f0b0245

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    aput-object v0, v1, v6

    .line 230
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mSettingsRadioButtons:[Landroid/widget/RadioButton;

    const v0, 0x7f0b0248

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    aput-object v0, v1, v7

    .line 231
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mSettingsRadioButtons:[Landroid/widget/RadioButton;

    const/4 v2, 0x5

    const v0, 0x7f0b0249

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    aput-object v0, v1, v2

    .line 233
    const v0, 0x7f0b0241

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mRgTypeA:Landroid/widget/RadioGroup;

    .line 234
    const v0, 0x7f0b0247

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mRgTypeF:Landroid/widget/RadioGroup;

    .line 236
    const v0, 0x7f0b024f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mBtnSelectAll:Landroid/widget/Button;

    .line 237
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mBtnSelectAll:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    const v0, 0x7f0b0250

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mBtnClearAll:Landroid/widget/Button;

    .line 239
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mBtnClearAll:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    const v0, 0x7f0b0251

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mBtnStart:Landroid/widget/Button;

    .line 241
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mBtnStart:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    const v0, 0x7f0b0252

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mBtnReturn:Landroid/widget/Button;

    .line 243
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mBtnReturn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    const v0, 0x7f0b0253

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mBtnRunInBack:Landroid/widget/Button;

    .line 245
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mBtnRunInBack:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mBtnRunInBack:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 247
    return-void
.end method

.method private sendCommand(Ljava/lang/Boolean;)V
    .locals 3
    .parameter "bStart"

    .prologue
    .line 279
    new-instance v0, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsP2pReq;

    invoke-direct {v0}, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsP2pReq;-><init>()V

    .line 280
    .local v0, requestCmd:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsP2pReq;
    invoke-direct {p0, p1, v0}, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->fillRequest(Ljava/lang/Boolean;Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsP2pReq;)V

    .line 281
    invoke-static {}, Lcom/mediatek/engineermode/hqanfc/NfcClient;->getInstance()Lcom/mediatek/engineermode/hqanfc/NfcClient;

    move-result-object v1

    const/16 v2, 0x69

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/engineermode/hqanfc/NfcClient;->sendCommand(ILcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmReq;)I

    .line 282
    return-void
.end method

.method private setButtonsStatus(Z)V
    .locals 2
    .parameter "b"

    .prologue
    .line 250
    if-eqz p1, :cond_0

    .line 251
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mBtnStart:Landroid/widget/Button;

    const v1, 0x7f0804aa

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 255
    :goto_0
    iput-boolean p1, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mEnableBackKey:Z

    .line 256
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mBtnRunInBack:Landroid/widget/Button;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 257
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mBtnReturn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 258
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mBtnSelectAll:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 259
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mBtnClearAll:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 260
    return-void

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mBtnStart:Landroid/widget/Button;

    const v1, 0x7f0804ab

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 256
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mEnableBackKey:Z

    if-nez v0, :cond_0

    .line 212
    :goto_0
    return-void

    .line 211
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 190
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 191
    const v1, 0x7f030049

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 192
    invoke-direct {p0}, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->initComponents()V

    .line 193
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->changeAllSelect(Z)V

    .line 194
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 195
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.mediatek.hqanfc.106"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 196
    const-string v1, "com.mediatek.hqanfc.119"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 197
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 198
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 320
    const/4 v1, 0x1

    if-ne v1, p1, :cond_1

    .line 321
    const/4 v0, 0x0

    .line 322
    .local v0, dialog:Landroid/app/ProgressDialog;
    new-instance v0, Landroid/app/ProgressDialog;

    .end local v0           #dialog:Landroid/app/ProgressDialog;
    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 323
    .restart local v0       #dialog:Landroid/app/ProgressDialog;
    const v1, 0x7f0804d6

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 324
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 325
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 332
    .end local v0           #dialog:Landroid/app/ProgressDialog;
    :cond_0
    :goto_0
    return-object v0

    .line 327
    :cond_1
    if-nez p1, :cond_0

    .line 328
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0804d9

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "P2P link is up"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mAlertDialog:Landroid/app/AlertDialog;

    .line 330
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mAlertDialog:Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 203
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 204
    return-void
.end method
