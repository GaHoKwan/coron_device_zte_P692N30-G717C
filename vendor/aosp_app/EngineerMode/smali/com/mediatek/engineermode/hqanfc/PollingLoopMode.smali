.class public Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;
.super Landroid/app/Activity;
.source "PollingLoopMode.java"


# static fields
.field private static final CHECKBOXS_NUMBER:I = 0x12

.field private static final CHECKBOX_CARD_MODE:I = 0xe

.field private static final CHECKBOX_CARD_MODE_TYPEA:I = 0xf

.field private static final CHECKBOX_CARD_MODE_TYPEB:I = 0x10

.field private static final CHECKBOX_CARD_MODE_TYPEF:I = 0x11

.field private static final CHECKBOX_P2P_ACTIVE_MODE:I = 0xa

.field private static final CHECKBOX_P2P_DISABLE_CARD:I = 0xd

.field private static final CHECKBOX_P2P_INITIATOR:I = 0xb

.field private static final CHECKBOX_P2P_MODE:I = 0x6

.field private static final CHECKBOX_P2P_PASSIVE_MODE:I = 0x9

.field private static final CHECKBOX_P2P_TARGET:I = 0xc

.field private static final CHECKBOX_P2P_TYPEA:I = 0x7

.field private static final CHECKBOX_P2P_TYPEF:I = 0x8

.field private static final CHECKBOX_READER_KOVIO:I = 0x5

.field private static final CHECKBOX_READER_MODE:I = 0x0

.field private static final CHECKBOX_READER_TYPEA:I = 0x1

.field private static final CHECKBOX_READER_TYPEB:I = 0x2

.field private static final CHECKBOX_READER_TYPEF:I = 0x3

.field private static final CHECKBOX_READER_TYPEV:I = 0x4

.field private static final DIALOG_ID_RESULT:I = 0x0

.field private static final DIALOG_ID_WAIT:I = 0x1

.field private static final HANDLER_MSG_GET_NTF:I = 0x64

.field private static final HANDLER_MSG_GET_RSP:I = 0xc8

.field private static final RADIO_CARD_SWIO1:I = 0x12

.field private static final RADIO_CARD_SWIO2:I = 0x13

.field private static final RADIO_CARD_SWIOSE:I = 0x14

.field private static final RADIO_NUMBER:I = 0x15

.field private static final RADIO_P2P_TYPEA_106:I = 0xc

.field private static final RADIO_P2P_TYPEA_212:I = 0xd

.field private static final RADIO_P2P_TYPEA_424:I = 0xe

.field private static final RADIO_P2P_TYPEA_848:I = 0xf

.field private static final RADIO_P2P_TYPEF_212:I = 0x10

.field private static final RADIO_P2P_TYPEF_424:I = 0x11

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
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mBtnClearAll:Landroid/widget/Button;

.field private mBtnReturn:Landroid/widget/Button;

.field private mBtnRunInBack:Landroid/widget/Button;

.field private mBtnSelectAll:Landroid/widget/Button;

.field private mBtnStart:Landroid/widget/Button;

.field private mCbTypeA:Landroid/widget/CheckBox;

.field private mCbTypeB:Landroid/widget/CheckBox;

.field private mCbTypeF:Landroid/widget/CheckBox;

.field private final mCheckedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private final mClickListener:Landroid/view/View$OnClickListener;

.field private mEnableBackKey:Z

.field private final mHandler:Landroid/os/Handler;

.field private mNtfContent:Ljava/lang/String;

.field private mPollingNty:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmPollingNty;

.field private mPollingRsp:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmPollingRsp;

.field private mRbPollingSelectListen:Landroid/widget/RadioButton;

.field private mRbPollingSelectPause:Landroid/widget/RadioButton;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRgCardSwio:Landroid/widget/RadioGroup;

.field private mRgP2pTypeA:Landroid/widget/RadioGroup;

.field private mRgP2pTypeF:Landroid/widget/RadioGroup;

.field private mRgPollingSelect:Landroid/widget/RadioGroup;

.field private mRgTypeA:Landroid/widget/RadioGroup;

.field private mRgTypeB:Landroid/widget/RadioGroup;

.field private mRgTypeF:Landroid/widget/RadioGroup;

.field private mRgTypeVMode:Landroid/widget/RadioGroup;

.field private mRgTypeVRate:Landroid/widget/RadioGroup;

.field private mRgTypeVSubCarrier:Landroid/widget/RadioGroup;

.field private mRspArray:[B

.field private mSettingsCkBoxs:[Landroid/widget/CheckBox;

.field private mSettingsRadioButtons:[Landroid/widget/RadioButton;

.field private mTvPeriod:Landroid/widget/EditText;

.field private mUnregisterReceiver:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 94
    const/16 v0, 0x12

    new-array v0, v0, [Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    .line 95
    const/16 v0, 0x15

    new-array v0, v0, [Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsRadioButtons:[Landroid/widget/RadioButton;

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mAlertDialog:Landroid/app/AlertDialog;

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mEnableBackKey:Z

    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mUnregisterReceiver:Z

    .line 130
    new-instance v0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode$1;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode$1;-><init>(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 156
    new-instance v0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode$2;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode$2;-><init>(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mHandler:Landroid/os/Handler;

    .line 239
    new-instance v0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode$3;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode$3;-><init>(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mCheckedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 282
    new-instance v0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode$4;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode$4;-><init>(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mRspArray:[B

    return-object v0
.end method

.method static synthetic access$002(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;[B)[B
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mRspArray:[B

    return-object p1
.end method

.method static synthetic access$100(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;)Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmPollingRsp;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mPollingRsp:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmPollingRsp;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;)Landroid/widget/RadioGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mRgTypeA:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method static synthetic access$102(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmPollingRsp;)Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmPollingRsp;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mPollingRsp:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmPollingRsp;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;Landroid/widget/RadioGroup;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->setRadioGroup(Landroid/widget/RadioGroup;Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;)Landroid/widget/RadioGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mRgTypeB:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;)Landroid/widget/RadioGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mRgTypeF:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;)Landroid/widget/RadioGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mRgTypeVSubCarrier:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;)Landroid/widget/RadioGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mRgTypeVMode:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;)Landroid/widget/RadioGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mRgTypeVRate:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;)Landroid/widget/RadioGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mRgP2pTypeA:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;)Landroid/widget/RadioGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mRgP2pTypeF:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;)Landroid/widget/RadioGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mRgCardSwio:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->checkRoleSelect()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;Ljava/lang/Boolean;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->doTestAction(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mBtnSelectAll:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->changeAllSelect(Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mBtnClearAll:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mBtnReturn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mBtnRunInBack:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;)Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmPollingNty;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mPollingNty:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmPollingNty;

    return-object v0
.end method

.method static synthetic access$302(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmPollingNty;)Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmPollingNty;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mPollingNty:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmPollingNty;

    return-object p1
.end method

.method static synthetic access$400(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mBtnStart:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->setButtonsStatus(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$802(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mUnregisterReceiver:Z

    return p1
.end method

.method static synthetic access$900(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;)[Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    return-object v0
.end method

.method private changeAllSelect(Z)V
    .locals 4
    .parameter "checked"

    .prologue
    .line 453
    const-string v1, "EM/HQA/NFC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[PollingLoopMode]changeDisplay status is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mRgPollingSelect:Landroid/widget/RadioGroup;

    const v2, 0x7f0b0259

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 455
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mTvPeriod:Landroid/widget/EditText;

    const-string v2, "500"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 456
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 457
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 456
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 459
    :cond_0
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    const/16 v2, 0xd

    aget-object v1, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 460
    if-eqz p1, :cond_1

    .line 461
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mRgTypeA:Landroid/widget/RadioGroup;

    const v2, 0x7f0b025f

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 462
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mRgTypeB:Landroid/widget/RadioGroup;

    const v2, 0x7f0b0265

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 463
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mRgTypeF:Landroid/widget/RadioGroup;

    const v2, 0x7f0b026b

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 464
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mRgTypeVSubCarrier:Landroid/widget/RadioGroup;

    const v2, 0x7f0b0270

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 465
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mRgTypeVMode:Landroid/widget/RadioGroup;

    const v2, 0x7f0b0272

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 466
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mRgTypeVRate:Landroid/widget/RadioGroup;

    const v2, 0x7f0b0275

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 468
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mRgP2pTypeA:Landroid/widget/RadioGroup;

    const v2, 0x7f0b027b

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 469
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mRgP2pTypeF:Landroid/widget/RadioGroup;

    const v2, 0x7f0b0281

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 471
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mRgCardSwio:Landroid/widget/RadioGroup;

    const v2, 0x7f0b028a

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 473
    :cond_1
    return-void
.end method

.method private checkRoleSelect()Z
    .locals 3

    .prologue
    .line 617
    const/4 v0, 0x1

    .line 618
    .local v0, result:Z
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    const/16 v2, 0xb

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    const/16 v2, 0xc

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 619
    const/4 v0, 0x0

    .line 621
    :cond_0
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    const/16 v2, 0xa

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    .line 623
    const/4 v0, 0x0

    .line 625
    :cond_1
    return v0
.end method

.method private doTestAction(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "bStart"

    .prologue
    .line 476
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->sendCommand(Ljava/lang/Boolean;)V

    .line 477
    return-void
.end method

.method private fillRequest(Ljava/lang/Boolean;Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmPollingReq;)V
    .locals 15
    .parameter "bStart"
    .parameter "requestCmd"

    .prologue
    .line 486
    if-nez p1, :cond_0

    .line 487
    const/4 v12, 0x2

    move-object/from16 v0, p2

    iput v12, v0, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmPollingReq;->mAction:I

    .line 488
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmPollingReq;->mP2pmReq:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsP2pReq;

    const/4 v13, 0x2

    iput v13, v12, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsP2pReq;->mAction:I

    .line 489
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmPollingReq;->mReadermReq:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermReq;

    const/4 v13, 0x2

    iput v13, v12, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermReq;->mAction:I

    .line 490
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmPollingReq;->mCardmReq:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsCardmReq;

    const/4 v13, 0x2

    iput v13, v12, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsCardmReq;->mAction:I

    .line 502
    :goto_0
    iget-object v12, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mRbPollingSelectListen:Landroid/widget/RadioButton;

    invoke-virtual {v12}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v12

    if-eqz v12, :cond_2

    const/4 v12, 0x0

    :goto_1
    move-object/from16 v0, p2

    iput v12, v0, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmPollingReq;->mPhase:I

    .line 504
    :try_start_0
    iget-object v12, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mTvPeriod:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p2

    iput v12, v0, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmPollingReq;->mPeriod:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 508
    :goto_2
    const/4 v12, 0x3

    new-array v3, v12, [Landroid/widget/CheckBox;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    aput-object v13, v3, v12

    const/4 v12, 0x1

    iget-object v13, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    const/16 v14, 0xe

    aget-object v13, v13, v14

    aput-object v13, v3, v12

    const/4 v12, 0x2

    iget-object v13, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    const/4 v14, 0x6

    aget-object v13, v13, v14

    aput-object v13, v3, v12

    .line 510
    .local v3, functionBoxs:[Landroid/widget/CheckBox;
    invoke-static {v3}, Lcom/mediatek/engineermode/hqanfc/NfcCommand$BitMapValue;->getFunctionValue([Landroid/widget/CheckBox;)I

    move-result v12

    move-object/from16 v0, p2

    iput v12, v0, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmPollingReq;->mEnableFunc:I

    .line 512
    const/4 v4, 0x0

    .line 513
    .local v4, p2pTemp:I
    iget-object v12, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    const/4 v13, 0x7

    aget-object v12, v12, v13

    invoke-virtual {v12}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v12

    if-eqz v12, :cond_3

    const/4 v12, 0x1

    :goto_3
    or-int/2addr v4, v12

    .line 514
    iget-object v12, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    const/16 v13, 0x8

    aget-object v12, v12, v13

    invoke-virtual {v12}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v12

    if-eqz v12, :cond_4

    const/4 v12, 0x4

    :goto_4
    or-int/2addr v4, v12

    .line 515
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmPollingReq;->mP2pmReq:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsP2pReq;

    iput v4, v12, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsP2pReq;->mSupportType:I

    .line 517
    const/4 v12, 0x4

    new-array v9, v12, [Landroid/widget/RadioButton;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsRadioButtons:[Landroid/widget/RadioButton;

    const/16 v14, 0xc

    aget-object v13, v13, v14

    aput-object v13, v9, v12

    const/4 v12, 0x1

    iget-object v13, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsRadioButtons:[Landroid/widget/RadioButton;

    const/16 v14, 0xd

    aget-object v13, v13, v14

    aput-object v13, v9, v12

    const/4 v12, 0x2

    iget-object v13, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsRadioButtons:[Landroid/widget/RadioButton;

    const/16 v14, 0xe

    aget-object v13, v13, v14

    aput-object v13, v9, v12

    const/4 v12, 0x3

    iget-object v13, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsRadioButtons:[Landroid/widget/RadioButton;

    const/16 v14, 0xf

    aget-object v13, v13, v14

    aput-object v13, v9, v12

    .line 519
    .local v9, typeADateRateBoxs:[Landroid/widget/RadioButton;
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmPollingReq;->mP2pmReq:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsP2pReq;

    invoke-static {v9}, Lcom/mediatek/engineermode/hqanfc/NfcCommand$BitMapValue;->getTypeAbDataRateValue([Landroid/widget/RadioButton;)I

    move-result v13

    iput v13, v12, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsP2pReq;->mTypeADataRate:I

    .line 521
    const/4 v12, 0x2

    new-array v11, v12, [Landroid/widget/RadioButton;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsRadioButtons:[Landroid/widget/RadioButton;

    const/16 v14, 0x10

    aget-object v13, v13, v14

    aput-object v13, v11, v12

    const/4 v12, 0x1

    iget-object v13, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsRadioButtons:[Landroid/widget/RadioButton;

    const/16 v14, 0x11

    aget-object v13, v13, v14

    aput-object v13, v11, v12

    .line 522
    .local v11, typeFDateRateBoxs:[Landroid/widget/RadioButton;
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmPollingReq;->mP2pmReq:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsP2pReq;

    invoke-static {v11}, Lcom/mediatek/engineermode/hqanfc/NfcCommand$BitMapValue;->getTypeFDataRateValue([Landroid/widget/RadioButton;)I

    move-result v13

    iput v13, v12, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsP2pReq;->mTypeFDataRate:I

    .line 524
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmPollingReq;->mP2pmReq:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsP2pReq;

    iget-object v12, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    const/16 v14, 0xd

    aget-object v12, v12, v14

    invoke-virtual {v12}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v12

    if-eqz v12, :cond_5

    const/4 v12, 0x1

    :goto_5
    iput v12, v13, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsP2pReq;->mIsDisableCardM:I

    .line 526
    const/4 v4, 0x0

    .line 527
    iget-object v12, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    const/16 v13, 0xb

    aget-object v12, v12, v13

    invoke-virtual {v12}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v12

    if-eqz v12, :cond_6

    const/4 v12, 0x1

    :goto_6
    or-int/2addr v4, v12

    .line 528
    iget-object v12, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    const/16 v13, 0xc

    aget-object v12, v12, v13

    invoke-virtual {v12}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v12

    if-eqz v12, :cond_7

    const/4 v12, 0x2

    :goto_7
    or-int/2addr v4, v12

    .line 529
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmPollingReq;->mP2pmReq:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsP2pReq;

    iput v4, v12, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsP2pReq;->mRole:I

    .line 530
    const/4 v4, 0x0

    .line 531
    iget-object v12, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    const/16 v13, 0x9

    aget-object v12, v12, v13

    invoke-virtual {v12}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v12

    if-eqz v12, :cond_8

    const/4 v12, 0x1

    :goto_8
    or-int/2addr v4, v12

    .line 532
    iget-object v12, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    const/16 v13, 0xa

    aget-object v12, v12, v13

    invoke-virtual {v12}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v12

    if-eqz v12, :cond_9

    const/4 v12, 0x2

    :goto_9
    or-int/2addr v4, v12

    .line 533
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmPollingReq;->mP2pmReq:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsP2pReq;

    iput v4, v12, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsP2pReq;->mMode:I

    .line 536
    const/4 v12, 0x5

    new-array v10, v12, [Landroid/widget/CheckBox;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    const/4 v14, 0x1

    aget-object v13, v13, v14

    aput-object v13, v10, v12

    const/4 v12, 0x1

    iget-object v13, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    const/4 v14, 0x2

    aget-object v13, v13, v14

    aput-object v13, v10, v12

    const/4 v12, 0x2

    iget-object v13, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    const/4 v14, 0x3

    aget-object v13, v13, v14

    aput-object v13, v10, v12

    const/4 v12, 0x3

    iget-object v13, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    const/4 v14, 0x4

    aget-object v13, v13, v14

    aput-object v13, v10, v12

    const/4 v12, 0x4

    iget-object v13, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    const/4 v14, 0x5

    aget-object v13, v13, v14

    aput-object v13, v10, v12

    .line 539
    .local v10, typeBoxs:[Landroid/widget/CheckBox;
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmPollingReq;->mReadermReq:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermReq;

    invoke-static {v10}, Lcom/mediatek/engineermode/hqanfc/NfcCommand$BitMapValue;->getTypeValue([Landroid/widget/CheckBox;)I

    move-result v13

    iput v13, v12, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermReq;->mSupportType:I

    .line 541
    const/4 v12, 0x4

    new-array v5, v12, [Landroid/widget/RadioButton;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsRadioButtons:[Landroid/widget/RadioButton;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    aput-object v13, v5, v12

    const/4 v12, 0x1

    iget-object v13, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsRadioButtons:[Landroid/widget/RadioButton;

    const/4 v14, 0x1

    aget-object v13, v13, v14

    aput-object v13, v5, v12

    const/4 v12, 0x2

    iget-object v13, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsRadioButtons:[Landroid/widget/RadioButton;

    const/4 v14, 0x2

    aget-object v13, v13, v14

    aput-object v13, v5, v12

    const/4 v12, 0x3

    iget-object v13, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsRadioButtons:[Landroid/widget/RadioButton;

    const/4 v14, 0x3

    aget-object v13, v13, v14

    aput-object v13, v5, v12

    .line 544
    .local v5, readerADateRateBoxs:[Landroid/widget/RadioButton;
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmPollingReq;->mReadermReq:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermReq;

    invoke-static {v5}, Lcom/mediatek/engineermode/hqanfc/NfcCommand$BitMapValue;->getTypeAbDataRateValue([Landroid/widget/RadioButton;)I

    move-result v13

    iput v13, v12, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermReq;->mTypeADataRate:I

    .line 546
    const/4 v12, 0x4

    new-array v6, v12, [Landroid/widget/RadioButton;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsRadioButtons:[Landroid/widget/RadioButton;

    const/4 v14, 0x4

    aget-object v13, v13, v14

    aput-object v13, v6, v12

    const/4 v12, 0x1

    iget-object v13, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsRadioButtons:[Landroid/widget/RadioButton;

    const/4 v14, 0x5

    aget-object v13, v13, v14

    aput-object v13, v6, v12

    const/4 v12, 0x2

    iget-object v13, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsRadioButtons:[Landroid/widget/RadioButton;

    const/4 v14, 0x6

    aget-object v13, v13, v14

    aput-object v13, v6, v12

    const/4 v12, 0x3

    iget-object v13, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsRadioButtons:[Landroid/widget/RadioButton;

    const/4 v14, 0x7

    aget-object v13, v13, v14

    aput-object v13, v6, v12

    .line 549
    .local v6, readerBDateRateBoxs:[Landroid/widget/RadioButton;
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmPollingReq;->mReadermReq:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermReq;

    invoke-static {v6}, Lcom/mediatek/engineermode/hqanfc/NfcCommand$BitMapValue;->getTypeAbDataRateValue([Landroid/widget/RadioButton;)I

    move-result v13

    iput v13, v12, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermReq;->mTypeBDataRate:I

    .line 551
    const/4 v12, 0x2

    new-array v7, v12, [Landroid/widget/RadioButton;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsRadioButtons:[Landroid/widget/RadioButton;

    const/16 v14, 0x8

    aget-object v13, v13, v14

    aput-object v13, v7, v12

    const/4 v12, 0x1

    iget-object v13, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsRadioButtons:[Landroid/widget/RadioButton;

    const/16 v14, 0x9

    aget-object v13, v13, v14

    aput-object v13, v7, v12

    .line 553
    .local v7, readerFDateRateBoxs:[Landroid/widget/RadioButton;
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmPollingReq;->mReadermReq:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermReq;

    invoke-static {v7}, Lcom/mediatek/engineermode/hqanfc/NfcCommand$BitMapValue;->getTypeFDataRateValue([Landroid/widget/RadioButton;)I

    move-result v13

    iput v13, v12, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermReq;->mTypeFDataRate:I

    .line 555
    const/4 v12, 0x2

    new-array v8, v12, [Landroid/widget/RadioButton;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsRadioButtons:[Landroid/widget/RadioButton;

    const/16 v14, 0xa

    aget-object v13, v13, v14

    aput-object v13, v8, v12

    const/4 v12, 0x1

    iget-object v13, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsRadioButtons:[Landroid/widget/RadioButton;

    const/16 v14, 0xb

    aget-object v13, v13, v14

    aput-object v13, v8, v12

    .line 557
    .local v8, readerVDateRateBoxs:[Landroid/widget/RadioButton;
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmPollingReq;->mReadermReq:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermReq;

    invoke-static {v8}, Lcom/mediatek/engineermode/hqanfc/NfcCommand$BitMapValue;->getTypeVDataRateValue([Landroid/widget/RadioButton;)I

    move-result v13

    iput v13, v12, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermReq;->mTypeVDataRate:I

    .line 559
    iget-object v12, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mRgTypeVSubCarrier:Landroid/widget/RadioGroup;

    invoke-virtual {v12}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v12

    const v13, 0x7f0b026f

    if-ne v12, v13, :cond_a

    .line 560
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmPollingReq;->mReadermReq:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermReq;

    const/4 v13, 0x0

    iput v13, v12, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermReq;->mTypeVSubcarrier:I

    .line 565
    :goto_a
    iget-object v12, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mRgTypeVMode:Landroid/widget/RadioGroup;

    invoke-virtual {v12}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v12

    const v13, 0x7f0b0272

    if-ne v12, v13, :cond_b

    .line 566
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmPollingReq;->mReadermReq:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermReq;

    const/4 v13, 0x0

    iput v13, v12, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermReq;->mTypeVCodingMode:I

    .line 572
    :goto_b
    const/4 v1, 0x0

    .line 574
    .local v1, cardTemp:I
    iget-object v12, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    const/16 v13, 0xf

    aget-object v12, v12, v13

    invoke-virtual {v12}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v12

    if-eqz v12, :cond_c

    const/4 v12, 0x1

    :goto_c
    or-int/2addr v1, v12

    .line 575
    iget-object v12, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    const/16 v13, 0x10

    aget-object v12, v12, v13

    invoke-virtual {v12}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v12

    if-eqz v12, :cond_d

    const/4 v12, 0x2

    :goto_d
    or-int/2addr v1, v12

    .line 576
    iget-object v12, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    const/16 v13, 0x11

    aget-object v12, v12, v13

    invoke-virtual {v12}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v12

    if-eqz v12, :cond_e

    const/4 v12, 0x4

    :goto_e
    or-int/2addr v1, v12

    .line 577
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmPollingReq;->mCardmReq:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsCardmReq;

    iput v1, v12, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsCardmReq;->mSupportType:I

    .line 579
    const/4 v1, 0x0

    .line 581
    iget-object v12, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mRgCardSwio:Landroid/widget/RadioGroup;

    invoke-virtual {v12}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v12

    packed-switch v12, :pswitch_data_0

    .line 594
    :goto_f
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmPollingReq;->mCardmReq:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsCardmReq;

    iput v1, v12, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsCardmReq;->mSwNum:I

    .line 595
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmPollingReq;->mCardmReq:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsCardmReq;

    const/4 v13, 0x0

    iput v13, v12, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsCardmReq;->mFgVirtualCard:I

    .line 596
    return-void

    .line 491
    .end local v1           #cardTemp:I
    .end local v3           #functionBoxs:[Landroid/widget/CheckBox;
    .end local v4           #p2pTemp:I
    .end local v5           #readerADateRateBoxs:[Landroid/widget/RadioButton;
    .end local v6           #readerBDateRateBoxs:[Landroid/widget/RadioButton;
    .end local v7           #readerFDateRateBoxs:[Landroid/widget/RadioButton;
    .end local v8           #readerVDateRateBoxs:[Landroid/widget/RadioButton;
    .end local v9           #typeADateRateBoxs:[Landroid/widget/RadioButton;
    .end local v10           #typeBoxs:[Landroid/widget/CheckBox;
    .end local v11           #typeFDateRateBoxs:[Landroid/widget/RadioButton;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 492
    const/4 v12, 0x0

    move-object/from16 v0, p2

    iput v12, v0, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmPollingReq;->mAction:I

    .line 493
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmPollingReq;->mP2pmReq:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsP2pReq;

    const/4 v13, 0x0

    iput v13, v12, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsP2pReq;->mAction:I

    .line 494
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmPollingReq;->mReadermReq:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermReq;

    const/4 v13, 0x0

    iput v13, v12, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermReq;->mAction:I

    .line 495
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmPollingReq;->mCardmReq:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsCardmReq;

    const/4 v13, 0x0

    iput v13, v12, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsCardmReq;->mAction:I

    goto/16 :goto_0

    .line 497
    :cond_1
    const/4 v12, 0x1

    move-object/from16 v0, p2

    iput v12, v0, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmPollingReq;->mAction:I

    .line 498
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmPollingReq;->mP2pmReq:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsP2pReq;

    const/4 v13, 0x1

    iput v13, v12, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsP2pReq;->mAction:I

    .line 499
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmPollingReq;->mReadermReq:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermReq;

    const/4 v13, 0x1

    iput v13, v12, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermReq;->mAction:I

    .line 500
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmPollingReq;->mCardmReq:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsCardmReq;

    const/4 v13, 0x1

    iput v13, v12, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsCardmReq;->mAction:I

    goto/16 :goto_0

    .line 502
    :cond_2
    const/4 v12, 0x1

    goto/16 :goto_1

    .line 505
    :catch_0
    move-exception v2

    .line 506
    .local v2, e:Ljava/lang/NumberFormatException;
    const-string v12, "Please input the right Period."

    const/4 v13, 0x0

    invoke-static {p0, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 513
    .end local v2           #e:Ljava/lang/NumberFormatException;
    .restart local v3       #functionBoxs:[Landroid/widget/CheckBox;
    .restart local v4       #p2pTemp:I
    :cond_3
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 514
    :cond_4
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 524
    .restart local v9       #typeADateRateBoxs:[Landroid/widget/RadioButton;
    .restart local v11       #typeFDateRateBoxs:[Landroid/widget/RadioButton;
    :cond_5
    const/4 v12, 0x0

    goto/16 :goto_5

    .line 527
    :cond_6
    const/4 v12, 0x0

    goto/16 :goto_6

    .line 528
    :cond_7
    const/4 v12, 0x0

    goto/16 :goto_7

    .line 531
    :cond_8
    const/4 v12, 0x0

    goto/16 :goto_8

    .line 532
    :cond_9
    const/4 v12, 0x0

    goto/16 :goto_9

    .line 562
    .restart local v5       #readerADateRateBoxs:[Landroid/widget/RadioButton;
    .restart local v6       #readerBDateRateBoxs:[Landroid/widget/RadioButton;
    .restart local v7       #readerFDateRateBoxs:[Landroid/widget/RadioButton;
    .restart local v8       #readerVDateRateBoxs:[Landroid/widget/RadioButton;
    .restart local v10       #typeBoxs:[Landroid/widget/CheckBox;
    :cond_a
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmPollingReq;->mReadermReq:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermReq;

    const/4 v13, 0x1

    iput v13, v12, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermReq;->mTypeVSubcarrier:I

    goto/16 :goto_a

    .line 568
    :cond_b
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmPollingReq;->mReadermReq:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermReq;

    const/4 v13, 0x1

    iput v13, v12, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermReq;->mTypeVCodingMode:I

    goto/16 :goto_b

    .line 574
    .restart local v1       #cardTemp:I
    :cond_c
    const/4 v12, 0x0

    goto/16 :goto_c

    .line 575
    :cond_d
    const/4 v12, 0x0

    goto/16 :goto_d

    .line 576
    :cond_e
    const/4 v12, 0x0

    goto/16 :goto_e

    .line 583
    :pswitch_0
    const/4 v1, 0x1

    .line 584
    goto/16 :goto_f

    .line 586
    :pswitch_1
    const/4 v1, 0x2

    .line 587
    goto/16 :goto_f

    .line 589
    :pswitch_2
    const/4 v1, 0x4

    .line 590
    goto/16 :goto_f

    .line 581
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b028a
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private initComponents()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 349
    const-string v0, "EM/HQA/NFC"

    const-string v1, "[PollingLoopMode]initComponents"

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    const v0, 0x7f0b0258

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mRgPollingSelect:Landroid/widget/RadioGroup;

    .line 352
    const v0, 0x7f0b0259

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mRbPollingSelectListen:Landroid/widget/RadioButton;

    .line 353
    const v0, 0x7f0b025a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mRbPollingSelectPause:Landroid/widget/RadioButton;

    .line 354
    const v0, 0x7f0b025b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mTvPeriod:Landroid/widget/EditText;

    .line 355
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    const v0, 0x7f0b025c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    aput-object v0, v1, v3

    .line 356
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mCheckedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 357
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    const v0, 0x7f0b025d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    aput-object v0, v1, v4

    .line 358
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    aget-object v0, v0, v4

    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mCheckedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 359
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    const v0, 0x7f0b0263

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    aput-object v0, v1, v5

    .line 360
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    aget-object v0, v0, v5

    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mCheckedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 361
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    const v0, 0x7f0b0269

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    aput-object v0, v1, v6

    .line 362
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    aget-object v0, v0, v6

    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mCheckedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 363
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    const v0, 0x7f0b026d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    aput-object v0, v1, v7

    .line 364
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    aget-object v0, v0, v7

    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mCheckedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 365
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    const/4 v2, 0x5

    const v0, 0x7f0b0277

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    aput-object v0, v1, v2

    .line 367
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsRadioButtons:[Landroid/widget/RadioButton;

    const v0, 0x7f0b025f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    aput-object v0, v1, v3

    .line 368
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsRadioButtons:[Landroid/widget/RadioButton;

    const v0, 0x7f0b0260

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    aput-object v0, v1, v4

    .line 369
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsRadioButtons:[Landroid/widget/RadioButton;

    const v0, 0x7f0b0261

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    aput-object v0, v1, v5

    .line 370
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsRadioButtons:[Landroid/widget/RadioButton;

    const v0, 0x7f0b0262

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    aput-object v0, v1, v6

    .line 371
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsRadioButtons:[Landroid/widget/RadioButton;

    const v0, 0x7f0b0265

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    aput-object v0, v1, v7

    .line 372
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsRadioButtons:[Landroid/widget/RadioButton;

    const/4 v2, 0x5

    const v0, 0x7f0b0266

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    aput-object v0, v1, v2

    .line 373
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsRadioButtons:[Landroid/widget/RadioButton;

    const/4 v2, 0x6

    const v0, 0x7f0b0267

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    aput-object v0, v1, v2

    .line 374
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsRadioButtons:[Landroid/widget/RadioButton;

    const/4 v2, 0x7

    const v0, 0x7f0b0268

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    aput-object v0, v1, v2

    .line 375
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsRadioButtons:[Landroid/widget/RadioButton;

    const/16 v2, 0x8

    const v0, 0x7f0b026b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    aput-object v0, v1, v2

    .line 376
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsRadioButtons:[Landroid/widget/RadioButton;

    const/16 v2, 0x9

    const v0, 0x7f0b026c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    aput-object v0, v1, v2

    .line 377
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsRadioButtons:[Landroid/widget/RadioButton;

    const/16 v2, 0xa

    const v0, 0x7f0b0275

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    aput-object v0, v1, v2

    .line 378
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsRadioButtons:[Landroid/widget/RadioButton;

    const/16 v2, 0xb

    const v0, 0x7f0b0276

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    aput-object v0, v1, v2

    .line 380
    const v0, 0x7f0b025e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mRgTypeA:Landroid/widget/RadioGroup;

    .line 381
    const v0, 0x7f0b0264

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mRgTypeB:Landroid/widget/RadioGroup;

    .line 382
    const v0, 0x7f0b026a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mRgTypeF:Landroid/widget/RadioGroup;

    .line 383
    const v0, 0x7f0b026e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mRgTypeVSubCarrier:Landroid/widget/RadioGroup;

    .line 384
    const v0, 0x7f0b0271

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mRgTypeVMode:Landroid/widget/RadioGroup;

    .line 385
    const v0, 0x7f0b0274

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mRgTypeVRate:Landroid/widget/RadioGroup;

    .line 388
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    const/4 v2, 0x6

    const v0, 0x7f0b0278

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    aput-object v0, v1, v2

    .line 389
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mCheckedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 390
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    const/4 v2, 0x7

    const v0, 0x7f0b0279

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    aput-object v0, v1, v2

    .line 391
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mCheckedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 392
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    const/16 v2, 0x8

    const v0, 0x7f0b027f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    aput-object v0, v1, v2

    .line 393
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mCheckedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 394
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    const/16 v2, 0x9

    const v0, 0x7f0b0283

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    aput-object v0, v1, v2

    .line 395
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    const/16 v2, 0xa

    const v0, 0x7f0b0284

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    aput-object v0, v1, v2

    .line 396
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    const/16 v2, 0xb

    const v0, 0x7f0b0285

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    aput-object v0, v1, v2

    .line 397
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    const/16 v2, 0xc

    const v0, 0x7f0b0286

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    aput-object v0, v1, v2

    .line 398
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    const/16 v2, 0xd

    const v0, 0x7f0b0287

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    aput-object v0, v1, v2

    .line 400
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsRadioButtons:[Landroid/widget/RadioButton;

    const/16 v2, 0xc

    const v0, 0x7f0b027b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    aput-object v0, v1, v2

    .line 401
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsRadioButtons:[Landroid/widget/RadioButton;

    const/16 v2, 0xd

    const v0, 0x7f0b027c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    aput-object v0, v1, v2

    .line 402
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsRadioButtons:[Landroid/widget/RadioButton;

    const/16 v2, 0xe

    const v0, 0x7f0b027d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    aput-object v0, v1, v2

    .line 403
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsRadioButtons:[Landroid/widget/RadioButton;

    const/16 v2, 0xf

    const v0, 0x7f0b027e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    aput-object v0, v1, v2

    .line 404
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsRadioButtons:[Landroid/widget/RadioButton;

    const/16 v2, 0x10

    const v0, 0x7f0b0281

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    aput-object v0, v1, v2

    .line 405
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsRadioButtons:[Landroid/widget/RadioButton;

    const/16 v2, 0x11

    const v0, 0x7f0b0282

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    aput-object v0, v1, v2

    .line 407
    const v0, 0x7f0b027a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mRgP2pTypeA:Landroid/widget/RadioGroup;

    .line 408
    const v0, 0x7f0b0280

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mRgP2pTypeF:Landroid/widget/RadioGroup;

    .line 411
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    const/16 v2, 0xe

    const v0, 0x7f0b0288

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    aput-object v0, v1, v2

    .line 412
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    const/16 v1, 0xe

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mCheckedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 413
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    const/16 v2, 0xf

    const v0, 0x7f0b028d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    aput-object v0, v1, v2

    .line 414
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    const/16 v2, 0x10

    const v0, 0x7f0b028e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    aput-object v0, v1, v2

    .line 415
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;

    const/16 v2, 0x11

    const v0, 0x7f0b028f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    aput-object v0, v1, v2

    .line 417
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsRadioButtons:[Landroid/widget/RadioButton;

    const/16 v2, 0x12

    const v0, 0x7f0b028a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    aput-object v0, v1, v2

    .line 418
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsRadioButtons:[Landroid/widget/RadioButton;

    const/16 v2, 0x13

    const v0, 0x7f0b028b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    aput-object v0, v1, v2

    .line 419
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mSettingsRadioButtons:[Landroid/widget/RadioButton;

    const/16 v2, 0x14

    const v0, 0x7f0b028c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    aput-object v0, v1, v2

    .line 421
    const v0, 0x7f0b0289

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mRgCardSwio:Landroid/widget/RadioGroup;

    .line 423
    const v0, 0x7f0b0290

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mBtnSelectAll:Landroid/widget/Button;

    .line 424
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mBtnSelectAll:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 425
    const v0, 0x7f0b0291

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mBtnClearAll:Landroid/widget/Button;

    .line 426
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mBtnClearAll:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 427
    const v0, 0x7f0b0292

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mBtnStart:Landroid/widget/Button;

    .line 428
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mBtnStart:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 429
    const v0, 0x7f0b0293

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mBtnReturn:Landroid/widget/Button;

    .line 430
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mBtnReturn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 431
    const v0, 0x7f0b0294

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mBtnRunInBack:Landroid/widget/Button;

    .line 432
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mBtnRunInBack:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 433
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mBtnRunInBack:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 434
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mRgPollingSelect:Landroid/widget/RadioGroup;

    const v1, 0x7f0b0259

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 435
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mTvPeriod:Landroid/widget/EditText;

    const-string v1, "500"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mTvPeriod:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mTvPeriod:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 437
    return-void
.end method

.method private sendCommand(Ljava/lang/Boolean;)V
    .locals 3
    .parameter "bStart"

    .prologue
    .line 480
    new-instance v0, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmPollingReq;

    invoke-direct {v0}, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmPollingReq;-><init>()V

    .line 481
    .local v0, requestCmd:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmPollingReq;
    invoke-direct {p0, p1, v0}, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->fillRequest(Ljava/lang/Boolean;Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmPollingReq;)V

    .line 482
    invoke-static {}, Lcom/mediatek/engineermode/hqanfc/NfcClient;->getInstance()Lcom/mediatek/engineermode/hqanfc/NfcClient;

    move-result-object v1

    const/16 v2, 0x6d

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/engineermode/hqanfc/NfcClient;->sendCommand(ILcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmReq;)I

    .line 483
    return-void
.end method

.method private setButtonsStatus(Z)V
    .locals 2
    .parameter "b"

    .prologue
    .line 440
    if-eqz p1, :cond_0

    .line 441
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mBtnStart:Landroid/widget/Button;

    const v1, 0x7f0804aa

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 445
    :goto_0
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mBtnRunInBack:Landroid/widget/Button;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 446
    iput-boolean p1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mEnableBackKey:Z

    .line 447
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mBtnReturn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 448
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mBtnSelectAll:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 449
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mBtnClearAll:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 450
    return-void

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mBtnStart:Landroid/widget/Button;

    const v1, 0x7f0804ab

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 445
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private setRadioGroup(Landroid/widget/RadioGroup;Z)V
    .locals 2
    .parameter "rg"
    .parameter "checked"

    .prologue
    .line 234
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 235
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 234
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 237
    :cond_0
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 342
    iget-boolean v0, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mEnableBackKey:Z

    if-nez v0, :cond_0

    .line 346
    :goto_0
    return-void

    .line 345
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 312
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 313
    const v1, 0x7f03004b

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 314
    invoke-direct {p0}, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->initComponents()V

    .line 315
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->changeAllSelect(Z)V

    .line 316
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 317
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.mediatek.hqanfc.110"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 318
    const-string v1, "com.mediatek.hqanfc.117"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 319
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 320
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 600
    const/4 v2, 0x1

    if-ne v2, p1, :cond_1

    .line 601
    const/4 v1, 0x0

    .line 602
    .local v1, dialog:Landroid/app/ProgressDialog;
    new-instance v1, Landroid/app/ProgressDialog;

    .end local v1           #dialog:Landroid/app/ProgressDialog;
    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 603
    .restart local v1       #dialog:Landroid/app/ProgressDialog;
    const v2, 0x7f0804d6

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 604
    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 605
    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 613
    .end local v1           #dialog:Landroid/app/ProgressDialog;
    :cond_0
    :goto_0
    return-object v1

    .line 607
    :cond_1
    if-nez p1, :cond_0

    .line 608
    const/4 v0, 0x0

    .line 609
    .local v0, alertDialog:Landroid/app/AlertDialog;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0804d9

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "P2P link is up"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    move-object v1, v0

    .line 611
    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 337
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 338
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 323
    const-string v1, "EM/HQA/NFC"

    const-string v2, "[PollingLoopMode]onStart"

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iget-boolean v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mUnregisterReceiver:Z

    if-eqz v1, :cond_0

    .line 325
    const-string v1, "EM/HQA/NFC"

    const-string v2, "register receiver"

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mUnregisterReceiver:Z

    .line 327
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 328
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.mediatek.hqanfc.110"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 329
    const-string v1, "com.mediatek.hqanfc.117"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 330
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 332
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 333
    return-void
.end method
