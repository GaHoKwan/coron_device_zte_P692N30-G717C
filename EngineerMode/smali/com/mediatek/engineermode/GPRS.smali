.class public Lcom/mediatek/engineermode/GPRS;
.super Landroid/app/Activity;
.source "GPRS.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final ATTACH_MODE_ALWAYS:I = 0x1

.field public static final ATTACH_MODE_NOT_SPECIFY:I = -0x1

.field public static final ATTACH_MODE_WHEN_NEEDED:I = 0x0

.field private static final EVENT_GPRS_ATTACHED:I = 0x1

.field private static final EVENT_GPRS_ATTACH_TYPE:I = 0x9

.field private static final EVENT_GPRS_DETACHED:I = 0x2

.field private static final EVENT_GPRS_FD:I = 0x8

.field private static final EVENT_GPRS_INTERNAL_AT:I = 0x6

.field private static final EVENT_PDP_ACTIVATE:I = 0x3

.field private static final EVENT_PDP_DEACTIVATE:I = 0x4

.field private static final EVENT_SEND_DATA:I = 0x5

.field private static final EVENT_WRITE_IMEI:I = 0x7

.field static final LOG_TAG:Ljava/lang/String; = "GPRS EN"

.field private static final PDP_CONTEXT_MAX:I = 0xf

.field public static final PREFERENCE_GPRS:Ljava/lang/String; = "com.mtk.GPRS"

.field public static final PREF_ATTACH_MODE:Ljava/lang/String; = "ATTACH_MODE"

.field public static final PREF_ATTACH_MODE_SIM:Ljava/lang/String; = "ATTACH_MODE_SIM"

.field private static final SCRI_DEFAULT_TIMEOUT:I = 0x14


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mAlive:Z

.field private mBtnActivate:Landroid/widget/Button;

.field private mBtnAttached:Landroid/widget/Button;

.field private mBtnAttachedContinue:Landroid/widget/Button;

.field private mBtnDeactivate:Landroid/widget/Button;

.field private mBtnDetached:Landroid/widget/Button;

.field private mBtnDetachedContinue:Landroid/widget/Button;

.field private mBtnImei:Landroid/widget/Button;

.field private mBtnNotSpecify:Landroid/widget/Button;

.field private mBtnSendData:Landroid/widget/Button;

.field private mBtnSim1:Landroid/widget/Button;

.field private mBtnSim2:Landroid/widget/Button;

.field mContextCmdStringArray:[Ljava/lang/String;

.field private mEditDataLen:Landroid/widget/EditText;

.field private mEditImeiValue:Landroid/widget/EditText;

.field private mFlag:Z

.field private mGprstAttachSelect:Landroid/widget/RadioGroup;

.field private mPDPContextIndex:I

.field private mPDPSelect:I

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mRaBtnSIM1Enabled:Landroid/widget/RadioButton;

.field private mRaBtnSIM2Enabled:Landroid/widget/RadioButton;

.field private mRaGpDefSIMSelect:Landroid/widget/RadioGroup;

.field private mRaGpPDPSelect:Landroid/widget/RadioGroup;

.field private mRaGpUsageSelect:Landroid/widget/RadioGroup;

.field private mResponseHander:Landroid/os/Handler;

.field private mSPinnerPDPContext:Landroid/widget/Spinner;

.field private mSpinnerAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTextDefSIMSelect:Landroid/widget/TextView;

.field private mUsageSelect:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 73
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 75
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "3,128,128,0,0,1,1500,\"1e3\",\"4e3\",1,0,0"

    aput-object v1, v0, v3

    const-string v1, "3,128,128,0,0,1,1500,\"1e4\",\"1e5\",0,0,0"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "3,128,128,0,0,1,1500,\"1e3\",\"4e3\",1,0,0"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "3,256,256,0,0,1,1500,\"1e4\",\"1e5\",0,0,0"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "3,128,128,0,0,1,1500,\"1e4\",\"1e5\",0,0,0"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "3,256,256,0,0,1,1500,\"1e3\",\"4e3\",1,0,0"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "3,256,256,0,0,1,1500,\"1e3\",\"4e3\",1,0,0"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "3,128,128,0,0,1,1500,\"1e4\",\"1e5\",0,0,0"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "3,128,128,0,0,1,1500,\"1e4\",\"1e5\",0,0,0"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "3,128,128,0,0,1,1500,\"1e3\",\"4e3\",1,0,0"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "3,128,128,0,0,1,1500,\"1e6\",\"1e5\",0,0,0"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "3,128,128,0,0,1,1500,\"1e6\",\"1e5\",0,0,0"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "3,128,128,0,0,1,1500,\"1e6\",\"1e5\",0,0,0"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "3,128,128,0,0,1,1500,\"1e4\",\"1e5\",0,0,0"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "3,256,256,0,0,1,1500,\"1e3\",\"4e3\",1,0,0"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "3,512,512,0,0,1,1500,\"1e4\",\"1e5\",0,0,0"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/mediatek/engineermode/GPRS;->mContextCmdStringArray:[Ljava/lang/String;

    .line 105
    iput-boolean v4, p0, Lcom/mediatek/engineermode/GPRS;->mFlag:Z

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/engineermode/GPRS;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 136
    iput v3, p0, Lcom/mediatek/engineermode/GPRS;->mPDPSelect:I

    .line 137
    iput v3, p0, Lcom/mediatek/engineermode/GPRS;->mUsageSelect:I

    .line 138
    iput v3, p0, Lcom/mediatek/engineermode/GPRS;->mPDPContextIndex:I

    .line 142
    iput-boolean v3, p0, Lcom/mediatek/engineermode/GPRS;->mAlive:Z

    .line 586
    new-instance v0, Lcom/mediatek/engineermode/GPRS$6;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/GPRS$6;-><init>(Lcom/mediatek/engineermode/GPRS;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/GPRS;->mResponseHander:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Lcom/mediatek/engineermode/GPRS;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput p1, p0, Lcom/mediatek/engineermode/GPRS;->mPDPContextIndex:I

    return p1
.end method

.method static synthetic access$100(Lcom/mediatek/engineermode/GPRS;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/engineermode/GPRS;->mResponseHander:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/engineermode/GPRS;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/engineermode/GPRS;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$302(Lcom/mediatek/engineermode/GPRS;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput p1, p0, Lcom/mediatek/engineermode/GPRS;->mPDPSelect:I

    return p1
.end method

.method static synthetic access$400(Lcom/mediatek/engineermode/GPRS;)Landroid/widget/RadioGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/engineermode/GPRS;->mRaGpUsageSelect:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method static synthetic access$502(Lcom/mediatek/engineermode/GPRS;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput p1, p0, Lcom/mediatek/engineermode/GPRS;->mUsageSelect:I

    return p1
.end method

.method static synthetic access$600(Lcom/mediatek/engineermode/GPRS;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/mediatek/engineermode/GPRS;->mAlive:Z

    return v0
.end method

.method static synthetic access$700(Lcom/mediatek/engineermode/GPRS;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/engineermode/GPRS;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mediatek/engineermode/GPRS;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/mediatek/engineermode/GPRS;->mFlag:Z

    return v0
.end method

.method static synthetic access$802(Lcom/mediatek/engineermode/GPRS;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/mediatek/engineermode/GPRS;->mFlag:Z

    return p1
.end method

.method private rebootAlert()V
    .locals 4

    .prologue
    .line 713
    new-instance v1, Lcom/mediatek/engineermode/GPRS$7;

    invoke-direct {v1, p0}, Lcom/mediatek/engineermode/GPRS$7;-><init>(Lcom/mediatek/engineermode/GPRS;)V

    .line 730
    .local v1, dialogClickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 731
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const-string v2, "Reboot?"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Yes"

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "No"

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Warning"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 734
    return-void
.end method

.method private showDefaultSim()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 697
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/engineermode/GPRS;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 698
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v0

    .line 701
    .local v0, simId:I
    if-nez v0, :cond_1

    .line 702
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS;->mBtnSim1:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 703
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS;->mBtnSim2:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 710
    :cond_0
    :goto_0
    return-void

    .line 704
    :cond_1
    if-ne v0, v2, :cond_0

    .line 705
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS;->mBtnSim1:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 706
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS;->mBtnSim2:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updateAttachModeMMI()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 737
    const-string v2, "com.mtk.GPRS"

    invoke-virtual {p0, v2, v5}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 738
    .local v1, preference:Landroid/content/SharedPreferences;
    const-string v2, "ATTACH_MODE"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 741
    .local v0, attachMode:I
    packed-switch v0, :pswitch_data_0

    .line 760
    :goto_0
    return-void

    .line 743
    :pswitch_0
    iget-object v2, p0, Lcom/mediatek/engineermode/GPRS;->mBtnAttachedContinue:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 744
    iget-object v2, p0, Lcom/mediatek/engineermode/GPRS;->mBtnDetachedContinue:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 745
    iget-object v2, p0, Lcom/mediatek/engineermode/GPRS;->mBtnNotSpecify:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 748
    :pswitch_1
    iget-object v2, p0, Lcom/mediatek/engineermode/GPRS;->mBtnAttachedContinue:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 749
    iget-object v2, p0, Lcom/mediatek/engineermode/GPRS;->mBtnDetachedContinue:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 750
    iget-object v2, p0, Lcom/mediatek/engineermode/GPRS;->mBtnNotSpecify:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 753
    :pswitch_2
    iget-object v2, p0, Lcom/mediatek/engineermode/GPRS;->mBtnAttachedContinue:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 754
    iget-object v2, p0, Lcom/mediatek/engineermode/GPRS;->mBtnDetachedContinue:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 755
    iget-object v2, p0, Lcom/mediatek/engineermode/GPRS;->mBtnNotSpecify:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 741
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 21
    .parameter "arg0"

    .prologue
    .line 391
    const-string v17, "GPRS EN"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "onClick:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mBtnImei:Landroid/widget/Button;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getId()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 394
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v12, v0, [Ljava/lang/String;

    const/16 v17, 0x0

    const-string v18, "AT+EGMR=1,"

    aput-object v18, v12, v17

    const/16 v17, 0x1

    const-string v18, ""

    aput-object v18, v12, v17

    .line 396
    .local v12, imeiString:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v15

    .line 397
    .local v15, simId:I
    if-nez v15, :cond_13

    .line 398
    const/16 v17, 0x0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "AT+EGMR=1,7,\""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mEditImeiValue:Landroid/widget/EditText;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v12, v17

    .line 409
    :cond_0
    :goto_0
    const-string v17, "GPRS EN"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "IMEI String:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x0

    aget-object v19, v12, v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mResponseHander:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x7

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v12, v1}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 414
    .end local v12           #imeiString:[Ljava/lang/String;
    .end local v15           #simId:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mBtnSim1:Landroid/widget/Button;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_3

    .line 416
    :try_start_0
    const-string v17, "phone"

    invoke-static/range {v17 .. v17}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v10

    .line 418
    .local v10, iTelephony:Lcom/android/internal/telephony/ITelephony;
    if-nez v10, :cond_2

    .line 419
    const-string v17, "GPRS EN"

    const-string v18, "clocwork worked..."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :cond_2
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v10, v0}, Lcom/android/internal/telephony/ITelephony;->setDefaultPhone(I)V

    .line 427
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/engineermode/GPRS;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 428
    const-string v17, "GPRS EN"

    const-string v18, "SIM 1"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/engineermode/GPRS;->showDefaultSim()V

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v11

    .line 431
    .local v11, imei:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mEditImeiValue:Landroid/widget/EditText;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 432
    const-string v17, "GPRS EN"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "IMEI 1: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 440
    .end local v10           #iTelephony:Lcom/android/internal/telephony/ITelephony;
    .end local v11           #imei:Ljava/lang/String;
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mBtnSim2:Landroid/widget/Button;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_5

    .line 442
    :try_start_1
    const-string v17, "phone"

    invoke-static/range {v17 .. v17}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v10

    .line 444
    .restart local v10       #iTelephony:Lcom/android/internal/telephony/ITelephony;
    if-nez v10, :cond_4

    .line 445
    const-string v17, "GPRS EN"

    const-string v18, "clocwork worked..."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :cond_4
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-interface {v10, v0}, Lcom/android/internal/telephony/ITelephony;->setDefaultPhone(I)V

    .line 449
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/engineermode/GPRS;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 450
    const-string v17, "GPRS EN"

    const-string v18, "SIM 2"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/engineermode/GPRS;->showDefaultSim()V

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v11

    .line 453
    .restart local v11       #imei:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mEditImeiValue:Landroid/widget/EditText;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 454
    const-string v17, "GPRS EN"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "IMEI 2: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 463
    .end local v10           #iTelephony:Lcom/android/internal/telephony/ITelephony;
    .end local v11           #imei:Ljava/lang/String;
    :cond_5
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mBtnAttached:Landroid/widget/Button;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getId()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 464
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v4, v0, [Ljava/lang/String;

    const/16 v17, 0x0

    const-string v18, "AT+CGATT=1"

    aput-object v18, v4, v17

    const/16 v17, 0x1

    const-string v18, ""

    aput-object v18, v4, v17

    .line 465
    .local v4, attachedAT:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mResponseHander:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v4, v1}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 469
    .end local v4           #attachedAT:[Ljava/lang/String;
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mBtnDetached:Landroid/widget/Button;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getId()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 470
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v7, v0, [Ljava/lang/String;

    const/16 v17, 0x0

    const-string v18, "AT+CGATT=0"

    aput-object v18, v7, v17

    const/16 v17, 0x1

    const-string v18, ""

    aput-object v18, v7, v17

    .line 471
    .local v7, detachedAT:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mResponseHander:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v7, v1}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 475
    .end local v7           #detachedAT:[Ljava/lang/String;
    :cond_7
    const-string v17, "com.mtk.GPRS"

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 476
    .local v13, preference:Landroid/content/SharedPreferences;
    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 478
    .local v9, editor:Landroid/content/SharedPreferences$Editor;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mBtnAttachedContinue:Landroid/widget/Button;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_14

    .line 479
    const-string v17, "persist.radio.gprs.attach.type"

    const-string v18, "1"

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v5, v0, [Ljava/lang/String;

    const/16 v17, 0x0

    const-string v18, "AT+EGTYPE=1,1"

    aput-object v18, v5, v17

    const/16 v17, 0x1

    const-string v18, ""

    aput-object v18, v5, v17

    .line 481
    .local v5, cmdStr:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mResponseHander:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x9

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v5, v1}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 484
    const-string v17, "ATTACH_MODE"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 496
    .end local v5           #cmdStr:[Ljava/lang/String;
    :cond_8
    :goto_3
    const-string v17, "ATTACH_MODE_SIM"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 497
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 498
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/engineermode/GPRS;->updateAttachModeMMI()V

    .line 500
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mBtnActivate:Landroid/widget/Button;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getId()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    .line 501
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/mediatek/engineermode/GPRS;->mFlag:Z

    .line 503
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/engineermode/GPRS;->mPDPSelect:I

    move/from16 v17, v0

    if-nez v17, :cond_9

    .line 504
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v3, v0, [Ljava/lang/String;

    const/16 v17, 0x0

    const-string v18, "AT+CGQMIN=1"

    aput-object v18, v3, v17

    const/16 v17, 0x1

    const-string v18, ""

    aput-object v18, v3, v17

    .line 505
    .local v3, activateAT:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mResponseHander:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x6

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v3, v1}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 507
    const/16 v17, 0x0

    const-string v18, "AT+CGQREQ=1"

    aput-object v18, v3, v17

    .line 508
    const/16 v17, 0x1

    const-string v18, ""

    aput-object v18, v3, v17

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mResponseHander:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x6

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v3, v1}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 511
    const/16 v17, 0x0

    const-string v18, "AT+CGDCONT=1,\"IP\",\"internet\",\"192.168.1.1\",0,0"

    aput-object v18, v3, v17

    .line 512
    const/16 v17, 0x1

    const-string v18, ""

    aput-object v18, v3, v17

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mResponseHander:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x6

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v3, v1}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 515
    const/16 v17, 0x0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "AT+CGEQREQ=1,"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mContextCmdStringArray:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/engineermode/GPRS;->mPDPContextIndex:I

    move/from16 v20, v0

    aget-object v19, v19, v20

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v3, v17

    .line 517
    const/16 v17, 0x1

    const-string v18, ""

    aput-object v18, v3, v17

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mResponseHander:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x6

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v3, v1}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 520
    const/16 v17, 0x0

    const-string v18, "AT+ACTTEST=1,1"

    aput-object v18, v3, v17

    .line 521
    const/16 v17, 0x1

    const-string v18, ""

    aput-object v18, v3, v17

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mResponseHander:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x3

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v3, v1}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 525
    .end local v3           #activateAT:[Ljava/lang/String;
    :cond_9
    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/engineermode/GPRS;->mPDPSelect:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    .line 526
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v3, v0, [Ljava/lang/String;

    const/16 v17, 0x0

    const-string v18, "AT+CGQMIN=2"

    aput-object v18, v3, v17

    const/16 v17, 0x1

    const-string v18, ""

    aput-object v18, v3, v17

    .line 527
    .restart local v3       #activateAT:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mResponseHander:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x6

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v3, v1}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 529
    const/16 v17, 0x0

    const-string v18, "AT+CGQREQ=2"

    aput-object v18, v3, v17

    .line 530
    const/16 v17, 0x1

    const-string v18, ""

    aput-object v18, v3, v17

    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mResponseHander:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x6

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v3, v1}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 533
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/engineermode/GPRS;->mUsageSelect:I

    move/from16 v17, v0

    if-nez v17, :cond_a

    .line 534
    const/16 v17, 0x0

    const-string v18, "AT+CGDCONT=2,\"IP\",\"internet\",\"192.168.1.1\",0,0"

    aput-object v18, v3, v17

    .line 536
    :cond_a
    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/engineermode/GPRS;->mUsageSelect:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    .line 537
    const/16 v17, 0x0

    const-string v18, "AT+CGDSCONT=2,1,0,0"

    aput-object v18, v3, v17

    .line 539
    :cond_b
    const/16 v17, 0x1

    const-string v18, ""

    aput-object v18, v3, v17

    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mResponseHander:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x6

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v3, v1}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 542
    const/16 v17, 0x0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "AT+CGEQREQ=2,"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mContextCmdStringArray:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/engineermode/GPRS;->mPDPContextIndex:I

    move/from16 v20, v0

    aget-object v19, v19, v20

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v3, v17

    .line 544
    const/16 v17, 0x1

    const-string v18, ""

    aput-object v18, v3, v17

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mResponseHander:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x6

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v3, v1}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 547
    const/16 v17, 0x0

    const-string v18, "AT+ACTTEST=1,2"

    aput-object v18, v3, v17

    .line 548
    const/16 v17, 0x1

    const-string v18, ""

    aput-object v18, v3, v17

    .line 549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mResponseHander:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x3

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v3, v1}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 555
    .end local v3           #activateAT:[Ljava/lang/String;
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mBtnDeactivate:Landroid/widget/Button;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getId()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_f

    .line 556
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/mediatek/engineermode/GPRS;->mFlag:Z

    .line 558
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v6, v0, [Ljava/lang/String;

    .line 559
    .local v6, deactivateAT:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/engineermode/GPRS;->mPDPSelect:I

    move/from16 v17, v0

    if-nez v17, :cond_d

    .line 560
    const/16 v17, 0x0

    const-string v18, "AT+ACTTEST=0,1"

    aput-object v18, v6, v17

    .line 562
    :cond_d
    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/engineermode/GPRS;->mPDPSelect:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    .line 563
    const/16 v17, 0x0

    const-string v18, "AT+ACTTEST=0,2"

    aput-object v18, v6, v17

    .line 565
    :cond_e
    const/16 v17, 0x1

    const-string v18, ""

    aput-object v18, v6, v17

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mResponseHander:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v6, v1}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 571
    .end local v6           #deactivateAT:[Ljava/lang/String;
    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mBtnSendData:Landroid/widget/Button;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getId()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_12

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mEditDataLen:Landroid/widget/EditText;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    .line 573
    .local v16, strDataLength:Ljava/lang/String;
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v14, v0, [Ljava/lang/String;

    .line 574
    .local v14, sendDataAT:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/engineermode/GPRS;->mPDPSelect:I

    move/from16 v17, v0

    if-nez v17, :cond_10

    .line 575
    const/16 v17, 0x0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "AT+CGSDATA="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ",1"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v14, v17

    .line 577
    :cond_10
    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/engineermode/GPRS;->mPDPSelect:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_11

    .line 578
    const/16 v17, 0x0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "AT+CGSDATA="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ",2"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v14, v17

    .line 580
    :cond_11
    const/16 v17, 0x1

    const-string v18, ""

    aput-object v18, v14, v17

    .line 581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mResponseHander:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x5

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v14, v1}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 584
    .end local v14           #sendDataAT:[Ljava/lang/String;
    .end local v16           #strDataLength:Ljava/lang/String;
    :cond_12
    return-void

    .line 400
    .end local v9           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v13           #preference:Landroid/content/SharedPreferences;
    .restart local v12       #imeiString:[Ljava/lang/String;
    .restart local v15       #simId:I
    :cond_13
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_0

    .line 401
    const/16 v17, 0x0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "AT+EGMR=1,10,\""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mEditImeiValue:Landroid/widget/EditText;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v12, v17

    goto/16 :goto_0

    .line 433
    .end local v12           #imeiString:[Ljava/lang/String;
    .end local v15           #simId:I
    :catch_0
    move-exception v8

    .line 434
    .local v8, e:Landroid/os/RemoteException;
    const-string v17, "GPRS EN"

    const-string v18, "RemoteException in ITelephony.Stub.asInterface"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 456
    .end local v8           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v8

    .line 457
    .restart local v8       #e:Landroid/os/RemoteException;
    const-string v17, "GPRS EN"

    const-string v18, "RemoteException in ITelephony.Stub.asInterface"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 485
    .end local v8           #e:Landroid/os/RemoteException;
    .restart local v9       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v13       #preference:Landroid/content/SharedPreferences;
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mBtnDetachedContinue:Landroid/widget/Button;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_15

    .line 486
    const-string v17, "persist.radio.gprs.attach.type"

    const-string v18, "0"

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v5, v0, [Ljava/lang/String;

    const/16 v17, 0x0

    const-string v18, "AT+EGTYPE=0,1"

    aput-object v18, v5, v17

    const/16 v17, 0x1

    const-string v18, ""

    aput-object v18, v5, v17

    .line 488
    .restart local v5       #cmdStr:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mResponseHander:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x9

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v5, v1}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 491
    const-string v17, "ATTACH_MODE"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_3

    .line 492
    .end local v5           #cmdStr:[Ljava/lang/String;
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mBtnNotSpecify:Landroid/widget/Button;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_8

    .line 493
    const-string v17, "ATTACH_MODE"

    const/16 v18, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_3
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x1

    .line 166
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 167
    const v4, 0x7f03003d

    invoke-virtual {p0, v4}, Landroid/app/Activity;->setContentView(I)V

    .line 169
    const-string v4, "GPRS EN"

    const-string v5, "onCreate"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iput-boolean v7, p0, Lcom/mediatek/engineermode/GPRS;->mAlive:Z

    .line 172
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 175
    new-instance v4, Landroid/widget/ArrayAdapter;

    const v5, 0x1090008

    invoke-direct {v4, p0, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mSpinnerAdapter:Landroid/widget/ArrayAdapter;

    .line 177
    iget-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mSpinnerAdapter:Landroid/widget/ArrayAdapter;

    const v5, 0x1090009

    invoke-virtual {v4, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 179
    const/4 v2, 0x1

    .local v2, i:I
    :goto_0
    const/16 v4, 0xf

    if-ge v2, v4, :cond_0

    .line 180
    iget-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mSpinnerAdapter:Landroid/widget/ArrayAdapter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PDP Context "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 179
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 182
    :cond_0
    iget-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mSpinnerAdapter:Landroid/widget/ArrayAdapter;

    const-string v5, "PDP Context 30"

    invoke-virtual {v4, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 183
    iget-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mSpinnerAdapter:Landroid/widget/ArrayAdapter;

    const-string v5, "PDP Context 31"

    invoke-virtual {v4, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 186
    const v4, 0x7f0b0192

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mBtnSim1:Landroid/widget/Button;

    .line 187
    const v4, 0x7f0b0193

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mBtnSim2:Landroid/widget/Button;

    .line 188
    iget-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mBtnSim1:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iget-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mBtnSim2:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    .line 197
    .local v3, imei:Ljava/lang/String;
    const-string v4, "GPRS EN"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Default IMEI:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const v4, 0x7f0b0194

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mEditImeiValue:Landroid/widget/EditText;

    .line 199
    iget-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mEditImeiValue:Landroid/widget/EditText;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    const v4, 0x7f0b0195

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mBtnImei:Landroid/widget/Button;

    .line 202
    iget-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mBtnImei:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    iget-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mEditImeiValue:Landroid/widget/EditText;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 206
    iget-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mBtnImei:Landroid/widget/Button;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 263
    const v4, 0x7f0b019a

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mBtnAttached:Landroid/widget/Button;

    .line 264
    const v4, 0x7f0b019b

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mBtnDetached:Landroid/widget/Button;

    .line 265
    const v4, 0x7f0b019f

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mBtnAttachedContinue:Landroid/widget/Button;

    .line 266
    const v4, 0x7f0b01a0

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mBtnDetachedContinue:Landroid/widget/Button;

    .line 267
    const v4, 0x7f0b01a1

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mBtnNotSpecify:Landroid/widget/Button;

    .line 269
    const v4, 0x7f0b01a2

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioGroup;

    iput-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mRaGpPDPSelect:Landroid/widget/RadioGroup;

    .line 270
    const v4, 0x7f0b01a6

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioGroup;

    iput-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mRaGpUsageSelect:Landroid/widget/RadioGroup;

    .line 271
    const v4, 0x7f0b01a9

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mSPinnerPDPContext:Landroid/widget/Spinner;

    .line 272
    const v4, 0x7f0b01aa

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mBtnActivate:Landroid/widget/Button;

    .line 273
    const v4, 0x7f0b01ab

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mBtnDeactivate:Landroid/widget/Button;

    .line 274
    const v4, 0x7f0b01ac

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mEditDataLen:Landroid/widget/EditText;

    .line 275
    const v4, 0x7f0b01ad

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mBtnSendData:Landroid/widget/Button;

    .line 277
    const v4, 0x7f0b019c

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioGroup;

    iput-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mGprstAttachSelect:Landroid/widget/RadioGroup;

    .line 280
    iget-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mBtnAttached:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    iget-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mBtnDetached:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    iget-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mBtnAttachedContinue:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    iget-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mBtnDetachedContinue:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    iget-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mBtnNotSpecify:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    iget-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mSPinnerPDPContext:Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/mediatek/engineermode/GPRS;->mSpinnerAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 286
    iget-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mBtnActivate:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    iget-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mBtnDeactivate:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    iget-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mBtnSendData:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    iget-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mSPinnerPDPContext:Landroid/widget/Spinner;

    new-instance v5, Lcom/mediatek/engineermode/GPRS$2;

    invoke-direct {v5, p0}, Lcom/mediatek/engineermode/GPRS$2;-><init>(Lcom/mediatek/engineermode/GPRS;)V

    invoke-virtual {v4, v5}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 306
    iget-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mGprstAttachSelect:Landroid/widget/RadioGroup;

    new-instance v5, Lcom/mediatek/engineermode/GPRS$3;

    invoke-direct {v5, p0}, Lcom/mediatek/engineermode/GPRS$3;-><init>(Lcom/mediatek/engineermode/GPRS;)V

    invoke-virtual {v4, v5}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 334
    iget-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mRaGpPDPSelect:Landroid/widget/RadioGroup;

    new-instance v5, Lcom/mediatek/engineermode/GPRS$4;

    invoke-direct {v5, p0}, Lcom/mediatek/engineermode/GPRS$4;-><init>(Lcom/mediatek/engineermode/GPRS;)V

    invoke-virtual {v4, v5}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 352
    iget-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mRaGpUsageSelect:Landroid/widget/RadioGroup;

    new-instance v5, Lcom/mediatek/engineermode/GPRS$5;

    invoke-direct {v5, p0}, Lcom/mediatek/engineermode/GPRS$5;-><init>(Lcom/mediatek/engineermode/GPRS;)V

    invoke-virtual {v4, v5}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 365
    iget-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mRaGpPDPSelect:Landroid/widget/RadioGroup;

    const v5, 0x7f0b01a3

    invoke-virtual {v4, v5}, Landroid/widget/RadioGroup;->check(I)V

    .line 367
    const-string v4, "persist.radio.gprs.attach.type"

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 370
    .local v1, gprsAttachType:I
    if-ne v1, v7, :cond_1

    .line 371
    iget-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mGprstAttachSelect:Landroid/widget/RadioGroup;

    const v5, 0x7f0b019d

    invoke-virtual {v4, v5}, Landroid/widget/RadioGroup;->check(I)V

    .line 376
    :goto_1
    invoke-direct {p0}, Lcom/mediatek/engineermode/GPRS;->showDefaultSim()V

    .line 378
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 379
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mAlertDialog:Landroid/app/AlertDialog;

    .line 380
    iget-object v5, p0, Lcom/mediatek/engineermode/GPRS;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v6, -0x1

    const-string v7, "OK"

    const/4 v4, 0x0

    check-cast v4, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v5, v6, v7, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 381
    return-void

    .line 373
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_1
    iget-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mGprstAttachSelect:Landroid/widget/RadioGroup;

    const v5, 0x7f0b019e

    invoke-virtual {v4, v5}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/engineermode/GPRS;->mAlive:Z

    .line 158
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 159
    iget-object v0, p0, Lcom/mediatek/engineermode/GPRS;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/engineermode/GPRS;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/mediatek/engineermode/GPRS;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 162
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 385
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 386
    invoke-direct {p0}, Lcom/mediatek/engineermode/GPRS;->updateAttachModeMMI()V

    .line 387
    return-void
.end method
