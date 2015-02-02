.class public Lcom/mediatek/engineermode/hqanfc/ReaderMode;
.super Landroid/app/Activity;
.source "ReaderMode.java"


# static fields
.field private static final CHECKBOXS_NUMBER:I = 0x5

.field private static final CHECKBOX_READER_KOVIO:I = 0x4

.field private static final CHECKBOX_READER_TYPEA:I = 0x0

.field private static final CHECKBOX_READER_TYPEB:I = 0x1

.field private static final CHECKBOX_READER_TYPEF:I = 0x2

.field private static final CHECKBOX_READER_TYPEV:I = 0x3

.field private static final DIALOG_ID_WAIT:I = 0x0

.field private static final HANDLER_MSG_GET_NTF:I = 0x64

.field private static final HANDLER_MSG_GET_RSP:I = 0xc8

.field protected static final KEY_READER_MODE_RSP_ARRAY:Ljava/lang/String; = "reader_mode_rsp_array"

.field protected static final KEY_READER_MODE_RSP_NDEF:Ljava/lang/String; = "reader_mode_rsp_ndef"

.field private static final RADIO_NUMBER:I = 0xc

.field private static final RADIO_READER_TYPEA_106:I = 0x0

.field private static final RADIO_READER_TYPEA_212:I = 0x1

.field private static final RADIO_READER_TYPEA_424:I = 0x2

.field private static final RADIO_READER_TYPEA_848:I = 0x3

.field private static final RADIO_READER_TYPEB_106:I = 0x4

.field private static final RADIO_READER_TYPEB_212:I = 0x5

.field private static final RADIO_READER_TYPEB_424:I = 0x6

.field private static final RADIO_READER_TYPEB_848:I = 0x7

.field private static final RADIO_READER_TYPEF_212:I = 0x8

.field private static final RADIO_READER_TYPEF_424:I = 0x9

.field private static final RADIO_READER_TYPEV_166:I = 0xa

.field private static final RADIO_READER_TYPEV_2648:I = 0xb


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

.field private mReadermNtf:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermNtf;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mResponse:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermRsp;

.field private mRgTypeA:Landroid/widget/RadioGroup;

.field private mRgTypeB:Landroid/widget/RadioGroup;

.field private mRgTypeF:Landroid/widget/RadioGroup;

.field private mRgTypeVMode:Landroid/widget/RadioGroup;

.field private mRgTypeVRate:Landroid/widget/RadioGroup;

.field private mRgTypeVSubCarrier:Landroid/widget/RadioGroup;

.field private mRspArray:[B

.field private mRunInBack:Z

.field private mSettingsCkBoxs:[Landroid/widget/CheckBox;

.field private mSettingsRadioButtons:[Landroid/widget/RadioButton;

.field private mUnregisterReceiver:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 65
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    .line 66
    const/16 v0, 0xc

    new-array v0, v0, [Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mSettingsRadioButtons:[Landroid/widget/RadioButton;

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mEnableBackKey:Z

    .line 82
    iput-boolean v1, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mUnregisterReceiver:Z

    .line 83
    iput-boolean v1, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mRunInBack:Z

    .line 85
    new-instance v0, Lcom/mediatek/engineermode/hqanfc/ReaderMode$1;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/hqanfc/ReaderMode$1;-><init>(Lcom/mediatek/engineermode/hqanfc/ReaderMode;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 112
    new-instance v0, Lcom/mediatek/engineermode/hqanfc/ReaderMode$2;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/hqanfc/ReaderMode$2;-><init>(Lcom/mediatek/engineermode/hqanfc/ReaderMode;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mHandler:Landroid/os/Handler;

    .line 203
    new-instance v0, Lcom/mediatek/engineermode/hqanfc/ReaderMode$3;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/hqanfc/ReaderMode$3;-><init>(Lcom/mediatek/engineermode/hqanfc/ReaderMode;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mCheckedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 233
    new-instance v0, Lcom/mediatek/engineermode/hqanfc/ReaderMode$4;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/hqanfc/ReaderMode$4;-><init>(Lcom/mediatek/engineermode/hqanfc/ReaderMode;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/engineermode/hqanfc/ReaderMode;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mRspArray:[B

    return-object v0
.end method

.method static synthetic access$002(Lcom/mediatek/engineermode/hqanfc/ReaderMode;[B)[B
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mRspArray:[B

    return-object p1
.end method

.method static synthetic access$100(Lcom/mediatek/engineermode/hqanfc/ReaderMode;)Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermRsp;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mResponse:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermRsp;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mediatek/engineermode/hqanfc/ReaderMode;)Landroid/widget/RadioGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mRgTypeA:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method static synthetic access$102(Lcom/mediatek/engineermode/hqanfc/ReaderMode;Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermRsp;)Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermRsp;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mResponse:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermRsp;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/mediatek/engineermode/hqanfc/ReaderMode;)Landroid/widget/RadioGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mRgTypeB:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/mediatek/engineermode/hqanfc/ReaderMode;)Landroid/widget/RadioGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mRgTypeF:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/mediatek/engineermode/hqanfc/ReaderMode;)Landroid/widget/RadioGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mRgTypeVSubCarrier:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/mediatek/engineermode/hqanfc/ReaderMode;)Landroid/widget/RadioGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mRgTypeVMode:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/mediatek/engineermode/hqanfc/ReaderMode;)Landroid/widget/RadioGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mRgTypeVRate:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/mediatek/engineermode/hqanfc/ReaderMode;Ljava/lang/Boolean;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->doTestAction(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/mediatek/engineermode/hqanfc/ReaderMode;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mBtnSelectAll:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/mediatek/engineermode/hqanfc/ReaderMode;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->changeAllSelect(Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/mediatek/engineermode/hqanfc/ReaderMode;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mBtnClearAll:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/engineermode/hqanfc/ReaderMode;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/mediatek/engineermode/hqanfc/ReaderMode;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mBtnReturn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/mediatek/engineermode/hqanfc/ReaderMode;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mBtnRunInBack:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/engineermode/hqanfc/ReaderMode;)Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermNtf;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mReadermNtf:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermNtf;

    return-object v0
.end method

.method static synthetic access$302(Lcom/mediatek/engineermode/hqanfc/ReaderMode;Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermNtf;)Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermNtf;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mReadermNtf:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermNtf;

    return-object p1
.end method

.method static synthetic access$400(Lcom/mediatek/engineermode/hqanfc/ReaderMode;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mBtnStart:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/engineermode/hqanfc/ReaderMode;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->setButtonsStatus(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/engineermode/hqanfc/ReaderMode;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mRunInBack:Z

    return v0
.end method

.method static synthetic access$602(Lcom/mediatek/engineermode/hqanfc/ReaderMode;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mRunInBack:Z

    return p1
.end method

.method static synthetic access$700(Lcom/mediatek/engineermode/hqanfc/ReaderMode;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$802(Lcom/mediatek/engineermode/hqanfc/ReaderMode;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mUnregisterReceiver:Z

    return p1
.end method

.method static synthetic access$900(Lcom/mediatek/engineermode/hqanfc/ReaderMode;)[Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    return-object v0
.end method

.method private changeAllSelect(Z)V
    .locals 4
    .parameter "checked"

    .prologue
    .line 368
    const-string v1, "EM/HQA/NFC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ReaderMode]changeDisplay status is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 370
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 369
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 372
    :cond_0
    if-eqz p1, :cond_1

    .line 373
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mRgTypeA:Landroid/widget/RadioGroup;

    const v2, 0x7f0b0297

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 374
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mRgTypeB:Landroid/widget/RadioGroup;

    const v2, 0x7f0b029d

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 375
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mRgTypeF:Landroid/widget/RadioGroup;

    const v2, 0x7f0b02a3

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 376
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mRgTypeVSubCarrier:Landroid/widget/RadioGroup;

    const v2, 0x7f0b02a8

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 377
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mRgTypeVMode:Landroid/widget/RadioGroup;

    const v2, 0x7f0b02aa

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 378
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mRgTypeVRate:Landroid/widget/RadioGroup;

    const v2, 0x7f0b02ad

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 380
    :cond_1
    return-void
.end method

.method private doTestAction(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "bStart"

    .prologue
    .line 383
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->sendCommand(Ljava/lang/Boolean;)V

    .line 384
    return-void
.end method

.method private fillRequest(Ljava/lang/Boolean;Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermReq;)V
    .locals 11
    .parameter "bStart"
    .parameter "requestCmd"

    .prologue
    const/4 v6, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 393
    if-nez p1, :cond_0

    .line 394
    iput v9, p2, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermReq;->mAction:I

    .line 400
    :goto_0
    const/4 v5, 0x5

    new-array v4, v5, [Landroid/widget/CheckBox;

    iget-object v5, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    aget-object v5, v5, v7

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    aget-object v5, v5, v8

    aput-object v5, v4, v8

    iget-object v5, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    aget-object v5, v5, v9

    aput-object v5, v4, v9

    iget-object v5, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    aget-object v5, v5, v10

    aput-object v5, v4, v10

    iget-object v5, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    aget-object v5, v5, v6

    aput-object v5, v4, v6

    .line 404
    .local v4, typeBoxs:[Landroid/widget/CheckBox;
    invoke-static {v4}, Lcom/mediatek/engineermode/hqanfc/NfcCommand$BitMapValue;->getTypeValue([Landroid/widget/CheckBox;)I

    move-result v5

    iput v5, p2, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermReq;->mSupportType:I

    .line 406
    new-array v0, v6, [Landroid/widget/RadioButton;

    iget-object v5, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mSettingsRadioButtons:[Landroid/widget/RadioButton;

    aget-object v5, v5, v7

    aput-object v5, v0, v7

    iget-object v5, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mSettingsRadioButtons:[Landroid/widget/RadioButton;

    aget-object v5, v5, v8

    aput-object v5, v0, v8

    iget-object v5, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mSettingsRadioButtons:[Landroid/widget/RadioButton;

    aget-object v5, v5, v9

    aput-object v5, v0, v9

    iget-object v5, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mSettingsRadioButtons:[Landroid/widget/RadioButton;

    aget-object v5, v5, v10

    aput-object v5, v0, v10

    .line 409
    .local v0, readerADateRateBoxs:[Landroid/widget/RadioButton;
    invoke-static {v0}, Lcom/mediatek/engineermode/hqanfc/NfcCommand$BitMapValue;->getTypeAbDataRateValue([Landroid/widget/RadioButton;)I

    move-result v5

    iput v5, p2, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermReq;->mTypeADataRate:I

    .line 411
    new-array v1, v6, [Landroid/widget/RadioButton;

    iget-object v5, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mSettingsRadioButtons:[Landroid/widget/RadioButton;

    aget-object v5, v5, v6

    aput-object v5, v1, v7

    iget-object v5, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mSettingsRadioButtons:[Landroid/widget/RadioButton;

    const/4 v6, 0x5

    aget-object v5, v5, v6

    aput-object v5, v1, v8

    iget-object v5, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mSettingsRadioButtons:[Landroid/widget/RadioButton;

    const/4 v6, 0x6

    aget-object v5, v5, v6

    aput-object v5, v1, v9

    iget-object v5, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mSettingsRadioButtons:[Landroid/widget/RadioButton;

    const/4 v6, 0x7

    aget-object v5, v5, v6

    aput-object v5, v1, v10

    .line 414
    .local v1, readerBDateRateBoxs:[Landroid/widget/RadioButton;
    invoke-static {v1}, Lcom/mediatek/engineermode/hqanfc/NfcCommand$BitMapValue;->getTypeAbDataRateValue([Landroid/widget/RadioButton;)I

    move-result v5

    iput v5, p2, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermReq;->mTypeBDataRate:I

    .line 416
    new-array v2, v9, [Landroid/widget/RadioButton;

    iget-object v5, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mSettingsRadioButtons:[Landroid/widget/RadioButton;

    const/16 v6, 0x8

    aget-object v5, v5, v6

    aput-object v5, v2, v7

    iget-object v5, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mSettingsRadioButtons:[Landroid/widget/RadioButton;

    const/16 v6, 0x9

    aget-object v5, v5, v6

    aput-object v5, v2, v8

    .line 418
    .local v2, readerFDateRateBoxs:[Landroid/widget/RadioButton;
    invoke-static {v2}, Lcom/mediatek/engineermode/hqanfc/NfcCommand$BitMapValue;->getTypeFDataRateValue([Landroid/widget/RadioButton;)I

    move-result v5

    iput v5, p2, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermReq;->mTypeFDataRate:I

    .line 420
    new-array v3, v9, [Landroid/widget/RadioButton;

    iget-object v5, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mSettingsRadioButtons:[Landroid/widget/RadioButton;

    const/16 v6, 0xa

    aget-object v5, v5, v6

    aput-object v5, v3, v7

    iget-object v5, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mSettingsRadioButtons:[Landroid/widget/RadioButton;

    const/16 v6, 0xb

    aget-object v5, v5, v6

    aput-object v5, v3, v8

    .line 422
    .local v3, readerVDateRateBoxs:[Landroid/widget/RadioButton;
    invoke-static {v3}, Lcom/mediatek/engineermode/hqanfc/NfcCommand$BitMapValue;->getTypeVDataRateValue([Landroid/widget/RadioButton;)I

    move-result v5

    iput v5, p2, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermReq;->mTypeVDataRate:I

    .line 424
    iget-object v5, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mRgTypeVSubCarrier:Landroid/widget/RadioGroup;

    invoke-virtual {v5}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v5

    const v6, 0x7f0b02a7

    if-ne v5, v6, :cond_2

    .line 425
    iput v7, p2, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermReq;->mTypeVSubcarrier:I

    .line 430
    :goto_1
    iget-object v5, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mRgTypeVMode:Landroid/widget/RadioGroup;

    invoke-virtual {v5}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v5

    const v6, 0x7f0b02aa

    if-ne v5, v6, :cond_3

    .line 431
    iput v7, p2, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermReq;->mTypeVCodingMode:I

    .line 443
    :goto_2
    return-void

    .line 395
    .end local v0           #readerADateRateBoxs:[Landroid/widget/RadioButton;
    .end local v1           #readerBDateRateBoxs:[Landroid/widget/RadioButton;
    .end local v2           #readerFDateRateBoxs:[Landroid/widget/RadioButton;
    .end local v3           #readerVDateRateBoxs:[Landroid/widget/RadioButton;
    .end local v4           #typeBoxs:[Landroid/widget/CheckBox;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 396
    iput v7, p2, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermReq;->mAction:I

    goto/16 :goto_0

    .line 398
    :cond_1
    iput v8, p2, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermReq;->mAction:I

    goto/16 :goto_0

    .line 427
    .restart local v0       #readerADateRateBoxs:[Landroid/widget/RadioButton;
    .restart local v1       #readerBDateRateBoxs:[Landroid/widget/RadioButton;
    .restart local v2       #readerFDateRateBoxs:[Landroid/widget/RadioButton;
    .restart local v3       #readerVDateRateBoxs:[Landroid/widget/RadioButton;
    .restart local v4       #typeBoxs:[Landroid/widget/CheckBox;
    :cond_2
    iput v8, p2, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermReq;->mTypeVSubcarrier:I

    goto :goto_1

    .line 433
    :cond_3
    iput v8, p2, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermReq;->mTypeVCodingMode:I

    goto :goto_2
.end method

.method private initComponents()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 309
    const-string v0, "EM/HQA/NFC"

    const-string v1, "[ReaderMode]initComponents"

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    const v0, 0x7f0b0295

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    aput-object v0, v1, v3

    .line 311
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mCheckedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 312
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    const v0, 0x7f0b029b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    aput-object v0, v1, v2

    .line 313
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    aget-object v0, v0, v2

    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mCheckedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 314
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    const v0, 0x7f0b02a1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    aput-object v0, v1, v4

    .line 315
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    aget-object v0, v0, v4

    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mCheckedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 316
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    const v0, 0x7f0b02a5

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    aput-object v0, v1, v5

    .line 317
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    aget-object v0, v0, v5

    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mCheckedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 319
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mSettingsRadioButtons:[Landroid/widget/RadioButton;

    const v0, 0x7f0b0297

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    aput-object v0, v1, v3

    .line 320
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mSettingsRadioButtons:[Landroid/widget/RadioButton;

    const v0, 0x7f0b0298

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    aput-object v0, v1, v2

    .line 321
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mSettingsRadioButtons:[Landroid/widget/RadioButton;

    const v0, 0x7f0b0299

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    aput-object v0, v1, v4

    .line 322
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mSettingsRadioButtons:[Landroid/widget/RadioButton;

    const v0, 0x7f0b029a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    aput-object v0, v1, v5

    .line 323
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mSettingsRadioButtons:[Landroid/widget/RadioButton;

    const v0, 0x7f0b029d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    aput-object v0, v1, v6

    .line 324
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mSettingsRadioButtons:[Landroid/widget/RadioButton;

    const/4 v2, 0x5

    const v0, 0x7f0b029e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    aput-object v0, v1, v2

    .line 325
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mSettingsRadioButtons:[Landroid/widget/RadioButton;

    const/4 v2, 0x6

    const v0, 0x7f0b029f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    aput-object v0, v1, v2

    .line 326
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mSettingsRadioButtons:[Landroid/widget/RadioButton;

    const/4 v2, 0x7

    const v0, 0x7f0b02a0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    aput-object v0, v1, v2

    .line 327
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mSettingsRadioButtons:[Landroid/widget/RadioButton;

    const/16 v2, 0x8

    const v0, 0x7f0b02a3

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    aput-object v0, v1, v2

    .line 328
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mSettingsRadioButtons:[Landroid/widget/RadioButton;

    const/16 v2, 0x9

    const v0, 0x7f0b02a4

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    aput-object v0, v1, v2

    .line 329
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mSettingsRadioButtons:[Landroid/widget/RadioButton;

    const/16 v2, 0xa

    const v0, 0x7f0b02ad

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    aput-object v0, v1, v2

    .line 330
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mSettingsRadioButtons:[Landroid/widget/RadioButton;

    const/16 v2, 0xb

    const v0, 0x7f0b02ae

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    aput-object v0, v1, v2

    .line 332
    const v0, 0x7f0b0296

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mRgTypeA:Landroid/widget/RadioGroup;

    .line 333
    const v0, 0x7f0b029c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mRgTypeB:Landroid/widget/RadioGroup;

    .line 334
    const v0, 0x7f0b02a2

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mRgTypeF:Landroid/widget/RadioGroup;

    .line 335
    const v0, 0x7f0b02a6

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mRgTypeVSubCarrier:Landroid/widget/RadioGroup;

    .line 336
    const v0, 0x7f0b02a9

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mRgTypeVMode:Landroid/widget/RadioGroup;

    .line 337
    const v0, 0x7f0b02ac

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mRgTypeVRate:Landroid/widget/RadioGroup;

    .line 340
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    const v0, 0x7f0b02af

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    aput-object v0, v1, v6

    .line 341
    const v0, 0x7f0b02b0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mBtnSelectAll:Landroid/widget/Button;

    .line 342
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mBtnSelectAll:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 343
    const v0, 0x7f0b02b1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mBtnClearAll:Landroid/widget/Button;

    .line 344
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mBtnClearAll:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 345
    const v0, 0x7f0b02b2

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mBtnStart:Landroid/widget/Button;

    .line 346
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mBtnStart:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 347
    const v0, 0x7f0b02b3

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mBtnReturn:Landroid/widget/Button;

    .line 348
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mBtnReturn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 349
    const v0, 0x7f0b02b4

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mBtnRunInBack:Landroid/widget/Button;

    .line 350
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mBtnRunInBack:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 351
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mBtnRunInBack:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 352
    return-void
.end method

.method private sendCommand(Ljava/lang/Boolean;)V
    .locals 3
    .parameter "bStart"

    .prologue
    .line 387
    new-instance v0, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermReq;

    invoke-direct {v0}, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermReq;-><init>()V

    .line 388
    .local v0, requestCmd:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermReq;
    invoke-direct {p0, p1, v0}, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->fillRequest(Ljava/lang/Boolean;Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermReq;)V

    .line 389
    invoke-static {}, Lcom/mediatek/engineermode/hqanfc/NfcClient;->getInstance()Lcom/mediatek/engineermode/hqanfc/NfcClient;

    move-result-object v1

    const/16 v2, 0x65

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/engineermode/hqanfc/NfcClient;->sendCommand(ILcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmReq;)I

    .line 390
    return-void
.end method

.method private setButtonsStatus(Z)V
    .locals 2
    .parameter "b"

    .prologue
    .line 355
    if-eqz p1, :cond_0

    .line 356
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mBtnStart:Landroid/widget/Button;

    const v1, 0x7f0804aa

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 360
    :goto_0
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mBtnRunInBack:Landroid/widget/Button;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 361
    iput-boolean p1, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mEnableBackKey:Z

    .line 362
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mBtnReturn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 363
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mBtnSelectAll:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 364
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mBtnClearAll:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 365
    return-void

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mBtnStart:Landroid/widget/Button;

    const v1, 0x7f0804ab

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 360
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 302
    iget-boolean v0, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mEnableBackKey:Z

    if-nez v0, :cond_0

    .line 306
    :goto_0
    return-void

    .line 305
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 262
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 263
    const-string v1, "EM/HQA/NFC"

    const-string v2, "[ReaderMode]onCreate"

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const v1, 0x7f03004c

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 265
    invoke-direct {p0}, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->initComponents()V

    .line 266
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->changeAllSelect(Z)V

    .line 267
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 268
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.mediatek.hqanfc.102"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 269
    const-string v1, "com.mediatek.hqanfc.118"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 270
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 271
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 447
    const/4 v0, 0x0

    .line 448
    .local v0, dialog:Landroid/app/ProgressDialog;
    if-nez p1, :cond_0

    .line 449
    new-instance v0, Landroid/app/ProgressDialog;

    .end local v0           #dialog:Landroid/app/ProgressDialog;
    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 450
    .restart local v0       #dialog:Landroid/app/ProgressDialog;
    const v2, 0x7f0804d6

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 451
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 452
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    move-object v1, v0

    .line 455
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
    .locals 2

    .prologue
    .line 295
    const-string v0, "EM/HQA/NFC"

    const-string v1, "[ReaderMode]onDestroy"

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 297
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 298
    return-void
.end method

.method protected onStart()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 280
    const-string v1, "EM/HQA/NFC"

    const-string v2, "[ReaderMode]onStart"

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    iput-boolean v3, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mRunInBack:Z

    .line 282
    iget-boolean v1, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mUnregisterReceiver:Z

    if-eqz v1, :cond_0

    .line 283
    const-string v1, "EM/HQA/NFC"

    const-string v2, "register receiver"

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    iput-boolean v3, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mUnregisterReceiver:Z

    .line 285
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 286
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.mediatek.hqanfc.102"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 287
    const-string v1, "com.mediatek.hqanfc.118"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 288
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 290
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 291
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 275
    const-string v0, "EM/HQA/NFC"

    const-string v1, "[ReaderMode]onStop"

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 277
    return-void
.end method
