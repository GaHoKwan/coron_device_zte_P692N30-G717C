.class public Lcom/mediatek/lbs/em/LbsAgps;
.super Landroid/app/Activity;
.source "LbsAgps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/lbs/em/LbsAgps$137;,
        Lcom/mediatek/lbs/em/LbsAgps$TELEPHONE_MODE_LIST;,
        Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;
    }
.end annotation


# instance fields
.field private final NI_DIALOG_TEST_LIST:[Ljava/lang/String;

.field private final TIMEOUT_LIST:[Ljava/lang/String;

.field private mAccUnitFlag:I

.field private mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mButtonAgpsTest:Landroid/widget/Button;

.field private mButtonAutoTestOff:Landroid/widget/Button;

.field private mButtonAutoTestOn:Landroid/widget/Button;

.field private mButtonCdmaTemplate:Landroid/widget/Button;

.field private mButtonDelay:Landroid/widget/Button;

.field private mButtonGpsReset:Landroid/widget/Button;

.field private mButtonHAcc:Landroid/widget/Button;

.field private mButtonLoadProfile:Landroid/widget/Button;

.field private mButtonLocationAge:Landroid/widget/Button;

.field private mButtonMcpAddr:Landroid/widget/Button;

.field private mButtonMcpPort:Landroid/widget/Button;

.field private mButtonNiDialogTest:Landroid/widget/Button;

.field private mButtonPdeIp4Addr:Landroid/widget/Button;

.field private mButtonPdeIp6Addr:Landroid/widget/Button;

.field private mButtonPdePort:Landroid/widget/Button;

.field private mButtonPdeUrl:Landroid/widget/Button;

.field private mButtonReset2Default:Landroid/widget/Button;

.field private mButtonSetProfile:Landroid/widget/Button;

.field private mButtonSlpAddr:Landroid/widget/Button;

.field private mButtonSlpPort:Landroid/widget/Button;

.field private mButtonSlpTemplate:Landroid/widget/Button;

.field private mButtonSlpTest:Landroid/widget/Button;

.field private mButtonTestSuite:Landroid/widget/Button;

.field private mButtonVAcc:Landroid/widget/Button;

.field private mButton_AreaMaxNum:Landroid/widget/Button;

.field private mButton_AreaMinInter:Landroid/widget/Button;

.field private mButton_AreaStartTime:Landroid/widget/Button;

.field private mButton_AreaStopTime:Landroid/widget/Button;

.field private mButton_AreaType:Landroid/widget/Button;

.field private mButton_GeoLat:Landroid/widget/Button;

.field private mButton_GeoLong:Landroid/widget/Button;

.field private mButton_GeoRadius:Landroid/widget/Button;

.field private mButton_Geographic:Landroid/widget/Button;

.field private mButton_MSISDNEdit:Landroid/widget/Button;

.field private mButton_PeriodicInter:Landroid/widget/Button;

.field private mButton_PeriodicNFix:Landroid/widget/Button;

.field private mButton_PeriodicSTime:Landroid/widget/Button;

.field private mButton_PosMethod:Landroid/widget/Button;

.field private mButton_SILR:Landroid/widget/Button;

.field private mButton_ThirdMSISDNEdit:Landroid/widget/Button;

.field private mButton_TriggerAbort:Landroid/widget/Button;

.field private mButton_TriggerStart:Landroid/widget/Button;

.field private mCdmaPopup:Landroid/widget/PopupMenu;

.field private mCdmaProfile:Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;

.field private mCheckBoxCerVerify:Landroid/widget/CheckBox;

.field private mCheckBoxEcidEnable:Landroid/widget/CheckBox;

.field private mCheckBoxEmAllow:Landroid/widget/CheckBox;

.field private mCheckBoxEnableAgps:Landroid/widget/CheckBox;

.field private mCheckBoxEnableNiTimer:Landroid/widget/CheckBox;

.field private mCheckBoxExternalAddr:Landroid/widget/CheckBox;

.field private mCheckBoxLabPerformance:Landroid/widget/CheckBox;

.field private mCheckBoxMcpEnable:Landroid/widget/CheckBox;

.field private mCheckBoxMlcNumber:Landroid/widget/CheckBox;

.field private mCheckBoxNiAllow:Landroid/widget/CheckBox;

.field private mCheckBoxPdeAddrValid:Landroid/widget/CheckBox;

.field private mCheckBoxPdeIpType:Landroid/widget/CheckBox;

.field private mCheckBoxPdeUrlVaild:Landroid/widget/CheckBox;

.field private mCheckBoxRoamingAllow:Landroid/widget/CheckBox;

.field private mCheckBoxSupl2File:Landroid/widget/CheckBox;

.field private mCheckBoxTls:Landroid/widget/CheckBox;

.field private mCheckBox_SUPLTwo:Landroid/widget/CheckBox;

.field private mCheckBox_ThirdMSISDN:Landroid/widget/CheckBox;

.field private mCheckEnableIot:Landroid/widget/CheckBox;

.field private mCurrentProfile:Lcom/mediatek/common/agps/MtkAgpsProfile;

.field private mDebugMode:Z

.field private mHandler:Landroid/os/Handler;

.field private mIgnoreFirstNotifySpinner:Z

.field private mIgnoreFirstVerifySpinner:Z

.field private mLinearLayoutCdmaPage:Landroid/widget/LinearLayout;

.field private mLinearLayoutCdmaSettings:Landroid/widget/LinearLayout;

.field private mLinearLayoutCpSettings:Landroid/widget/LinearLayout;

.field private mLinearLayoutNiTimer:Landroid/widget/LinearLayout;

.field private mLinearLayoutPayloadType:Landroid/widget/LinearLayout;

.field private mLinearLayoutTest:Landroid/widget/LinearLayout;

.field private mLinearLayoutUpSettings:Landroid/widget/LinearLayout;

.field private mLinearLayout_AreaSettings:Landroid/widget/LinearLayout;

.field private mLinearLayout_PeriodicSettings:Landroid/widget/LinearLayout;

.field private mLinearLayout_SUPLTwoDotZero:Landroid/widget/LinearLayout;

.field private mLinearLayout_SUPLTwoDotZeroTitle:Landroid/widget/LinearLayout;

.field private mLocationListener:Landroid/location/LocationListener;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mPopupAgpsTest:Landroid/widget/PopupMenu;

.field private mPopupAreaType:Landroid/widget/PopupMenu;

.field private mPopupGeoType:Landroid/widget/PopupMenu;

.field private mPopupNiDialog:Landroid/widget/PopupMenu;

.field private mPopupPosMethod:Landroid/widget/PopupMenu;

.field private mPopupSlp:Landroid/widget/PopupMenu;

.field private mPopupTest:Landroid/widget/PopupMenu;

.field private mProfileManager:Lcom/mediatek/common/agps/MtkAgpsProfileManager;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mRadioButtonAssistanceData:Landroid/widget/RadioButton;

.field private mRadioButtonCp:Landroid/widget/RadioButton;

.field private mRadioButtonImsi:Landroid/widget/RadioButton;

.field private mRadioButtonIpv4:Landroid/widget/RadioButton;

.field private mRadioButtonKValue:Landroid/widget/RadioButton;

.field private mRadioButtonLocationEstimate:Landroid/widget/RadioButton;

.field private mRadioButtonMeter:Landroid/widget/RadioButton;

.field private mRadioButtonMsa:Landroid/widget/RadioButton;

.field private mRadioButtonMsb:Landroid/widget/RadioButton;

.field private mRadioButtonPreferSim1:Landroid/widget/RadioButton;

.field private mRadioButtonPreferSim2:Landroid/widget/RadioButton;

.field private mRadioButtonPreferSim3:Landroid/widget/RadioButton;

.field private mRadioButtonPreferSim4:Landroid/widget/RadioButton;

.field private mRadioButtonRrc:Landroid/widget/RadioButton;

.field private mRadioButtonRrlp:Landroid/widget/RadioButton;

.field private mRadioButtonRrlpRrc:Landroid/widget/RadioButton;

.field private mRadioButtonStandalone:Landroid/widget/RadioButton;

.field private mRadioButtonUp:Landroid/widget/RadioButton;

.field private mRadioButton_Area:Landroid/widget/RadioButton;

.field private mRadioButton_CDMA_Force:Landroid/widget/RadioButton;

.field private mRadioButton_CDMA_Prefer:Landroid/widget/RadioButton;

.field private mRadioButton_GeoRadiusSignNorth:Landroid/widget/RadioButton;

.field private mRadioButton_GeoRadiusSignSouth:Landroid/widget/RadioButton;

.field private mRadioButton_Periodic:Landroid/widget/RadioButton;

.field private mRadioButton_WCDMA_Prefer:Landroid/widget/RadioButton;

.field private mRadioGroup_CDMA_Prefer:Landroid/widget/RadioGroup;

.field private mSpinnerNotificationTimeout:Landroid/widget/Spinner;

.field private mSpinnerVerificationTimeout:Landroid/widget/Spinner;

.field private mTextViewDelay:Landroid/widget/TextView;

.field private mTextViewExternalAddr:Landroid/widget/TextView;

.field private mTextViewHAcc:Landroid/widget/TextView;

.field private mTextViewLocationAge:Landroid/widget/TextView;

.field private mTextViewMcpAddr:Landroid/widget/TextView;

.field private mTextViewMcpPort:Landroid/widget/TextView;

.field private mTextViewMlcNumber:Landroid/widget/TextView;

.field private mTextViewPdeIp4Addr:Landroid/widget/TextView;

.field private mTextViewPdeIp6Addr:Landroid/widget/TextView;

.field private mTextViewPdePort:Landroid/widget/TextView;

.field private mTextViewPdeUrl:Landroid/widget/TextView;

.field private mTextViewProperty:Landroid/widget/TextView;

.field private mTextViewSlpAddr:Landroid/widget/TextView;

.field private mTextViewSlpPort:Landroid/widget/TextView;

.field private mTextViewSlpTestResult:Landroid/widget/TextView;

.field private mTextViewVAcc:Landroid/widget/TextView;

.field private mTextView_AreaMaxNum:Landroid/widget/TextView;

.field private mTextView_AreaMinInter:Landroid/widget/TextView;

.field private mTextView_AreaStartTime:Landroid/widget/TextView;

.field private mTextView_AreaStopTime:Landroid/widget/TextView;

.field private mTextView_AreaType:Landroid/widget/TextView;

.field private mTextView_GeoLat:Landroid/widget/TextView;

.field private mTextView_GeoLong:Landroid/widget/TextView;

.field private mTextView_GeoRadius:Landroid/widget/TextView;

.field private mTextView_GeographicResult:Landroid/widget/TextView;

.field private mTextView_MSISDN:Landroid/widget/TextView;

.field private mTextView_PeriodicInter:Landroid/widget/TextView;

.field private mTextView_PeriodicNFix:Landroid/widget/TextView;

.field private mTextView_PeriodicSTime:Landroid/widget/TextView;

.field private mTextView_PosMethod:Landroid/widget/TextView;

.field private mTextView_SILRResult:Landroid/widget/TextView;

.field private mTextView_ThirdMSISDN:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 73
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 75
    const/16 v0, 0x15

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "0"

    aput-object v1, v0, v3

    const-string v1, "1"

    aput-object v1, v0, v4

    const-string v1, "2"

    aput-object v1, v0, v6

    const-string v1, "3"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "4"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "5"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "6"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "7"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "8"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "9"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "10"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "11"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "12"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "13"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "14"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "15"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "16"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "17"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "18"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "19"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "20"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->TIMEOUT_LIST:[Ljava/lang/String;

    .line 79
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "NOTIFY - Notification only"

    aput-object v1, v0, v3

    const-string v1, "NOTIFY - Allow no answer"

    aput-object v1, v0, v4

    const-string v1, "NOTIFY - Deny no answer"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->NI_DIALOG_TEST_LIST:[Ljava/lang/String;

    .line 249
    iput-boolean v4, p0, Lcom/mediatek/lbs/em/LbsAgps;->mIgnoreFirstNotifySpinner:Z

    .line 250
    iput-boolean v4, p0, Lcom/mediatek/lbs/em/LbsAgps;->mIgnoreFirstVerifySpinner:Z

    .line 252
    iput-boolean v3, p0, Lcom/mediatek/lbs/em/LbsAgps;->mDebugMode:Z

    .line 254
    iput-object v5, p0, Lcom/mediatek/lbs/em/LbsAgps;->mProfileManager:Lcom/mediatek/common/agps/MtkAgpsProfileManager;

    .line 255
    iput-object v5, p0, Lcom/mediatek/lbs/em/LbsAgps;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    .line 256
    iput v3, p0, Lcom/mediatek/lbs/em/LbsAgps;->mAccUnitFlag:I

    .line 258
    iput-object v5, p0, Lcom/mediatek/lbs/em/LbsAgps;->mLocationManager:Landroid/location/LocationManager;

    .line 269
    new-instance v0, Lcom/mediatek/common/agps/MtkAgpsProfile;

    invoke-direct {v0}, Lcom/mediatek/common/agps/MtkAgpsProfile;-><init>()V

    iput-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCurrentProfile:Lcom/mediatek/common/agps/MtkAgpsProfile;

    .line 270
    new-instance v0, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;

    invoke-direct {v0}, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;-><init>()V

    iput-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCdmaProfile:Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;

    .line 368
    new-instance v0, Lcom/mediatek/lbs/em/LbsAgps$3;

    invoke-direct {v0, p0}, Lcom/mediatek/lbs/em/LbsAgps$3;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    iput-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 387
    new-instance v0, Lcom/mediatek/lbs/em/LbsAgps$4;

    invoke-direct {v0, p0}, Lcom/mediatek/lbs/em/LbsAgps$4;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    iput-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mLocationListener:Landroid/location/LocationListener;

    .line 1688
    new-instance v0, Lcom/mediatek/lbs/em/LbsAgps$104;

    invoke-direct {v0, p0}, Lcom/mediatek/lbs/em/LbsAgps$104;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    iput-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/lbs/em/LbsAgps;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/mediatek/lbs/em/LbsAgps;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/lbs/em/LbsAgps;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/mediatek/lbs/em/LbsAgps;->sendAgpsExtraCmd(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextView_AreaType:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$10000(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewMlcNumber:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$10100(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextView_MSISDN:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$10200(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextView_PeriodicNFix:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$10300(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextView_PeriodicInter:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$10400(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextView_PeriodicSTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$10500(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextView_AreaMinInter:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$10600(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextView_AreaMaxNum:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$10700(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextView_AreaStartTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$10800(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextView_AreaStopTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$10900(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextView_GeoRadius:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextView_GeographicResult:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$11000(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextView_GeoLat:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$11100(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextView_GeoLong:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewMcpAddr:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewMcpPort:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxMcpEnable:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxPdeAddrValid:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxPdeIpType:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewPdeIp4Addr:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewPdeIp6Addr:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewPdePort:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/lbs/em/LbsAgps;)Lcom/mediatek/common/agps/MtkAgpsManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxPdeUrlVaild:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewPdeUrl:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/mediatek/lbs/em/LbsAgps;Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;)Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCdmaProfile:Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/mediatek/lbs/em/LbsAgps;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/mediatek/lbs/em/LbsAgps;->handleLoadProfile()V

    return-void
.end method

.method static synthetic access$2400(Lcom/mediatek/lbs/em/LbsAgps;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/mediatek/lbs/em/LbsAgps;->handleSetProfile()V

    return-void
.end method

.method static synthetic access$2500(Lcom/mediatek/lbs/em/LbsAgps;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/mediatek/lbs/em/LbsAgps;->isGPSProviderEnable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/location/LocationListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mLocationListener:Landroid/location/LocationListener;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/location/LocationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mLocationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/mediatek/lbs/em/LbsAgps;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/mediatek/lbs/em/LbsAgps;->msleep(J)V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/lbs/em/LbsAgps;)Lcom/mediatek/common/agps/MtkAgpsProfileManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mProfileManager:Lcom/mediatek/common/agps/MtkAgpsProfileManager;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/mediatek/lbs/em/LbsAgps;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/mediatek/lbs/em/LbsAgps;->setGpsMode(I)V

    return-void
.end method

.method static synthetic access$3100(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/PopupMenu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mPopupAgpsTest:Landroid/widget/PopupMenu;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/PopupMenu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mPopupTest:Landroid/widget/PopupMenu;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/mediatek/lbs/em/LbsAgps;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/mediatek/lbs/em/LbsAgps;->handleEnableAgps()V

    return-void
.end method

.method static synthetic access$3400(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mLinearLayoutCdmaSettings:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/PopupMenu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCdmaPopup:Landroid/widget/PopupMenu;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/mediatek/lbs/em/LbsAgps;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/mediatek/lbs/em/LbsAgps;->editMcpAddr()V

    return-void
.end method

.method static synthetic access$3700(Lcom/mediatek/lbs/em/LbsAgps;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/mediatek/lbs/em/LbsAgps;->editMcpPort()V

    return-void
.end method

.method static synthetic access$3800(Lcom/mediatek/lbs/em/LbsAgps;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/mediatek/lbs/em/LbsAgps;->editPdeIp4Addr()V

    return-void
.end method

.method static synthetic access$3900(Lcom/mediatek/lbs/em/LbsAgps;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/mediatek/lbs/em/LbsAgps;->editPdeIp6Addr()V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewSlpAddr:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/mediatek/lbs/em/LbsAgps;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/mediatek/lbs/em/LbsAgps;->editPdePort()V

    return-void
.end method

.method static synthetic access$4100(Lcom/mediatek/lbs/em/LbsAgps;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/mediatek/lbs/em/LbsAgps;->editPdeUrl()V

    return-void
.end method

.method static synthetic access$4200(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckEnableIot:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxNiAllow:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxEmAllow:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxRoamingAllow:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxSupl2File:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxEcidEnable:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxLabPerformance:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBox_SUPLTwo:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewSlpPort:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mLinearLayout_SUPLTwoDotZero:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mLinearLayoutTest:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/mediatek/lbs/em/LbsAgps;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/mediatek/lbs/em/LbsAgps;->editMSISDN(Z)V

    return-void
.end method

.method static synthetic access$5300(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBox_ThirdMSISDN:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextView_ThirdMSISDN:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButton_ThirdMSISDNEdit:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/RadioButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButton_Periodic:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/mediatek/lbs/em/LbsAgps;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/mediatek/lbs/em/LbsAgps;->enablePeriodicWidget(Z)V

    return-void
.end method

.method static synthetic access$5800(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/PopupMenu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mPopupPosMethod:Landroid/widget/PopupMenu;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/mediatek/lbs/em/LbsAgps;Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/mediatek/lbs/em/LbsAgps;->editNumberSetting(Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;)V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxTls:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/PopupMenu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mPopupAreaType:Landroid/widget/PopupMenu;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/PopupMenu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mPopupGeoType:Landroid/widget/PopupMenu;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxEnableNiTimer:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/mediatek/lbs/em/LbsAgps;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mIgnoreFirstNotifySpinner:Z

    return v0
.end method

.method static synthetic access$6302(Lcom/mediatek/lbs/em/LbsAgps;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/mediatek/lbs/em/LbsAgps;->mIgnoreFirstNotifySpinner:Z

    return p1
.end method

.method static synthetic access$6400(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/Spinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mSpinnerNotificationTimeout:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$6500(Lcom/mediatek/lbs/em/LbsAgps;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mIgnoreFirstVerifySpinner:Z

    return v0
.end method

.method static synthetic access$6502(Lcom/mediatek/lbs/em/LbsAgps;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/mediatek/lbs/em/LbsAgps;->mIgnoreFirstVerifySpinner:Z

    return p1
.end method

.method static synthetic access$6600(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/Spinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mSpinnerVerificationTimeout:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$6700(Lcom/mediatek/lbs/em/LbsAgps;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/mediatek/lbs/em/LbsAgps;->enableUpWidget(Z)V

    return-void
.end method

.method static synthetic access$6800(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxExternalAddr:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$6900(Lcom/mediatek/lbs/em/LbsAgps;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/mediatek/lbs/em/LbsAgps;->editExternalAddr()V

    return-void
.end method

.method static synthetic access$7000(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxMlcNumber:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$702(Lcom/mediatek/lbs/em/LbsAgps;Lcom/mediatek/common/agps/MtkAgpsProfile;)Lcom/mediatek/common/agps/MtkAgpsProfile;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCurrentProfile:Lcom/mediatek/common/agps/MtkAgpsProfile;

    return-object p1
.end method

.method static synthetic access$7100(Lcom/mediatek/lbs/em/LbsAgps;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/mediatek/lbs/em/LbsAgps;->editMlcNumber()V

    return-void
.end method

.method static synthetic access$7200(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/PopupMenu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mPopupSlp:Landroid/widget/PopupMenu;

    return-object v0
.end method

.method static synthetic access$7300(Lcom/mediatek/lbs/em/LbsAgps;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/mediatek/lbs/em/LbsAgps;->isNetworkAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7400(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$7500(Lcom/mediatek/lbs/em/LbsAgps;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/mediatek/lbs/em/LbsAgps;->editSlpAddr()V

    return-void
.end method

.method static synthetic access$7600(Lcom/mediatek/lbs/em/LbsAgps;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/mediatek/lbs/em/LbsAgps;->editSlpPort()V

    return-void
.end method

.method static synthetic access$7700(Lcom/mediatek/lbs/em/LbsAgps;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/mediatek/lbs/em/LbsAgps;->handleKValueAccuracyUnit()V

    return-void
.end method

.method static synthetic access$7800(Lcom/mediatek/lbs/em/LbsAgps;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/mediatek/lbs/em/LbsAgps;->handleMeterAccuracyUnit()V

    return-void
.end method

.method static synthetic access$7900(Lcom/mediatek/lbs/em/LbsAgps;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/mediatek/lbs/em/LbsAgps;->editQopHorizontalAcc()V

    return-void
.end method

.method static synthetic access$800(Lcom/mediatek/lbs/em/LbsAgps;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/mediatek/lbs/em/LbsAgps;->handleNiDialogTest(I)V

    return-void
.end method

.method static synthetic access$8000(Lcom/mediatek/lbs/em/LbsAgps;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/mediatek/lbs/em/LbsAgps;->editQopVerticalAcc()V

    return-void
.end method

.method static synthetic access$8100(Lcom/mediatek/lbs/em/LbsAgps;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/mediatek/lbs/em/LbsAgps;->editQopLocationAge()V

    return-void
.end method

.method static synthetic access$8200(Lcom/mediatek/lbs/em/LbsAgps;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/mediatek/lbs/em/LbsAgps;->editQopDelay()V

    return-void
.end method

.method static synthetic access$8300(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxCerVerify:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$8400(Lcom/mediatek/lbs/em/LbsAgps;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/mediatek/lbs/em/LbsAgps;->loadConfigFromAgpsFramework()V

    return-void
.end method

.method static synthetic access$8500(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/PopupMenu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mPopupNiDialog:Landroid/widget/PopupMenu;

    return-object v0
.end method

.method static synthetic access$8600(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewSlpTestResult:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$8700(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButtonSlpTest:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$8800(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButtonSlpTemplate:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$8900(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButtonSlpAddr:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$900(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextView_PosMethod:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$9000(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButtonSlpPort:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$9100(Lcom/mediatek/lbs/em/LbsAgps;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mAccUnitFlag:I

    return v0
.end method

.method static synthetic access$9200(Lcom/mediatek/lbs/em/LbsAgps;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/mediatek/lbs/em/LbsAgps;->calcKFromMeter(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$9300(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewHAcc:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$9400(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewVAcc:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$9500(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewLocationAge:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$9600(Lcom/mediatek/lbs/em/LbsAgps;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/mediatek/lbs/em/LbsAgps;->switchDebugMode()V

    return-void
.end method

.method static synthetic access$9700(Lcom/mediatek/lbs/em/LbsAgps;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/mediatek/lbs/em/LbsAgps;->hideSpecialWidget()Z

    move-result v0

    return v0
.end method

.method static synthetic access$9800(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewDelay:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$9900(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewExternalAddr:Landroid/widget/TextView;

    return-object v0
.end method

.method private calcKFromMeter(I)I
    .locals 6
    .parameter "meter"

    .prologue
    .line 3263
    int-to-double v2, p1

    const-wide/high16 v4, 0x4024

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x3ff0

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    const-wide v4, 0x3ff199999999999aL

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    div-double v0, v2, v4

    .line 3264
    .local v0, k:D
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    return v2
.end method

.method private calcMeterFromK(I)I
    .locals 6
    .parameter "k"

    .prologue
    const/4 v2, 0x1

    .line 3256
    if-ne p1, v2, :cond_0

    .line 3258
    :goto_0
    return v2

    .line 3257
    :cond_0
    const-wide v2, 0x3ff199999999999aL

    int-to-double v4, p1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0

    sub-double/2addr v2, v4

    const-wide/high16 v4, 0x4024

    mul-double v0, v2, v4

    .line 3258
    .local v0, meter:D
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    goto :goto_0
.end method

.method private createTargetArea(IIIFF)Lcom/mediatek/common/agps/MtkAgpsTargetArea;
    .locals 1
    .parameter "type"
    .parameter "radius"
    .parameter "latSign"
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 562
    new-instance v0, Lcom/mediatek/common/agps/MtkAgpsTargetArea;

    invoke-direct {v0}, Lcom/mediatek/common/agps/MtkAgpsTargetArea;-><init>()V

    .line 563
    .local v0, area:Lcom/mediatek/common/agps/MtkAgpsTargetArea;
    iput p1, v0, Lcom/mediatek/common/agps/MtkAgpsTargetArea;->type:I

    .line 564
    iput p2, v0, Lcom/mediatek/common/agps/MtkAgpsTargetArea;->radius:I

    .line 565
    iput p3, v0, Lcom/mediatek/common/agps/MtkAgpsTargetArea;->latSign:I

    .line 566
    iput p4, v0, Lcom/mediatek/common/agps/MtkAgpsTargetArea;->lat:F

    .line 567
    iput p5, v0, Lcom/mediatek/common/agps/MtkAgpsTargetArea;->lng:F

    .line 568
    return-object v0
.end method

.method private editExternalAddr()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2914
    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxExternalAddr:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-ne v4, v6, :cond_0

    .line 2915
    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewExternalAddr:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 2916
    new-instance v2, Landroid/app/Dialog;

    invoke-direct {v2, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 2917
    .local v2, dialog:Landroid/app/Dialog;
    const-string v4, "Edit External Address"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2918
    const v4, 0x7f030002

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setContentView(I)V

    .line 2919
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 2920
    const v4, 0x7f05008e

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 2921
    .local v3, text:Landroid/widget/EditText;
    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewExternalAddr:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2922
    const v4, 0x7f05008f

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 2923
    .local v1, buttonOk:Landroid/widget/Button;
    const v4, 0x7f050090

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 2924
    .local v0, buttonCancel:Landroid/widget/Button;
    new-instance v4, Lcom/mediatek/lbs/em/LbsAgps$129;

    invoke-direct {v4, p0, v3, v2}, Lcom/mediatek/lbs/em/LbsAgps$129;-><init>(Lcom/mediatek/lbs/em/LbsAgps;Landroid/widget/EditText;Landroid/app/Dialog;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2935
    new-instance v4, Lcom/mediatek/lbs/em/LbsAgps$130;

    invoke-direct {v4, p0, v2}, Lcom/mediatek/lbs/em/LbsAgps$130;-><init>(Lcom/mediatek/lbs/em/LbsAgps;Landroid/app/Dialog;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2943
    .end local v0           #buttonCancel:Landroid/widget/Button;
    .end local v1           #buttonOk:Landroid/widget/Button;
    .end local v2           #dialog:Landroid/app/Dialog;
    .end local v3           #text:Landroid/widget/EditText;
    :goto_0
    return-void

    .line 2941
    :cond_0
    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewExternalAddr:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method

.method private editMSISDN(Z)V
    .locals 9
    .parameter "multiedit"

    .prologue
    const/4 v8, 0x0

    .line 2979
    new-instance v4, Landroid/app/Dialog;

    invoke-direct {v4, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 2980
    .local v4, dialog:Landroid/app/Dialog;
    move v1, p1

    .line 2981
    .local v1, bIs3rdMsisdn:Z
    const-string v6, "Edit MSISDN"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2982
    const v6, 0x7f030002

    invoke-virtual {v4, v6}, Landroid/app/Dialog;->setContentView(I)V

    .line 2983
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 2984
    const v6, 0x7f05008e

    invoke-virtual {v4, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 2985
    .local v5, text:Landroid/widget/EditText;
    const/4 v6, 0x1

    new-array v0, v6, [Landroid/text/InputFilter;

    .line 2987
    .local v0, FilterArray:[Landroid/text/InputFilter;
    if-nez p1, :cond_0

    .line 2988
    new-instance v6, Landroid/text/InputFilter$LengthFilter;

    const/16 v7, 0x10

    invoke-direct {v6, v7}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v6, v0, v8

    .line 2993
    :goto_0
    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 2994
    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setInputType(I)V

    .line 2995
    if-nez v1, :cond_1

    .line 2996
    iget-object v6, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextView_MSISDN:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3000
    :goto_1
    const v6, 0x7f05008f

    invoke-virtual {v4, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 3001
    .local v3, buttonOk:Landroid/widget/Button;
    const v6, 0x7f050090

    invoke-virtual {v4, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 3002
    .local v2, buttonCancel:Landroid/widget/Button;
    new-instance v6, Lcom/mediatek/lbs/em/LbsAgps$133;

    invoke-direct {v6, p0, v1, v5, v4}, Lcom/mediatek/lbs/em/LbsAgps$133;-><init>(Lcom/mediatek/lbs/em/LbsAgps;ZLandroid/widget/EditText;Landroid/app/Dialog;)V

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3023
    new-instance v6, Lcom/mediatek/lbs/em/LbsAgps$134;

    invoke-direct {v6, p0, v4}, Lcom/mediatek/lbs/em/LbsAgps$134;-><init>(Lcom/mediatek/lbs/em/LbsAgps;Landroid/app/Dialog;)V

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3028
    return-void

    .line 2990
    .end local v2           #buttonCancel:Landroid/widget/Button;
    .end local v3           #buttonOk:Landroid/widget/Button;
    :cond_0
    new-instance v6, Landroid/text/InputFilter$LengthFilter;

    const/16 v7, 0x64

    invoke-direct {v6, v7}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v6, v0, v8

    goto :goto_0

    .line 2998
    :cond_1
    iget-object v6, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextView_ThirdMSISDN:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private editMcpAddr()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 2450
    new-instance v3, Landroid/app/Dialog;

    invoke-direct {v3, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 2451
    .local v3, dialog:Landroid/app/Dialog;
    const-string v5, "Edit Mcp Address"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2452
    const v5, 0x7f030002

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->setContentView(I)V

    .line 2453
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 2454
    const v5, 0x7f05008e

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 2455
    .local v4, text:Landroid/widget/EditText;
    const/4 v5, 0x1

    new-array v0, v5, [Landroid/text/InputFilter;

    .line 2456
    .local v0, FilterArray:[Landroid/text/InputFilter;
    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    const/16 v6, 0x1e

    invoke-direct {v5, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v0, v7

    .line 2457
    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 2458
    iget-object v5, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewMcpAddr:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2459
    const v5, 0x7f05008f

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 2460
    .local v2, buttonOk:Landroid/widget/Button;
    const v5, 0x7f050090

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 2461
    .local v1, buttonCancel:Landroid/widget/Button;
    new-instance v5, Lcom/mediatek/lbs/em/LbsAgps$105;

    invoke-direct {v5, p0, v4, v3}, Lcom/mediatek/lbs/em/LbsAgps$105;-><init>(Lcom/mediatek/lbs/em/LbsAgps;Landroid/widget/EditText;Landroid/app/Dialog;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2470
    new-instance v5, Lcom/mediatek/lbs/em/LbsAgps$106;

    invoke-direct {v5, p0, v3}, Lcom/mediatek/lbs/em/LbsAgps$106;-><init>(Lcom/mediatek/lbs/em/LbsAgps;Landroid/app/Dialog;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2475
    return-void
.end method

.method private editMcpPort()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 2477
    new-instance v3, Landroid/app/Dialog;

    invoke-direct {v3, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 2478
    .local v3, dialog:Landroid/app/Dialog;
    const-string v5, "Edit Mcp Port"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2479
    const v5, 0x7f030002

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->setContentView(I)V

    .line 2480
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 2481
    const v5, 0x7f05008e

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 2482
    .local v4, text:Landroid/widget/EditText;
    const/4 v5, 0x1

    new-array v0, v5, [Landroid/text/InputFilter;

    .line 2483
    .local v0, FilterArray:[Landroid/text/InputFilter;
    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    const/4 v6, 0x5

    invoke-direct {v5, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v0, v7

    .line 2484
    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 2485
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 2486
    iget-object v5, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewMcpPort:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2487
    const v5, 0x7f05008f

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 2488
    .local v2, buttonOk:Landroid/widget/Button;
    const v5, 0x7f050090

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 2489
    .local v1, buttonCancel:Landroid/widget/Button;
    new-instance v5, Lcom/mediatek/lbs/em/LbsAgps$107;

    invoke-direct {v5, p0, v4, v3}, Lcom/mediatek/lbs/em/LbsAgps$107;-><init>(Lcom/mediatek/lbs/em/LbsAgps;Landroid/widget/EditText;Landroid/app/Dialog;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2511
    new-instance v5, Lcom/mediatek/lbs/em/LbsAgps$108;

    invoke-direct {v5, p0, v3}, Lcom/mediatek/lbs/em/LbsAgps$108;-><init>(Lcom/mediatek/lbs/em/LbsAgps;Landroid/app/Dialog;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2516
    return-void
.end method

.method private editMlcNumber()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2946
    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxMlcNumber:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-ne v4, v6, :cond_0

    .line 2947
    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewMlcNumber:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 2948
    new-instance v2, Landroid/app/Dialog;

    invoke-direct {v2, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 2949
    .local v2, dialog:Landroid/app/Dialog;
    const-string v4, "Edit MLC Number"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2950
    const v4, 0x7f030002

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setContentView(I)V

    .line 2951
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 2952
    const v4, 0x7f05008e

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 2953
    .local v3, text:Landroid/widget/EditText;
    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewMlcNumber:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2954
    const v4, 0x7f05008f

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 2955
    .local v1, buttonOk:Landroid/widget/Button;
    const v4, 0x7f050090

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 2956
    .local v0, buttonCancel:Landroid/widget/Button;
    new-instance v4, Lcom/mediatek/lbs/em/LbsAgps$131;

    invoke-direct {v4, p0, v3, v2}, Lcom/mediatek/lbs/em/LbsAgps$131;-><init>(Lcom/mediatek/lbs/em/LbsAgps;Landroid/widget/EditText;Landroid/app/Dialog;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2968
    new-instance v4, Lcom/mediatek/lbs/em/LbsAgps$132;

    invoke-direct {v4, p0, v2}, Lcom/mediatek/lbs/em/LbsAgps$132;-><init>(Lcom/mediatek/lbs/em/LbsAgps;Landroid/app/Dialog;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2976
    .end local v0           #buttonCancel:Landroid/widget/Button;
    .end local v1           #buttonOk:Landroid/widget/Button;
    .end local v2           #dialog:Landroid/app/Dialog;
    .end local v3           #text:Landroid/widget/EditText;
    :goto_0
    return-void

    .line 2974
    :cond_0
    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewMlcNumber:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method

.method private editNumberSetting(Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;)V
    .locals 10
    .parameter "ItemId"

    .prologue
    const/16 v9, 0x2002

    const/4 v8, 0x0

    .line 3032
    new-instance v3, Landroid/app/Dialog;

    invoke-direct {v3, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 3033
    .local v3, dialog:Landroid/app/Dialog;
    const-string v6, "Edit Number Settings"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 3034
    const v6, 0x7f030002

    invoke-virtual {v3, v6}, Landroid/app/Dialog;->setContentView(I)V

    .line 3035
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 3036
    const v6, 0x7f05008e

    invoke-virtual {v3, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 3037
    .local v5, text:Landroid/widget/EditText;
    const/4 v6, 0x1

    new-array v0, v6, [Landroid/text/InputFilter;

    .line 3038
    .local v0, FilterArray:[Landroid/text/InputFilter;
    new-instance v6, Landroid/text/InputFilter$LengthFilter;

    const/16 v7, 0xa

    invoke-direct {v6, v7}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v6, v0, v8

    .line 3039
    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 3040
    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setInputType(I)V

    .line 3042
    const v6, 0x7f05008f

    invoke-virtual {v3, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 3043
    .local v2, buttonOk:Landroid/widget/Button;
    const v6, 0x7f050090

    invoke-virtual {v3, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 3046
    .local v1, buttonCancel:Landroid/widget/Button;
    move-object v4, p1

    .line 3048
    .local v4, eItemId:Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;
    sget-object v6, Lcom/mediatek/lbs/em/LbsAgps$137;->$SwitchMap$com$mediatek$lbs$em$LbsAgps$NUMBER_EDIT_NAME_LIST:[I

    invoke-virtual {v4}, Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 3088
    :goto_0
    new-instance v6, Lcom/mediatek/lbs/em/LbsAgps$135;

    invoke-direct {v6, p0, v4, v5, v3}, Lcom/mediatek/lbs/em/LbsAgps$135;-><init>(Lcom/mediatek/lbs/em/LbsAgps;Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;Landroid/widget/EditText;Landroid/app/Dialog;)V

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3150
    new-instance v6, Lcom/mediatek/lbs/em/LbsAgps$136;

    invoke-direct {v6, p0, v3}, Lcom/mediatek/lbs/em/LbsAgps$136;-><init>(Lcom/mediatek/lbs/em/LbsAgps;Landroid/app/Dialog;)V

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3155
    return-void

    .line 3050
    :pswitch_0
    iget-object v6, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextView_PeriodicNFix:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3053
    :pswitch_1
    iget-object v6, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextView_PeriodicInter:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3056
    :pswitch_2
    iget-object v6, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextView_PeriodicSTime:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3059
    :pswitch_3
    iget-object v6, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextView_AreaMinInter:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3062
    :pswitch_4
    iget-object v6, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextView_AreaMaxNum:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3065
    :pswitch_5
    iget-object v6, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextView_AreaStartTime:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3068
    :pswitch_6
    iget-object v6, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextView_AreaStopTime:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3071
    :pswitch_7
    iget-object v6, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextView_GeoRadius:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3074
    :pswitch_8
    invoke-virtual {v5, v9}, Landroid/widget/EditText;->setInputType(I)V

    .line 3075
    iget-object v6, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextView_GeoLat:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3078
    :pswitch_9
    invoke-virtual {v5, v9}, Landroid/widget/EditText;->setInputType(I)V

    .line 3079
    iget-object v6, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextView_GeoLong:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3048
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private editPdeIp4Addr()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 2518
    new-instance v3, Landroid/app/Dialog;

    invoke-direct {v3, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 2519
    .local v3, dialog:Landroid/app/Dialog;
    const-string v5, "Edit PDE IPv4 Address"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2520
    const v5, 0x7f030002

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->setContentView(I)V

    .line 2521
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 2522
    const v5, 0x7f05008e

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 2523
    .local v4, text:Landroid/widget/EditText;
    const/4 v5, 0x1

    new-array v0, v5, [Landroid/text/InputFilter;

    .line 2524
    .local v0, FilterArray:[Landroid/text/InputFilter;
    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    const/16 v6, 0x1e

    invoke-direct {v5, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v0, v7

    .line 2525
    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 2526
    iget-object v5, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewPdeIp4Addr:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2527
    const v5, 0x7f05008f

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 2528
    .local v2, buttonOk:Landroid/widget/Button;
    const v5, 0x7f050090

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 2529
    .local v1, buttonCancel:Landroid/widget/Button;
    new-instance v5, Lcom/mediatek/lbs/em/LbsAgps$109;

    invoke-direct {v5, p0, v4, v3}, Lcom/mediatek/lbs/em/LbsAgps$109;-><init>(Lcom/mediatek/lbs/em/LbsAgps;Landroid/widget/EditText;Landroid/app/Dialog;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2538
    new-instance v5, Lcom/mediatek/lbs/em/LbsAgps$110;

    invoke-direct {v5, p0, v3}, Lcom/mediatek/lbs/em/LbsAgps$110;-><init>(Lcom/mediatek/lbs/em/LbsAgps;Landroid/app/Dialog;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2543
    return-void
.end method

.method private editPdeIp6Addr()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 2545
    new-instance v3, Landroid/app/Dialog;

    invoke-direct {v3, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 2546
    .local v3, dialog:Landroid/app/Dialog;
    const-string v5, "Edit PDE IPv6 Address"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2547
    const v5, 0x7f030002

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->setContentView(I)V

    .line 2548
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 2549
    const v5, 0x7f05008e

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 2550
    .local v4, text:Landroid/widget/EditText;
    const/4 v5, 0x1

    new-array v0, v5, [Landroid/text/InputFilter;

    .line 2551
    .local v0, FilterArray:[Landroid/text/InputFilter;
    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    const/16 v6, 0x3c

    invoke-direct {v5, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v0, v7

    .line 2552
    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 2553
    iget-object v5, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewPdeIp6Addr:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2554
    const v5, 0x7f05008f

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 2555
    .local v2, buttonOk:Landroid/widget/Button;
    const v5, 0x7f050090

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 2556
    .local v1, buttonCancel:Landroid/widget/Button;
    new-instance v5, Lcom/mediatek/lbs/em/LbsAgps$111;

    invoke-direct {v5, p0, v4, v3}, Lcom/mediatek/lbs/em/LbsAgps$111;-><init>(Lcom/mediatek/lbs/em/LbsAgps;Landroid/widget/EditText;Landroid/app/Dialog;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2565
    new-instance v5, Lcom/mediatek/lbs/em/LbsAgps$112;

    invoke-direct {v5, p0, v3}, Lcom/mediatek/lbs/em/LbsAgps$112;-><init>(Lcom/mediatek/lbs/em/LbsAgps;Landroid/app/Dialog;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2570
    return-void
.end method

.method private editPdePort()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 2572
    new-instance v3, Landroid/app/Dialog;

    invoke-direct {v3, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 2573
    .local v3, dialog:Landroid/app/Dialog;
    const-string v5, "Edit PDE Port"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2574
    const v5, 0x7f030002

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->setContentView(I)V

    .line 2575
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 2576
    const v5, 0x7f05008e

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 2577
    .local v4, text:Landroid/widget/EditText;
    const/4 v5, 0x1

    new-array v0, v5, [Landroid/text/InputFilter;

    .line 2578
    .local v0, FilterArray:[Landroid/text/InputFilter;
    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    const/4 v6, 0x5

    invoke-direct {v5, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v0, v7

    .line 2579
    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 2580
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 2581
    iget-object v5, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewPdePort:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2582
    const v5, 0x7f05008f

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 2583
    .local v2, buttonOk:Landroid/widget/Button;
    const v5, 0x7f050090

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 2584
    .local v1, buttonCancel:Landroid/widget/Button;
    new-instance v5, Lcom/mediatek/lbs/em/LbsAgps$113;

    invoke-direct {v5, p0, v4, v3}, Lcom/mediatek/lbs/em/LbsAgps$113;-><init>(Lcom/mediatek/lbs/em/LbsAgps;Landroid/widget/EditText;Landroid/app/Dialog;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2604
    new-instance v5, Lcom/mediatek/lbs/em/LbsAgps$114;

    invoke-direct {v5, p0, v3}, Lcom/mediatek/lbs/em/LbsAgps$114;-><init>(Lcom/mediatek/lbs/em/LbsAgps;Landroid/app/Dialog;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2609
    return-void
.end method

.method private editPdeUrl()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 2611
    new-instance v3, Landroid/app/Dialog;

    invoke-direct {v3, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 2612
    .local v3, dialog:Landroid/app/Dialog;
    const-string v5, "Edit PDE Url"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2613
    const v5, 0x7f030002

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->setContentView(I)V

    .line 2614
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 2615
    const v5, 0x7f05008e

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 2616
    .local v4, text:Landroid/widget/EditText;
    const/4 v5, 0x1

    new-array v0, v5, [Landroid/text/InputFilter;

    .line 2617
    .local v0, FilterArray:[Landroid/text/InputFilter;
    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    const/16 v6, 0x1e

    invoke-direct {v5, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v0, v7

    .line 2618
    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 2619
    iget-object v5, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewPdeUrl:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2620
    const v5, 0x7f05008f

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 2621
    .local v2, buttonOk:Landroid/widget/Button;
    const v5, 0x7f050090

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 2622
    .local v1, buttonCancel:Landroid/widget/Button;
    new-instance v5, Lcom/mediatek/lbs/em/LbsAgps$115;

    invoke-direct {v5, p0, v4, v3}, Lcom/mediatek/lbs/em/LbsAgps$115;-><init>(Lcom/mediatek/lbs/em/LbsAgps;Landroid/widget/EditText;Landroid/app/Dialog;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2631
    new-instance v5, Lcom/mediatek/lbs/em/LbsAgps$116;

    invoke-direct {v5, p0, v3}, Lcom/mediatek/lbs/em/LbsAgps$116;-><init>(Lcom/mediatek/lbs/em/LbsAgps;Landroid/app/Dialog;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2636
    return-void
.end method

.method private editQopDelay()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 2871
    new-instance v3, Landroid/app/Dialog;

    invoke-direct {v3, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 2872
    .local v3, dialog:Landroid/app/Dialog;
    const-string v5, "Edit Delay"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2873
    const v5, 0x7f030002

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->setContentView(I)V

    .line 2874
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 2875
    const v5, 0x7f05008e

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 2876
    .local v4, text:Landroid/widget/EditText;
    const/4 v5, 0x1

    new-array v0, v5, [Landroid/text/InputFilter;

    .line 2877
    .local v0, FilterArray:[Landroid/text/InputFilter;
    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    const/4 v6, 0x5

    invoke-direct {v5, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v0, v7

    .line 2878
    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 2879
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 2880
    iget-object v5, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewDelay:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2881
    const v5, 0x7f05008f

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 2882
    .local v2, buttonOk:Landroid/widget/Button;
    const v5, 0x7f050090

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 2883
    .local v1, buttonCancel:Landroid/widget/Button;
    new-instance v5, Lcom/mediatek/lbs/em/LbsAgps$127;

    invoke-direct {v5, p0, v4, v3}, Lcom/mediatek/lbs/em/LbsAgps$127;-><init>(Lcom/mediatek/lbs/em/LbsAgps;Landroid/widget/EditText;Landroid/app/Dialog;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2906
    new-instance v5, Lcom/mediatek/lbs/em/LbsAgps$128;

    invoke-direct {v5, p0, v3}, Lcom/mediatek/lbs/em/LbsAgps$128;-><init>(Lcom/mediatek/lbs/em/LbsAgps;Landroid/app/Dialog;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2911
    return-void
.end method

.method private editQopHorizontalAcc()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 2747
    new-instance v3, Landroid/app/Dialog;

    invoke-direct {v3, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 2748
    .local v3, dialog:Landroid/app/Dialog;
    const-string v5, "Edit Horizontal Accuracy"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2749
    const v5, 0x7f030002

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->setContentView(I)V

    .line 2750
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 2751
    const v5, 0x7f05008e

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 2752
    .local v4, text:Landroid/widget/EditText;
    const/4 v5, 0x1

    new-array v0, v5, [Landroid/text/InputFilter;

    .line 2753
    .local v0, FilterArray:[Landroid/text/InputFilter;
    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    const/4 v6, 0x5

    invoke-direct {v5, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v0, v7

    .line 2754
    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 2755
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 2756
    iget-object v5, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewHAcc:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2757
    const v5, 0x7f05008f

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 2758
    .local v2, buttonOk:Landroid/widget/Button;
    const v5, 0x7f050090

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 2759
    .local v1, buttonCancel:Landroid/widget/Button;
    new-instance v5, Lcom/mediatek/lbs/em/LbsAgps$121;

    invoke-direct {v5, p0, v4, v3}, Lcom/mediatek/lbs/em/LbsAgps$121;-><init>(Lcom/mediatek/lbs/em/LbsAgps;Landroid/widget/EditText;Landroid/app/Dialog;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2785
    new-instance v5, Lcom/mediatek/lbs/em/LbsAgps$122;

    invoke-direct {v5, p0, v3}, Lcom/mediatek/lbs/em/LbsAgps$122;-><init>(Lcom/mediatek/lbs/em/LbsAgps;Landroid/app/Dialog;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2790
    return-void
.end method

.method private editQopLocationAge()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 2835
    new-instance v3, Landroid/app/Dialog;

    invoke-direct {v3, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 2836
    .local v3, dialog:Landroid/app/Dialog;
    const-string v5, "Edit Location Age"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2837
    const v5, 0x7f030002

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->setContentView(I)V

    .line 2838
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 2839
    const v5, 0x7f05008e

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 2840
    .local v4, text:Landroid/widget/EditText;
    const/4 v5, 0x1

    new-array v0, v5, [Landroid/text/InputFilter;

    .line 2841
    .local v0, FilterArray:[Landroid/text/InputFilter;
    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    const/4 v6, 0x5

    invoke-direct {v5, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v0, v7

    .line 2842
    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 2843
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 2844
    iget-object v5, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewLocationAge:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2845
    const v5, 0x7f05008f

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 2846
    .local v2, buttonOk:Landroid/widget/Button;
    const v5, 0x7f050090

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 2847
    .local v1, buttonCancel:Landroid/widget/Button;
    new-instance v5, Lcom/mediatek/lbs/em/LbsAgps$125;

    invoke-direct {v5, p0, v4, v3}, Lcom/mediatek/lbs/em/LbsAgps$125;-><init>(Lcom/mediatek/lbs/em/LbsAgps;Landroid/widget/EditText;Landroid/app/Dialog;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2863
    new-instance v5, Lcom/mediatek/lbs/em/LbsAgps$126;

    invoke-direct {v5, p0, v3}, Lcom/mediatek/lbs/em/LbsAgps$126;-><init>(Lcom/mediatek/lbs/em/LbsAgps;Landroid/app/Dialog;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2868
    return-void
.end method

.method private editQopVerticalAcc()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 2793
    new-instance v3, Landroid/app/Dialog;

    invoke-direct {v3, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 2794
    .local v3, dialog:Landroid/app/Dialog;
    const-string v5, "Edit Vertical Accuracy"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2795
    const v5, 0x7f030002

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->setContentView(I)V

    .line 2796
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 2797
    const v5, 0x7f05008e

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 2798
    .local v4, text:Landroid/widget/EditText;
    const/4 v5, 0x1

    new-array v0, v5, [Landroid/text/InputFilter;

    .line 2799
    .local v0, FilterArray:[Landroid/text/InputFilter;
    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    const/4 v6, 0x5

    invoke-direct {v5, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v0, v7

    .line 2800
    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 2801
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 2802
    iget-object v5, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewVAcc:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2803
    const v5, 0x7f05008f

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 2804
    .local v2, buttonOk:Landroid/widget/Button;
    const v5, 0x7f050090

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 2805
    .local v1, buttonCancel:Landroid/widget/Button;
    new-instance v5, Lcom/mediatek/lbs/em/LbsAgps$123;

    invoke-direct {v5, p0, v4, v3}, Lcom/mediatek/lbs/em/LbsAgps$123;-><init>(Lcom/mediatek/lbs/em/LbsAgps;Landroid/widget/EditText;Landroid/app/Dialog;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2827
    new-instance v5, Lcom/mediatek/lbs/em/LbsAgps$124;

    invoke-direct {v5, p0, v3}, Lcom/mediatek/lbs/em/LbsAgps$124;-><init>(Lcom/mediatek/lbs/em/LbsAgps;Landroid/app/Dialog;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2832
    return-void
.end method

.method private editSlpAddr()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 2639
    new-instance v3, Landroid/app/Dialog;

    invoke-direct {v3, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 2640
    .local v3, dialog:Landroid/app/Dialog;
    const-string v5, "Edit SLP Address"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2641
    const v5, 0x7f030002

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->setContentView(I)V

    .line 2642
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 2643
    const v5, 0x7f05008e

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 2644
    .local v4, text:Landroid/widget/EditText;
    const/4 v5, 0x1

    new-array v0, v5, [Landroid/text/InputFilter;

    .line 2645
    .local v0, FilterArray:[Landroid/text/InputFilter;
    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    const/16 v6, 0x1f

    invoke-direct {v5, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v0, v7

    .line 2646
    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 2647
    iget-object v5, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewSlpAddr:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2648
    const v5, 0x7f05008f

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 2649
    .local v2, buttonOk:Landroid/widget/Button;
    const v5, 0x7f050090

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 2650
    .local v1, buttonCancel:Landroid/widget/Button;
    new-instance v5, Lcom/mediatek/lbs/em/LbsAgps$117;

    invoke-direct {v5, p0, v4, v3}, Lcom/mediatek/lbs/em/LbsAgps$117;-><init>(Lcom/mediatek/lbs/em/LbsAgps;Landroid/widget/EditText;Landroid/app/Dialog;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2671
    new-instance v5, Lcom/mediatek/lbs/em/LbsAgps$118;

    invoke-direct {v5, p0, v3}, Lcom/mediatek/lbs/em/LbsAgps$118;-><init>(Lcom/mediatek/lbs/em/LbsAgps;Landroid/app/Dialog;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2676
    return-void
.end method

.method private editSlpPort()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 2680
    new-instance v3, Landroid/app/Dialog;

    invoke-direct {v3, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 2681
    .local v3, dialog:Landroid/app/Dialog;
    const-string v5, "Edit SLP Port"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2682
    const v5, 0x7f030002

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->setContentView(I)V

    .line 2683
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 2684
    const v5, 0x7f05008e

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 2685
    .local v4, text:Landroid/widget/EditText;
    const/4 v5, 0x1

    new-array v0, v5, [Landroid/text/InputFilter;

    .line 2686
    .local v0, FilterArray:[Landroid/text/InputFilter;
    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    const/4 v6, 0x5

    invoke-direct {v5, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v0, v7

    .line 2687
    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 2688
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 2689
    iget-object v5, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewSlpPort:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2690
    const v5, 0x7f05008f

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 2691
    .local v2, buttonOk:Landroid/widget/Button;
    const v5, 0x7f050090

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 2692
    .local v1, buttonCancel:Landroid/widget/Button;
    new-instance v5, Lcom/mediatek/lbs/em/LbsAgps$119;

    invoke-direct {v5, p0, v4, v3}, Lcom/mediatek/lbs/em/LbsAgps$119;-><init>(Lcom/mediatek/lbs/em/LbsAgps;Landroid/widget/EditText;Landroid/app/Dialog;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2717
    new-instance v5, Lcom/mediatek/lbs/em/LbsAgps$120;

    invoke-direct {v5, p0, v3}, Lcom/mediatek/lbs/em/LbsAgps$120;-><init>(Lcom/mediatek/lbs/em/LbsAgps;Landroid/app/Dialog;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2722
    return-void
.end method

.method private enablePeriodicWidget(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 537
    if-eqz p1, :cond_1

    .line 538
    iget-boolean v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mDebugMode:Z

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mLinearLayout_PeriodicSettings:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 543
    :goto_0
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mLinearLayout_AreaSettings:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 548
    :goto_1
    return-void

    .line 541
    :cond_0
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mLinearLayout_PeriodicSettings:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 545
    :cond_1
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mLinearLayout_PeriodicSettings:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 546
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mLinearLayout_AreaSettings:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method private enableUpWidget(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 526
    if-eqz p1, :cond_0

    .line 527
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mLinearLayoutUpSettings:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 528
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mLinearLayoutCpSettings:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 533
    :goto_0
    return-void

    .line 530
    :cond_0
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mLinearLayoutUpSettings:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 531
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mLinearLayoutCpSettings:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private getBoolPorperty(Ljava/lang/String;Z)Z
    .locals 4
    .parameter "prop"
    .parameter "defaultValue"

    .prologue
    .line 3187
    move v1, p2

    .line 3189
    .local v1, ret:Z
    if-eqz p2, :cond_0

    :try_start_0
    const-string v3, "true"

    :goto_0
    invoke-static {p1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3190
    .local v2, value:Ljava/lang/String;
    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    .line 3191
    const/4 v1, 0x1

    .line 3198
    .end local v2           #value:Ljava/lang/String;
    :goto_1
    return v1

    .line 3189
    :cond_0
    const-string v3, "false"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3193
    .restart local v2       #value:Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 3195
    .end local v2           #value:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 3196
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private getIntProperty(Ljava/lang/String;I)I
    .locals 4
    .parameter "prop"
    .parameter "defaultValue"

    .prologue
    .line 3177
    move v1, p2

    .line 3179
    .local v1, ret:I
    :try_start_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3180
    .local v2, value:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3184
    .end local v2           #value:Ljava/lang/String;
    :goto_0
    return v1

    .line 3181
    :catch_0
    move-exception v0

    .line 3182
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getSimCount()I
    .locals 3

    .prologue
    .line 3211
    const/4 v0, 0x1

    .line 3212
    .local v0, simCount:I
    const-string v1, "ro.mediatek.gemini_support"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/mediatek/lbs/em/LbsAgps;->getBoolPorperty(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3213
    const-string v1, "persist.gemini.sim_num"

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/mediatek/lbs/em/LbsAgps;->getIntProperty(Ljava/lang/String;I)I

    move-result v0

    .line 3215
    :cond_0
    return v0
.end method

.method private getSystemProperties(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "prop"

    .prologue
    const/4 v1, 0x0

    .line 3203
    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3207
    :goto_0
    return-object v1

    .line 3204
    :catch_0
    move-exception v0

    .line 3205
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getTelephonyMode()Lcom/mediatek/lbs/em/LbsAgps$TELEPHONE_MODE_LIST;
    .locals 4

    .prologue
    .line 3225
    sget-object v1, Lcom/mediatek/lbs/em/LbsAgps$TELEPHONE_MODE_LIST;->MODE_ERR:Lcom/mediatek/lbs/em/LbsAgps$TELEPHONE_MODE_LIST;

    .line 3226
    .local v1, eMode:Lcom/mediatek/lbs/em/LbsAgps$TELEPHONE_MODE_LIST;
    const/4 v2, -0x1

    .line 3227
    .local v2, mMode:I
    const/4 v0, -0x1

    .line 3229
    .local v0, MODE_0_NONE:I
    const-string v3, "ril.telephony.mode"

    invoke-direct {p0, v3, v0}, Lcom/mediatek/lbs/em/LbsAgps;->getIntProperty(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v0, :cond_0

    .line 3230
    const-string v3, "ril.telephony.mode"

    invoke-direct {p0, v3, v0}, Lcom/mediatek/lbs/em/LbsAgps;->getIntProperty(Ljava/lang/String;I)I

    move-result v2

    .line 3233
    :cond_0
    if-lez v2, :cond_2

    const/16 v3, 0x8

    if-gt v2, v3, :cond_2

    .line 3234
    sget-object v1, Lcom/mediatek/lbs/em/LbsAgps$TELEPHONE_MODE_LIST;->WCDMA:Lcom/mediatek/lbs/em/LbsAgps$TELEPHONE_MODE_LIST;

    .line 3238
    :cond_1
    :goto_0
    return-object v1

    .line 3235
    :cond_2
    const/16 v3, 0x64

    if-le v2, v3, :cond_1

    const/16 v3, 0x6c

    if-gt v2, v3, :cond_1

    .line 3236
    sget-object v1, Lcom/mediatek/lbs/em/LbsAgps$TELEPHONE_MODE_LIST;->CDMA:Lcom/mediatek/lbs/em/LbsAgps$TELEPHONE_MODE_LIST;

    goto :goto_0
.end method

.method private handleEnableAgps()V
    .locals 1

    .prologue
    .line 1894
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxEnableAgps:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1895
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    invoke-interface {v0}, Lcom/mediatek/common/agps/MtkAgpsManager;->enable()V

    .line 1899
    :goto_0
    return-void

    .line 1897
    :cond_0
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    invoke-interface {v0}, Lcom/mediatek/common/agps/MtkAgpsManager;->disable()V

    goto :goto_0
.end method

.method private handleKValueAccuracyUnit()V
    .locals 4

    .prologue
    .line 2736
    iget v1, p0, Lcom/mediatek/lbs/em/LbsAgps;->mAccUnitFlag:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2737
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/lbs/em/LbsAgps;->mAccUnitFlag:I

    .line 2738
    const/4 v0, 0x0

    .line 2739
    .local v0, ret:I
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewHAcc:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/mediatek/lbs/em/LbsAgps;->calcKFromMeter(I)I

    move-result v0

    .line 2740
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewHAcc:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2741
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewVAcc:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/mediatek/lbs/em/LbsAgps;->calcKFromMeter(I)I

    move-result v0

    .line 2742
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewVAcc:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2744
    .end local v0           #ret:I
    :cond_0
    return-void
.end method

.method private handleLoadProfile()V
    .locals 77

    .prologue
    .line 1932
    const-string v74, "agps_profile"

    const/16 v75, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v74

    move/from16 v2, v75

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/lbs/em/LbsAgps;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v58

    .line 1933
    .local v58, prefs:Landroid/content/SharedPreferences;
    const-string v74, "agps_enable"

    const/16 v75, 0x1

    move-object/from16 v0, v58

    move-object/from16 v1, v74

    move/from16 v2, v75

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 1934
    .local v5, agpsEnable:Z
    const-string v74, "iot"

    const/16 v75, 0x0

    move-object/from16 v0, v58

    move-object/from16 v1, v74

    move/from16 v2, v75

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v23

    .line 1935
    .local v23, iot:Z
    const-string v74, "mode"

    const/16 v75, 0x1

    move-object/from16 v0, v58

    move-object/from16 v1, v74

    move/from16 v2, v75

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v31

    .line 1936
    .local v31, mode:I
    const-string v74, "cp_up"

    const/16 v75, 0x0

    move-object/from16 v0, v58

    move-object/from16 v1, v74

    move/from16 v2, v75

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v14

    .line 1937
    .local v14, cpUp:I
    const-string v74, "slp_code"

    const-string v75, "GOOGLE"

    move-object/from16 v0, v58

    move-object/from16 v1, v74

    move-object/from16 v2, v75

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v65

    .line 1938
    .local v65, slpCode:Ljava/lang/String;
    const-string v74, "slp_addr"

    const-string v75, "supl.google.com"

    move-object/from16 v0, v58

    move-object/from16 v1, v74

    move-object/from16 v2, v75

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v64

    .line 1939
    .local v64, slpAddr:Ljava/lang/String;
    const-string v74, "slp_port"

    const/16 v75, 0x1c6b

    move-object/from16 v0, v58

    move-object/from16 v1, v74

    move/from16 v2, v75

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v66

    .line 1940
    .local v66, slpPort:I
    const-string v74, "slp_tls"

    const/16 v75, 0x1

    move-object/from16 v0, v58

    move-object/from16 v1, v74

    move/from16 v2, v75

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v67

    .line 1941
    .local v67, slpTls:Z
    const-string v74, "type"

    const/16 v75, 0x0

    move-object/from16 v0, v58

    move-object/from16 v1, v74

    move/from16 v2, v75

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v71

    .line 1942
    .local v71, type:I
    const-string v74, "set_id"

    const/16 v75, 0x0

    move-object/from16 v0, v58

    move-object/from16 v1, v74

    move/from16 v2, v75

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v62

    .line 1943
    .local v62, setId:I
    const-string v74, "acc_unit"

    const/16 v75, 0x0

    move-object/from16 v0, v58

    move-object/from16 v1, v74

    move/from16 v2, v75

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 1944
    .local v3, accUnit:I
    const-string v74, "h_acc"

    const/16 v75, 0xa

    move-object/from16 v0, v58

    move-object/from16 v1, v74

    move/from16 v2, v75

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v20

    .line 1945
    .local v20, hAcc:I
    const-string v74, "v_acc"

    const/16 v75, 0x10

    move-object/from16 v0, v58

    move-object/from16 v1, v74

    move/from16 v2, v75

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v72

    .line 1946
    .local v72, vAcc:I
    const-string v74, "age"

    const/16 v75, 0x0

    move-object/from16 v0, v58

    move-object/from16 v1, v74

    move/from16 v2, v75

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 1947
    .local v4, age:I
    const-string v74, "delay"

    const/16 v75, 0x0

    move-object/from16 v0, v58

    move-object/from16 v1, v74

    move/from16 v2, v75

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v15

    .line 1948
    .local v15, delay:I
    const-string v74, "cert_ver"

    const/16 v75, 0x0

    move-object/from16 v0, v58

    move-object/from16 v1, v74

    move/from16 v2, v75

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .line 1949
    .local v12, certVer:Z
    const-string v74, "molr_pos_method"

    const/16 v75, 0x0

    move-object/from16 v0, v58

    move-object/from16 v1, v74

    move/from16 v2, v75

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v32

    .line 1950
    .local v32, molrPosMethod:I
    const-string v74, "ext_addr_enable"

    const/16 v75, 0x0

    move-object/from16 v0, v58

    move-object/from16 v1, v74

    move/from16 v2, v75

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    .line 1951
    .local v19, extAddrEnable:Z
    const-string v74, "ext_addr"

    const-string v75, "0123456789*#+"

    move-object/from16 v0, v58

    move-object/from16 v1, v74

    move-object/from16 v2, v75

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1952
    .local v18, extAddr:Ljava/lang/String;
    const-string v74, "mlc_num_enable"

    const/16 v75, 0x0

    move-object/from16 v0, v58

    move-object/from16 v1, v74

    move/from16 v2, v75

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v30

    .line 1953
    .local v30, mlcNumEnable:Z
    const-string v74, "mlc_num"

    const-string v75, "0123456789*#+"

    move-object/from16 v0, v58

    move-object/from16 v1, v74

    move-object/from16 v2, v75

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 1954
    .local v29, mlcNum:Ljava/lang/String;
    const-string v74, "sim_select"

    const/16 v75, 0x1

    move-object/from16 v0, v58

    move-object/from16 v1, v74

    move/from16 v2, v75

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v63

    .line 1955
    .local v63, simSelect:I
    const-string v74, "allow_ni"

    const/16 v75, 0x1

    move-object/from16 v0, v58

    move-object/from16 v1, v74

    move/from16 v2, v75

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 1956
    .local v7, allowNi:Z
    const-string v74, "allow_em"

    const/16 v75, 0x1

    move-object/from16 v0, v58

    move-object/from16 v1, v74

    move/from16 v2, v75

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 1957
    .local v6, allowEm:Z
    const-string v74, "allow_roaming"

    const/16 v75, 0x1

    move-object/from16 v0, v58

    move-object/from16 v1, v74

    move/from16 v2, v75

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 1958
    .local v8, allowRoaming:Z
    const-string v74, "supl_to_file"

    const/16 v75, 0x0

    move-object/from16 v0, v58

    move-object/from16 v1, v74

    move/from16 v2, v75

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v68

    .line 1959
    .local v68, supl2file:Z
    const-string v74, "ecid"

    const/16 v75, 0x0

    move-object/from16 v0, v58

    move-object/from16 v1, v74

    move/from16 v2, v75

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    .line 1960
    .local v16, eCid:Z
    const-string v74, "lab_performance"

    const/16 v75, 0x0

    move-object/from16 v0, v58

    move-object/from16 v1, v74

    move/from16 v2, v75

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v25

    .line 1961
    .local v25, labPerformance:Z
    const-string v74, "enable_ni_timer"

    const/16 v75, 0x0

    move-object/from16 v0, v58

    move-object/from16 v1, v74

    move/from16 v2, v75

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v49

    .line 1962
    .local v49, niTimer:Z
    const-string v74, "notification_timeout"

    const/16 v75, 0x5

    move-object/from16 v0, v58

    move-object/from16 v1, v74

    move/from16 v2, v75

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v48

    .line 1963
    .local v48, nTimeout:I
    const-string v74, "verification_timeout"

    const/16 v75, 0x5

    move-object/from16 v0, v58

    move-object/from16 v1, v74

    move/from16 v2, v75

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v73

    .line 1964
    .local v73, vTimeout:I
    const-string v74, "enable_SuplTwo"

    const/16 v75, 0x1

    move-object/from16 v0, v58

    move-object/from16 v1, v74

    move/from16 v2, v75

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v42

    .line 1965
    .local v42, nSuplTwo:I
    const-string v74, "sMsisdn"

    const-string v75, ""

    move-object/from16 v0, v58

    move-object/from16 v1, v74

    move-object/from16 v2, v75

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v61

    .line 1966
    .local v61, sMsisdn:Ljava/lang/String;
    const-string v74, "enable_3Party"

    const/16 v75, 0x0

    move-object/from16 v0, v58

    move-object/from16 v1, v74

    move/from16 v2, v75

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 1967
    .local v9, bEnable3Party:Z
    const-string v74, "s3rdMsisdn"

    const-string v75, ""

    move-object/from16 v0, v58

    move-object/from16 v1, v74

    move-object/from16 v2, v75

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v60

    .line 1968
    .local v60, s3rdMsisdn:Ljava/lang/String;
    const-string v74, "nPosMethod"

    const/16 v75, 0x0

    move-object/from16 v0, v58

    move-object/from16 v1, v74

    move/from16 v2, v75

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v41

    .line 1969
    .local v41, nPosMethod:I
    const-string v74, "trigger_type"

    const/16 v75, 0x0

    move-object/from16 v0, v58

    move-object/from16 v1, v74

    move/from16 v2, v75

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v22

    .line 1970
    .local v22, iTriggerType:I
    const-string v74, "nPeriodicNumOfFix"

    const/16 v75, 0x0

    move-object/from16 v0, v58

    move-object/from16 v1, v74

    move/from16 v2, v75

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v39

    .line 1971
    .local v39, nPeriodicNumOfFix:I
    const-string v74, "nPeriodicInterval"

    const/16 v75, 0x0

    move-object/from16 v0, v58

    move-object/from16 v1, v74

    move/from16 v2, v75

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v38

    .line 1972
    .local v38, nPeriodicInterval:I
    const-string v74, "nPeriodicStartTime"

    const/16 v75, 0x0

    move-object/from16 v0, v58

    move-object/from16 v1, v74

    move/from16 v2, v75

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v40

    .line 1973
    .local v40, nPeriodicStartTime:I
    const-string v74, "nEventType"

    const/16 v75, 0x0

    move-object/from16 v0, v58

    move-object/from16 v1, v74

    move/from16 v2, v75

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v37

    .line 1974
    .local v37, nEventType:I
    const-string v74, "nEventInterval"

    const/16 v75, 0x0

    move-object/from16 v0, v58

    move-object/from16 v1, v74

    move/from16 v2, v75

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v33

    .line 1975
    .local v33, nEventInterval:I
    const-string v74, "nEventMaxNumReport"

    const/16 v75, 0x0

    move-object/from16 v0, v58

    move-object/from16 v1, v74

    move/from16 v2, v75

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v34

    .line 1976
    .local v34, nEventMaxNumReport:I
    const-string v74, "nEventStartTime"

    const/16 v75, 0x0

    move-object/from16 v0, v58

    move-object/from16 v1, v74

    move/from16 v2, v75

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v35

    .line 1977
    .local v35, nEventStartTime:I
    const-string v74, "nEventStopTime"

    const/16 v75, 0x0

    move-object/from16 v0, v58

    move-object/from16 v1, v74

    move/from16 v2, v75

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v36

    .line 1978
    .local v36, nEventStopTime:I
    const-string v74, "nTargetAreaType"

    const/16 v75, 0x0

    move-object/from16 v0, v58

    move-object/from16 v1, v74

    move/from16 v2, v75

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v46

    .line 1979
    .local v46, nTargetAreaType:I
    const-string v74, "nTargetAreaGeoRadius"

    const/16 v75, 0x0

    move-object/from16 v0, v58

    move-object/from16 v1, v74

    move/from16 v2, v75

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v43

    .line 1980
    .local v43, nTargetAreaGeoRadius:I
    const-string v74, "nTargetAreaGeolat"

    const/16 v75, 0x0

    move-object/from16 v0, v58

    move-object/from16 v1, v74

    move/from16 v2, v75

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v44

    .line 1981
    .local v44, nTargetAreaGeolat:F
    const-string v74, "nTargetAreaGeolng"

    const/16 v75, 0x0

    move-object/from16 v0, v58

    move-object/from16 v1, v74

    move/from16 v2, v75

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v45

    .line 1982
    .local v45, nTargetAreaGeolng:F
    const-string v74, "nTargetArealatSign"

    const/16 v75, 0x0

    move-object/from16 v0, v58

    move-object/from16 v1, v74

    move/from16 v2, v75

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v47

    .line 1983
    .local v47, nTargetArealatSign:I
    const-string v74, "evdoAgpsPrefer"

    const/16 v75, 0x0

    move-object/from16 v0, v58

    move-object/from16 v1, v74

    move/from16 v2, v75

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v17

    .line 1984
    .local v17, evdoAgpsPrefer:I
    const-string v74, "mcp_enable"

    const/16 v75, 0x0

    move-object/from16 v0, v58

    move-object/from16 v1, v74

    move/from16 v2, v75

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v27

    .line 1985
    .local v27, mcpEnable:Z
    const-string v74, "mcp_addr"

    const-string v75, ""

    move-object/from16 v0, v58

    move-object/from16 v1, v74

    move-object/from16 v2, v75

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 1986
    .local v26, mcpAddr:Ljava/lang/String;
    const-string v74, "mcp_port"

    const/16 v75, 0x0

    move-object/from16 v0, v58

    move-object/from16 v1, v74

    move/from16 v2, v75

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v28

    .line 1987
    .local v28, mcpPort:I
    const-string v74, "pde_addr_valid"

    const/16 v75, 0x0

    move-object/from16 v0, v58

    move-object/from16 v1, v74

    move/from16 v2, v75

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v51

    .line 1988
    .local v51, pdeAddrVaild:Z
    const-string v74, "pde_ip_type"

    const/16 v75, 0x0

    move-object/from16 v0, v58

    move-object/from16 v1, v74

    move/from16 v2, v75

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v54

    .line 1989
    .local v54, pdeIpType:Z
    const-string v74, "pde_ip4_addr"

    const-string v75, ""

    move-object/from16 v0, v58

    move-object/from16 v1, v74

    move-object/from16 v2, v75

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v52

    .line 1990
    .local v52, pdeIp4Addr:Ljava/lang/String;
    const-string v74, "pde_ip6_addr"

    const-string v75, ""

    move-object/from16 v0, v58

    move-object/from16 v1, v74

    move-object/from16 v2, v75

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    .line 1991
    .local v53, pdeIp6Addr:Ljava/lang/String;
    const-string v74, "pde_port"

    const/16 v75, 0x0

    move-object/from16 v0, v58

    move-object/from16 v1, v74

    move/from16 v2, v75

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v55

    .line 1992
    .local v55, pdePort:I
    const-string v74, "pde_url_valid"

    const/16 v75, 0x0

    move-object/from16 v0, v58

    move-object/from16 v1, v74

    move/from16 v2, v75

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v57

    .line 1993
    .local v57, pdeUrlValid:Z
    const-string v74, "pde_url"

    const-string v75, ""

    move-object/from16 v0, v58

    move-object/from16 v1, v74

    move-object/from16 v2, v75

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v56

    .line 1996
    .local v56, pdeUrl:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxMcpEnable:Landroid/widget/CheckBox;

    move-object/from16 v74, v0

    move-object/from16 v0, v74

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1997
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewMcpAddr:Landroid/widget/TextView;

    move-object/from16 v74, v0

    move-object/from16 v0, v74

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1998
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewMcpPort:Landroid/widget/TextView;

    move-object/from16 v74, v0

    new-instance v75, Ljava/lang/StringBuilder;

    invoke-direct/range {v75 .. v75}, Ljava/lang/StringBuilder;-><init>()V

    const-string v76, ""

    invoke-virtual/range {v75 .. v76}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v75

    move-object/from16 v0, v75

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v75

    invoke-virtual/range {v75 .. v75}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v75

    invoke-virtual/range {v74 .. v75}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1999
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxPdeAddrValid:Landroid/widget/CheckBox;

    move-object/from16 v74, v0

    move-object/from16 v0, v74

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2000
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxPdeIpType:Landroid/widget/CheckBox;

    move-object/from16 v74, v0

    move-object/from16 v0, v74

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2001
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewPdeIp4Addr:Landroid/widget/TextView;

    move-object/from16 v74, v0

    move-object/from16 v0, v74

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2002
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewPdeIp6Addr:Landroid/widget/TextView;

    move-object/from16 v74, v0

    move-object/from16 v0, v74

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2003
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewPdePort:Landroid/widget/TextView;

    move-object/from16 v74, v0

    new-instance v75, Ljava/lang/StringBuilder;

    invoke-direct/range {v75 .. v75}, Ljava/lang/StringBuilder;-><init>()V

    const-string v76, ""

    invoke-virtual/range {v75 .. v76}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v75

    move-object/from16 v0, v75

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v75

    invoke-virtual/range {v75 .. v75}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v75

    invoke-virtual/range {v74 .. v75}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2004
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxPdeUrlVaild:Landroid/widget/CheckBox;

    move-object/from16 v74, v0

    move-object/from16 v0, v74

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2005
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewPdeUrl:Landroid/widget/TextView;

    move-object/from16 v74, v0

    move-object/from16 v0, v74

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2007
    const/16 v74, 0x2

    move/from16 v0, v17

    move/from16 v1, v74

    if-ne v0, v1, :cond_6

    .line 2008
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mLinearLayoutCdmaSettings:Landroid/widget/LinearLayout;

    move-object/from16 v74, v0

    const/16 v75, 0x0

    invoke-virtual/range {v74 .. v75}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2009
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButton_CDMA_Force:Landroid/widget/RadioButton;

    move-object/from16 v74, v0

    const/16 v75, 0x1

    invoke-virtual/range {v74 .. v75}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 2018
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    move-object/from16 v74, v0

    invoke-interface/range {v74 .. v74}, Lcom/mediatek/common/agps/MtkAgpsManager;->getConfig()Lcom/mediatek/common/agps/MtkAgpsConfig;

    move-result-object v10

    .line 2019
    .local v10, cdmaconfig:Lcom/mediatek/common/agps/MtkAgpsConfig;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    move-object/from16 v74, v0

    invoke-interface/range {v74 .. v74}, Lcom/mediatek/common/agps/MtkAgpsManager;->getCdmaProfile()Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;

    move-result-object v11

    .line 2020
    .local v11, cdmaprofile:Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;
    move/from16 v0, v17

    iput v0, v10, Lcom/mediatek/common/agps/MtkAgpsConfig;->evdoAgpsPrefer:I

    .line 2021
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxMcpEnable:Landroid/widget/CheckBox;

    move-object/from16 v74, v0

    invoke-virtual/range {v74 .. v74}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v74

    if-eqz v74, :cond_8

    const/16 v74, 0x1

    :goto_1
    move/from16 v0, v74

    iput v0, v11, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mMcpEnable:I

    .line 2022
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewMcpAddr:Landroid/widget/TextView;

    move-object/from16 v74, v0

    invoke-virtual/range {v74 .. v74}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v74

    invoke-virtual/range {v74 .. v74}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v74

    move-object/from16 v0, v74

    iput-object v0, v11, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mMcpAddr:Ljava/lang/String;

    .line 2023
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewMcpPort:Landroid/widget/TextView;

    move-object/from16 v74, v0

    invoke-virtual/range {v74 .. v74}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v74

    invoke-virtual/range {v74 .. v74}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v74

    invoke-static/range {v74 .. v74}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v74

    invoke-virtual/range {v74 .. v74}, Ljava/lang/Integer;->intValue()I

    move-result v74

    move/from16 v0, v74

    iput v0, v11, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mMcpPort:I

    .line 2024
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxPdeAddrValid:Landroid/widget/CheckBox;

    move-object/from16 v74, v0

    invoke-virtual/range {v74 .. v74}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v74

    if-eqz v74, :cond_9

    const/16 v74, 0x1

    :goto_2
    move/from16 v0, v74

    iput v0, v11, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mPdeAddrValid:I

    .line 2025
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxPdeIpType:Landroid/widget/CheckBox;

    move-object/from16 v74, v0

    invoke-virtual/range {v74 .. v74}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v74

    if-eqz v74, :cond_a

    const/16 v74, 0x1

    :goto_3
    move/from16 v0, v74

    iput v0, v11, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mPdeIpType:I

    .line 2026
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewPdeIp4Addr:Landroid/widget/TextView;

    move-object/from16 v74, v0

    invoke-virtual/range {v74 .. v74}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v74

    invoke-virtual/range {v74 .. v74}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v74

    move-object/from16 v0, v74

    iput-object v0, v11, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mPdeIp4Addr:Ljava/lang/String;

    .line 2027
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewPdeIp6Addr:Landroid/widget/TextView;

    move-object/from16 v74, v0

    invoke-virtual/range {v74 .. v74}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v74

    invoke-virtual/range {v74 .. v74}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v74

    move-object/from16 v0, v74

    iput-object v0, v11, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mPdeIp6Addr:Ljava/lang/String;

    .line 2028
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewPdePort:Landroid/widget/TextView;

    move-object/from16 v74, v0

    invoke-virtual/range {v74 .. v74}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v74

    invoke-virtual/range {v74 .. v74}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v74

    invoke-static/range {v74 .. v74}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v74

    invoke-virtual/range {v74 .. v74}, Ljava/lang/Integer;->intValue()I

    move-result v74

    move/from16 v0, v74

    iput v0, v11, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mPdePort:I

    .line 2029
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxPdeUrlVaild:Landroid/widget/CheckBox;

    move-object/from16 v74, v0

    invoke-virtual/range {v74 .. v74}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v74

    if-eqz v74, :cond_b

    const/16 v74, 0x1

    :goto_4
    move/from16 v0, v74

    iput v0, v11, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mPdeUrlValid:I

    .line 2030
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewPdeUrl:Landroid/widget/TextView;

    move-object/from16 v74, v0

    invoke-virtual/range {v74 .. v74}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v74

    invoke-virtual/range {v74 .. v74}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v74

    move-object/from16 v0, v74

    iput-object v0, v11, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mPdeUrlAddr:Ljava/lang/String;

    .line 2031
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    move-object/from16 v74, v0

    move-object/from16 v0, v74

    invoke-interface {v0, v11}, Lcom/mediatek/common/agps/MtkAgpsManager;->setCdmaProfile(Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;)V

    .line 2032
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    move-object/from16 v74, v0

    move-object/from16 v0, v74

    invoke-interface {v0, v10}, Lcom/mediatek/common/agps/MtkAgpsManager;->setConfig(Lcom/mediatek/common/agps/MtkAgpsConfig;)V

    .line 2036
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxEnableAgps:Landroid/widget/CheckBox;

    move-object/from16 v74, v0

    move-object/from16 v0, v74

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2037
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckEnableIot:Landroid/widget/CheckBox;

    move-object/from16 v74, v0

    move-object/from16 v0, v74

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2038
    if-nez v31, :cond_c

    .line 2039
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButtonMsa:Landroid/widget/RadioButton;

    move-object/from16 v74, v0

    const/16 v75, 0x1

    invoke-virtual/range {v74 .. v75}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 2044
    :goto_5
    const/16 v74, 0x1

    move/from16 v0, v74

    if-ne v14, v0, :cond_e

    .line 2045
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButtonCp:Landroid/widget/RadioButton;

    move-object/from16 v74, v0

    const/16 v75, 0x1

    invoke-virtual/range {v74 .. v75}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 2049
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewSlpAddr:Landroid/widget/TextView;

    move-object/from16 v74, v0

    move-object/from16 v0, v74

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2050
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewSlpPort:Landroid/widget/TextView;

    move-object/from16 v74, v0

    invoke-static/range {v66 .. v66}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v75

    invoke-virtual/range {v74 .. v75}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2051
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxTls:Landroid/widget/CheckBox;

    move-object/from16 v74, v0

    move-object/from16 v0, v74

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2053
    if-nez v71, :cond_f

    .line 2054
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButtonRrlp:Landroid/widget/RadioButton;

    move-object/from16 v74, v0

    const/16 v75, 0x1

    invoke-virtual/range {v74 .. v75}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 2060
    :goto_7
    const/16 v74, 0x1

    move/from16 v0, v62

    move/from16 v1, v74

    if-ne v0, v1, :cond_11

    .line 2061
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButtonIpv4:Landroid/widget/RadioButton;

    move-object/from16 v74, v0

    const/16 v75, 0x1

    invoke-virtual/range {v74 .. v75}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 2065
    :goto_8
    if-nez v3, :cond_12

    .line 2066
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButtonKValue:Landroid/widget/RadioButton;

    move-object/from16 v74, v0

    const/16 v75, 0x1

    invoke-virtual/range {v74 .. v75}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 2067
    const/16 v74, 0x0

    move/from16 v0, v74

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mediatek/lbs/em/LbsAgps;->mAccUnitFlag:I

    .line 2073
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewHAcc:Landroid/widget/TextView;

    move-object/from16 v74, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v75

    invoke-virtual/range {v74 .. v75}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2074
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewVAcc:Landroid/widget/TextView;

    move-object/from16 v74, v0

    invoke-static/range {v72 .. v72}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v75

    invoke-virtual/range {v74 .. v75}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2075
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewLocationAge:Landroid/widget/TextView;

    move-object/from16 v74, v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v75

    invoke-virtual/range {v74 .. v75}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2076
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewDelay:Landroid/widget/TextView;

    move-object/from16 v74, v0

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v75

    invoke-virtual/range {v74 .. v75}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2077
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxCerVerify:Landroid/widget/CheckBox;

    move-object/from16 v74, v0

    move-object/from16 v0, v74

    invoke-virtual {v0, v12}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2079
    if-nez v32, :cond_13

    .line 2080
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButtonLocationEstimate:Landroid/widget/RadioButton;

    move-object/from16 v74, v0

    const/16 v75, 0x1

    invoke-virtual/range {v74 .. v75}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 2084
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxExternalAddr:Landroid/widget/CheckBox;

    move-object/from16 v74, v0

    move-object/from16 v0, v74

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2085
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewExternalAddr:Landroid/widget/TextView;

    move-object/from16 v74, v0

    move-object/from16 v0, v74

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2086
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxMlcNumber:Landroid/widget/CheckBox;

    move-object/from16 v74, v0

    move-object/from16 v0, v74

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2087
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewMlcNumber:Landroid/widget/TextView;

    move-object/from16 v74, v0

    move-object/from16 v0, v74

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2089
    const/16 v74, 0x1

    move/from16 v0, v63

    move/from16 v1, v74

    if-ne v0, v1, :cond_14

    .line 2090
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButtonPreferSim1:Landroid/widget/RadioButton;

    move-object/from16 v74, v0

    const/16 v75, 0x1

    invoke-virtual/range {v74 .. v75}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 2101
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxNiAllow:Landroid/widget/CheckBox;

    move-object/from16 v74, v0

    move-object/from16 v0, v74

    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxEmAllow:Landroid/widget/CheckBox;

    move-object/from16 v74, v0

    move-object/from16 v0, v74

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxRoamingAllow:Landroid/widget/CheckBox;

    move-object/from16 v74, v0

    move-object/from16 v0, v74

    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxSupl2File:Landroid/widget/CheckBox;

    move-object/from16 v74, v0

    move-object/from16 v0, v74

    move/from16 v1, v68

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxEcidEnable:Landroid/widget/CheckBox;

    move-object/from16 v74, v0

    move-object/from16 v0, v74

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxLabPerformance:Landroid/widget/CheckBox;

    move-object/from16 v74, v0

    move-object/from16 v0, v74

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxEnableNiTimer:Landroid/widget/CheckBox;

    move-object/from16 v74, v0

    move-object/from16 v0, v74

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mSpinnerNotificationTimeout:Landroid/widget/Spinner;

    move-object/from16 v74, v0

    move-object/from16 v0, v74

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 2111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mSpinnerVerificationTimeout:Landroid/widget/Spinner;

    move-object/from16 v74, v0

    move-object/from16 v0, v74

    move/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 2114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mProfileManager:Lcom/mediatek/common/agps/MtkAgpsProfileManager;

    move-object/from16 v74, v0

    invoke-virtual/range {v74 .. v74}, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->getDefaultProfile()Lcom/mediatek/common/agps/MtkAgpsProfile;

    move-result-object v59

    .line 2115
    .local v59, profile:Lcom/mediatek/common/agps/MtkAgpsProfile;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mProfileManager:Lcom/mediatek/common/agps/MtkAgpsProfileManager;

    move-object/from16 v74, v0

    invoke-virtual/range {v74 .. v74}, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->getAllProfile()Ljava/util/List;

    move-result-object v74

    invoke-interface/range {v74 .. v74}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v74

    if-eqz v74, :cond_2

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v69

    check-cast v69, Lcom/mediatek/common/agps/MtkAgpsProfile;

    .line 2116
    .local v69, tmp:Lcom/mediatek/common/agps/MtkAgpsProfile;
    move-object/from16 v0, v69

    iget-object v0, v0, Lcom/mediatek/common/agps/MtkAgpsProfile;->code:Ljava/lang/String;

    move-object/from16 v74, v0

    move-object/from16 v0, v74

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v74

    if-eqz v74, :cond_1

    .line 2117
    move-object/from16 v59, v69

    .line 2122
    .end local v69           #tmp:Lcom/mediatek/common/agps/MtkAgpsProfile;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mProfileManager:Lcom/mediatek/common/agps/MtkAgpsProfileManager;

    move-object/from16 v74, v0

    invoke-virtual/range {v74 .. v74}, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->getAllProfile()Ljava/util/List;

    move-result-object v74

    const/16 v75, 0x0

    invoke-interface/range {v74 .. v75}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Lcom/mediatek/common/agps/MtkAgpsProfile;

    .line 2123
    .local v50, p:Lcom/mediatek/common/agps/MtkAgpsProfile;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewSlpAddr:Landroid/widget/TextView;

    move-object/from16 v74, v0

    invoke-virtual/range {v74 .. v74}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v74

    invoke-virtual/range {v74 .. v74}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v74

    move-object/from16 v0, v74

    move-object/from16 v1, v59

    iput-object v0, v1, Lcom/mediatek/common/agps/MtkAgpsProfile;->addr:Ljava/lang/String;

    .line 2124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewSlpPort:Landroid/widget/TextView;

    move-object/from16 v74, v0

    invoke-virtual/range {v74 .. v74}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v74

    invoke-virtual/range {v74 .. v74}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v74

    invoke-static/range {v74 .. v74}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v74

    invoke-virtual/range {v74 .. v74}, Ljava/lang/Integer;->intValue()I

    move-result v74

    move/from16 v0, v74

    move-object/from16 v1, v59

    iput v0, v1, Lcom/mediatek/common/agps/MtkAgpsProfile;->port:I

    .line 2125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxTls:Landroid/widget/CheckBox;

    move-object/from16 v74, v0

    invoke-virtual/range {v74 .. v74}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v74

    if-eqz v74, :cond_18

    const/16 v74, 0x1

    :goto_c
    move/from16 v0, v74

    move-object/from16 v1, v59

    iput v0, v1, Lcom/mediatek/common/agps/MtkAgpsProfile;->tls:I

    .line 2126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    move-object/from16 v74, v0

    move-object/from16 v0, v74

    move-object/from16 v1, v59

    invoke-interface {v0, v1}, Lcom/mediatek/common/agps/MtkAgpsManager;->setProfile(Lcom/mediatek/common/agps/MtkAgpsProfile;)V

    .line 2128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    move-object/from16 v74, v0

    invoke-interface/range {v74 .. v74}, Lcom/mediatek/common/agps/MtkAgpsManager;->getConfig()Lcom/mediatek/common/agps/MtkAgpsConfig;

    move-result-object v13

    .line 2129
    .local v13, config:Lcom/mediatek/common/agps/MtkAgpsConfig;
    move/from16 v0, v31

    iput v0, v13, Lcom/mediatek/common/agps/MtkAgpsConfig;->siMode:I

    .line 2130
    move/from16 v0, v62

    iput v0, v13, Lcom/mediatek/common/agps/MtkAgpsConfig;->setId:I

    .line 2131
    const/16 v74, 0x1

    move/from16 v0, v74

    if-ne v3, v0, :cond_19

    .line 2132
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/mediatek/lbs/em/LbsAgps;->calcKFromMeter(I)I

    move-result v74

    move/from16 v0, v74

    iput v0, v13, Lcom/mediatek/common/agps/MtkAgpsConfig;->qopHacc:I

    .line 2133
    move-object/from16 v0, p0

    move/from16 v1, v72

    invoke-direct {v0, v1}, Lcom/mediatek/lbs/em/LbsAgps;->calcKFromMeter(I)I

    move-result v74

    move/from16 v0, v74

    iput v0, v13, Lcom/mediatek/common/agps/MtkAgpsConfig;->qopVacc:I

    .line 2138
    :goto_d
    iput v4, v13, Lcom/mediatek/common/agps/MtkAgpsConfig;->qopAge:I

    .line 2139
    iput v15, v13, Lcom/mediatek/common/agps/MtkAgpsConfig;->qopDelay:I

    .line 2140
    move/from16 v0, v48

    iput v0, v13, Lcom/mediatek/common/agps/MtkAgpsConfig;->notifyTimeout:I

    .line 2141
    move/from16 v0, v73

    iput v0, v13, Lcom/mediatek/common/agps/MtkAgpsConfig;->verifyTimeout:I

    .line 2142
    if-eqz v7, :cond_1a

    const/16 v74, 0x1

    :goto_e
    move/from16 v0, v74

    iput v0, v13, Lcom/mediatek/common/agps/MtkAgpsConfig;->niEnable:I

    .line 2143
    iput v14, v13, Lcom/mediatek/common/agps/MtkAgpsConfig;->agpsProtocol:I

    .line 2144
    move-object/from16 v0, v18

    iput-object v0, v13, Lcom/mediatek/common/agps/MtkAgpsConfig;->extAddress:Ljava/lang/String;

    .line 2145
    if-eqz v19, :cond_1b

    const/16 v74, 0x1

    :goto_f
    move/from16 v0, v74

    iput v0, v13, Lcom/mediatek/common/agps/MtkAgpsConfig;->extAddressEnable:I

    .line 2146
    move-object/from16 v0, v29

    iput-object v0, v13, Lcom/mediatek/common/agps/MtkAgpsConfig;->mlcNum:Ljava/lang/String;

    .line 2147
    if-eqz v30, :cond_1c

    const/16 v74, 0x1

    :goto_10
    move/from16 v0, v74

    iput v0, v13, Lcom/mediatek/common/agps/MtkAgpsConfig;->mlcNumEnable:I

    .line 2148
    move/from16 v0, v71

    iput v0, v13, Lcom/mediatek/common/agps/MtkAgpsConfig;->suplPosProtocol:I

    .line 2149
    move/from16 v0, v32

    iput v0, v13, Lcom/mediatek/common/agps/MtkAgpsConfig;->cpMolrType:I

    .line 2150
    if-eqz v68, :cond_1d

    const/16 v74, 0x1

    :goto_11
    move/from16 v0, v74

    iput v0, v13, Lcom/mediatek/common/agps/MtkAgpsConfig;->supl2file:I

    .line 2151
    if-eqz v23, :cond_1e

    const/16 v74, 0x1

    :goto_12
    move/from16 v0, v74

    iput v0, v13, Lcom/mediatek/common/agps/MtkAgpsConfig;->niIot:I

    .line 2152
    move/from16 v0, v63

    iput v0, v13, Lcom/mediatek/common/agps/MtkAgpsConfig;->simIdPref:I

    .line 2153
    if-eqz v8, :cond_1f

    const/16 v74, 0x1

    :goto_13
    move/from16 v0, v74

    iput v0, v13, Lcom/mediatek/common/agps/MtkAgpsConfig;->roaming:I

    .line 2154
    if-eqz v12, :cond_20

    const/16 v74, 0x1

    :goto_14
    move/from16 v0, v74

    iput v0, v13, Lcom/mediatek/common/agps/MtkAgpsConfig;->caEnable:I

    .line 2155
    if-eqz v6, :cond_21

    const/16 v74, 0x1

    :goto_15
    move/from16 v0, v74

    iput v0, v13, Lcom/mediatek/common/agps/MtkAgpsConfig;->emEnable:I

    .line 2156
    if-eqz v49, :cond_22

    const/16 v74, 0x1

    :goto_16
    move/from16 v0, v74

    iput v0, v13, Lcom/mediatek/common/agps/MtkAgpsConfig;->niTimer:I

    .line 2157
    if-eqz v25, :cond_23

    const/16 v74, 0x1

    :goto_17
    move/from16 v0, v74

    iput v0, v13, Lcom/mediatek/common/agps/MtkAgpsConfig;->pmtk9975:I

    .line 2158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    move-object/from16 v74, v0

    move-object/from16 v0, v74

    invoke-interface {v0, v13}, Lcom/mediatek/common/agps/MtkAgpsManager;->setConfig(Lcom/mediatek/common/agps/MtkAgpsConfig;)V

    .line 2159
    if-eqz v5, :cond_24

    .line 2160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    move-object/from16 v74, v0

    invoke-interface/range {v74 .. v74}, Lcom/mediatek/common/agps/MtkAgpsManager;->enable()V

    .line 2167
    :goto_18
    const/16 v74, 0x2

    move/from16 v0, v42

    move/from16 v1, v74

    if-ne v0, v1, :cond_25

    .line 2168
    const/16 v74, 0x2

    move/from16 v0, v74

    iput v0, v13, Lcom/mediatek/common/agps/MtkAgpsConfig;->suplVersion:I

    .line 2169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mLinearLayout_SUPLTwoDotZero:Landroid/widget/LinearLayout;

    move-object/from16 v74, v0

    const/16 v75, 0x0

    invoke-virtual/range {v74 .. v75}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBox_SUPLTwo:Landroid/widget/CheckBox;

    move-object/from16 v74, v0

    const/16 v75, 0x1

    invoke-virtual/range {v74 .. v75}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2177
    :goto_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    move-object/from16 v74, v0

    move-object/from16 v0, v74

    move-object/from16 v1, v61

    invoke-interface {v0, v1}, Lcom/mediatek/common/agps/MtkAgpsManager;->setSILRMsisdn(Ljava/lang/String;)V

    .line 2178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mTextView_MSISDN:Landroid/widget/TextView;

    move-object/from16 v74, v0

    move-object/from16 v0, v74

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2181
    if-eqz v9, :cond_26

    const/16 v74, 0x1

    :goto_1a
    move/from16 v0, v74

    iput v0, v13, Lcom/mediatek/common/agps/MtkAgpsConfig;->enable3Party:I

    .line 2182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mTextView_ThirdMSISDN:Landroid/widget/TextView;

    move-object/from16 v74, v0

    move-object/from16 v0, v74

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 2183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mButton_ThirdMSISDNEdit:Landroid/widget/Button;

    move-object/from16 v74, v0

    move-object/from16 v0, v74

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    move-object/from16 v74, v0

    const/16 v75, 0x1

    move/from16 v0, v75

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v75, v0

    const/16 v76, 0x0

    aput-object v60, v75, v76

    invoke-interface/range {v74 .. v75}, Lcom/mediatek/common/agps/MtkAgpsManager;->setSI3PartyMsisdn([Ljava/lang/String;)V

    .line 2186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mTextView_ThirdMSISDN:Landroid/widget/TextView;

    move-object/from16 v74, v0

    move-object/from16 v0, v74

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2190
    const/16 v74, 0x1

    move/from16 v0, v22

    move/from16 v1, v74

    if-gt v0, v1, :cond_27

    .line 2191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButton_Periodic:Landroid/widget/RadioButton;

    move-object/from16 v74, v0

    const/16 v75, 0x1

    invoke-virtual/range {v74 .. v75}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 2192
    const/16 v74, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v74

    invoke-direct {v0, v1}, Lcom/mediatek/lbs/em/LbsAgps;->enablePeriodicWidget(Z)V

    .line 2198
    :goto_1b
    move/from16 v0, v41

    iput v0, v13, Lcom/mediatek/common/agps/MtkAgpsConfig;->posMethod:I

    .line 2199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mPopupPosMethod:Landroid/widget/PopupMenu;

    move-object/from16 v74, v0

    invoke-virtual/range {v74 .. v74}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v74

    invoke-interface/range {v74 .. v74}, Landroid/view/Menu;->size()I

    move-result v74

    move/from16 v0, v41

    move/from16 v1, v74

    if-gt v0, v1, :cond_3

    .line 2200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mPopupPosMethod:Landroid/widget/PopupMenu;

    move-object/from16 v74, v0

    invoke-virtual/range {v74 .. v74}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v74

    iget v0, v13, Lcom/mediatek/common/agps/MtkAgpsConfig;->posMethod:I

    move/from16 v75, v0

    invoke-interface/range {v74 .. v75}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v24

    .line 2201
    .local v24, item:Landroid/view/MenuItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mTextView_PosMethod:Landroid/widget/TextView;

    move-object/from16 v74, v0

    invoke-interface/range {v24 .. v24}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v75

    invoke-virtual/range {v74 .. v75}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2204
    .end local v24           #item:Landroid/view/MenuItem;
    :cond_3
    move/from16 v0, v39

    iput v0, v13, Lcom/mediatek/common/agps/MtkAgpsConfig;->periodicNumOfFix:I

    .line 2205
    move/from16 v0, v38

    iput v0, v13, Lcom/mediatek/common/agps/MtkAgpsConfig;->periodicInterval:I

    .line 2206
    move/from16 v0, v40

    iput v0, v13, Lcom/mediatek/common/agps/MtkAgpsConfig;->periodicStartTime:I

    .line 2208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mTextView_PeriodicNFix:Landroid/widget/TextView;

    move-object/from16 v74, v0

    new-instance v75, Ljava/lang/StringBuilder;

    invoke-direct/range {v75 .. v75}, Ljava/lang/StringBuilder;-><init>()V

    const-string v76, ""

    invoke-virtual/range {v75 .. v76}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v75

    iget v0, v13, Lcom/mediatek/common/agps/MtkAgpsConfig;->periodicNumOfFix:I

    move/from16 v76, v0

    invoke-virtual/range {v75 .. v76}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v75

    invoke-virtual/range {v75 .. v75}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v75

    invoke-virtual/range {v74 .. v75}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mTextView_PeriodicInter:Landroid/widget/TextView;

    move-object/from16 v74, v0

    new-instance v75, Ljava/lang/StringBuilder;

    invoke-direct/range {v75 .. v75}, Ljava/lang/StringBuilder;-><init>()V

    const-string v76, ""

    invoke-virtual/range {v75 .. v76}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v75

    iget v0, v13, Lcom/mediatek/common/agps/MtkAgpsConfig;->periodicInterval:I

    move/from16 v76, v0

    invoke-virtual/range {v75 .. v76}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v75

    invoke-virtual/range {v75 .. v75}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v75

    invoke-virtual/range {v74 .. v75}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mTextView_PeriodicSTime:Landroid/widget/TextView;

    move-object/from16 v74, v0

    new-instance v75, Ljava/lang/StringBuilder;

    invoke-direct/range {v75 .. v75}, Ljava/lang/StringBuilder;-><init>()V

    const-string v76, ""

    invoke-virtual/range {v75 .. v76}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v75

    iget v0, v13, Lcom/mediatek/common/agps/MtkAgpsConfig;->periodicStartTime:I

    move/from16 v76, v0

    invoke-virtual/range {v75 .. v76}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v75

    invoke-virtual/range {v75 .. v75}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v75

    invoke-virtual/range {v74 .. v75}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2213
    move/from16 v0, v37

    iput v0, v13, Lcom/mediatek/common/agps/MtkAgpsConfig;->eventType:I

    .line 2214
    iget v0, v13, Lcom/mediatek/common/agps/MtkAgpsConfig;->eventType:I

    move/from16 v74, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mPopupAreaType:Landroid/widget/PopupMenu;

    move-object/from16 v75, v0

    invoke-virtual/range {v75 .. v75}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v75

    invoke-interface/range {v75 .. v75}, Landroid/view/Menu;->size()I

    move-result v75

    move/from16 v0, v74

    move/from16 v1, v75

    if-gt v0, v1, :cond_4

    .line 2215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mPopupAreaType:Landroid/widget/PopupMenu;

    move-object/from16 v74, v0

    invoke-virtual/range {v74 .. v74}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v74

    iget v0, v13, Lcom/mediatek/common/agps/MtkAgpsConfig;->eventType:I

    move/from16 v75, v0

    invoke-interface/range {v74 .. v75}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v24

    .line 2216
    .restart local v24       #item:Landroid/view/MenuItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mTextView_AreaType:Landroid/widget/TextView;

    move-object/from16 v74, v0

    invoke-interface/range {v24 .. v24}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v75

    invoke-virtual/range {v74 .. v75}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2219
    .end local v24           #item:Landroid/view/MenuItem;
    :cond_4
    move/from16 v0, v33

    iput v0, v13, Lcom/mediatek/common/agps/MtkAgpsConfig;->eventInterval:I

    .line 2220
    move/from16 v0, v34

    iput v0, v13, Lcom/mediatek/common/agps/MtkAgpsConfig;->eventMaxNumReport:I

    .line 2221
    move/from16 v0, v35

    iput v0, v13, Lcom/mediatek/common/agps/MtkAgpsConfig;->eventStartTime:I

    .line 2222
    move/from16 v0, v36

    iput v0, v13, Lcom/mediatek/common/agps/MtkAgpsConfig;->eventStopTime:I

    .line 2224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mTextView_AreaMinInter:Landroid/widget/TextView;

    move-object/from16 v74, v0

    new-instance v75, Ljava/lang/StringBuilder;

    invoke-direct/range {v75 .. v75}, Ljava/lang/StringBuilder;-><init>()V

    const-string v76, ""

    invoke-virtual/range {v75 .. v76}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v75

    iget v0, v13, Lcom/mediatek/common/agps/MtkAgpsConfig;->eventInterval:I

    move/from16 v76, v0

    invoke-virtual/range {v75 .. v76}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v75

    invoke-virtual/range {v75 .. v75}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v75

    invoke-virtual/range {v74 .. v75}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mTextView_AreaMaxNum:Landroid/widget/TextView;

    move-object/from16 v74, v0

    new-instance v75, Ljava/lang/StringBuilder;

    invoke-direct/range {v75 .. v75}, Ljava/lang/StringBuilder;-><init>()V

    const-string v76, ""

    invoke-virtual/range {v75 .. v76}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v75

    iget v0, v13, Lcom/mediatek/common/agps/MtkAgpsConfig;->eventMaxNumReport:I

    move/from16 v76, v0

    invoke-virtual/range {v75 .. v76}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v75

    invoke-virtual/range {v75 .. v75}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v75

    invoke-virtual/range {v74 .. v75}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mTextView_AreaStartTime:Landroid/widget/TextView;

    move-object/from16 v74, v0

    new-instance v75, Ljava/lang/StringBuilder;

    invoke-direct/range {v75 .. v75}, Ljava/lang/StringBuilder;-><init>()V

    const-string v76, ""

    invoke-virtual/range {v75 .. v76}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v75

    iget v0, v13, Lcom/mediatek/common/agps/MtkAgpsConfig;->eventStartTime:I

    move/from16 v76, v0

    invoke-virtual/range {v75 .. v76}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v75

    invoke-virtual/range {v75 .. v75}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v75

    invoke-virtual/range {v74 .. v75}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mTextView_AreaStopTime:Landroid/widget/TextView;

    move-object/from16 v74, v0

    new-instance v75, Ljava/lang/StringBuilder;

    invoke-direct/range {v75 .. v75}, Ljava/lang/StringBuilder;-><init>()V

    const-string v76, ""

    invoke-virtual/range {v75 .. v76}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v75

    iget v0, v13, Lcom/mediatek/common/agps/MtkAgpsConfig;->eventStopTime:I

    move/from16 v76, v0

    invoke-virtual/range {v75 .. v76}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v75

    invoke-virtual/range {v75 .. v75}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v75

    invoke-virtual/range {v74 .. v75}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2229
    iget-object v0, v13, Lcom/mediatek/common/agps/MtkAgpsConfig;->targetAreaList:[Landroid/os/Parcelable;

    move-object/from16 v74, v0

    const/16 v75, 0x0

    aget-object v70, v74, v75

    check-cast v70, Lcom/mediatek/common/agps/MtkAgpsTargetArea;

    .line 2231
    .local v70, tmparea:Lcom/mediatek/common/agps/MtkAgpsTargetArea;
    move/from16 v0, v46

    move-object/from16 v1, v70

    iput v0, v1, Lcom/mediatek/common/agps/MtkAgpsTargetArea;->type:I

    .line 2232
    move/from16 v0, v43

    move-object/from16 v1, v70

    iput v0, v1, Lcom/mediatek/common/agps/MtkAgpsTargetArea;->radius:I

    .line 2233
    move/from16 v0, v44

    move-object/from16 v1, v70

    iput v0, v1, Lcom/mediatek/common/agps/MtkAgpsTargetArea;->lat:F

    .line 2234
    move/from16 v0, v45

    move-object/from16 v1, v70

    iput v0, v1, Lcom/mediatek/common/agps/MtkAgpsTargetArea;->lng:F

    .line 2235
    move/from16 v0, v47

    move-object/from16 v1, v70

    iput v0, v1, Lcom/mediatek/common/agps/MtkAgpsTargetArea;->latSign:I

    .line 2237
    move-object/from16 v0, v70

    iget v0, v0, Lcom/mediatek/common/agps/MtkAgpsTargetArea;->type:I

    move/from16 v74, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mPopupGeoType:Landroid/widget/PopupMenu;

    move-object/from16 v75, v0

    invoke-virtual/range {v75 .. v75}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v75

    invoke-interface/range {v75 .. v75}, Landroid/view/Menu;->size()I

    move-result v75

    move/from16 v0, v74

    move/from16 v1, v75

    if-gt v0, v1, :cond_5

    .line 2238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mPopupGeoType:Landroid/widget/PopupMenu;

    move-object/from16 v74, v0

    invoke-virtual/range {v74 .. v74}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v74

    move-object/from16 v0, v70

    iget v0, v0, Lcom/mediatek/common/agps/MtkAgpsTargetArea;->type:I

    move/from16 v75, v0

    invoke-interface/range {v74 .. v75}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v24

    .line 2239
    .restart local v24       #item:Landroid/view/MenuItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mTextView_GeographicResult:Landroid/widget/TextView;

    move-object/from16 v74, v0

    invoke-interface/range {v24 .. v24}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v75

    invoke-virtual/range {v74 .. v75}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2242
    .end local v24           #item:Landroid/view/MenuItem;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mTextView_GeoRadius:Landroid/widget/TextView;

    move-object/from16 v74, v0

    new-instance v75, Ljava/lang/StringBuilder;

    invoke-direct/range {v75 .. v75}, Ljava/lang/StringBuilder;-><init>()V

    const-string v76, ""

    invoke-virtual/range {v75 .. v76}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v75

    move-object/from16 v0, v70

    iget v0, v0, Lcom/mediatek/common/agps/MtkAgpsTargetArea;->radius:I

    move/from16 v76, v0

    invoke-virtual/range {v75 .. v76}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v75

    invoke-virtual/range {v75 .. v75}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v75

    invoke-virtual/range {v74 .. v75}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mTextView_GeoLat:Landroid/widget/TextView;

    move-object/from16 v74, v0

    new-instance v75, Ljava/lang/StringBuilder;

    invoke-direct/range {v75 .. v75}, Ljava/lang/StringBuilder;-><init>()V

    const-string v76, ""

    invoke-virtual/range {v75 .. v76}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v75

    move-object/from16 v0, v70

    iget v0, v0, Lcom/mediatek/common/agps/MtkAgpsTargetArea;->lat:F

    move/from16 v76, v0

    invoke-virtual/range {v75 .. v76}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v75

    invoke-virtual/range {v75 .. v75}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v75

    invoke-virtual/range {v74 .. v75}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mTextView_GeoLong:Landroid/widget/TextView;

    move-object/from16 v74, v0

    new-instance v75, Ljava/lang/StringBuilder;

    invoke-direct/range {v75 .. v75}, Ljava/lang/StringBuilder;-><init>()V

    const-string v76, ""

    invoke-virtual/range {v75 .. v76}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v75

    move-object/from16 v0, v70

    iget v0, v0, Lcom/mediatek/common/agps/MtkAgpsTargetArea;->lng:F

    move/from16 v76, v0

    invoke-virtual/range {v75 .. v76}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v75

    invoke-virtual/range {v75 .. v75}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v75

    invoke-virtual/range {v74 .. v75}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2246
    move-object/from16 v0, v70

    iget v0, v0, Lcom/mediatek/common/agps/MtkAgpsTargetArea;->latSign:I

    move/from16 v74, v0

    const/16 v75, 0x1

    move/from16 v0, v74

    move/from16 v1, v75

    if-ne v0, v1, :cond_28

    .line 2247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButton_GeoRadiusSignSouth:Landroid/widget/RadioButton;

    move-object/from16 v74, v0

    const/16 v75, 0x1

    invoke-virtual/range {v74 .. v75}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 2252
    :goto_1c
    return-void

    .line 2010
    .end local v10           #cdmaconfig:Lcom/mediatek/common/agps/MtkAgpsConfig;
    .end local v11           #cdmaprofile:Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;
    .end local v13           #config:Lcom/mediatek/common/agps/MtkAgpsConfig;
    .end local v21           #i$:Ljava/util/Iterator;
    .end local v50           #p:Lcom/mediatek/common/agps/MtkAgpsProfile;
    .end local v59           #profile:Lcom/mediatek/common/agps/MtkAgpsProfile;
    .end local v70           #tmparea:Lcom/mediatek/common/agps/MtkAgpsTargetArea;
    :cond_6
    const/16 v74, 0x1

    move/from16 v0, v17

    move/from16 v1, v74

    if-ne v0, v1, :cond_7

    .line 2011
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mLinearLayoutCdmaSettings:Landroid/widget/LinearLayout;

    move-object/from16 v74, v0

    const/16 v75, 0x0

    invoke-virtual/range {v74 .. v75}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2012
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButton_CDMA_Prefer:Landroid/widget/RadioButton;

    move-object/from16 v74, v0

    const/16 v75, 0x1

    invoke-virtual/range {v74 .. v75}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_0

    .line 2013
    :cond_7
    if-nez v17, :cond_0

    .line 2014
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mLinearLayoutCdmaSettings:Landroid/widget/LinearLayout;

    move-object/from16 v74, v0

    const/16 v75, 0x8

    invoke-virtual/range {v74 .. v75}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2015
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButton_WCDMA_Prefer:Landroid/widget/RadioButton;

    move-object/from16 v74, v0

    const/16 v75, 0x1

    invoke-virtual/range {v74 .. v75}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_0

    .line 2021
    .restart local v10       #cdmaconfig:Lcom/mediatek/common/agps/MtkAgpsConfig;
    .restart local v11       #cdmaprofile:Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;
    :cond_8
    const/16 v74, 0x0

    goto/16 :goto_1

    .line 2024
    :cond_9
    const/16 v74, 0x0

    goto/16 :goto_2

    .line 2025
    :cond_a
    const/16 v74, 0x0

    goto/16 :goto_3

    .line 2029
    :cond_b
    const/16 v74, 0x0

    goto/16 :goto_4

    .line 2040
    :cond_c
    const/16 v74, 0x1

    move/from16 v0, v31

    move/from16 v1, v74

    if-ne v0, v1, :cond_d

    .line 2041
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButtonMsb:Landroid/widget/RadioButton;

    move-object/from16 v74, v0

    const/16 v75, 0x1

    invoke-virtual/range {v74 .. v75}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_5

    .line 2043
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButtonStandalone:Landroid/widget/RadioButton;

    move-object/from16 v74, v0

    const/16 v75, 0x1

    invoke-virtual/range {v74 .. v75}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_5

    .line 2047
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButtonUp:Landroid/widget/RadioButton;

    move-object/from16 v74, v0

    const/16 v75, 0x1

    invoke-virtual/range {v74 .. v75}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_6

    .line 2055
    :cond_f
    const/16 v74, 0x1

    move/from16 v0, v71

    move/from16 v1, v74

    if-ne v0, v1, :cond_10

    .line 2056
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButtonRrc:Landroid/widget/RadioButton;

    move-object/from16 v74, v0

    const/16 v75, 0x1

    invoke-virtual/range {v74 .. v75}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_7

    .line 2058
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButtonRrlpRrc:Landroid/widget/RadioButton;

    move-object/from16 v74, v0

    const/16 v75, 0x1

    invoke-virtual/range {v74 .. v75}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_7

    .line 2063
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButtonImsi:Landroid/widget/RadioButton;

    move-object/from16 v74, v0

    const/16 v75, 0x1

    invoke-virtual/range {v74 .. v75}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_8

    .line 2069
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButtonMeter:Landroid/widget/RadioButton;

    move-object/from16 v74, v0

    const/16 v75, 0x1

    invoke-virtual/range {v74 .. v75}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 2070
    const/16 v74, 0x1

    move/from16 v0, v74

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mediatek/lbs/em/LbsAgps;->mAccUnitFlag:I

    goto/16 :goto_9

    .line 2082
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButtonAssistanceData:Landroid/widget/RadioButton;

    move-object/from16 v74, v0

    const/16 v75, 0x1

    invoke-virtual/range {v74 .. v75}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_a

    .line 2091
    :cond_14
    const/16 v74, 0x2

    move/from16 v0, v63

    move/from16 v1, v74

    if-ne v0, v1, :cond_15

    .line 2092
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButtonPreferSim2:Landroid/widget/RadioButton;

    move-object/from16 v74, v0

    const/16 v75, 0x1

    invoke-virtual/range {v74 .. v75}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_b

    .line 2093
    :cond_15
    const/16 v74, 0x3

    move/from16 v0, v63

    move/from16 v1, v74

    if-ne v0, v1, :cond_16

    .line 2094
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButtonPreferSim3:Landroid/widget/RadioButton;

    move-object/from16 v74, v0

    const/16 v75, 0x1

    invoke-virtual/range {v74 .. v75}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_b

    .line 2095
    :cond_16
    const/16 v74, 0x4

    move/from16 v0, v63

    move/from16 v1, v74

    if-ne v0, v1, :cond_17

    .line 2096
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButtonPreferSim4:Landroid/widget/RadioButton;

    move-object/from16 v74, v0

    const/16 v75, 0x1

    invoke-virtual/range {v74 .. v75}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_b

    .line 2098
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButtonPreferSim1:Landroid/widget/RadioButton;

    move-object/from16 v74, v0

    const/16 v75, 0x1

    invoke-virtual/range {v74 .. v75}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_b

    .line 2125
    .restart local v21       #i$:Ljava/util/Iterator;
    .restart local v50       #p:Lcom/mediatek/common/agps/MtkAgpsProfile;
    .restart local v59       #profile:Lcom/mediatek/common/agps/MtkAgpsProfile;
    :cond_18
    const/16 v74, 0x0

    goto/16 :goto_c

    .line 2135
    .restart local v13       #config:Lcom/mediatek/common/agps/MtkAgpsConfig;
    :cond_19
    move/from16 v0, v20

    iput v0, v13, Lcom/mediatek/common/agps/MtkAgpsConfig;->qopHacc:I

    .line 2136
    move/from16 v0, v72

    iput v0, v13, Lcom/mediatek/common/agps/MtkAgpsConfig;->qopVacc:I

    goto/16 :goto_d

    .line 2142
    :cond_1a
    const/16 v74, 0x0

    goto/16 :goto_e

    .line 2145
    :cond_1b
    const/16 v74, 0x0

    goto/16 :goto_f

    .line 2147
    :cond_1c
    const/16 v74, 0x0

    goto/16 :goto_10

    .line 2150
    :cond_1d
    const/16 v74, 0x0

    goto/16 :goto_11

    .line 2151
    :cond_1e
    const/16 v74, 0x0

    goto/16 :goto_12

    .line 2153
    :cond_1f
    const/16 v74, 0x0

    goto/16 :goto_13

    .line 2154
    :cond_20
    const/16 v74, 0x0

    goto/16 :goto_14

    .line 2155
    :cond_21
    const/16 v74, 0x0

    goto/16 :goto_15

    .line 2156
    :cond_22
    const/16 v74, 0x0

    goto/16 :goto_16

    .line 2157
    :cond_23
    const/16 v74, 0x0

    goto/16 :goto_17

    .line 2162
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    move-object/from16 v74, v0

    invoke-interface/range {v74 .. v74}, Lcom/mediatek/common/agps/MtkAgpsManager;->disable()V

    goto/16 :goto_18

    .line 2172
    :cond_25
    const/16 v74, 0x1

    move/from16 v0, v74

    iput v0, v13, Lcom/mediatek/common/agps/MtkAgpsConfig;->suplVersion:I

    .line 2173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mLinearLayout_SUPLTwoDotZero:Landroid/widget/LinearLayout;

    move-object/from16 v74, v0

    const/16 v75, 0x8

    invoke-virtual/range {v74 .. v75}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBox_SUPLTwo:Landroid/widget/CheckBox;

    move-object/from16 v74, v0

    const/16 v75, 0x0

    invoke-virtual/range {v74 .. v75}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_19

    .line 2181
    :cond_26
    const/16 v74, 0x0

    goto/16 :goto_1a

    .line 2194
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButton_Area:Landroid/widget/RadioButton;

    move-object/from16 v74, v0

    const/16 v75, 0x1

    invoke-virtual/range {v74 .. v75}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 2195
    const/16 v74, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v74

    invoke-direct {v0, v1}, Lcom/mediatek/lbs/em/LbsAgps;->enablePeriodicWidget(Z)V

    goto/16 :goto_1b

    .line 2249
    .restart local v70       #tmparea:Lcom/mediatek/common/agps/MtkAgpsTargetArea;
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButton_GeoRadiusSignNorth:Landroid/widget/RadioButton;

    move-object/from16 v74, v0

    const/16 v75, 0x1

    invoke-virtual/range {v74 .. v75}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_1c
.end method

.method private handleMeterAccuracyUnit()V
    .locals 4

    .prologue
    .line 2725
    iget v1, p0, Lcom/mediatek/lbs/em/LbsAgps;->mAccUnitFlag:I

    if-nez v1, :cond_0

    .line 2726
    const/4 v1, 0x1

    iput v1, p0, Lcom/mediatek/lbs/em/LbsAgps;->mAccUnitFlag:I

    .line 2727
    const/4 v0, 0x0

    .line 2728
    .local v0, ret:I
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewHAcc:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/mediatek/lbs/em/LbsAgps;->calcMeterFromK(I)I

    move-result v0

    .line 2729
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewHAcc:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2730
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewVAcc:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/mediatek/lbs/em/LbsAgps;->calcMeterFromK(I)I

    move-result v0

    .line 2731
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewVAcc:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2733
    .end local v0           #ret:I
    :cond_0
    return-void
.end method

.method private handleNiDialogTest(I)V
    .locals 5
    .parameter "id"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1922
    if-nez p1, :cond_1

    .line 1923
    const-string v0, "test request id"

    const-string v1, "test client name"

    const/16 v2, 0x7b

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/mediatek/lbs/em/LbsAgps;->handleNotify(ILjava/lang/String;Ljava/lang/String;I)V

    .line 1929
    :cond_0
    :goto_0
    return-void

    .line 1924
    :cond_1
    if-ne p1, v3, :cond_2

    .line 1925
    const-string v0, "test request id"

    const-string v1, "test client name"

    const/16 v2, 0x1c8

    invoke-direct {p0, v4, v0, v1, v2}, Lcom/mediatek/lbs/em/LbsAgps;->handleNotify(ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 1926
    :cond_2
    if-ne p1, v4, :cond_0

    .line 1927
    const/4 v0, 0x3

    const-string v1, "test request id"

    const-string v2, "test client name"

    const/16 v3, 0x315

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/mediatek/lbs/em/LbsAgps;->handleNotify(ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private handleNotify(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .parameter "type"
    .parameter "requestId"
    .parameter "clientName"
    .parameter "sessionId"

    .prologue
    .line 1901
    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    .line 1919
    :goto_0
    return-void

    .line 1907
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1908
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "type"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1909
    const-string v2, "session_id"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1910
    const-string v2, "request_id"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1911
    const-string v2, "client_name"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1913
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1914
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1915
    const/high16 v2, 0x3000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1916
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.settings"

    const-string v4, "com.mediatek.lbs.AgpsNotifyDialog"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1918
    invoke-virtual {p0, v1}, Lcom/mediatek/lbs/em/LbsAgps;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private handleSetProfile()V
    .locals 70

    .prologue
    .line 2256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxMcpEnable:Landroid/widget/CheckBox;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v23

    .line 2257
    .local v23, mcpEnable:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewMcpAddr:Landroid/widget/TextView;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2258
    .local v22, mcpAddr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewMcpPort:Landroid/widget/TextView;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v67

    invoke-static/range {v67 .. v67}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/Integer;->intValue()I

    move-result v24

    .line 2259
    .local v24, mcpPort:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxPdeAddrValid:Landroid/widget/CheckBox;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v46

    .line 2260
    .local v46, pdeAddrVaild:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxPdeIpType:Landroid/widget/CheckBox;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v49

    .line 2261
    .local v49, pdeIpType:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewPdeIp4Addr:Landroid/widget/TextView;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v47

    .line 2262
    .local v47, pdeIp4Addr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewPdeIp6Addr:Landroid/widget/TextView;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v48

    .line 2263
    .local v48, pdeIp6Addr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewPdePort:Landroid/widget/TextView;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v67

    invoke-static/range {v67 .. v67}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/Integer;->intValue()I

    move-result v50

    .line 2264
    .local v50, pdePort:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxPdeUrlVaild:Landroid/widget/CheckBox;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v52

    .line 2265
    .local v52, pdeUrlValid:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewPdeUrl:Landroid/widget/TextView;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v51

    .line 2267
    .local v51, pdeUrl:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxEnableAgps:Landroid/widget/CheckBox;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    .line 2268
    .local v5, agpsEnable:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckEnableIot:Landroid/widget/CheckBox;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v20

    .line 2271
    .local v20, iot:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButton_CDMA_Force:Landroid/widget/RadioButton;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v67

    if-eqz v67, :cond_0

    .line 2272
    const/4 v15, 0x2

    .line 2280
    .local v15, evdoAgpsPrefer:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButtonStandalone:Landroid/widget/RadioButton;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v67

    if-eqz v67, :cond_2

    .line 2281
    const/16 v27, 0x2

    .line 2288
    .local v27, mode:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButtonCp:Landroid/widget/RadioButton;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v67

    if-eqz v67, :cond_4

    .line 2289
    const/4 v12, 0x1

    .line 2293
    .local v12, cpUp:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mCurrentProfile:Lcom/mediatek/common/agps/MtkAgpsProfile;

    move-object/from16 v67, v0

    move-object/from16 v0, v67

    iget-object v0, v0, Lcom/mediatek/common/agps/MtkAgpsProfile;->code:Ljava/lang/String;

    move-object/from16 v59, v0

    .line 2294
    .local v59, slpCode:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewSlpAddr:Landroid/widget/TextView;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v58

    .line 2295
    .local v58, slpAddr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewSlpPort:Landroid/widget/TextView;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v67

    invoke-static/range {v67 .. v67}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/Integer;->intValue()I

    move-result v60

    .line 2296
    .local v60, slpPort:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxTls:Landroid/widget/CheckBox;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v61

    .line 2298
    .local v61, slpTls:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButtonRrlp:Landroid/widget/RadioButton;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v67

    if-eqz v67, :cond_5

    .line 2299
    const/16 v64, 0x0

    .line 2306
    .local v64, type:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButtonIpv4:Landroid/widget/RadioButton;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v67

    if-eqz v67, :cond_7

    .line 2307
    const/16 v56, 0x1

    .line 2312
    .local v56, setId:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButtonKValue:Landroid/widget/RadioButton;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v67

    if-eqz v67, :cond_8

    .line 2313
    const/4 v3, 0x0

    .line 2317
    .local v3, accUnit:I
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewHAcc:Landroid/widget/TextView;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v67

    invoke-static/range {v67 .. v67}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 2318
    .local v18, hAcc:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewVAcc:Landroid/widget/TextView;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v67

    invoke-static/range {v67 .. v67}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/Integer;->intValue()I

    move-result v65

    .line 2319
    .local v65, vAcc:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewLocationAge:Landroid/widget/TextView;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v67

    invoke-static/range {v67 .. v67}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 2320
    .local v4, age:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewDelay:Landroid/widget/TextView;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v67

    invoke-static/range {v67 .. v67}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 2322
    .local v13, delay:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxCerVerify:Landroid/widget/CheckBox;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v10

    .line 2324
    .local v10, certVer:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButtonLocationEstimate:Landroid/widget/RadioButton;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v67

    if-eqz v67, :cond_9

    .line 2325
    const/16 v28, 0x0

    .line 2329
    .local v28, molrPosMethod:I
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxExternalAddr:Landroid/widget/CheckBox;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v17

    .line 2330
    .local v17, extAddrEnable:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewExternalAddr:Landroid/widget/TextView;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    .line 2331
    .local v16, extAddr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxMlcNumber:Landroid/widget/CheckBox;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v26

    .line 2332
    .local v26, mlcNumEnable:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewMlcNumber:Landroid/widget/TextView;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v25

    .line 2334
    .local v25, mlcNum:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButtonPreferSim1:Landroid/widget/RadioButton;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v67

    if-eqz v67, :cond_a

    .line 2335
    const/16 v57, 0x1

    .line 2345
    .local v57, simSelect:I
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxNiAllow:Landroid/widget/CheckBox;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v7

    .line 2346
    .local v7, allowNi:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxEmAllow:Landroid/widget/CheckBox;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    .line 2347
    .local v6, allowEm:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxRoamingAllow:Landroid/widget/CheckBox;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v8

    .line 2348
    .local v8, allowRoaming:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxSupl2File:Landroid/widget/CheckBox;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v62

    .line 2349
    .local v62, supl2file:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxEcidEnable:Landroid/widget/CheckBox;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v14

    .line 2350
    .local v14, eCid:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxLabPerformance:Landroid/widget/CheckBox;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v21

    .line 2351
    .local v21, labPerformance:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxEnableNiTimer:Landroid/widget/CheckBox;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v45

    .line 2352
    .local v45, niTimer:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mSpinnerNotificationTimeout:Landroid/widget/Spinner;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v44

    .line 2353
    .local v44, nTimeout:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mSpinnerVerificationTimeout:Landroid/widget/Spinner;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v66

    .line 2355
    .local v66, vTimeout:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    move-object/from16 v67, v0

    invoke-interface/range {v67 .. v67}, Lcom/mediatek/common/agps/MtkAgpsManager;->getConfig()Lcom/mediatek/common/agps/MtkAgpsConfig;

    move-result-object v11

    .line 2356
    .local v11, config:Lcom/mediatek/common/agps/MtkAgpsConfig;
    iget-object v0, v11, Lcom/mediatek/common/agps/MtkAgpsConfig;->targetAreaList:[Landroid/os/Parcelable;

    move-object/from16 v67, v0

    const/16 v68, 0x0

    aget-object v63, v67, v68

    check-cast v63, Lcom/mediatek/common/agps/MtkAgpsTargetArea;

    .line 2359
    .local v63, tmparea:Lcom/mediatek/common/agps/MtkAgpsTargetArea;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBox_SUPLTwo:Landroid/widget/CheckBox;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v67

    if-eqz v67, :cond_e

    const/16 v38, 0x2

    .line 2360
    .local v38, nSuplTwo:I
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mTextView_MSISDN:Landroid/widget/TextView;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v55

    .line 2361
    .local v55, sMsisdn:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBox_ThirdMSISDN:Landroid/widget/CheckBox;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v67

    if-eqz v67, :cond_f

    const/4 v9, 0x1

    .line 2362
    .local v9, bEnable3Party:Z
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mTextView_ThirdMSISDN:Landroid/widget/TextView;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v54

    .line 2363
    .local v54, s3rdMsisdn:Ljava/lang/String;
    iget v0, v11, Lcom/mediatek/common/agps/MtkAgpsConfig;->posMethod:I

    move/from16 v37, v0

    .line 2364
    .local v37, nPosMethod:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButton_Periodic:Landroid/widget/RadioButton;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v67

    if-eqz v67, :cond_10

    const/16 v19, 0x1

    .line 2365
    .local v19, iTriggerType:I
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mTextView_PeriodicNFix:Landroid/widget/TextView;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v67

    invoke-static/range {v67 .. v67}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/Integer;->intValue()I

    move-result v35

    .line 2366
    .local v35, nPeriodicNumOfFix:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mTextView_PeriodicInter:Landroid/widget/TextView;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v67

    invoke-static/range {v67 .. v67}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/Integer;->intValue()I

    move-result v34

    .line 2367
    .local v34, nPeriodicInterval:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mTextView_PeriodicSTime:Landroid/widget/TextView;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v67

    invoke-static/range {v67 .. v67}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/Integer;->intValue()I

    move-result v36

    .line 2368
    .local v36, nPeriodicStartTime:I
    iget v0, v11, Lcom/mediatek/common/agps/MtkAgpsConfig;->eventType:I

    move/from16 v33, v0

    .line 2369
    .local v33, nEventType:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mTextView_AreaMinInter:Landroid/widget/TextView;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v67

    invoke-static/range {v67 .. v67}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/Integer;->intValue()I

    move-result v29

    .line 2370
    .local v29, nEventInterval:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mTextView_AreaMaxNum:Landroid/widget/TextView;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v67

    invoke-static/range {v67 .. v67}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/Integer;->intValue()I

    move-result v30

    .line 2371
    .local v30, nEventMaxNumReport:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mTextView_AreaStartTime:Landroid/widget/TextView;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v67

    invoke-static/range {v67 .. v67}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/Integer;->intValue()I

    move-result v31

    .line 2372
    .local v31, nEventStartTime:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mTextView_AreaStopTime:Landroid/widget/TextView;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v67

    invoke-static/range {v67 .. v67}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/Integer;->intValue()I

    move-result v32

    .line 2373
    .local v32, nEventStopTime:I
    move-object/from16 v0, v63

    iget v0, v0, Lcom/mediatek/common/agps/MtkAgpsTargetArea;->type:I

    move/from16 v42, v0

    .line 2374
    .local v42, nTargetAreaType:I
    move-object/from16 v0, v63

    iget v0, v0, Lcom/mediatek/common/agps/MtkAgpsTargetArea;->radius:I

    move/from16 v39, v0

    .line 2375
    .local v39, nTargetAreaGeoRadius:I
    move-object/from16 v0, v63

    iget v0, v0, Lcom/mediatek/common/agps/MtkAgpsTargetArea;->lat:F

    move/from16 v40, v0

    .line 2376
    .local v40, nTargetAreaGeolat:F
    move-object/from16 v0, v63

    iget v0, v0, Lcom/mediatek/common/agps/MtkAgpsTargetArea;->lng:F

    move/from16 v41, v0

    .line 2377
    .local v41, nTargetAreaGeolng:F
    move-object/from16 v0, v63

    iget v0, v0, Lcom/mediatek/common/agps/MtkAgpsTargetArea;->latSign:I

    move/from16 v43, v0

    .line 2380
    .local v43, nTargetArealatSign:I
    const-string v67, "agps_profile"

    const/16 v68, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    move/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/lbs/em/LbsAgps;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v53

    .line 2381
    .local v53, prefs:Landroid/content/SharedPreferences;
    invoke-interface/range {v53 .. v53}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v67

    const-string v68, "agps_enable"

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v67

    const-string v68, "iot"

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v67

    const-string v68, "mode"

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    move/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v67

    const-string v68, "cp_up"

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    invoke-interface {v0, v1, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v67

    const-string v68, "slp_code"

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    move-object/from16 v2, v59

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v67

    const-string v68, "slp_addr"

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    move-object/from16 v2, v58

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v67

    const-string v68, "slp_port"

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    move/from16 v2, v60

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v67

    const-string v68, "slp_tls"

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    move/from16 v2, v61

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v67

    const-string v68, "type"

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    move/from16 v2, v64

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v67

    const-string v68, "set_id"

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    move/from16 v2, v56

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v67

    const-string v68, "acc_unit"

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v67

    const-string v68, "h_acc"

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v67

    const-string v68, "v_acc"

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    move/from16 v2, v65

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v67

    const-string v68, "age"

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v67

    const-string v68, "delay"

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    invoke-interface {v0, v1, v13}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v67

    const-string v68, "cert_ver"

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    invoke-interface {v0, v1, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v67

    const-string v68, "molr_pos_method"

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    move/from16 v2, v28

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v67

    const-string v68, "ext_addr_enable"

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    move/from16 v2, v17

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v67

    const-string v68, "ext_addr"

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v67

    const-string v68, "mlc_num_enable"

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    move/from16 v2, v26

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v67

    const-string v68, "mlc_num"

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v67

    const-string v68, "sim_select"

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    move/from16 v2, v57

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v67

    const-string v68, "allow_ni"

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v67

    const-string v68, "allow_em"

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v67

    const-string v68, "allow_roaming"

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v67

    const-string v68, "supl_to_file"

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    move/from16 v2, v62

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v67

    const-string v68, "ecid"

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    invoke-interface {v0, v1, v14}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v67

    const-string v68, "lab_performance"

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v67

    const-string v68, "enable_ni_timer"

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    move/from16 v2, v45

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v67

    const-string v68, "notification_timeout"

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    move/from16 v2, v44

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v67

    const-string v68, "verification_timeout"

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    move/from16 v2, v66

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v67

    const-string v68, "enable_SuplTwo"

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    move/from16 v2, v38

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v67

    const-string v68, "sMsisdn"

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    move-object/from16 v2, v55

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v67

    const-string v68, "enable_3Party"

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    invoke-interface {v0, v1, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v67

    const-string v68, "s3rdMsisdn"

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    move-object/from16 v2, v54

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v67

    const-string v68, "nPosMethod"

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    move/from16 v2, v37

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v67

    const-string v68, "trigger_type"

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    move/from16 v2, v19

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v67

    const-string v68, "nPeriodicNumOfFix"

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    move/from16 v2, v35

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v67

    const-string v68, "nPeriodicInterval"

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    move/from16 v2, v34

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v67

    const-string v68, "nPeriodicStartTime"

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    move/from16 v2, v36

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v67

    const-string v68, "nEventType"

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    move/from16 v2, v33

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v67

    const-string v68, "nEventInterval"

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    move/from16 v2, v29

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v67

    const-string v68, "nEventMaxNumReport"

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v67

    const-string v68, "nEventStartTime"

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v67

    const-string v68, "nEventStopTime"

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    move/from16 v2, v32

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v67

    const-string v68, "nTargetAreaType"

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    move/from16 v2, v42

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v67

    const-string v68, "nTargetAreaGeoRadius"

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    move/from16 v2, v39

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v67

    const-string v68, "nTargetAreaGeolat"

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    move/from16 v2, v40

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v67

    const-string v68, "nTargetAreaGeolng"

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    move/from16 v2, v41

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v67

    const-string v68, "nTargetArealatSign"

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    move/from16 v2, v43

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v67

    const-string v68, "evdoAgpsPrefer"

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    invoke-interface {v0, v1, v15}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v67

    const-string v68, "mcp_enable"

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v67

    const-string v68, "mcp_addr"

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v67

    const-string v68, "mcp_port"

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v67

    const-string v68, "pde_addr_valid"

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    move/from16 v2, v46

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v67

    const-string v68, "pde_ip_type"

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    move/from16 v2, v49

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v67

    const-string v68, "pde_ip4_addr"

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    move-object/from16 v2, v47

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v67

    const-string v68, "pde_ip6_addr"

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    move-object/from16 v2, v48

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v67

    const-string v68, "pde_port"

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    move/from16 v2, v50

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v67

    const-string v68, "pde_url_valid"

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    move/from16 v2, v52

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v67

    const-string v68, "pde_url"

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    move-object/from16 v2, v51

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v67

    invoke-interface/range {v67 .. v67}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2445
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/lbs/em/LbsAgps;->getApplicationContext()Landroid/content/Context;

    move-result-object v67

    const-string v68, "Saved"

    const/16 v69, 0x0

    invoke-static/range {v67 .. v69}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Landroid/widget/Toast;->show()V

    .line 2447
    return-void

    .line 2273
    .end local v3           #accUnit:I
    .end local v4           #age:I
    .end local v6           #allowEm:Z
    .end local v7           #allowNi:Z
    .end local v8           #allowRoaming:Z
    .end local v9           #bEnable3Party:Z
    .end local v10           #certVer:Z
    .end local v11           #config:Lcom/mediatek/common/agps/MtkAgpsConfig;
    .end local v12           #cpUp:I
    .end local v13           #delay:I
    .end local v14           #eCid:Z
    .end local v15           #evdoAgpsPrefer:I
    .end local v16           #extAddr:Ljava/lang/String;
    .end local v17           #extAddrEnable:Z
    .end local v18           #hAcc:I
    .end local v19           #iTriggerType:I
    .end local v21           #labPerformance:Z
    .end local v25           #mlcNum:Ljava/lang/String;
    .end local v26           #mlcNumEnable:Z
    .end local v27           #mode:I
    .end local v28           #molrPosMethod:I
    .end local v29           #nEventInterval:I
    .end local v30           #nEventMaxNumReport:I
    .end local v31           #nEventStartTime:I
    .end local v32           #nEventStopTime:I
    .end local v33           #nEventType:I
    .end local v34           #nPeriodicInterval:I
    .end local v35           #nPeriodicNumOfFix:I
    .end local v36           #nPeriodicStartTime:I
    .end local v37           #nPosMethod:I
    .end local v38           #nSuplTwo:I
    .end local v39           #nTargetAreaGeoRadius:I
    .end local v40           #nTargetAreaGeolat:F
    .end local v41           #nTargetAreaGeolng:F
    .end local v42           #nTargetAreaType:I
    .end local v43           #nTargetArealatSign:I
    .end local v44           #nTimeout:I
    .end local v45           #niTimer:Z
    .end local v53           #prefs:Landroid/content/SharedPreferences;
    .end local v54           #s3rdMsisdn:Ljava/lang/String;
    .end local v55           #sMsisdn:Ljava/lang/String;
    .end local v56           #setId:I
    .end local v57           #simSelect:I
    .end local v58           #slpAddr:Ljava/lang/String;
    .end local v59           #slpCode:Ljava/lang/String;
    .end local v60           #slpPort:I
    .end local v61           #slpTls:Z
    .end local v62           #supl2file:Z
    .end local v63           #tmparea:Lcom/mediatek/common/agps/MtkAgpsTargetArea;
    .end local v64           #type:I
    .end local v65           #vAcc:I
    .end local v66           #vTimeout:I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButton_CDMA_Prefer:Landroid/widget/RadioButton;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v67

    if-eqz v67, :cond_1

    .line 2274
    const/4 v15, 0x1

    .restart local v15       #evdoAgpsPrefer:I
    goto/16 :goto_0

    .line 2276
    .end local v15           #evdoAgpsPrefer:I
    :cond_1
    const/4 v15, 0x0

    .restart local v15       #evdoAgpsPrefer:I
    goto/16 :goto_0

    .line 2282
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButtonMsb:Landroid/widget/RadioButton;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v67

    if-eqz v67, :cond_3

    .line 2283
    const/16 v27, 0x1

    .restart local v27       #mode:I
    goto/16 :goto_1

    .line 2285
    .end local v27           #mode:I
    :cond_3
    const/16 v27, 0x0

    .restart local v27       #mode:I
    goto/16 :goto_1

    .line 2291
    :cond_4
    const/4 v12, 0x0

    .restart local v12       #cpUp:I
    goto/16 :goto_2

    .line 2300
    .restart local v58       #slpAddr:Ljava/lang/String;
    .restart local v59       #slpCode:Ljava/lang/String;
    .restart local v60       #slpPort:I
    .restart local v61       #slpTls:Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButtonRrc:Landroid/widget/RadioButton;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v67

    if-eqz v67, :cond_6

    .line 2301
    const/16 v64, 0x1

    .restart local v64       #type:I
    goto/16 :goto_3

    .line 2303
    .end local v64           #type:I
    :cond_6
    const/16 v64, 0x2

    .restart local v64       #type:I
    goto/16 :goto_3

    .line 2309
    :cond_7
    const/16 v56, 0x0

    .restart local v56       #setId:I
    goto/16 :goto_4

    .line 2315
    :cond_8
    const/4 v3, 0x1

    .restart local v3       #accUnit:I
    goto/16 :goto_5

    .line 2327
    .restart local v4       #age:I
    .restart local v10       #certVer:Z
    .restart local v13       #delay:I
    .restart local v18       #hAcc:I
    .restart local v65       #vAcc:I
    :cond_9
    const/16 v28, 0x1

    .restart local v28       #molrPosMethod:I
    goto/16 :goto_6

    .line 2336
    .restart local v16       #extAddr:Ljava/lang/String;
    .restart local v17       #extAddrEnable:Z
    .restart local v25       #mlcNum:Ljava/lang/String;
    .restart local v26       #mlcNumEnable:Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButtonPreferSim2:Landroid/widget/RadioButton;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v67

    if-eqz v67, :cond_b

    .line 2337
    const/16 v57, 0x2

    .restart local v57       #simSelect:I
    goto/16 :goto_7

    .line 2338
    .end local v57           #simSelect:I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButtonPreferSim3:Landroid/widget/RadioButton;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v67

    if-eqz v67, :cond_c

    .line 2339
    const/16 v57, 0x3

    .restart local v57       #simSelect:I
    goto/16 :goto_7

    .line 2340
    .end local v57           #simSelect:I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButtonPreferSim4:Landroid/widget/RadioButton;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v67

    if-eqz v67, :cond_d

    .line 2341
    const/16 v57, 0x4

    .restart local v57       #simSelect:I
    goto/16 :goto_7

    .line 2343
    .end local v57           #simSelect:I
    :cond_d
    const/16 v57, 0x1

    .restart local v57       #simSelect:I
    goto/16 :goto_7

    .line 2359
    .restart local v6       #allowEm:Z
    .restart local v7       #allowNi:Z
    .restart local v8       #allowRoaming:Z
    .restart local v11       #config:Lcom/mediatek/common/agps/MtkAgpsConfig;
    .restart local v14       #eCid:Z
    .restart local v21       #labPerformance:Z
    .restart local v44       #nTimeout:I
    .restart local v45       #niTimer:Z
    .restart local v62       #supl2file:Z
    .restart local v63       #tmparea:Lcom/mediatek/common/agps/MtkAgpsTargetArea;
    .restart local v66       #vTimeout:I
    :cond_e
    const/16 v38, 0x1

    goto/16 :goto_8

    .line 2361
    .restart local v38       #nSuplTwo:I
    .restart local v55       #sMsisdn:Ljava/lang/String;
    :cond_f
    const/4 v9, 0x0

    goto/16 :goto_9

    .line 2364
    .restart local v9       #bEnable3Party:Z
    .restart local v37       #nPosMethod:I
    .restart local v54       #s3rdMsisdn:Ljava/lang/String;
    :cond_10
    const/16 v19, 0x2

    goto/16 :goto_a
.end method

.method private hideSpecialWidget()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 466
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/data/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/mediatek/lbs/em/LbsAgps;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/show"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 467
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 468
    invoke-direct {p0, v1}, Lcom/mediatek/lbs/em/LbsAgps;->showSpecialWidget(Z)V

    .line 472
    :goto_0
    return v1

    .line 471
    :cond_0
    invoke-direct {p0, v2}, Lcom/mediatek/lbs/em/LbsAgps;->showSpecialWidget(Z)V

    move v1, v2

    .line 472
    goto :goto_0
.end method

.method private initWidget()V
    .locals 13

    .prologue
    .line 574
    new-instance v8, Landroid/app/ProgressDialog;

    invoke-direct {v8, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 575
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mProgressDialog:Landroid/app/ProgressDialog;

    const-string v9, "GPS Reset"

    invoke-virtual {v8, v9}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 576
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mProgressDialog:Landroid/app/ProgressDialog;

    const-string v9, "Please wait for 4 sec"

    invoke-virtual {v8, v9}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 577
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 580
    const v8, 0x7f050005

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButtonLoadProfile:Landroid/widget/Button;

    .line 581
    const v8, 0x7f050006

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButtonSetProfile:Landroid/widget/Button;

    .line 583
    const v8, 0x7f050007

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButtonGpsReset:Landroid/widget/Button;

    .line 584
    const v8, 0x7f050001

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButtonAgpsTest:Landroid/widget/Button;

    .line 586
    const/high16 v8, 0x7f05

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mLinearLayoutTest:Landroid/widget/LinearLayout;

    .line 587
    const v8, 0x7f050003

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButtonAutoTestOn:Landroid/widget/Button;

    .line 588
    const v8, 0x7f050004

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButtonAutoTestOff:Landroid/widget/Button;

    .line 590
    const v8, 0x7f050002

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButtonTestSuite:Landroid/widget/Button;

    .line 592
    const v8, 0x7f050008

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewProperty:Landroid/widget/TextView;

    .line 594
    const v8, 0x7f050009

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxEnableAgps:Landroid/widget/CheckBox;

    .line 595
    const v8, 0x7f05002b

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckEnableIot:Landroid/widget/CheckBox;

    .line 597
    const v8, 0x7f05000f

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RadioButton;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButtonStandalone:Landroid/widget/RadioButton;

    .line 598
    const v8, 0x7f050010

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RadioButton;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButtonMsb:Landroid/widget/RadioButton;

    .line 599
    const v8, 0x7f050011

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RadioButton;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButtonMsa:Landroid/widget/RadioButton;

    .line 601
    const v8, 0x7f05000a

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RadioButton;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButtonCp:Landroid/widget/RadioButton;

    .line 602
    const v8, 0x7f05000b

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RadioButton;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButtonUp:Landroid/widget/RadioButton;

    .line 604
    const v8, 0x7f05000c

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mLinearLayoutUpSettings:Landroid/widget/LinearLayout;

    .line 605
    const v8, 0x7f050012

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButtonSlpTemplate:Landroid/widget/Button;

    .line 606
    const v8, 0x7f050013

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButtonSlpTest:Landroid/widget/Button;

    .line 607
    const v8, 0x7f050014

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewSlpTestResult:Landroid/widget/TextView;

    .line 608
    const v8, 0x7f050015

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewSlpAddr:Landroid/widget/TextView;

    .line 609
    const v8, 0x7f050016

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButtonSlpAddr:Landroid/widget/Button;

    .line 610
    const v8, 0x7f050017

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewSlpPort:Landroid/widget/TextView;

    .line 611
    const v8, 0x7f050018

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButtonSlpPort:Landroid/widget/Button;

    .line 612
    const v8, 0x7f050019

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxTls:Landroid/widget/CheckBox;

    .line 615
    const v8, 0x7f05001a

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mLinearLayoutPayloadType:Landroid/widget/LinearLayout;

    .line 616
    const v8, 0x7f05001b

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RadioButton;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButtonRrlp:Landroid/widget/RadioButton;

    .line 617
    const v8, 0x7f05001c

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RadioButton;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButtonRrc:Landroid/widget/RadioButton;

    .line 618
    const v8, 0x7f05001d

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RadioButton;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButtonRrlpRrc:Landroid/widget/RadioButton;

    .line 619
    const v8, 0x7f05001e

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RadioButton;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButtonIpv4:Landroid/widget/RadioButton;

    .line 620
    const v8, 0x7f05001f

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RadioButton;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButtonImsi:Landroid/widget/RadioButton;

    .line 621
    const v8, 0x7f050020

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RadioButton;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButtonKValue:Landroid/widget/RadioButton;

    .line 622
    const v8, 0x7f050021

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RadioButton;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButtonMeter:Landroid/widget/RadioButton;

    .line 624
    const v8, 0x7f050022

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewHAcc:Landroid/widget/TextView;

    .line 625
    const v8, 0x7f050023

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButtonHAcc:Landroid/widget/Button;

    .line 626
    const v8, 0x7f050024

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewVAcc:Landroid/widget/TextView;

    .line 627
    const v8, 0x7f050025

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButtonVAcc:Landroid/widget/Button;

    .line 628
    const v8, 0x7f050026

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewLocationAge:Landroid/widget/TextView;

    .line 629
    const v8, 0x7f050027

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButtonLocationAge:Landroid/widget/Button;

    .line 630
    const v8, 0x7f050028

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewDelay:Landroid/widget/TextView;

    .line 631
    const v8, 0x7f050029

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButtonDelay:Landroid/widget/Button;

    .line 632
    const v8, 0x7f05002a

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxCerVerify:Landroid/widget/CheckBox;

    .line 634
    const v8, 0x7f050070

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mLinearLayoutCpSettings:Landroid/widget/LinearLayout;

    .line 635
    const v8, 0x7f050071

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RadioButton;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButtonLocationEstimate:Landroid/widget/RadioButton;

    .line 636
    const v8, 0x7f050072

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RadioButton;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButtonAssistanceData:Landroid/widget/RadioButton;

    .line 637
    const v8, 0x7f050073

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxExternalAddr:Landroid/widget/CheckBox;

    .line 638
    const v8, 0x7f050074

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewExternalAddr:Landroid/widget/TextView;

    .line 639
    const v8, 0x7f050075

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxMlcNumber:Landroid/widget/CheckBox;

    .line 640
    const v8, 0x7f050076

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewMlcNumber:Landroid/widget/TextView;

    .line 641
    const v8, 0x7f050079

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RadioButton;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButtonPreferSim1:Landroid/widget/RadioButton;

    .line 642
    const v8, 0x7f05007a

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RadioButton;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButtonPreferSim2:Landroid/widget/RadioButton;

    .line 643
    const v8, 0x7f05007b

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RadioButton;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButtonPreferSim3:Landroid/widget/RadioButton;

    .line 644
    const v8, 0x7f05007c

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RadioButton;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButtonPreferSim4:Landroid/widget/RadioButton;

    .line 646
    const v8, 0x7f05007d

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxNiAllow:Landroid/widget/CheckBox;

    .line 647
    const v8, 0x7f05007e

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxEmAllow:Landroid/widget/CheckBox;

    .line 648
    const v8, 0x7f05007f

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxRoamingAllow:Landroid/widget/CheckBox;

    .line 649
    const v8, 0x7f050080

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxSupl2File:Landroid/widget/CheckBox;

    .line 650
    const v8, 0x7f05002c

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxEcidEnable:Landroid/widget/CheckBox;

    .line 651
    const v8, 0x7f050077

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxLabPerformance:Landroid/widget/CheckBox;

    .line 653
    const v8, 0x7f050081

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mLinearLayoutNiTimer:Landroid/widget/LinearLayout;

    .line 654
    const v8, 0x7f050082

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxEnableNiTimer:Landroid/widget/CheckBox;

    .line 655
    const v8, 0x7f050083

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Spinner;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mSpinnerNotificationTimeout:Landroid/widget/Spinner;

    .line 656
    const v8, 0x7f050084

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Spinner;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mSpinnerVerificationTimeout:Landroid/widget/Spinner;

    .line 658
    const v8, 0x7f050086

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButtonNiDialogTest:Landroid/widget/Button;

    .line 660
    const v8, 0x7f050085

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButtonReset2Default:Landroid/widget/Button;

    .line 662
    const v8, 0x7f05002d

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mLinearLayout_SUPLTwoDotZeroTitle:Landroid/widget/LinearLayout;

    .line 663
    const v8, 0x7f05002f

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mLinearLayout_SUPLTwoDotZero:Landroid/widget/LinearLayout;

    .line 664
    const v8, 0x7f05002e

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBox_SUPLTwo:Landroid/widget/CheckBox;

    .line 665
    const v8, 0x7f050030

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButton_SILR:Landroid/widget/Button;

    .line 666
    const v8, 0x7f050031

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextView_SILRResult:Landroid/widget/TextView;

    .line 667
    const v8, 0x7f050032

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextView_MSISDN:Landroid/widget/TextView;

    .line 668
    const v8, 0x7f050033

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButton_MSISDNEdit:Landroid/widget/Button;

    .line 669
    const v8, 0x7f050034

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBox_ThirdMSISDN:Landroid/widget/CheckBox;

    .line 670
    const v8, 0x7f050035

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextView_ThirdMSISDN:Landroid/widget/TextView;

    .line 671
    const v8, 0x7f050036

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButton_ThirdMSISDNEdit:Landroid/widget/Button;

    .line 672
    const v8, 0x7f050037

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButton_TriggerStart:Landroid/widget/Button;

    .line 673
    const v8, 0x7f050038

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButton_TriggerAbort:Landroid/widget/Button;

    .line 674
    const v8, 0x7f050039

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RadioButton;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButton_Periodic:Landroid/widget/RadioButton;

    .line 675
    const v8, 0x7f05003a

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RadioButton;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButton_Area:Landroid/widget/RadioButton;

    .line 676
    const v8, 0x7f05003d

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mLinearLayout_PeriodicSettings:Landroid/widget/LinearLayout;

    .line 677
    const v8, 0x7f05003b

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextView_PosMethod:Landroid/widget/TextView;

    .line 678
    const v8, 0x7f05003c

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButton_PosMethod:Landroid/widget/Button;

    .line 679
    const v8, 0x7f05003e

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextView_PeriodicNFix:Landroid/widget/TextView;

    .line 680
    const v8, 0x7f05003f

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButton_PeriodicNFix:Landroid/widget/Button;

    .line 681
    const v8, 0x7f050040

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextView_PeriodicInter:Landroid/widget/TextView;

    .line 682
    const v8, 0x7f050041

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButton_PeriodicInter:Landroid/widget/Button;

    .line 683
    const v8, 0x7f050042

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextView_PeriodicSTime:Landroid/widget/TextView;

    .line 684
    const v8, 0x7f050043

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButton_PeriodicSTime:Landroid/widget/Button;

    .line 685
    const v8, 0x7f050044

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mLinearLayout_AreaSettings:Landroid/widget/LinearLayout;

    .line 686
    const v8, 0x7f050045

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextView_AreaType:Landroid/widget/TextView;

    .line 687
    const v8, 0x7f050046

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButton_AreaType:Landroid/widget/Button;

    .line 688
    const v8, 0x7f050047

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextView_AreaMinInter:Landroid/widget/TextView;

    .line 689
    const v8, 0x7f050048

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButton_AreaMinInter:Landroid/widget/Button;

    .line 690
    const v8, 0x7f050049

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextView_AreaMaxNum:Landroid/widget/TextView;

    .line 691
    const v8, 0x7f05004a

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButton_AreaMaxNum:Landroid/widget/Button;

    .line 692
    const v8, 0x7f05004b

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextView_AreaStartTime:Landroid/widget/TextView;

    .line 693
    const v8, 0x7f05004c

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButton_AreaStartTime:Landroid/widget/Button;

    .line 694
    const v8, 0x7f05004d

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextView_AreaStopTime:Landroid/widget/TextView;

    .line 695
    const v8, 0x7f05004e

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButton_AreaStopTime:Landroid/widget/Button;

    .line 696
    const v8, 0x7f05004f

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButton_Geographic:Landroid/widget/Button;

    .line 697
    const v8, 0x7f050050

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextView_GeographicResult:Landroid/widget/TextView;

    .line 698
    const v8, 0x7f050051

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextView_GeoRadius:Landroid/widget/TextView;

    .line 699
    const v8, 0x7f050052

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButton_GeoRadius:Landroid/widget/Button;

    .line 700
    const v8, 0x7f050053

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextView_GeoLat:Landroid/widget/TextView;

    .line 701
    const v8, 0x7f050054

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButton_GeoLat:Landroid/widget/Button;

    .line 702
    const v8, 0x7f050055

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextView_GeoLong:Landroid/widget/TextView;

    .line 703
    const v8, 0x7f050056

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButton_GeoLong:Landroid/widget/Button;

    .line 704
    const v8, 0x7f050057

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RadioButton;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButton_GeoRadiusSignNorth:Landroid/widget/RadioButton;

    .line 705
    const v8, 0x7f050058

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RadioButton;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButton_GeoRadiusSignSouth:Landroid/widget/RadioButton;

    .line 707
    const v8, 0x7f050059

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mLinearLayoutCdmaPage:Landroid/widget/LinearLayout;

    .line 708
    const v8, 0x7f05005e

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mLinearLayoutCdmaSettings:Landroid/widget/LinearLayout;

    .line 709
    const v8, 0x7f05005a

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RadioGroup;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioGroup_CDMA_Prefer:Landroid/widget/RadioGroup;

    .line 710
    const v8, 0x7f05005b

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RadioButton;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButton_WCDMA_Prefer:Landroid/widget/RadioButton;

    .line 711
    const v8, 0x7f05005c

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RadioButton;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButton_CDMA_Prefer:Landroid/widget/RadioButton;

    .line 712
    const v8, 0x7f05005d

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RadioButton;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButton_CDMA_Force:Landroid/widget/RadioButton;

    .line 714
    const v8, 0x7f050060

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxMcpEnable:Landroid/widget/CheckBox;

    .line 715
    const v8, 0x7f05005f

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButtonCdmaTemplate:Landroid/widget/Button;

    .line 716
    const v8, 0x7f050061

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewMcpAddr:Landroid/widget/TextView;

    .line 717
    const v8, 0x7f050062

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButtonMcpAddr:Landroid/widget/Button;

    .line 718
    const v8, 0x7f050063

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewMcpPort:Landroid/widget/TextView;

    .line 719
    const v8, 0x7f050064

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButtonMcpPort:Landroid/widget/Button;

    .line 721
    const v8, 0x7f050065

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxPdeAddrValid:Landroid/widget/CheckBox;

    .line 722
    const v8, 0x7f050066

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxPdeIpType:Landroid/widget/CheckBox;

    .line 723
    const v8, 0x7f050067

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewPdeIp4Addr:Landroid/widget/TextView;

    .line 724
    const v8, 0x7f050068

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButtonPdeIp4Addr:Landroid/widget/Button;

    .line 725
    const v8, 0x7f050069

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewPdeIp6Addr:Landroid/widget/TextView;

    .line 726
    const v8, 0x7f05006a

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButtonPdeIp6Addr:Landroid/widget/Button;

    .line 727
    const v8, 0x7f05006b

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewPdePort:Landroid/widget/TextView;

    .line 728
    const v8, 0x7f05006c

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButtonPdePort:Landroid/widget/Button;

    .line 729
    const v8, 0x7f05006d

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxPdeUrlVaild:Landroid/widget/CheckBox;

    .line 730
    const v8, 0x7f05006e

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewPdeUrl:Landroid/widget/TextView;

    .line 731
    const v8, 0x7f05006f

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButtonPdeUrl:Landroid/widget/Button;

    .line 735
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v8, 0x1090008

    iget-object v9, p0, Lcom/mediatek/lbs/em/LbsAgps;->TIMEOUT_LIST:[Ljava/lang/String;

    invoke-direct {v0, p0, v8, v9}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 737
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v8, 0x1090009

    invoke-virtual {v0, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 738
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mSpinnerNotificationTimeout:Landroid/widget/Spinner;

    invoke-virtual {v8, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 740
    new-instance v0, Landroid/widget/ArrayAdapter;

    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v8, 0x1090008

    iget-object v9, p0, Lcom/mediatek/lbs/em/LbsAgps;->TIMEOUT_LIST:[Ljava/lang/String;

    invoke-direct {v0, p0, v8, v9}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 742
    .restart local v0       #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v8, 0x1090009

    invoke-virtual {v0, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 743
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mSpinnerVerificationTimeout:Landroid/widget/Spinner;

    invoke-virtual {v8, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 747
    new-instance v8, Landroid/widget/PopupMenu;

    iget-object v9, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButtonTestSuite:Landroid/widget/Button;

    invoke-direct {v8, p0, v9}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mPopupTest:Landroid/widget/PopupMenu;

    .line 748
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mPopupTest:Landroid/widget/PopupMenu;

    invoke-virtual {v8}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-string v12, "Test 1"

    invoke-interface {v8, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 749
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mPopupTest:Landroid/widget/PopupMenu;

    invoke-virtual {v8}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x0

    const-string v12, "Test 2"

    invoke-interface {v8, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 750
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mPopupTest:Landroid/widget/PopupMenu;

    invoke-virtual {v8}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x3

    const/4 v11, 0x0

    const-string v12, "Test 3"

    invoke-interface {v8, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 751
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mPopupTest:Landroid/widget/PopupMenu;

    invoke-virtual {v8}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    const-string v12, "Test 4"

    invoke-interface {v8, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 752
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mPopupTest:Landroid/widget/PopupMenu;

    invoke-virtual {v8}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x5

    const/4 v11, 0x0

    const-string v12, "Test 5"

    invoke-interface {v8, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 753
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mPopupTest:Landroid/widget/PopupMenu;

    invoke-virtual {v8}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x6

    const/4 v11, 0x0

    const-string v12, "Test 6"

    invoke-interface {v8, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 754
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mPopupTest:Landroid/widget/PopupMenu;

    invoke-virtual {v8}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x7

    const/4 v11, 0x0

    const-string v12, "Test 7"

    invoke-interface {v8, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 755
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mPopupTest:Landroid/widget/PopupMenu;

    invoke-virtual {v8}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v8

    const/4 v9, 0x0

    const/16 v10, 0x8

    const/4 v11, 0x0

    const-string v12, "Test 8"

    invoke-interface {v8, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 756
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mPopupTest:Landroid/widget/PopupMenu;

    invoke-virtual {v8}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v8

    const/4 v9, 0x0

    const/16 v10, 0x9

    const/4 v11, 0x0

    const-string v12, "Test 9"

    invoke-interface {v8, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 757
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mPopupTest:Landroid/widget/PopupMenu;

    new-instance v9, Lcom/mediatek/lbs/em/LbsAgps$7;

    invoke-direct {v9, p0}, Lcom/mediatek/lbs/em/LbsAgps$7;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v8, v9}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 765
    new-instance v8, Landroid/widget/PopupMenu;

    iget-object v9, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButtonAgpsTest:Landroid/widget/Button;

    invoke-direct {v8, p0, v9}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mPopupAgpsTest:Landroid/widget/PopupMenu;

    .line 766
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mPopupAgpsTest:Landroid/widget/PopupMenu;

    invoke-virtual {v8}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, "Trigger a SUPL_INIT UDP"

    invoke-interface {v8, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 767
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mPopupAgpsTest:Landroid/widget/PopupMenu;

    invoke-virtual {v8}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-string v12, "Enable RAW Data"

    invoke-interface {v8, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 768
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mPopupAgpsTest:Landroid/widget/PopupMenu;

    invoke-virtual {v8}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x0

    const-string v12, "Disable RAW Data"

    invoke-interface {v8, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 769
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mPopupAgpsTest:Landroid/widget/PopupMenu;

    invoke-virtual {v8}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x3

    const/4 v11, 0x0

    const-string v12, "Trigger a E_SUPL_INIT & e-slp addr"

    invoke-interface {v8, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 770
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mPopupAgpsTest:Landroid/widget/PopupMenu;

    invoke-virtual {v8}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    const-string v12, "Trigger a E_SUPL_INIT"

    invoke-interface {v8, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 771
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mPopupAgpsTest:Landroid/widget/PopupMenu;

    invoke-virtual {v8}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x5

    const/4 v11, 0x0

    const-string v12, "TBD 3"

    invoke-interface {v8, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 772
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mPopupAgpsTest:Landroid/widget/PopupMenu;

    invoke-virtual {v8}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x6

    const/4 v11, 0x0

    const-string v12, "TBD 4"

    invoke-interface {v8, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 773
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mPopupAgpsTest:Landroid/widget/PopupMenu;

    invoke-virtual {v8}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x7

    const/4 v11, 0x0

    const-string v12, "TBD 5"

    invoke-interface {v8, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 774
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mPopupAgpsTest:Landroid/widget/PopupMenu;

    invoke-virtual {v8}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v8

    const/4 v9, 0x0

    const/16 v10, 0x8

    const/4 v11, 0x0

    const-string v12, "TBD 6"

    invoke-interface {v8, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 775
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mPopupAgpsTest:Landroid/widget/PopupMenu;

    invoke-virtual {v8}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v8

    const/4 v9, 0x0

    const/16 v10, 0x9

    const/4 v11, 0x0

    const-string v12, "TBD 7"

    invoke-interface {v8, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 776
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mPopupAgpsTest:Landroid/widget/PopupMenu;

    invoke-virtual {v8}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v8

    const/4 v9, 0x0

    const/16 v10, 0xa

    const/4 v11, 0x0

    const-string v12, "TBD 8"

    invoke-interface {v8, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 778
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mPopupAgpsTest:Landroid/widget/PopupMenu;

    new-instance v9, Lcom/mediatek/lbs/em/LbsAgps$8;

    invoke-direct {v9, p0}, Lcom/mediatek/lbs/em/LbsAgps$8;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v8, v9}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 853
    const/4 v3, 0x0

    .line 854
    .local v3, index:I
    new-instance v8, Landroid/widget/PopupMenu;

    iget-object v9, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButtonSlpTemplate:Landroid/widget/Button;

    invoke-direct {v8, p0, v9}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mPopupSlp:Landroid/widget/PopupMenu;

    .line 855
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mProfileManager:Lcom/mediatek/common/agps/MtkAgpsProfileManager;

    invoke-virtual {v8}, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->getAllProfile()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/common/agps/MtkAgpsProfile;

    .line 856
    .local v5, profile:Lcom/mediatek/common/agps/MtkAgpsProfile;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Lcom/mediatek/common/agps/MtkAgpsProfile;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Lcom/mediatek/common/agps/MtkAgpsProfile;->code:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 858
    .local v7, tmp:Ljava/lang/String;
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mPopupSlp:Landroid/widget/PopupMenu;

    invoke-virtual {v8}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface {v8, v9, v3, v10, v7}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 859
    add-int/lit8 v3, v3, 0x1

    .line 860
    goto :goto_0

    .line 861
    .end local v5           #profile:Lcom/mediatek/common/agps/MtkAgpsProfile;
    .end local v7           #tmp:Ljava/lang/String;
    :cond_0
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mPopupSlp:Landroid/widget/PopupMenu;

    new-instance v9, Lcom/mediatek/lbs/em/LbsAgps$9;

    invoke-direct {v9, p0}, Lcom/mediatek/lbs/em/LbsAgps$9;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v8, v9}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 878
    const/4 v3, 0x0

    .line 879
    new-instance v8, Landroid/widget/PopupMenu;

    iget-object v9, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButtonNiDialogTest:Landroid/widget/Button;

    invoke-direct {v8, p0, v9}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mPopupNiDialog:Landroid/widget/PopupMenu;

    .line 880
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsAgps;->NI_DIALOG_TEST_LIST:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v4, v1

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v4, :cond_1

    aget-object v6, v1, v2

    .line 881
    .local v6, test:Ljava/lang/String;
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mPopupNiDialog:Landroid/widget/PopupMenu;

    invoke-virtual {v8}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface {v8, v9, v3, v10, v6}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 882
    add-int/lit8 v3, v3, 0x1

    .line 880
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 884
    .end local v6           #test:Ljava/lang/String;
    :cond_1
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mPopupNiDialog:Landroid/widget/PopupMenu;

    new-instance v9, Lcom/mediatek/lbs/em/LbsAgps$10;

    invoke-direct {v9, p0}, Lcom/mediatek/lbs/em/LbsAgps$10;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v8, v9}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 893
    new-instance v8, Landroid/widget/PopupMenu;

    iget-object v9, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButton_PosMethod:Landroid/widget/Button;

    invoke-direct {v8, p0, v9}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mPopupPosMethod:Landroid/widget/PopupMenu;

    .line 894
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mPopupPosMethod:Landroid/widget/PopupMenu;

    invoke-virtual {v8}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, "Set Assist"

    invoke-interface {v8, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 895
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mPopupPosMethod:Landroid/widget/PopupMenu;

    invoke-virtual {v8}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-string v12, "Set Base"

    invoke-interface {v8, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 896
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mPopupPosMethod:Landroid/widget/PopupMenu;

    invoke-virtual {v8}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x0

    const-string v12, "Set Assist pref"

    invoke-interface {v8, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 897
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mPopupPosMethod:Landroid/widget/PopupMenu;

    invoke-virtual {v8}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x3

    const/4 v11, 0x0

    const-string v12, "Set Base Pref"

    invoke-interface {v8, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 898
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mPopupPosMethod:Landroid/widget/PopupMenu;

    invoke-virtual {v8}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    const-string v12, "Auto"

    invoke-interface {v8, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 899
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mPopupPosMethod:Landroid/widget/PopupMenu;

    invoke-virtual {v8}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x5

    const/4 v11, 0x0

    const-string v12, "Ecid"

    invoke-interface {v8, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 900
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mPopupPosMethod:Landroid/widget/PopupMenu;

    invoke-virtual {v8}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x6

    const/4 v11, 0x0

    const-string v12, "No Position"

    invoke-interface {v8, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 901
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mPopupPosMethod:Landroid/widget/PopupMenu;

    invoke-virtual {v8}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x7

    const/4 v11, 0x0

    const-string v12, "Session info"

    invoke-interface {v8, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 902
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mPopupPosMethod:Landroid/widget/PopupMenu;

    new-instance v9, Lcom/mediatek/lbs/em/LbsAgps$11;

    invoke-direct {v9, p0}, Lcom/mediatek/lbs/em/LbsAgps$11;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v8, v9}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 913
    new-instance v8, Landroid/widget/PopupMenu;

    iget-object v9, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButton_AreaType:Landroid/widget/Button;

    invoke-direct {v8, p0, v9}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mPopupAreaType:Landroid/widget/PopupMenu;

    .line 914
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mPopupAreaType:Landroid/widget/PopupMenu;

    invoke-virtual {v8}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, "Entering Area"

    invoke-interface {v8, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 915
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mPopupAreaType:Landroid/widget/PopupMenu;

    invoke-virtual {v8}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-string v12, "Inside Area"

    invoke-interface {v8, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 916
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mPopupAreaType:Landroid/widget/PopupMenu;

    invoke-virtual {v8}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x0

    const-string v12, "Outside Area"

    invoke-interface {v8, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 917
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mPopupAreaType:Landroid/widget/PopupMenu;

    invoke-virtual {v8}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x3

    const/4 v11, 0x0

    const-string v12, "Leaving Area"

    invoke-interface {v8, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 918
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mPopupAreaType:Landroid/widget/PopupMenu;

    new-instance v9, Lcom/mediatek/lbs/em/LbsAgps$12;

    invoke-direct {v9, p0}, Lcom/mediatek/lbs/em/LbsAgps$12;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v8, v9}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 929
    new-instance v8, Landroid/widget/PopupMenu;

    iget-object v9, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButton_Geographic:Landroid/widget/Button;

    invoke-direct {v8, p0, v9}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mPopupGeoType:Landroid/widget/PopupMenu;

    .line 930
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mPopupGeoType:Landroid/widget/PopupMenu;

    invoke-virtual {v8}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, "Circular"

    invoke-interface {v8, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 931
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mPopupGeoType:Landroid/widget/PopupMenu;

    new-instance v9, Lcom/mediatek/lbs/em/LbsAgps$13;

    invoke-direct {v9, p0}, Lcom/mediatek/lbs/em/LbsAgps$13;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v8, v9}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 945
    const/4 v3, 0x0

    .line 946
    new-instance v8, Landroid/widget/PopupMenu;

    iget-object v9, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButtonCdmaTemplate:Landroid/widget/Button;

    invoke-direct {v8, p0, v9}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCdmaPopup:Landroid/widget/PopupMenu;

    .line 947
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mProfileManager:Lcom/mediatek/common/agps/MtkAgpsProfileManager;

    invoke-virtual {v8}, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->getAllCdmaProfile()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;

    .line 948
    .local v5, profile:Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] MCP="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mMcpAddr:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v5, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mMcpPort:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 949
    .restart local v7       #tmp:Ljava/lang/String;
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCdmaPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v8}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface {v8, v9, v3, v10, v7}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 950
    add-int/lit8 v3, v3, 0x1

    .line 951
    goto :goto_2

    .line 952
    .end local v5           #profile:Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;
    .end local v7           #tmp:Ljava/lang/String;
    :cond_2
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCdmaPopup:Landroid/widget/PopupMenu;

    new-instance v9, Lcom/mediatek/lbs/em/LbsAgps$14;

    invoke-direct {v9, p0}, Lcom/mediatek/lbs/em/LbsAgps$14;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v8, v9}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 974
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mLinearLayoutPayloadType:Landroid/widget/LinearLayout;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 977
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButton_Area:Landroid/widget/RadioButton;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 978
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->enablePeriodicWidget(Z)V

    .line 983
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButtonLoadProfile:Landroid/widget/Button;

    new-instance v9, Lcom/mediatek/lbs/em/LbsAgps$15;

    invoke-direct {v9, p0}, Lcom/mediatek/lbs/em/LbsAgps$15;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 988
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButtonSetProfile:Landroid/widget/Button;

    new-instance v9, Lcom/mediatek/lbs/em/LbsAgps$16;

    invoke-direct {v9, p0}, Lcom/mediatek/lbs/em/LbsAgps$16;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 994
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButtonGpsReset:Landroid/widget/Button;

    new-instance v9, Lcom/mediatek/lbs/em/LbsAgps$17;

    invoke-direct {v9, p0}, Lcom/mediatek/lbs/em/LbsAgps$17;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1021
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButtonAgpsTest:Landroid/widget/Button;

    new-instance v9, Lcom/mediatek/lbs/em/LbsAgps$18;

    invoke-direct {v9, p0}, Lcom/mediatek/lbs/em/LbsAgps$18;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1027
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButtonAutoTestOn:Landroid/widget/Button;

    new-instance v9, Lcom/mediatek/lbs/em/LbsAgps$19;

    invoke-direct {v9, p0}, Lcom/mediatek/lbs/em/LbsAgps$19;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1032
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButtonAutoTestOff:Landroid/widget/Button;

    new-instance v9, Lcom/mediatek/lbs/em/LbsAgps$20;

    invoke-direct {v9, p0}, Lcom/mediatek/lbs/em/LbsAgps$20;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1038
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButtonTestSuite:Landroid/widget/Button;

    new-instance v9, Lcom/mediatek/lbs/em/LbsAgps$21;

    invoke-direct {v9, p0}, Lcom/mediatek/lbs/em/LbsAgps$21;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1044
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxEnableAgps:Landroid/widget/CheckBox;

    new-instance v9, Lcom/mediatek/lbs/em/LbsAgps$22;

    invoke-direct {v9, p0}, Lcom/mediatek/lbs/em/LbsAgps$22;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1049
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButton_WCDMA_Prefer:Landroid/widget/RadioButton;

    new-instance v9, Lcom/mediatek/lbs/em/LbsAgps$23;

    invoke-direct {v9, p0}, Lcom/mediatek/lbs/em/LbsAgps$23;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v8, v9}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1061
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButton_CDMA_Prefer:Landroid/widget/RadioButton;

    new-instance v9, Lcom/mediatek/lbs/em/LbsAgps$24;

    invoke-direct {v9, p0}, Lcom/mediatek/lbs/em/LbsAgps$24;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v8, v9}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1073
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButton_CDMA_Force:Landroid/widget/RadioButton;

    new-instance v9, Lcom/mediatek/lbs/em/LbsAgps$25;

    invoke-direct {v9, p0}, Lcom/mediatek/lbs/em/LbsAgps$25;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v8, v9}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1086
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButtonCdmaTemplate:Landroid/widget/Button;

    new-instance v9, Lcom/mediatek/lbs/em/LbsAgps$26;

    invoke-direct {v9, p0}, Lcom/mediatek/lbs/em/LbsAgps$26;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1091
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxMcpEnable:Landroid/widget/CheckBox;

    new-instance v9, Lcom/mediatek/lbs/em/LbsAgps$27;

    invoke-direct {v9, p0}, Lcom/mediatek/lbs/em/LbsAgps$27;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1098
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButtonMcpAddr:Landroid/widget/Button;

    new-instance v9, Lcom/mediatek/lbs/em/LbsAgps$28;

    invoke-direct {v9, p0}, Lcom/mediatek/lbs/em/LbsAgps$28;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1103
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButtonMcpPort:Landroid/widget/Button;

    new-instance v9, Lcom/mediatek/lbs/em/LbsAgps$29;

    invoke-direct {v9, p0}, Lcom/mediatek/lbs/em/LbsAgps$29;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1108
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxPdeAddrValid:Landroid/widget/CheckBox;

    new-instance v9, Lcom/mediatek/lbs/em/LbsAgps$30;

    invoke-direct {v9, p0}, Lcom/mediatek/lbs/em/LbsAgps$30;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1115
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxPdeIpType:Landroid/widget/CheckBox;

    new-instance v9, Lcom/mediatek/lbs/em/LbsAgps$31;

    invoke-direct {v9, p0}, Lcom/mediatek/lbs/em/LbsAgps$31;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1122
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButtonPdeIp4Addr:Landroid/widget/Button;

    new-instance v9, Lcom/mediatek/lbs/em/LbsAgps$32;

    invoke-direct {v9, p0}, Lcom/mediatek/lbs/em/LbsAgps$32;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1127
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButtonPdeIp6Addr:Landroid/widget/Button;

    new-instance v9, Lcom/mediatek/lbs/em/LbsAgps$33;

    invoke-direct {v9, p0}, Lcom/mediatek/lbs/em/LbsAgps$33;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1132
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButtonPdePort:Landroid/widget/Button;

    new-instance v9, Lcom/mediatek/lbs/em/LbsAgps$34;

    invoke-direct {v9, p0}, Lcom/mediatek/lbs/em/LbsAgps$34;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1137
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxPdeUrlVaild:Landroid/widget/CheckBox;

    new-instance v9, Lcom/mediatek/lbs/em/LbsAgps$35;

    invoke-direct {v9, p0}, Lcom/mediatek/lbs/em/LbsAgps$35;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1144
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButtonPdeUrl:Landroid/widget/Button;

    new-instance v9, Lcom/mediatek/lbs/em/LbsAgps$36;

    invoke-direct {v9, p0}, Lcom/mediatek/lbs/em/LbsAgps$36;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1149
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButtonStandalone:Landroid/widget/RadioButton;

    new-instance v9, Lcom/mediatek/lbs/em/LbsAgps$37;

    invoke-direct {v9, p0}, Lcom/mediatek/lbs/em/LbsAgps$37;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v8, v9}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1156
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButtonMsb:Landroid/widget/RadioButton;

    new-instance v9, Lcom/mediatek/lbs/em/LbsAgps$38;

    invoke-direct {v9, p0}, Lcom/mediatek/lbs/em/LbsAgps$38;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v8, v9}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1163
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButtonMsa:Landroid/widget/RadioButton;

    new-instance v9, Lcom/mediatek/lbs/em/LbsAgps$39;

    invoke-direct {v9, p0}, Lcom/mediatek/lbs/em/LbsAgps$39;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v8, v9}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1170
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckEnableIot:Landroid/widget/CheckBox;

    new-instance v9, Lcom/mediatek/lbs/em/LbsAgps$40;

    invoke-direct {v9, p0}, Lcom/mediatek/lbs/em/LbsAgps$40;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1177
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxNiAllow:Landroid/widget/CheckBox;

    new-instance v9, Lcom/mediatek/lbs/em/LbsAgps$41;

    invoke-direct {v9, p0}, Lcom/mediatek/lbs/em/LbsAgps$41;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1184
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxEmAllow:Landroid/widget/CheckBox;

    new-instance v9, Lcom/mediatek/lbs/em/LbsAgps$42;

    invoke-direct {v9, p0}, Lcom/mediatek/lbs/em/LbsAgps$42;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1191
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxRoamingAllow:Landroid/widget/CheckBox;

    new-instance v9, Lcom/mediatek/lbs/em/LbsAgps$43;

    invoke-direct {v9, p0}, Lcom/mediatek/lbs/em/LbsAgps$43;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1198
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxSupl2File:Landroid/widget/CheckBox;

    new-instance v9, Lcom/mediatek/lbs/em/LbsAgps$44;

    invoke-direct {v9, p0}, Lcom/mediatek/lbs/em/LbsAgps$44;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1205
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxEcidEnable:Landroid/widget/CheckBox;

    new-instance v9, Lcom/mediatek/lbs/em/LbsAgps$45;

    invoke-direct {v9, p0}, Lcom/mediatek/lbs/em/LbsAgps$45;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1213
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxLabPerformance:Landroid/widget/CheckBox;

    new-instance v9, Lcom/mediatek/lbs/em/LbsAgps$46;

    invoke-direct {v9, p0}, Lcom/mediatek/lbs/em/LbsAgps$46;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1221
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBox_SUPLTwo:Landroid/widget/CheckBox;

    new-instance v9, Lcom/mediatek/lbs/em/LbsAgps$47;

    invoke-direct {v9, p0}, Lcom/mediatek/lbs/em/LbsAgps$47;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1239
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButton_SILR:Landroid/widget/Button;

    new-instance v9, Lcom/mediatek/lbs/em/LbsAgps$48;

    invoke-direct {v9, p0}, Lcom/mediatek/lbs/em/LbsAgps$48;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1245
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButton_MSISDNEdit:Landroid/widget/Button;

    new-instance v9, Lcom/mediatek/lbs/em/LbsAgps$49;

    invoke-direct {v9, p0}, Lcom/mediatek/lbs/em/LbsAgps$49;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1251
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBox_ThirdMSISDN:Landroid/widget/CheckBox;

    new-instance v9, Lcom/mediatek/lbs/em/LbsAgps$50;

    invoke-direct {v9, p0}, Lcom/mediatek/lbs/em/LbsAgps$50;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1263
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButton_ThirdMSISDNEdit:Landroid/widget/Button;

    new-instance v9, Lcom/mediatek/lbs/em/LbsAgps$51;

    invoke-direct {v9, p0}, Lcom/mediatek/lbs/em/LbsAgps$51;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1269
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButton_TriggerStart:Landroid/widget/Button;

    new-instance v9, Lcom/mediatek/lbs/em/LbsAgps$52;

    invoke-direct {v9, p0}, Lcom/mediatek/lbs/em/LbsAgps$52;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1279
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButton_TriggerAbort:Landroid/widget/Button;

    new-instance v9, Lcom/mediatek/lbs/em/LbsAgps$53;

    invoke-direct {v9, p0}, Lcom/mediatek/lbs/em/LbsAgps$53;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1285
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButton_Periodic:Landroid/widget/RadioButton;

    new-instance v9, Lcom/mediatek/lbs/em/LbsAgps$54;

    invoke-direct {v9, p0}, Lcom/mediatek/lbs/em/LbsAgps$54;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v8, v9}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1291
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButton_Area:Landroid/widget/RadioButton;

    new-instance v9, Lcom/mediatek/lbs/em/LbsAgps$55;

    invoke-direct {v9, p0}, Lcom/mediatek/lbs/em/LbsAgps$55;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v8, v9}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1297
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButton_PosMethod:Landroid/widget/Button;

    new-instance v9, Lcom/mediatek/lbs/em/LbsAgps$56;

    invoke-direct {v9, p0}, Lcom/mediatek/lbs/em/LbsAgps$56;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1303
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButton_PeriodicNFix:Landroid/widget/Button;

    new-instance v9, Lcom/mediatek/lbs/em/LbsAgps$57;

    invoke-direct {v9, p0}, Lcom/mediatek/lbs/em/LbsAgps$57;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1309
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButton_PeriodicInter:Landroid/widget/Button;

    new-instance v9, Lcom/mediatek/lbs/em/LbsAgps$58;

    invoke-direct {v9, p0}, Lcom/mediatek/lbs/em/LbsAgps$58;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1315
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButton_PeriodicSTime:Landroid/widget/Button;

    new-instance v9, Lcom/mediatek/lbs/em/LbsAgps$59;

    invoke-direct {v9, p0}, Lcom/mediatek/lbs/em/LbsAgps$59;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1321
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButton_AreaType:Landroid/widget/Button;

    new-instance v9, Lcom/mediatek/lbs/em/LbsAgps$60;

    invoke-direct {v9, p0}, Lcom/mediatek/lbs/em/LbsAgps$60;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1328
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButton_AreaMinInter:Landroid/widget/Button;

    new-instance v9, Lcom/mediatek/lbs/em/LbsAgps$61;

    invoke-direct {v9, p0}, Lcom/mediatek/lbs/em/LbsAgps$61;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1334
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButton_AreaMaxNum:Landroid/widget/Button;

    new-instance v9, Lcom/mediatek/lbs/em/LbsAgps$62;

    invoke-direct {v9, p0}, Lcom/mediatek/lbs/em/LbsAgps$62;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1340
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButton_AreaStartTime:Landroid/widget/Button;

    new-instance v9, Lcom/mediatek/lbs/em/LbsAgps$63;

    invoke-direct {v9, p0}, Lcom/mediatek/lbs/em/LbsAgps$63;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1346
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButton_AreaStopTime:Landroid/widget/Button;

    new-instance v9, Lcom/mediatek/lbs/em/LbsAgps$64;

    invoke-direct {v9, p0}, Lcom/mediatek/lbs/em/LbsAgps$64;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1352
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButton_Geographic:Landroid/widget/Button;

    new-instance v9, Lcom/mediatek/lbs/em/LbsAgps$65;

    invoke-direct {v9, p0}, Lcom/mediatek/lbs/em/LbsAgps$65;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1358
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButton_GeoRadius:Landroid/widget/Button;

    new-instance v9, Lcom/mediatek/lbs/em/LbsAgps$66;

    invoke-direct {v9, p0}, Lcom/mediatek/lbs/em/LbsAgps$66;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1365
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButton_GeoLat:Landroid/widget/Button;

    new-instance v9, Lcom/mediatek/lbs/em/LbsAgps$67;

    invoke-direct {v9, p0}, Lcom/mediatek/lbs/em/LbsAgps$67;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1372
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButton_GeoLong:Landroid/widget/Button;

    new-instance v9, Lcom/mediatek/lbs/em/LbsAgps$68;

    invoke-direct {v9, p0}, Lcom/mediatek/lbs/em/LbsAgps$68;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1378
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButton_GeoRadiusSignNorth:Landroid/widget/RadioButton;

    new-instance v9, Lcom/mediatek/lbs/em/LbsAgps$69;

    invoke-direct {v9, p0}, Lcom/mediatek/lbs/em/LbsAgps$69;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v8, v9}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1387
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButton_GeoRadiusSignSouth:Landroid/widget/RadioButton;

    new-instance v9, Lcom/mediatek/lbs/em/LbsAgps$70;

    invoke-direct {v9, p0}, Lcom/mediatek/lbs/em/LbsAgps$70;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v8, v9}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1397
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxEnableNiTimer:Landroid/widget/CheckBox;

    new-instance v9, Lcom/mediatek/lbs/em/LbsAgps$71;

    invoke-direct {v9, p0}, Lcom/mediatek/lbs/em/LbsAgps$71;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1404
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mSpinnerNotificationTimeout:Landroid/widget/Spinner;

    new-instance v9, Lcom/mediatek/lbs/em/LbsAgps$72;

    invoke-direct {v9, p0}, Lcom/mediatek/lbs/em/LbsAgps$72;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v8, v9}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1420
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mSpinnerVerificationTimeout:Landroid/widget/Spinner;

    new-instance v9, Lcom/mediatek/lbs/em/LbsAgps$73;

    invoke-direct {v9, p0}, Lcom/mediatek/lbs/em/LbsAgps$73;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v8, v9}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1437
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButtonCp:Landroid/widget/RadioButton;

    new-instance v9, Lcom/mediatek/lbs/em/LbsAgps$74;

    invoke-direct {v9, p0}, Lcom/mediatek/lbs/em/LbsAgps$74;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v8, v9}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1445
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButtonUp:Landroid/widget/RadioButton;

    new-instance v9, Lcom/mediatek/lbs/em/LbsAgps$75;

    invoke-direct {v9, p0}, Lcom/mediatek/lbs/em/LbsAgps$75;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v8, v9}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1454
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButtonLocationEstimate:Landroid/widget/RadioButton;

    new-instance v9, Lcom/mediatek/lbs/em/LbsAgps$76;

    invoke-direct {v9, p0}, Lcom/mediatek/lbs/em/LbsAgps$76;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v8, v9}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1461
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButtonAssistanceData:Landroid/widget/RadioButton;

    new-instance v9, Lcom/mediatek/lbs/em/LbsAgps$77;

    invoke-direct {v9, p0}, Lcom/mediatek/lbs/em/LbsAgps$77;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v8, v9}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1469
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxExternalAddr:Landroid/widget/CheckBox;

    new-instance v9, Lcom/mediatek/lbs/em/LbsAgps$78;

    invoke-direct {v9, p0}, Lcom/mediatek/lbs/em/LbsAgps$78;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1477
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxMlcNumber:Landroid/widget/CheckBox;

    new-instance v9, Lcom/mediatek/lbs/em/LbsAgps$79;

    invoke-direct {v9, p0}, Lcom/mediatek/lbs/em/LbsAgps$79;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1486
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButtonPreferSim1:Landroid/widget/RadioButton;

    new-instance v9, Lcom/mediatek/lbs/em/LbsAgps$80;

    invoke-direct {v9, p0}, Lcom/mediatek/lbs/em/LbsAgps$80;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v8, v9}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1493
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButtonPreferSim2:Landroid/widget/RadioButton;

    new-instance v9, Lcom/mediatek/lbs/em/LbsAgps$81;

    invoke-direct {v9, p0}, Lcom/mediatek/lbs/em/LbsAgps$81;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v8, v9}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1500
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButtonPreferSim3:Landroid/widget/RadioButton;

    new-instance v9, Lcom/mediatek/lbs/em/LbsAgps$82;

    invoke-direct {v9, p0}, Lcom/mediatek/lbs/em/LbsAgps$82;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v8, v9}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1507
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButtonPreferSim4:Landroid/widget/RadioButton;

    new-instance v9, Lcom/mediatek/lbs/em/LbsAgps$83;

    invoke-direct {v9, p0}, Lcom/mediatek/lbs/em/LbsAgps$83;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v8, v9}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1515
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButtonSlpTemplate:Landroid/widget/Button;

    new-instance v9, Lcom/mediatek/lbs/em/LbsAgps$84;

    invoke-direct {v9, p0}, Lcom/mediatek/lbs/em/LbsAgps$84;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1521
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButtonSlpTest:Landroid/widget/Button;

    new-instance v9, Lcom/mediatek/lbs/em/LbsAgps$85;

    invoke-direct {v9, p0}, Lcom/mediatek/lbs/em/LbsAgps$85;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1540
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButtonSlpAddr:Landroid/widget/Button;

    new-instance v9, Lcom/mediatek/lbs/em/LbsAgps$86;

    invoke-direct {v9, p0}, Lcom/mediatek/lbs/em/LbsAgps$86;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1545
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButtonSlpPort:Landroid/widget/Button;

    new-instance v9, Lcom/mediatek/lbs/em/LbsAgps$87;

    invoke-direct {v9, p0}, Lcom/mediatek/lbs/em/LbsAgps$87;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1550
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxTls:Landroid/widget/CheckBox;

    new-instance v9, Lcom/mediatek/lbs/em/LbsAgps$88;

    invoke-direct {v9, p0}, Lcom/mediatek/lbs/em/LbsAgps$88;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1558
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButtonRrlp:Landroid/widget/RadioButton;

    new-instance v9, Lcom/mediatek/lbs/em/LbsAgps$89;

    invoke-direct {v9, p0}, Lcom/mediatek/lbs/em/LbsAgps$89;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v8, v9}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1565
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButtonRrc:Landroid/widget/RadioButton;

    new-instance v9, Lcom/mediatek/lbs/em/LbsAgps$90;

    invoke-direct {v9, p0}, Lcom/mediatek/lbs/em/LbsAgps$90;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v8, v9}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1572
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButtonRrlpRrc:Landroid/widget/RadioButton;

    new-instance v9, Lcom/mediatek/lbs/em/LbsAgps$91;

    invoke-direct {v9, p0}, Lcom/mediatek/lbs/em/LbsAgps$91;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v8, v9}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1580
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButtonIpv4:Landroid/widget/RadioButton;

    new-instance v9, Lcom/mediatek/lbs/em/LbsAgps$92;

    invoke-direct {v9, p0}, Lcom/mediatek/lbs/em/LbsAgps$92;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v8, v9}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1587
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButtonImsi:Landroid/widget/RadioButton;

    new-instance v9, Lcom/mediatek/lbs/em/LbsAgps$93;

    invoke-direct {v9, p0}, Lcom/mediatek/lbs/em/LbsAgps$93;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v8, v9}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1595
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButtonKValue:Landroid/widget/RadioButton;

    new-instance v9, Lcom/mediatek/lbs/em/LbsAgps$94;

    invoke-direct {v9, p0}, Lcom/mediatek/lbs/em/LbsAgps$94;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v8, v9}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1600
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButtonMeter:Landroid/widget/RadioButton;

    new-instance v9, Lcom/mediatek/lbs/em/LbsAgps$95;

    invoke-direct {v9, p0}, Lcom/mediatek/lbs/em/LbsAgps$95;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v8, v9}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1606
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButtonHAcc:Landroid/widget/Button;

    new-instance v9, Lcom/mediatek/lbs/em/LbsAgps$96;

    invoke-direct {v9, p0}, Lcom/mediatek/lbs/em/LbsAgps$96;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1611
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButtonVAcc:Landroid/widget/Button;

    new-instance v9, Lcom/mediatek/lbs/em/LbsAgps$97;

    invoke-direct {v9, p0}, Lcom/mediatek/lbs/em/LbsAgps$97;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1616
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButtonLocationAge:Landroid/widget/Button;

    new-instance v9, Lcom/mediatek/lbs/em/LbsAgps$98;

    invoke-direct {v9, p0}, Lcom/mediatek/lbs/em/LbsAgps$98;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1621
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButtonDelay:Landroid/widget/Button;

    new-instance v9, Lcom/mediatek/lbs/em/LbsAgps$99;

    invoke-direct {v9, p0}, Lcom/mediatek/lbs/em/LbsAgps$99;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1627
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxCerVerify:Landroid/widget/CheckBox;

    new-instance v9, Lcom/mediatek/lbs/em/LbsAgps$100;

    invoke-direct {v9, p0}, Lcom/mediatek/lbs/em/LbsAgps$100;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1635
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButtonReset2Default:Landroid/widget/Button;

    new-instance v9, Lcom/mediatek/lbs/em/LbsAgps$101;

    invoke-direct {v9, p0}, Lcom/mediatek/lbs/em/LbsAgps$101;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1642
    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButtonNiDialogTest:Landroid/widget/Button;

    new-instance v9, Lcom/mediatek/lbs/em/LbsAgps$102;

    invoke-direct {v9, p0}, Lcom/mediatek/lbs/em/LbsAgps$102;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1648
    return-void
.end method

.method private isGPSProviderEnable()Z
    .locals 3

    .prologue
    .line 400
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 401
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "GPS is disabled now, Do you want to enable it?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "No"

    new-instance v2, Lcom/mediatek/lbs/em/LbsAgps$6;

    invoke-direct {v2, p0}, Lcom/mediatek/lbs/em/LbsAgps$6;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Yes"

    new-instance v2, Lcom/mediatek/lbs/em/LbsAgps$5;

    invoke-direct {v2, p0}, Lcom/mediatek/lbs/em/LbsAgps$5;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 415
    const/4 v0, 0x0

    .line 417
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isNetworkAvailable()Z
    .locals 3

    .prologue
    .line 552
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Lcom/mediatek/lbs/em/LbsAgps;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 554
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 555
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 556
    const/4 v2, 0x1

    .line 558
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private loadConfigFromAgpsFramework()V
    .locals 11

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 1719
    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    invoke-interface {v4}, Lcom/mediatek/common/agps/MtkAgpsManager;->getConfig()Lcom/mediatek/common/agps/MtkAgpsConfig;

    move-result-object v0

    .line 1720
    .local v0, config:Lcom/mediatek/common/agps/MtkAgpsConfig;
    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    invoke-interface {v4}, Lcom/mediatek/common/agps/MtkAgpsManager;->getProfile()Lcom/mediatek/common/agps/MtkAgpsProfile;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCurrentProfile:Lcom/mediatek/common/agps/MtkAgpsProfile;

    .line 1721
    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    invoke-interface {v4}, Lcom/mediatek/common/agps/MtkAgpsManager;->getCdmaProfile()Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCdmaProfile:Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;

    .line 1723
    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewMcpAddr:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCdmaProfile:Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;

    iget-object v7, v7, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mMcpAddr:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1724
    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewMcpPort:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCdmaProfile:Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;

    iget v8, v8, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mMcpPort:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1725
    iget-object v7, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxMcpEnable:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCdmaProfile:Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;

    iget v4, v4, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mMcpEnable:I

    if-nez v4, :cond_5

    move v4, v5

    :goto_0
    invoke-virtual {v7, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1727
    iget-object v7, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxPdeAddrValid:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCdmaProfile:Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;

    iget v4, v4, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mPdeAddrValid:I

    if-nez v4, :cond_6

    move v4, v5

    :goto_1
    invoke-virtual {v7, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1728
    iget-object v7, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxPdeIpType:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCdmaProfile:Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;

    iget v4, v4, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mPdeIpType:I

    if-nez v4, :cond_7

    move v4, v5

    :goto_2
    invoke-virtual {v7, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1729
    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewPdeIp4Addr:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCdmaProfile:Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;

    iget-object v7, v7, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mPdeIp4Addr:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1730
    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewPdeIp6Addr:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCdmaProfile:Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;

    iget-object v7, v7, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mPdeIp6Addr:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1731
    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewPdePort:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCdmaProfile:Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;

    iget v8, v8, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mPdePort:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1732
    iget-object v7, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxPdeUrlVaild:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCdmaProfile:Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;

    iget v4, v4, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mPdeUrlValid:I

    if-nez v4, :cond_8

    move v4, v5

    :goto_3
    invoke-virtual {v7, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1733
    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewPdeUrl:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCdmaProfile:Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;

    iget-object v7, v7, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mPdeUrlAddr:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1736
    iget v4, v0, Lcom/mediatek/common/agps/MtkAgpsConfig;->evdoAgpsPrefer:I

    if-ne v4, v9, :cond_9

    .line 1737
    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps;->mLinearLayoutCdmaSettings:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1738
    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButton_CDMA_Force:Landroid/widget/RadioButton;

    invoke-virtual {v4, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1747
    :cond_0
    :goto_4
    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxEnableAgps:Landroid/widget/CheckBox;

    iget-object v7, p0, Lcom/mediatek/lbs/em/LbsAgps;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    invoke-interface {v7}, Lcom/mediatek/common/agps/MtkAgpsManager;->getStatus()Z

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1748
    iget-object v7, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckEnableIot:Landroid/widget/CheckBox;

    iget v4, v0, Lcom/mediatek/common/agps/MtkAgpsConfig;->niIot:I

    if-nez v4, :cond_b

    move v4, v5

    :goto_5
    invoke-virtual {v7, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1749
    iget v4, v0, Lcom/mediatek/common/agps/MtkAgpsConfig;->siMode:I

    if-nez v4, :cond_c

    .line 1750
    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButtonMsa:Landroid/widget/RadioButton;

    invoke-virtual {v4, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1756
    :goto_6
    iget v4, v0, Lcom/mediatek/common/agps/MtkAgpsConfig;->agpsProtocol:I

    if-nez v4, :cond_e

    .line 1757
    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButtonUp:Landroid/widget/RadioButton;

    invoke-virtual {v4, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1758
    invoke-direct {p0, v6}, Lcom/mediatek/lbs/em/LbsAgps;->enableUpWidget(Z)V

    .line 1764
    :goto_7
    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewSlpAddr:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCurrentProfile:Lcom/mediatek/common/agps/MtkAgpsProfile;

    iget-object v7, v7, Lcom/mediatek/common/agps/MtkAgpsProfile;->addr:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1765
    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewSlpPort:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCurrentProfile:Lcom/mediatek/common/agps/MtkAgpsProfile;

    iget v8, v8, Lcom/mediatek/common/agps/MtkAgpsProfile;->port:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1766
    iget-object v7, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxTls:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCurrentProfile:Lcom/mediatek/common/agps/MtkAgpsProfile;

    iget v4, v4, Lcom/mediatek/common/agps/MtkAgpsProfile;->tls:I

    if-nez v4, :cond_f

    move v4, v5

    :goto_8
    invoke-virtual {v7, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1767
    iget v4, v0, Lcom/mediatek/common/agps/MtkAgpsConfig;->suplPosProtocol:I

    if-nez v4, :cond_10

    .line 1768
    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButtonRrlp:Landroid/widget/RadioButton;

    invoke-virtual {v4, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1774
    :goto_9
    iget v4, v0, Lcom/mediatek/common/agps/MtkAgpsConfig;->setId:I

    if-nez v4, :cond_12

    .line 1775
    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButtonImsi:Landroid/widget/RadioButton;

    invoke-virtual {v4, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1779
    :goto_a
    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButtonKValue:Landroid/widget/RadioButton;

    invoke-virtual {v4, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1780
    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewHAcc:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Lcom/mediatek/common/agps/MtkAgpsConfig;->qopHacc:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1781
    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewVAcc:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Lcom/mediatek/common/agps/MtkAgpsConfig;->qopVacc:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1782
    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewLocationAge:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Lcom/mediatek/common/agps/MtkAgpsConfig;->qopAge:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1783
    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewDelay:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Lcom/mediatek/common/agps/MtkAgpsConfig;->qopDelay:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1784
    iget-object v7, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxCerVerify:Landroid/widget/CheckBox;

    iget v4, v0, Lcom/mediatek/common/agps/MtkAgpsConfig;->caEnable:I

    if-nez v4, :cond_13

    move v4, v5

    :goto_b
    invoke-virtual {v7, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1785
    iget v4, v0, Lcom/mediatek/common/agps/MtkAgpsConfig;->cpMolrType:I

    if-nez v4, :cond_14

    .line 1786
    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButtonLocationEstimate:Landroid/widget/RadioButton;

    invoke-virtual {v4, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1790
    :goto_c
    iget-object v7, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxExternalAddr:Landroid/widget/CheckBox;

    iget v4, v0, Lcom/mediatek/common/agps/MtkAgpsConfig;->extAddressEnable:I

    if-nez v4, :cond_15

    move v4, v5

    :goto_d
    invoke-virtual {v7, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1791
    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewExternalAddr:Landroid/widget/TextView;

    iget-object v7, v0, Lcom/mediatek/common/agps/MtkAgpsConfig;->extAddress:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1792
    iget-object v7, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxMlcNumber:Landroid/widget/CheckBox;

    iget v4, v0, Lcom/mediatek/common/agps/MtkAgpsConfig;->mlcNumEnable:I

    if-nez v4, :cond_16

    move v4, v5

    :goto_e
    invoke-virtual {v7, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1793
    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewMlcNumber:Landroid/widget/TextView;

    iget-object v7, v0, Lcom/mediatek/common/agps/MtkAgpsConfig;->mlcNum:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1794
    iget v4, v0, Lcom/mediatek/common/agps/MtkAgpsConfig;->simIdPref:I

    if-ne v4, v6, :cond_17

    .line 1795
    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButtonPreferSim1:Landroid/widget/RadioButton;

    invoke-virtual {v4, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1803
    :cond_1
    :goto_f
    iget-object v7, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxNiAllow:Landroid/widget/CheckBox;

    iget v4, v0, Lcom/mediatek/common/agps/MtkAgpsConfig;->niEnable:I

    if-nez v4, :cond_1a

    move v4, v5

    :goto_10
    invoke-virtual {v7, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1804
    iget-object v7, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxEmAllow:Landroid/widget/CheckBox;

    iget v4, v0, Lcom/mediatek/common/agps/MtkAgpsConfig;->emEnable:I

    if-nez v4, :cond_1b

    move v4, v5

    :goto_11
    invoke-virtual {v7, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1805
    iget-object v7, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxRoamingAllow:Landroid/widget/CheckBox;

    iget v4, v0, Lcom/mediatek/common/agps/MtkAgpsConfig;->roaming:I

    if-nez v4, :cond_1c

    move v4, v5

    :goto_12
    invoke-virtual {v7, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1806
    iget-object v7, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxSupl2File:Landroid/widget/CheckBox;

    iget v4, v0, Lcom/mediatek/common/agps/MtkAgpsConfig;->supl2file:I

    if-nez v4, :cond_1d

    move v4, v5

    :goto_13
    invoke-virtual {v7, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1807
    iget-object v7, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxEcidEnable:Landroid/widget/CheckBox;

    iget v4, v0, Lcom/mediatek/common/agps/MtkAgpsConfig;->eCidEnable:I

    if-nez v4, :cond_1e

    move v4, v5

    :goto_14
    invoke-virtual {v7, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1808
    iget-object v7, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxLabPerformance:Landroid/widget/CheckBox;

    iget v4, v0, Lcom/mediatek/common/agps/MtkAgpsConfig;->pmtk9975:I

    if-nez v4, :cond_1f

    move v4, v5

    :goto_15
    invoke-virtual {v7, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1810
    iget-object v7, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxEnableNiTimer:Landroid/widget/CheckBox;

    iget v4, v0, Lcom/mediatek/common/agps/MtkAgpsConfig;->niTimer:I

    if-nez v4, :cond_20

    move v4, v5

    :goto_16
    invoke-virtual {v7, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1811
    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps;->mSpinnerNotificationTimeout:Landroid/widget/Spinner;

    iget v7, v0, Lcom/mediatek/common/agps/MtkAgpsConfig;->notifyTimeout:I

    invoke-virtual {v4, v7}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1812
    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps;->mSpinnerVerificationTimeout:Landroid/widget/Spinner;

    iget v7, v0, Lcom/mediatek/common/agps/MtkAgpsConfig;->verifyTimeout:I

    invoke-virtual {v4, v7}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1814
    iget v4, v0, Lcom/mediatek/common/agps/MtkAgpsConfig;->suplVersion:I

    if-ne v4, v9, :cond_21

    .line 1815
    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps;->mLinearLayout_SUPLTwoDotZero:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1816
    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBox_SUPLTwo:Landroid/widget/CheckBox;

    invoke-virtual {v4, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1822
    :goto_17
    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextView_MSISDN:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/mediatek/lbs/em/LbsAgps;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    invoke-interface {v7}, Lcom/mediatek/common/agps/MtkAgpsManager;->getSILRMsisdn()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1824
    iget v4, v0, Lcom/mediatek/common/agps/MtkAgpsConfig;->enable3Party:I

    if-ne v4, v6, :cond_22

    .line 1825
    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBox_ThirdMSISDN:Landroid/widget/CheckBox;

    invoke-virtual {v4, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1830
    :goto_18
    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButton_ThirdMSISDNEdit:Landroid/widget/Button;

    iget-object v7, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBox_ThirdMSISDN:Landroid/widget/CheckBox;

    invoke-virtual {v7}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1832
    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    invoke-interface {v4}, Lcom/mediatek/common/agps/MtkAgpsManager;->getSI3PartyMsisdn()[Ljava/lang/String;

    move-result-object v2

    .line 1833
    .local v2, thirdMsisdn:[Ljava/lang/String;
    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextView_ThirdMSISDN:Landroid/widget/TextView;

    aget-object v7, v2, v5

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1836
    iget v4, v0, Lcom/mediatek/common/agps/MtkAgpsConfig;->posMethod:I

    iget-object v7, p0, Lcom/mediatek/lbs/em/LbsAgps;->mPopupPosMethod:Landroid/widget/PopupMenu;

    invoke-virtual {v7}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/Menu;->size()I

    move-result v7

    if-gt v4, v7, :cond_2

    .line 1837
    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps;->mPopupPosMethod:Landroid/widget/PopupMenu;

    invoke-virtual {v4}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v4

    iget v7, v0, Lcom/mediatek/common/agps/MtkAgpsConfig;->posMethod:I

    invoke-interface {v4, v7}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1838
    .local v1, item:Landroid/view/MenuItem;
    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextView_PosMethod:Landroid/widget/TextView;

    invoke-interface {v1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1841
    .end local v1           #item:Landroid/view/MenuItem;
    :cond_2
    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextView_PeriodicNFix:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Lcom/mediatek/common/agps/MtkAgpsConfig;->periodicNumOfFix:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1842
    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextView_PeriodicInter:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Lcom/mediatek/common/agps/MtkAgpsConfig;->periodicInterval:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1843
    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextView_PeriodicSTime:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Lcom/mediatek/common/agps/MtkAgpsConfig;->periodicStartTime:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1846
    iget v4, v0, Lcom/mediatek/common/agps/MtkAgpsConfig;->eventType:I

    iget-object v7, p0, Lcom/mediatek/lbs/em/LbsAgps;->mPopupAreaType:Landroid/widget/PopupMenu;

    invoke-virtual {v7}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/Menu;->size()I

    move-result v7

    if-gt v4, v7, :cond_3

    .line 1847
    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps;->mPopupAreaType:Landroid/widget/PopupMenu;

    invoke-virtual {v4}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v4

    iget v7, v0, Lcom/mediatek/common/agps/MtkAgpsConfig;->eventType:I

    invoke-interface {v4, v7}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1848
    .restart local v1       #item:Landroid/view/MenuItem;
    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextView_AreaType:Landroid/widget/TextView;

    invoke-interface {v1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1851
    .end local v1           #item:Landroid/view/MenuItem;
    :cond_3
    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextView_AreaMinInter:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Lcom/mediatek/common/agps/MtkAgpsConfig;->eventInterval:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1852
    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextView_AreaMaxNum:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Lcom/mediatek/common/agps/MtkAgpsConfig;->eventMaxNumReport:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1853
    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextView_AreaStartTime:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Lcom/mediatek/common/agps/MtkAgpsConfig;->eventStartTime:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1854
    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextView_AreaStopTime:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Lcom/mediatek/common/agps/MtkAgpsConfig;->eventStopTime:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1857
    iget-object v4, v0, Lcom/mediatek/common/agps/MtkAgpsConfig;->targetAreaList:[Landroid/os/Parcelable;

    aget-object v3, v4, v5

    check-cast v3, Lcom/mediatek/common/agps/MtkAgpsTargetArea;

    .line 1859
    .local v3, tmparea:Lcom/mediatek/common/agps/MtkAgpsTargetArea;
    iget v4, v3, Lcom/mediatek/common/agps/MtkAgpsTargetArea;->type:I

    iget-object v5, p0, Lcom/mediatek/lbs/em/LbsAgps;->mPopupGeoType:Landroid/widget/PopupMenu;

    invoke-virtual {v5}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/Menu;->size()I

    move-result v5

    if-gt v4, v5, :cond_4

    .line 1860
    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps;->mPopupGeoType:Landroid/widget/PopupMenu;

    invoke-virtual {v4}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v4

    iget v5, v3, Lcom/mediatek/common/agps/MtkAgpsTargetArea;->type:I

    invoke-interface {v4, v5}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1861
    .restart local v1       #item:Landroid/view/MenuItem;
    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextView_GeographicResult:Landroid/widget/TextView;

    invoke-interface {v1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1864
    .end local v1           #item:Landroid/view/MenuItem;
    :cond_4
    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextView_GeoRadius:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, v3, Lcom/mediatek/common/agps/MtkAgpsTargetArea;->radius:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1865
    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextView_GeoLat:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, v3, Lcom/mediatek/common/agps/MtkAgpsTargetArea;->lat:F

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1866
    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextView_GeoLong:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, v3, Lcom/mediatek/common/agps/MtkAgpsTargetArea;->lng:F

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1868
    iget v4, v3, Lcom/mediatek/common/agps/MtkAgpsTargetArea;->latSign:I

    if-ne v4, v6, :cond_23

    .line 1869
    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButton_GeoRadiusSignSouth:Landroid/widget/RadioButton;

    invoke-virtual {v4, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1877
    :goto_19
    return-void

    .end local v2           #thirdMsisdn:[Ljava/lang/String;
    .end local v3           #tmparea:Lcom/mediatek/common/agps/MtkAgpsTargetArea;
    :cond_5
    move v4, v6

    .line 1725
    goto/16 :goto_0

    :cond_6
    move v4, v6

    .line 1727
    goto/16 :goto_1

    :cond_7
    move v4, v6

    .line 1728
    goto/16 :goto_2

    :cond_8
    move v4, v6

    .line 1732
    goto/16 :goto_3

    .line 1739
    :cond_9
    iget v4, v0, Lcom/mediatek/common/agps/MtkAgpsConfig;->evdoAgpsPrefer:I

    if-ne v4, v6, :cond_a

    .line 1740
    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps;->mLinearLayoutCdmaSettings:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1741
    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButton_CDMA_Prefer:Landroid/widget/RadioButton;

    invoke-virtual {v4, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_4

    .line 1742
    :cond_a
    iget v4, v0, Lcom/mediatek/common/agps/MtkAgpsConfig;->evdoAgpsPrefer:I

    if-nez v4, :cond_0

    .line 1743
    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps;->mLinearLayoutCdmaSettings:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1744
    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButton_WCDMA_Prefer:Landroid/widget/RadioButton;

    invoke-virtual {v4, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_4

    :cond_b
    move v4, v6

    .line 1748
    goto/16 :goto_5

    .line 1751
    :cond_c
    iget v4, v0, Lcom/mediatek/common/agps/MtkAgpsConfig;->siMode:I

    if-ne v4, v6, :cond_d

    .line 1752
    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButtonMsb:Landroid/widget/RadioButton;

    invoke-virtual {v4, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_6

    .line 1754
    :cond_d
    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButtonStandalone:Landroid/widget/RadioButton;

    invoke-virtual {v4, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_6

    .line 1760
    :cond_e
    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButtonCp:Landroid/widget/RadioButton;

    invoke-virtual {v4, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1761
    invoke-direct {p0, v5}, Lcom/mediatek/lbs/em/LbsAgps;->enableUpWidget(Z)V

    goto/16 :goto_7

    :cond_f
    move v4, v6

    .line 1766
    goto/16 :goto_8

    .line 1769
    :cond_10
    iget v4, v0, Lcom/mediatek/common/agps/MtkAgpsConfig;->suplPosProtocol:I

    if-ne v4, v6, :cond_11

    .line 1770
    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButtonRrc:Landroid/widget/RadioButton;

    invoke-virtual {v4, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_9

    .line 1772
    :cond_11
    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButtonRrlpRrc:Landroid/widget/RadioButton;

    invoke-virtual {v4, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_9

    .line 1777
    :cond_12
    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButtonIpv4:Landroid/widget/RadioButton;

    invoke-virtual {v4, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_a

    :cond_13
    move v4, v6

    .line 1784
    goto/16 :goto_b

    .line 1788
    :cond_14
    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButtonAssistanceData:Landroid/widget/RadioButton;

    invoke-virtual {v4, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_c

    :cond_15
    move v4, v6

    .line 1790
    goto/16 :goto_d

    :cond_16
    move v4, v6

    .line 1792
    goto/16 :goto_e

    .line 1796
    :cond_17
    iget v4, v0, Lcom/mediatek/common/agps/MtkAgpsConfig;->simIdPref:I

    if-ne v4, v9, :cond_18

    .line 1797
    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButtonPreferSim2:Landroid/widget/RadioButton;

    invoke-virtual {v4, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_f

    .line 1798
    :cond_18
    iget v4, v0, Lcom/mediatek/common/agps/MtkAgpsConfig;->simIdPref:I

    const/4 v7, 0x3

    if-ne v4, v7, :cond_19

    .line 1799
    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButtonPreferSim3:Landroid/widget/RadioButton;

    invoke-virtual {v4, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_f

    .line 1800
    :cond_19
    iget v4, v0, Lcom/mediatek/common/agps/MtkAgpsConfig;->simIdPref:I

    const/4 v7, 0x4

    if-ne v4, v7, :cond_1

    .line 1801
    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButtonPreferSim4:Landroid/widget/RadioButton;

    invoke-virtual {v4, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_f

    :cond_1a
    move v4, v6

    .line 1803
    goto/16 :goto_10

    :cond_1b
    move v4, v6

    .line 1804
    goto/16 :goto_11

    :cond_1c
    move v4, v6

    .line 1805
    goto/16 :goto_12

    :cond_1d
    move v4, v6

    .line 1806
    goto/16 :goto_13

    :cond_1e
    move v4, v6

    .line 1807
    goto/16 :goto_14

    :cond_1f
    move v4, v6

    .line 1808
    goto/16 :goto_15

    :cond_20
    move v4, v6

    .line 1810
    goto/16 :goto_16

    .line 1818
    :cond_21
    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps;->mLinearLayout_SUPLTwoDotZero:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1819
    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBox_SUPLTwo:Landroid/widget/CheckBox;

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_17

    .line 1827
    :cond_22
    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBox_ThirdMSISDN:Landroid/widget/CheckBox;

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_18

    .line 1871
    .restart local v2       #thirdMsisdn:[Ljava/lang/String;
    .restart local v3       #tmparea:Lcom/mediatek/common/agps/MtkAgpsTargetArea;
    :cond_23
    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButton_GeoRadiusSignNorth:Landroid/widget/RadioButton;

    invoke-virtual {v4, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_19
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 3242
    const-string v0, "LocationEM"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3243
    return-void
.end method

.method private msleep(J)V
    .locals 1
    .parameter "millisecond"

    .prologue
    .line 3248
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3252
    :goto_0
    return-void

    .line 3249
    :catch_0
    move-exception v0

    .line 3250
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method private sendAgpsExtraCmd(I)V
    .locals 3
    .parameter "type"

    .prologue
    .line 344
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 345
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "CMD"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 346
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsAgps;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    const-string v2, "EXTRA_CMD"

    invoke-interface {v1, v2, v0}, Lcom/mediatek/common/agps/MtkAgpsManager;->extraCommand(Ljava/lang/String;Landroid/os/Bundle;)I

    .line 347
    return-void
.end method

.method private sendIntent(Ljava/lang/String;II)V
    .locals 4
    .parameter "action"
    .parameter "msgType"
    .parameter "msgId"

    .prologue
    .line 1880
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1881
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1883
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "msg_type"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1884
    const-string v2, "msg_id"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1885
    const-string v2, "request_id"

    const-string v3, "test request id"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1886
    const-string v2, "client_name"

    const-string v3, "test client name"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1888
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1889
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1890
    invoke-virtual {p0, v1}, Lcom/mediatek/lbs/em/LbsAgps;->sendBroadcast(Landroid/content/Intent;)V

    .line 1891
    return-void
.end method

.method private setCdmaMMI(Z)V
    .locals 2
    .parameter "yes"

    .prologue
    .line 336
    if-eqz p1, :cond_0

    .line 337
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mLinearLayoutCdmaPage:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 341
    :goto_0
    return-void

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mLinearLayoutCdmaPage:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private setGpsMode(I)V
    .locals 4
    .parameter "mode"

    .prologue
    const/4 v2, 0x1

    .line 421
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 422
    .local v0, extras:Landroid/os/Bundle;
    if-nez p1, :cond_0

    .line 423
    const-string v1, "Hot Start"

    invoke-direct {p0, v1}, Lcom/mediatek/lbs/em/LbsAgps;->log(Ljava/lang/String;)V

    .line 424
    const-string v1, "rti"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 443
    :goto_0
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsAgps;->mLocationManager:Landroid/location/LocationManager;

    const-string v2, "gps"

    const-string v3, "delete_aiding_data"

    invoke-virtual {v1, v2, v3, v0}, Landroid/location/LocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 444
    :goto_1
    return-void

    .line 425
    :cond_0
    if-ne p1, v2, :cond_1

    .line 426
    const-string v1, "Warm Start"

    invoke-direct {p0, v1}, Lcom/mediatek/lbs/em/LbsAgps;->log(Ljava/lang/String;)V

    .line 427
    const-string v1, "ephemeris"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 428
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 429
    const-string v1, "Cold Start"

    invoke-direct {p0, v1}, Lcom/mediatek/lbs/em/LbsAgps;->log(Ljava/lang/String;)V

    .line 430
    const-string v1, "ephemeris"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 431
    const-string v1, "position"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 432
    const-string v1, "time"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 433
    const-string v1, "iono"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 434
    const-string v1, "utc"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 435
    const-string v1, "health"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 436
    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    .line 437
    const-string v1, "Full Start"

    invoke-direct {p0, v1}, Lcom/mediatek/lbs/em/LbsAgps;->log(Ljava/lang/String;)V

    .line 438
    const-string v1, "all"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 440
    :cond_3
    const-string v1, "WARNING: unknown reset type"

    invoke-direct {p0, v1}, Lcom/mediatek/lbs/em/LbsAgps;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private showSpecialWidget(Z)V
    .locals 6
    .parameter "enable"

    .prologue
    const/4 v5, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 477
    if-eqz p1, :cond_1

    .line 478
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsAgps;->mLinearLayoutTest:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 479
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxEnableNiTimer:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 481
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButtonPreferSim2:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 482
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButtonPreferSim3:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 483
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButtonPreferSim4:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 484
    invoke-direct {p0, v5}, Lcom/mediatek/lbs/em/LbsAgps;->setCdmaMMI(Z)V

    .line 487
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButton_Periodic:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 488
    invoke-direct {p0, v5}, Lcom/mediatek/lbs/em/LbsAgps;->enablePeriodicWidget(Z)V

    .line 492
    :goto_0
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewProperty:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 523
    :goto_1
    return-void

    .line 490
    :cond_0
    invoke-direct {p0, v3}, Lcom/mediatek/lbs/em/LbsAgps;->enablePeriodicWidget(Z)V

    goto :goto_0

    .line 494
    :cond_1
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsAgps;->mLinearLayoutTest:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 495
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxEnableNiTimer:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 497
    invoke-direct {p0}, Lcom/mediatek/lbs/em/LbsAgps;->getTelephonyMode()Lcom/mediatek/lbs/em/LbsAgps$TELEPHONE_MODE_LIST;

    move-result-object v1

    sget-object v2, Lcom/mediatek/lbs/em/LbsAgps$TELEPHONE_MODE_LIST;->CDMA:Lcom/mediatek/lbs/em/LbsAgps$TELEPHONE_MODE_LIST;

    if-ne v1, v2, :cond_5

    .line 498
    invoke-direct {p0, v5}, Lcom/mediatek/lbs/em/LbsAgps;->setCdmaMMI(Z)V

    .line 503
    :goto_2
    invoke-direct {p0}, Lcom/mediatek/lbs/em/LbsAgps;->getSimCount()I

    move-result v0

    .line 504
    .local v0, simCount:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "simCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/lbs/em/LbsAgps;->log(Ljava/lang/String;)V

    .line 505
    const/4 v1, 0x4

    if-ge v0, v1, :cond_2

    .line 506
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButtonPreferSim4:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 508
    :cond_2
    const/4 v1, 0x3

    if-ge v0, v1, :cond_3

    .line 509
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButtonPreferSim3:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 511
    :cond_3
    const/4 v1, 0x2

    if-ge v0, v1, :cond_4

    .line 512
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButtonPreferSim2:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 516
    :cond_4
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsAgps;->mRadioButton_Periodic:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 517
    invoke-direct {p0, v5}, Lcom/mediatek/lbs/em/LbsAgps;->enablePeriodicWidget(Z)V

    .line 521
    :goto_3
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewProperty:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 500
    .end local v0           #simCount:I
    :cond_5
    invoke-direct {p0, v3}, Lcom/mediatek/lbs/em/LbsAgps;->setCdmaMMI(Z)V

    goto :goto_2

    .line 519
    .restart local v0       #simCount:I
    :cond_6
    invoke-direct {p0, v3}, Lcom/mediatek/lbs/em/LbsAgps;->enablePeriodicWidget(Z)V

    goto :goto_3
.end method

.method private switchDebugMode()V
    .locals 5

    .prologue
    .line 448
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/data/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/mediatek/lbs/em/LbsAgps;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/show"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 449
    .local v1, file:Ljava/io/File;
    const/4 v2, 0x0

    .line 450
    .local v2, ret:Z
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 451
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    .line 452
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/lbs/em/LbsAgps;->log(Ljava/lang/String;)V

    .line 453
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/mediatek/lbs/em/LbsAgps;->mDebugMode:Z

    .line 463
    :goto_0
    return-void

    .line 456
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v2

    .line 457
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createNewFile ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/lbs/em/LbsAgps;->log(Ljava/lang/String;)V

    .line 458
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/mediatek/lbs/em/LbsAgps;->mDebugMode:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 459
    :catch_0
    move-exception v0

    .line 460
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public connectionTest(Ljava/lang/String;I)V
    .locals 3
    .parameter "ip"
    .parameter "port"

    .prologue
    const/4 v2, 0x0

    .line 1652
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewSlpTestResult:Landroid/widget/TextView;

    const-string v1, "Testing"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1653
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewSlpTestResult:Landroid/widget/TextView;

    const/16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1654
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButtonSlpTest:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1655
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButtonSlpTemplate:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1656
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButtonSlpAddr:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1657
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mButtonSlpPort:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1659
    new-instance v0, Lcom/mediatek/lbs/em/LbsAgps$103;

    invoke-direct {v0, p0, p1, p2}, Lcom/mediatek/lbs/em/LbsAgps$103;-><init>(Lcom/mediatek/lbs/em/LbsAgps;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/mediatek/lbs/em/LbsAgps$103;->start()V

    .line 1686
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 274
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 275
    const/high16 v6, 0x7f03

    invoke-virtual {p0, v6}, Lcom/mediatek/lbs/em/LbsAgps;->setContentView(I)V

    .line 277
    new-instance v6, Lcom/mediatek/common/agps/MtkAgpsProfileManager;

    invoke-direct {v6}, Lcom/mediatek/common/agps/MtkAgpsProfileManager;-><init>()V

    iput-object v6, p0, Lcom/mediatek/lbs/em/LbsAgps;->mProfileManager:Lcom/mediatek/common/agps/MtkAgpsProfileManager;

    .line 278
    iget-object v6, p0, Lcom/mediatek/lbs/em/LbsAgps;->mProfileManager:Lcom/mediatek/common/agps/MtkAgpsProfileManager;

    const-string v7, "/etc/agps_profiles_conf.xml"

    invoke-virtual {v6, v7}, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->updateAgpsProfile(Ljava/lang/String;)V

    .line 279
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mProfileManager="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/lbs/em/LbsAgps;->mProfileManager:Lcom/mediatek/common/agps/MtkAgpsProfileManager;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/lbs/em/LbsAgps;->log(Ljava/lang/String;)V

    .line 281
    const-string v6, "mtk-agps"

    invoke-virtual {p0, v6}, Lcom/mediatek/lbs/em/LbsAgps;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/common/agps/MtkAgpsManager;

    iput-object v6, p0, Lcom/mediatek/lbs/em/LbsAgps;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    .line 282
    iget-object v6, p0, Lcom/mediatek/lbs/em/LbsAgps;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    if-nez v6, :cond_0

    .line 283
    const-string v6, "ERR: getSystemService MtkAgpsManager failed"

    invoke-direct {p0, v6}, Lcom/mediatek/lbs/em/LbsAgps;->log(Ljava/lang/String;)V

    .line 333
    :goto_0
    return-void

    .line 287
    :cond_0
    const-string v6, "location"

    invoke-virtual {p0, v6}, Lcom/mediatek/lbs/em/LbsAgps;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/location/LocationManager;

    iput-object v6, p0, Lcom/mediatek/lbs/em/LbsAgps;->mLocationManager:Landroid/location/LocationManager;

    .line 288
    iget-object v6, p0, Lcom/mediatek/lbs/em/LbsAgps;->mLocationManager:Landroid/location/LocationManager;

    if-nez v6, :cond_1

    .line 289
    const-string v6, "ERR: mLocationManager is null"

    invoke-direct {p0, v6}, Lcom/mediatek/lbs/em/LbsAgps;->log(Ljava/lang/String;)V

    .line 293
    :cond_1
    iget-object v6, p0, Lcom/mediatek/lbs/em/LbsAgps;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    invoke-interface {v6}, Lcom/mediatek/common/agps/MtkAgpsManager;->enable()V

    .line 294
    iget-object v6, p0, Lcom/mediatek/lbs/em/LbsAgps;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    invoke-interface {v6}, Lcom/mediatek/common/agps/MtkAgpsManager;->getConfig()Lcom/mediatek/common/agps/MtkAgpsConfig;

    move-result-object v1

    .line 295
    .local v1, config:Lcom/mediatek/common/agps/MtkAgpsConfig;
    iput v8, v1, Lcom/mediatek/common/agps/MtkAgpsConfig;->emEnable:I

    .line 296
    iput v8, v1, Lcom/mediatek/common/agps/MtkAgpsConfig;->niEnable:I

    .line 297
    iget-object v6, p0, Lcom/mediatek/lbs/em/LbsAgps;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    invoke-interface {v6, v1}, Lcom/mediatek/common/agps/MtkAgpsManager;->setConfig(Lcom/mediatek/common/agps/MtkAgpsConfig;)V

    .line 299
    invoke-direct {p0}, Lcom/mediatek/lbs/em/LbsAgps;->initWidget()V

    .line 300
    invoke-direct {p0}, Lcom/mediatek/lbs/em/LbsAgps;->hideSpecialWidget()Z

    move-result v0

    .line 302
    .local v0, bOpenHided:Z
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 303
    .local v3, intentFilter:Landroid/content/IntentFilter;
    const-string v6, "com.mediatek.agps.AGPS_DIALOG_MESSAGE"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 304
    iget-object v6, p0, Lcom/mediatek/lbs/em/LbsAgps;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v3}, Lcom/mediatek/lbs/em/LbsAgps;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 307
    new-instance v2, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/data/data/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/mediatek/lbs/em/LbsAgps;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/show"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 308
    .local v2, file:Ljava/io/File;
    const/4 v5, 0x0

    .line 309
    .local v5, ret:Z
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 310
    iput-boolean v8, p0, Lcom/mediatek/lbs/em/LbsAgps;->mDebugMode:Z

    .line 316
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "gsm.3gswitch="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "gsm.3gswitch"

    invoke-direct {p0, v7}, Lcom/mediatek/lbs/em/LbsAgps;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "persist.gemini.sim_num="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "persist.gemini.sim_num"

    invoke-direct {p0, v7}, Lcom/mediatek/lbs/em/LbsAgps;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ril.telephony.mode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ril.telephony.mode"

    invoke-direct {p0, v7}, Lcom/mediatek/lbs/em/LbsAgps;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ril.first.md="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ril.first.md"

    invoke-direct {p0, v7}, Lcom/mediatek/lbs/em/LbsAgps;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ril.external.md="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ril.external.md"

    invoke-direct {p0, v7}, Lcom/mediatek/lbs/em/LbsAgps;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ro.mediatek.gemini_support="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ro.mediatek.gemini_support"

    invoke-direct {p0, v7}, Lcom/mediatek/lbs/em/LbsAgps;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 324
    .local v4, property:Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/mediatek/lbs/em/LbsAgps;->log(Ljava/lang/String;)V

    .line 325
    iget-object v6, p0, Lcom/mediatek/lbs/em/LbsAgps;->mTextViewProperty:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Telephony Mode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/mediatek/lbs/em/LbsAgps;->getTelephonyMode()Lcom/mediatek/lbs/em/LbsAgps$TELEPHONE_MODE_LIST;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/lbs/em/LbsAgps;->log(Ljava/lang/String;)V

    .line 328
    invoke-direct {p0}, Lcom/mediatek/lbs/em/LbsAgps;->getTelephonyMode()Lcom/mediatek/lbs/em/LbsAgps$TELEPHONE_MODE_LIST;

    move-result-object v6

    sget-object v7, Lcom/mediatek/lbs/em/LbsAgps$TELEPHONE_MODE_LIST;->CDMA:Lcom/mediatek/lbs/em/LbsAgps$TELEPHONE_MODE_LIST;

    if-ne v6, v7, :cond_3

    .line 329
    invoke-direct {p0, v8}, Lcom/mediatek/lbs/em/LbsAgps;->setCdmaMMI(Z)V

    goto/16 :goto_0

    .line 312
    .end local v4           #property:Ljava/lang/String;
    :cond_2
    iput-boolean v9, p0, Lcom/mediatek/lbs/em/LbsAgps;->mDebugMode:Z

    goto/16 :goto_1

    .line 331
    .restart local v4       #property:Ljava/lang/String;
    :cond_3
    invoke-direct {p0, v9}, Lcom/mediatek/lbs/em/LbsAgps;->setCdmaMMI(Z)V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 3159
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 3160
    const-string v0, "onDestroy"

    invoke-direct {p0, v0}, Lcom/mediatek/lbs/em/LbsAgps;->log(Ljava/lang/String;)V

    .line 3161
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/mediatek/lbs/em/LbsAgps;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3162
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 3167
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 3168
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 3172
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 3173
    invoke-direct {p0}, Lcom/mediatek/lbs/em/LbsAgps;->loadConfigFromAgpsFramework()V

    .line 3174
    return-void
.end method

.method public showAlertDialog(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "context"
    .parameter "tilte"
    .parameter "content"

    .prologue
    .line 352
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    invoke-interface {v0}, Lcom/mediatek/common/agps/MtkAgpsManager;->getConfig()Lcom/mediatek/common/agps/MtkAgpsConfig;

    move-result-object v0

    iget v0, v0, Lcom/mediatek/common/agps/MtkAgpsConfig;->emEnable:I

    if-eqz v0, :cond_0

    .line 353
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/mediatek/lbs/em/LbsAgps$2;

    invoke-direct {v1, p0}, Lcom/mediatek/lbs/em/LbsAgps$2;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "OK"

    new-instance v2, Lcom/mediatek/lbs/em/LbsAgps$1;

    invoke-direct {v2, p0}, Lcom/mediatek/lbs/em/LbsAgps$1;-><init>(Lcom/mediatek/lbs/em/LbsAgps;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 366
    :cond_0
    return-void
.end method
