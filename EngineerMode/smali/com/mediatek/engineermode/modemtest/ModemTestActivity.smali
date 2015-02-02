.class public Lcom/mediatek/engineermode/modemtest/ModemTestActivity;
.super Landroid/app/Activity;
.source "ModemTestActivity.java"


# static fields
.field private static final ATTACH_MODE_ALWAYS:I = 0x1

.field private static final ATTACH_MODE_NOT_SPECIFY:I = -0x1

.field private static final CMD_LENGTH:I = 0x6

.field private static final DOCOMO_OPTION:I = 0x80

.field private static final EVENT_QUERY_PREFERRED_TYPE_DONE:I = 0x3e8

.field private static final EVENT_SET_PREFERRED_TYPE_DONE:I = 0x3e9

.field private static final IPO_DISABLE:I = 0x0

.field private static final IPO_ENABLE:I = 0x1

.field private static final MODEM_CTA:I = 0x1

.field private static final MODEM_FACTORY:I = 0x6

.field private static final MODEM_FTA:I = 0x2

.field private static final MODEM_IOT:I = 0x3

.field private static final MODEM_NONE:I = 0x0

.field private static final MODEM_OPERATOR:I = 0x5

.field private static final MODEM_QUERY:I = 0x4

.field private static final MODE_LENGTH:I = 0x3

.field private static final NETWORK_TYPE:I = 0x3

.field private static final PCH_CALL_PREFER:I = 0x1

.field private static final PCH_DATA_PREFER:I = 0x0

.field private static final PREFERENCE_GPRS:Ljava/lang/String; = "com.mtk.GPRS"

.field private static final PREF_ATTACH_MODE:Ljava/lang/String; = "ATTACH_MODE"

.field private static final PREF_ATTACH_MODE_SIM:Ljava/lang/String; = "ATTACH_MODE_SIM"

.field private static final REBOOT_DIALOG:I = 0x7d0

.field private static final SOFTBANK_OPTION:I = 0x100

.field public static final TAG:Ljava/lang/String; = "ModemTest"


# instance fields
.field private final mATCmdHander:Landroid/os/Handler;

.field private mCtaBtn:Landroid/widget/Button;

.field private mCtaOption:I

.field private mCtaOptionsArray:[Ljava/lang/String;

.field private mCurrentMode:I

.field private mFactoryBtn:Landroid/widget/Button;

.field private mFactoryOption:I

.field private mFtaBtn:Landroid/widget/Button;

.field private mFtaOption:I

.field private mFtaOptionsArray:[Ljava/lang/String;

.field private mIotBtn:Landroid/widget/Button;

.field private mIotOption:I

.field private mIotOptionsArray:[Ljava/lang/String;

.field private mModemFlag:Z

.field private mNoneBtn:Landroid/widget/Button;

.field private mOperatorBtn:Landroid/widget/Button;

.field private mOperatorOption:I

.field private mOperatorOptionsArray:[Ljava/lang/String;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 103
    iput v1, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mCtaOption:I

    .line 104
    iput v1, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mIotOption:I

    .line 105
    iput v1, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mFtaOption:I

    .line 106
    iput v1, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mOperatorOption:I

    .line 107
    iput v1, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mFactoryOption:I

    .line 121
    iput v1, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mCurrentMode:I

    .line 123
    new-instance v0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$1;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$1;-><init>(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mATCmdHander:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;[Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->handleQuery([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mModemFlag:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mFtaOption:I

    return v0
.end method

.method static synthetic access$1002(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput p1, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mFtaOption:I

    return p1
.end method

.method static synthetic access$102(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mModemFlag:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->enableIPO(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mIotOption:I

    return v0
.end method

.method static synthetic access$1202(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput p1, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mIotOption:I

    return p1
.end method

.method static synthetic access$1300(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mOperatorOption:I

    return v0
.end method

.method static synthetic access$1302(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput p1, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mOperatorOption:I

    return p1
.end method

.method static synthetic access$1400(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->attachOrDetachGprs()V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->disableAllButton()V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->sendATCommad(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mCurrentMode:I

    return v0
.end method

.method static synthetic access$500(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->setGprsTransferType(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->writePreferred(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mATCmdHander:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$900(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mCtaOption:I

    return v0
.end method

.method static synthetic access$902(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput p1, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mCtaOption:I

    return p1
.end method

.method private attachOrDetachGprs()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 691
    iget v3, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mOperatorOption:I

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_0

    iget v3, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mOperatorOption:I

    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_1

    .line 692
    :cond_0
    const-string v3, "ModemTest"

    const-string v4, "Attach GPRS for DoCoMo/Softband"

    invoke-static {v3, v4}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    const-string v3, "persist.radio.gprs.attach.type"

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    new-array v0, v7, [Ljava/lang/String;

    const-string v3, "AT+EGTYPE=1,1"

    aput-object v3, v0, v5

    const-string v3, ""

    aput-object v3, v0, v6

    .line 696
    .local v0, cmdStr:[Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3, v0, v8}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 698
    const-string v3, "com.mtk.GPRS"

    invoke-virtual {p0, v3, v5}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 699
    .local v2, preference:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 700
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "ATTACH_MODE"

    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 712
    :goto_0
    return-void

    .line 702
    .end local v0           #cmdStr:[Ljava/lang/String;
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #preference:Landroid/content/SharedPreferences;
    :cond_1
    const-string v3, "ModemTest"

    const-string v4, "Dettach GPRS for DoCoMo/Softband"

    invoke-static {v3, v4}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    const-string v3, "persist.radio.gprs.attach.type"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    new-array v0, v7, [Ljava/lang/String;

    const-string v3, "AT+EGTYPE=0,1"

    aput-object v3, v0, v5

    const-string v3, ""

    aput-object v3, v0, v6

    .line 706
    .restart local v0       #cmdStr:[Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3, v0, v8}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 708
    const-string v3, "com.mtk.GPRS"

    invoke-virtual {p0, v3, v5}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 709
    .restart local v2       #preference:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 710
    .restart local v1       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "ATTACH_MODE"

    const/4 v4, -0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method private checkNetworkType()V
    .locals 3

    .prologue
    .line 366
    const-string v0, "ModemTest"

    const-string v1, "TcheckNetworkType"

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mATCmdHander:Landroid/os/Handler;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 369
    return-void
.end method

.method private disableAllButton()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 490
    iget-object v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mNoneBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 491
    iget-object v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mFactoryBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 492
    iget-object v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mCtaBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 493
    iget-object v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mFtaBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 494
    iget-object v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mIotBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 495
    iget-object v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mOperatorBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 496
    const/16 v0, 0x7d0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    .line 497
    return-void
.end method

.method private enableIPO(Z)V
    .locals 3
    .parameter "value"

    .prologue
    .line 715
    const-string v1, "ModemTest"

    if-eqz p1, :cond_0

    const-string v0, "enableIOP(true)"

    :goto_0
    invoke-static {v1, v0}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "ipo_setting"

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 718
    return-void

    .line 715
    :cond_0
    const-string v0, "enableIPO(false)"

    goto :goto_0

    .line 716
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private handleQuery([Ljava/lang/String;)V
    .locals 21
    .parameter "data"

    .prologue
    .line 380
    if-nez p1, :cond_1

    .line 381
    const-string v18, "The returned data is wrong."

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->show()V

    .line 487
    :cond_0
    :goto_0
    return-void

    .line 386
    :cond_1
    const-string v18, "ModemTest"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "data length is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    const/4 v6, 0x0

    .line 388
    .local v6, i:I
    move-object/from16 v3, p1

    .local v3, arr$:[Ljava/lang/String;
    array-length v10, v3

    .local v10, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_1
    if-ge v7, v10, :cond_3

    aget-object v13, v3, v7

    .line 389
    .local v13, str:Ljava/lang/String;
    if-eqz v13, :cond_2

    .line 390
    const-string v18, "ModemTest"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "data["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "] is : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 388
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 395
    .end local v13           #str:Ljava/lang/String;
    :cond_3
    const/16 v18, 0x0

    aget-object v18, p1, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0x6

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_10

    .line 396
    const/16 v18, 0x0

    aget-object v18, p1, v18

    const/16 v19, 0x7

    const/16 v20, 0x0

    aget-object v20, p1, v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 397
    .local v11, mode:Ljava/lang/String;
    const-string v18, "ModemTest"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "mode is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_f

    .line 399
    const/16 v18, 0x0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 400
    .local v15, subMode:Ljava/lang/String;
    const/16 v18, 0x2

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 401
    .local v14, subCtaMode:Ljava/lang/String;
    const-string v18, "ModemTest"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "subMode is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    const-string v18, "ModemTest"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "subCtaMode is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mCurrentMode:I

    .line 404
    const-string v18, "0"

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const-string v19, "The current mode is none"

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 406
    :cond_4
    const-string v18, "1"

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const-string v19, "The current mode is Integrity Off"

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 408
    :cond_5
    const-string v18, "2"

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const-string v19, "The current mode is FTA:"

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 411
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mFtaOptionsArray:[Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v5, v0

    .line 412
    .local v5, ftaLength:I
    const-string v18, "ModemTest"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "ftaLength is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 414
    .local v17, val:I
    const-string v18, "ModemTest"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "val is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    const-string v16, "The current mode is FTA: "

    .line 416
    .local v16, text:Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, j:I
    :goto_2
    if-ge v9, v5, :cond_7

    .line 417
    const-string v18, "ModemTest"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "j ==== "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    const-string v18, "ModemTest"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "(val & (1 << j)) is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x1

    shl-int v20, v20, v9

    and-int v20, v20, v17

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    const/16 v18, 0x1

    shl-int v18, v18, v9

    and-int v18, v18, v17

    if-eqz v18, :cond_6

    .line 421
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mFtaOptionsArray:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, v9

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ","

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 416
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 425
    :cond_7
    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 427
    .end local v5           #ftaLength:I
    .end local v9           #j:I
    .end local v16           #text:Ljava/lang/String;
    .end local v17           #val:I
    :catch_0
    move-exception v4

    .line 428
    .local v4, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 429
    const-string v18, "ModemTest"

    const-string v19, "Exception when transfer subFtaMode"

    invoke-static/range {v18 .. v19}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 431
    .end local v4           #e:Ljava/lang/NumberFormatException;
    :cond_8
    const-string v18, "3"

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const-string v19, "The current mode is IOT:"

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 434
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mIotOptionsArray:[Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v8, v0

    .line 435
    .local v8, iotLength:I
    const-string v18, "ModemTest"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "iotLength is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 437
    .restart local v17       #val:I
    const-string v18, "ModemTest"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "val is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    const-string v16, "The current mode is IOT: "

    .line 439
    .restart local v16       #text:Ljava/lang/String;
    const/4 v9, 0x0

    .restart local v9       #j:I
    :goto_3
    if-ge v9, v8, :cond_a

    .line 440
    const-string v18, "ModemTest"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "j ==== "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    const-string v18, "ModemTest"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "(val & (1 << j)) is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x1

    shl-int v20, v20, v9

    and-int v20, v20, v17

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    const/16 v18, 0x1

    shl-int v18, v18, v9

    and-int v18, v18, v17

    if-eqz v18, :cond_9

    .line 444
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mIotOptionsArray:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, v9

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ","

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 439
    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 448
    :cond_a
    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 450
    .end local v8           #iotLength:I
    .end local v9           #j:I
    .end local v16           #text:Ljava/lang/String;
    .end local v17           #val:I
    :catch_1
    move-exception v4

    .line 451
    .restart local v4       #e:Ljava/lang/NumberFormatException;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 452
    const-string v18, "ModemTest"

    const-string v19, "Exception when transfer subIotMode"

    invoke-static/range {v18 .. v19}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 454
    .end local v4           #e:Ljava/lang/NumberFormatException;
    :cond_b
    const-string v18, "4"

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_e

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const-string v19, "The current mode is Operator."

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 457
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mOperatorOptionsArray:[Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v12, v0

    .line 458
    .local v12, operatorLength:I
    const-string v18, "ModemTest"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "operatorLength is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 460
    .restart local v17       #val:I
    const-string v18, "ModemTest"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "val is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    const-string v16, "The current mode is Operator: "

    .line 462
    .restart local v16       #text:Ljava/lang/String;
    const/4 v9, 0x0

    .restart local v9       #j:I
    :goto_4
    if-ge v9, v12, :cond_d

    .line 463
    const-string v18, "ModemTest"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "j ==== "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    const-string v18, "ModemTest"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "(val & (1 << j)) is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x1

    shl-int v20, v20, v9

    and-int v20, v20, v17

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    const/16 v18, 0x1

    shl-int v18, v18, v9

    and-int v18, v18, v17

    if-eqz v18, :cond_c

    .line 467
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mOperatorOptionsArray:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, v9

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ","

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 462
    :cond_c
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 472
    :cond_d
    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 474
    .end local v9           #j:I
    .end local v12           #operatorLength:I
    .end local v16           #text:Ljava/lang/String;
    .end local v17           #val:I
    :catch_2
    move-exception v4

    .line 475
    .restart local v4       #e:Ljava/lang/NumberFormatException;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 476
    const-string v18, "ModemTest"

    const-string v19, "Exception when transfer subFtaMode"

    invoke-static/range {v18 .. v19}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 478
    .end local v4           #e:Ljava/lang/NumberFormatException;
    :cond_e
    const-string v18, "5"

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const-string v19, "The current mode is Factory."

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 482
    .end local v14           #subCtaMode:Ljava/lang/String;
    .end local v15           #subMode:Ljava/lang/String;
    :cond_f
    const-string v18, "ModemTest"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "mode len is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 485
    .end local v11           #mode:Ljava/lang/String;
    :cond_10
    const-string v18, "ModemTest"

    const-string v19, "The data returned is not right."

    invoke-static/range {v18 .. v19}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private sendATCommad(Ljava/lang/String;I)V
    .locals 4
    .parameter "str"
    .parameter "message"

    .prologue
    .line 372
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    .line 373
    .local v0, cmd:[Ljava/lang/String;
    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AT+EPCT="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 374
    const/4 v1, 0x1

    const-string v2, ""

    aput-object v2, v0, v1

    .line 375
    iget-object v1, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mATCmdHander:Landroid/os/Handler;

    invoke-virtual {v2, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 377
    return-void
.end method

.method private setGprsTransferType(I)V
    .locals 4
    .parameter "type"

    .prologue
    .line 722
    :try_start_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 723
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "gprs_transfer_setting"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 725
    if-eqz v1, :cond_0

    .line 726
    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telephony/ITelephony;->setGprsTransferTypeGemini(II)V

    .line 727
    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telephony/ITelephony;->setGprsTransferTypeGemini(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 737
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return-void

    .line 734
    :catch_0
    move-exception v0

    .line 735
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "ModemTest"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private writePreferred(I)V
    .locals 4
    .parameter "type"

    .prologue
    .line 683
    const-string v2, "RATMode"

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 685
    .local v1, sh:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 686
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "ModeType"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 687
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 688
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 251
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 252
    const v2, 0x7f03005b

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(I)V

    .line 254
    new-instance v1, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$2;

    invoke-direct {v1, p0}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$2;-><init>(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;)V

    .line 320
    .local v1, listener:Landroid/view/View$OnClickListener;
    const v2, 0x7f0b02f0

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mTextView:Landroid/widget/TextView;

    .line 321
    const v2, 0x7f0b02f1

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mNoneBtn:Landroid/widget/Button;

    .line 322
    const v2, 0x7f0b02f6

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mFactoryBtn:Landroid/widget/Button;

    .line 323
    iget-object v2, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mFactoryBtn:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 324
    const v2, 0x7f0b02f2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mCtaBtn:Landroid/widget/Button;

    .line 325
    iget-object v2, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mCtaBtn:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    const v2, 0x7f0b02f3

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mFtaBtn:Landroid/widget/Button;

    .line 328
    const v2, 0x7f0b02f4

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mIotBtn:Landroid/widget/Button;

    .line 329
    const v2, 0x7f0b02f5

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mOperatorBtn:Landroid/widget/Button;

    .line 330
    iget-object v2, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mNoneBtn:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    iget-object v2, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mFtaBtn:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 332
    iget-object v2, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mIotBtn:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    iget-object v2, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mOperatorBtn:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    iget-object v2, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mTextView:Landroid/widget/TextView;

    const-string v3, "The current mode is unknown"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06001a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mCtaOptionsArray:[Ljava/lang/String;

    .line 337
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06001b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mFtaOptionsArray:[Ljava/lang/String;

    .line 339
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06001c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mIotOptionsArray:[Ljava/lang/String;

    .line 341
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06001e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mOperatorOptionsArray:[Ljava/lang/String;

    .line 344
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 347
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/String;

    .line 348
    .local v0, cmd:[Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "AT+EPCT?"

    aput-object v3, v0, v2

    .line 349
    const/4 v2, 0x1

    const-string v3, "+EPCT:"

    aput-object v3, v0, v2

    .line 350
    iget-object v2, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v3, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mATCmdHander:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 352
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    const/4 v0, 0x0

    const/16 v2, 0x9

    .line 501
    sparse-switch p1, :sswitch_data_0

    .line 679
    :goto_0
    return-object v0

    .line 503
    :sswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "MODEM TEST"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Please reboot the phone!"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "OK"

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 507
    :sswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "MODEM TEST"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f06001a

    new-array v2, v2, [Z

    fill-array-data v2, :array_0

    new-instance v3, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$5;

    invoke-direct {v3, p0}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$5;-><init>(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Send"

    new-instance v2, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$4;

    invoke-direct {v2, p0}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$4;-><init>(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Cancel"

    new-instance v2, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$3;

    invoke-direct {v2, p0}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$3;-><init>(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 548
    :sswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "MODEM TEST"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f06001b

    new-array v2, v2, [Z

    fill-array-data v2, :array_1

    new-instance v3, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$8;

    invoke-direct {v3, p0}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$8;-><init>(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Send"

    new-instance v2, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$7;

    invoke-direct {v2, p0}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$7;-><init>(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Cancel"

    new-instance v2, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$6;

    invoke-direct {v2, p0}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$6;-><init>(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 591
    :sswitch_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "MODEM TEST"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f06001c

    new-array v2, v2, [Z

    fill-array-data v2, :array_2

    new-instance v3, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$11;

    invoke-direct {v3, p0}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$11;-><init>(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Send"

    new-instance v2, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$10;

    invoke-direct {v2, p0}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$10;-><init>(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Cancel"

    new-instance v2, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$9;

    invoke-direct {v2, p0}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$9;-><init>(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 632
    :sswitch_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "MODEM TEST"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f06001e

    const/16 v2, 0xc

    new-array v2, v2, [Z

    fill-array-data v2, :array_3

    new-instance v3, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$14;

    invoke-direct {v3, p0}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$14;-><init>(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Send"

    new-instance v2, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$13;

    invoke-direct {v2, p0}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$13;-><init>(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Cancel"

    new-instance v2, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$12;

    invoke-direct {v2, p0}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$12;-><init>(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 501
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5 -> :sswitch_4
        0x7d0 -> :sswitch_0
    .end sparse-switch

    .line 507
    :array_0
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 548
    nop

    :array_1
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 591
    nop

    :array_2
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 632
    nop

    :array_3
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method protected onResume()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 356
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 357
    iput v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mCtaOption:I

    .line 358
    iput v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mIotOption:I

    .line 359
    iput v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mFtaOption:I

    .line 360
    iput v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mOperatorOption:I

    .line 361
    iput v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mFactoryOption:I

    .line 362
    invoke-direct {p0}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->checkNetworkType()V

    .line 363
    return-void
.end method
