.class public Lcom/android/phone/ChangeIccPinScreen;
.super Landroid/app/Activity;
.source "ChangeIccPinScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/ChangeIccPinScreen$ChangeIccPinScreenBroadcastReceiver;,
        Lcom/android/phone/ChangeIccPinScreen$EntryState;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_PIN_CHANGED:I = 0x64

.field private static final GET_SIM_RETRY_EMPTY:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "Settings/PhoneGlobals"

.field private static final MAX_PIN_LENGTH:I = 0x8

.field private static final MIN_PIN_LENGTH:I = 0x4

.field private static final NO_ERROR:I = 0x0

.field private static final PIN_INVALID_LENGTH:I = 0x2

.field private static final PIN_MISMATCH:I = 0x1


# instance fields
.field private mBadPinError:Landroid/widget/TextView;

.field private mBadPukError:Landroid/widget/TextView;

.field private mButton:Landroid/widget/Button;

.field private mChangePin2:Z

.field private mClicked:Landroid/view/View$OnClickListener;

.field private mExt:Lcom/mediatek/phone/ext/SettingsExtension;

.field private mHandler:Landroid/os/Handler;

.field private mIccPUKPanel:Landroid/widget/LinearLayout;

.field private mMismatchError:Landroid/widget/TextView;

.field private mNewPin1:Landroid/widget/EditText;

.field private mNewPin1Label:Landroid/widget/TextView;

.field private mNewPin2:Landroid/widget/EditText;

.field private mNewPin2Label:Landroid/widget/TextView;

.field private mOldPINPanel:Landroid/widget/LinearLayout;

.field private mOldPin:Landroid/widget/EditText;

.field private mOldPinLabel:Landroid/widget/TextView;

.field private mPUKCode:Landroid/widget/EditText;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPinRetryLabel:Landroid/widget/TextView;

.field private mPuk2Label:Landroid/widget/TextView;

.field private mPukRetryLabel:Landroid/widget/TextView;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mSimId:I

.field private mState:Lcom/android/phone/ChangeIccPinScreen$EntryState;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 90
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 110
    new-instance v0, Lcom/android/phone/ChangeIccPinScreen$ChangeIccPinScreenBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/ChangeIccPinScreen$ChangeIccPinScreenBroadcastReceiver;-><init>(Lcom/android/phone/ChangeIccPinScreen;Lcom/android/phone/ChangeIccPinScreen$1;)V

    iput-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 135
    new-instance v0, Lcom/android/phone/ChangeIccPinScreen$1;

    invoke-direct {v0, p0}, Lcom/android/phone/ChangeIccPinScreen$1;-><init>(Lcom/android/phone/ChangeIccPinScreen;)V

    iput-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mHandler:Landroid/os/Handler;

    .line 275
    new-instance v0, Lcom/android/phone/ChangeIccPinScreen$2;

    invoke-direct {v0, p0}, Lcom/android/phone/ChangeIccPinScreen$2;-><init>(Lcom/android/phone/ChangeIccPinScreen;)V

    iput-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mClicked:Landroid/view/View$OnClickListener;

    .line 598
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/ChangeIccPinScreen;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/phone/ChangeIccPinScreen;->handleResult(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/ChangeIccPinScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mChangePin2:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/phone/ChangeIccPinScreen;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mBadPinError:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/phone/ChangeIccPinScreen;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mNewPin1:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/phone/ChangeIccPinScreen;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mNewPin2:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/phone/ChangeIccPinScreen;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/android/phone/ChangeIccPinScreen;->validateNewPin(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/phone/ChangeIccPinScreen;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/phone/ChangeIccPinScreen;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/phone/ChangeIccPinScreen;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/phone/ChangeIccPinScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/phone/ChangeIccPinScreen;->reset()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/ChangeIccPinScreen;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/ChangeIccPinScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mSimId:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/phone/ChangeIccPinScreen;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/ChangeIccPinScreen;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mOldPin:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/ChangeIccPinScreen;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mPUKCode:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/ChangeIccPinScreen;)Lcom/android/phone/ChangeIccPinScreen$EntryState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mState:Lcom/android/phone/ChangeIccPinScreen$EntryState;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/ChangeIccPinScreen;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mBadPukError:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/ChangeIccPinScreen;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mMismatchError:Landroid/widget/TextView;

    return-object v0
.end method

.method private displayPUKAlert()V
    .locals 4

    .prologue
    .line 432
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mExt:Lcom/mediatek/phone/ext/SettingsExtension;

    const v2, 0x7f080286

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/ChangeIccPinScreen;->mSimId:I

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/phone/ext/SettingsExtension;->replaceSimBySlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 433
    .local v0, msg:Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080170

    new-instance v3, Lcom/android/phone/ChangeIccPinScreen$3;

    invoke-direct {v3, p0}, Lcom/android/phone/ChangeIccPinScreen$3;-><init>(Lcom/android/phone/ChangeIccPinScreen;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 441
    return-void
.end method

.method private getRetryPin()Ljava/lang/String;
    .locals 5

    .prologue
    .line 493
    invoke-direct {p0}, Lcom/android/phone/ChangeIccPinScreen;->getRetryPinCount()I

    move-result v0

    .line 494
    .local v0, retryCount:I
    packed-switch v0, :pswitch_data_0

    .line 500
    :pswitch_0
    const v1, 0x7f08014b

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    .line 496
    :pswitch_1
    const-string v1, " "

    goto :goto_0

    .line 498
    :pswitch_2
    const v1, 0x7f08014a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 494
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getRetryPinCount()I
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 461
    iget v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mSimId:I

    packed-switch v2, :pswitch_data_0

    .line 479
    const-string v2, "Settings/PhoneGlobals"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error happened mSimId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/ChangeIccPinScreen;->mSimId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    const-string v0, "gsm.sim.retry.pin1"

    .line 481
    .local v0, pin1Str:Ljava/lang/String;
    const-string v1, "gsm.sim.retry.pin2"

    .line 488
    .local v1, pin2Str:Ljava/lang/String;
    :goto_0
    iget-boolean v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mChangePin2:Z

    if-eqz v2, :cond_0

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    :goto_1
    return v2

    .line 463
    .end local v0           #pin1Str:Ljava/lang/String;
    .end local v1           #pin2Str:Ljava/lang/String;
    :pswitch_0
    const-string v0, "gsm.sim.retry.pin1"

    .line 464
    .restart local v0       #pin1Str:Ljava/lang/String;
    const-string v1, "gsm.sim.retry.pin2"

    .line 465
    .restart local v1       #pin2Str:Ljava/lang/String;
    goto :goto_0

    .line 467
    .end local v0           #pin1Str:Ljava/lang/String;
    .end local v1           #pin2Str:Ljava/lang/String;
    :pswitch_1
    const-string v0, "gsm.sim.retry.pin1.2"

    .line 468
    .restart local v0       #pin1Str:Ljava/lang/String;
    const-string v1, "gsm.sim.retry.pin2.2"

    .line 469
    .restart local v1       #pin2Str:Ljava/lang/String;
    goto :goto_0

    .line 471
    .end local v0           #pin1Str:Ljava/lang/String;
    .end local v1           #pin2Str:Ljava/lang/String;
    :pswitch_2
    const-string v0, "gsm.sim.retry.pin1.3"

    .line 472
    .restart local v0       #pin1Str:Ljava/lang/String;
    const-string v1, "gsm.sim.retry.pin2.3"

    .line 473
    .restart local v1       #pin2Str:Ljava/lang/String;
    goto :goto_0

    .line 475
    .end local v0           #pin1Str:Ljava/lang/String;
    .end local v1           #pin2Str:Ljava/lang/String;
    :pswitch_3
    const-string v0, "gsm.sim.retry.pin1.4"

    .line 476
    .restart local v0       #pin1Str:Ljava/lang/String;
    const-string v1, "gsm.sim.retry.pin2.4"

    .line 477
    .restart local v1       #pin2Str:Ljava/lang/String;
    goto :goto_0

    .line 488
    :cond_0
    invoke-static {v0, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    goto :goto_1

    .line 461
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getRetryPuk2()Ljava/lang/String;
    .locals 5

    .prologue
    .line 532
    invoke-direct {p0}, Lcom/android/phone/ChangeIccPinScreen;->getRetryPuk2Count()I

    move-result v0

    .line 533
    .local v0, retryCount:I
    packed-switch v0, :pswitch_data_0

    .line 539
    :pswitch_0
    const v1, 0x7f08014b

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    .line 535
    :pswitch_1
    const-string v1, " "

    goto :goto_0

    .line 537
    :pswitch_2
    const v1, 0x7f08014a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 533
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getRetryPuk2Count()I
    .locals 4

    .prologue
    .line 507
    iget v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mSimId:I

    packed-switch v1, :pswitch_data_0

    .line 521
    const-string v1, "Settings/PhoneGlobals"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error happened mSimId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/ChangeIccPinScreen;->mSimId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    const-string v0, "gsm.sim.retry.puk2"

    .line 528
    .local v0, puk2Str:Ljava/lang/String;
    :goto_0
    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1

    .line 509
    .end local v0           #puk2Str:Ljava/lang/String;
    :pswitch_0
    const-string v0, "gsm.sim.retry.puk2"

    .line 510
    .restart local v0       #puk2Str:Ljava/lang/String;
    goto :goto_0

    .line 512
    .end local v0           #puk2Str:Ljava/lang/String;
    :pswitch_1
    const-string v0, "gsm.sim.retry.puk2.2"

    .line 513
    .restart local v0       #puk2Str:Ljava/lang/String;
    goto :goto_0

    .line 515
    .end local v0           #puk2Str:Ljava/lang/String;
    :pswitch_2
    const-string v0, "gsm.sim.retry.puk2.3"

    .line 516
    .restart local v0       #puk2Str:Ljava/lang/String;
    goto :goto_0

    .line 518
    .end local v0           #puk2Str:Ljava/lang/String;
    :pswitch_3
    const-string v0, "gsm.sim.retry.puk2.4"

    .line 519
    .restart local v0       #puk2Str:Ljava/lang/String;
    goto :goto_0

    .line 507
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private handleResult(Landroid/os/AsyncResult;)V
    .locals 6
    .parameter "ar"

    .prologue
    const/4 v5, 0x0

    .line 374
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    .line 376
    const-string v2, "handleResult: success!"

    invoke-direct {p0, v2}, Lcom/android/phone/ChangeIccPinScreen;->log(Ljava/lang/String;)V

    .line 380
    invoke-direct {p0}, Lcom/android/phone/ChangeIccPinScreen;->showConfirmation()V

    .line 382
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 428
    :cond_0
    :goto_0
    return-void

    .line 386
    :cond_1
    iget-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mState:Lcom/android/phone/ChangeIccPinScreen$EntryState;

    sget-object v3, Lcom/android/phone/ChangeIccPinScreen$EntryState;->ES_PIN:Lcom/android/phone/ChangeIccPinScreen$EntryState;

    if-ne v2, v3, :cond_5

    .line 388
    const-string v2, "handleResult: pin failed!"

    invoke-direct {p0, v2}, Lcom/android/phone/ChangeIccPinScreen;->log(Ljava/lang/String;)V

    .line 390
    iget-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mOldPin:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->clear()V

    .line 391
    iget-boolean v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mChangePin2:Z

    if-eqz v2, :cond_2

    const v0, 0x7f08028c

    .line 392
    .local v0, id:I
    :goto_1
    iget-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mBadPinError:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 393
    iget-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mBadPinError:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 394
    invoke-direct {p0}, Lcom/android/phone/ChangeIccPinScreen;->getRetryPinCount()I

    move-result v2

    if-nez v2, :cond_4

    .line 396
    const-string v2, "handleResult: puk requested!"

    invoke-direct {p0, v2}, Lcom/android/phone/ChangeIccPinScreen;->log(Ljava/lang/String;)V

    .line 398
    iget-boolean v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mChangePin2:Z

    if-eqz v2, :cond_3

    .line 399
    sget-object v2, Lcom/android/phone/ChangeIccPinScreen$EntryState;->ES_PUK:Lcom/android/phone/ChangeIccPinScreen$EntryState;

    iput-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mState:Lcom/android/phone/ChangeIccPinScreen$EntryState;

    .line 400
    invoke-direct {p0}, Lcom/android/phone/ChangeIccPinScreen;->displayPUKAlert()V

    .line 401
    invoke-direct {p0}, Lcom/android/phone/ChangeIccPinScreen;->showPukPanel()V

    goto :goto_0

    .line 391
    .end local v0           #id:I
    :cond_2
    const v0, 0x7f08027c

    goto :goto_1

    .line 403
    .restart local v0       #id:I
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 406
    :cond_4
    iget-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mPinRetryLabel:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/phone/ChangeIccPinScreen;->getRetryPin()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 407
    iget-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mOldPin:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 409
    .end local v0           #id:I
    :cond_5
    iget-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mState:Lcom/android/phone/ChangeIccPinScreen$EntryState;

    sget-object v3, Lcom/android/phone/ChangeIccPinScreen$EntryState;->ES_PUK:Lcom/android/phone/ChangeIccPinScreen$EntryState;

    if-ne v2, v3, :cond_0

    .line 412
    const-string v2, "handleResult: puk2 failed!"

    invoke-direct {p0, v2}, Lcom/android/phone/ChangeIccPinScreen;->log(Ljava/lang/String;)V

    .line 414
    invoke-direct {p0}, Lcom/android/phone/ChangeIccPinScreen;->getRetryPuk2Count()I

    move-result v2

    if-nez v2, :cond_6

    .line 416
    iget-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mExt:Lcom/mediatek/phone/ext/SettingsExtension;

    const v3, 0x7f08014e

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/ChangeIccPinScreen;->mSimId:I

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/phone/ext/SettingsExtension;->replaceSimBySlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 417
    .local v1, textToast:Ljava/lang/String;
    invoke-static {p0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 419
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 421
    .end local v1           #textToast:Ljava/lang/String;
    :cond_6
    iget-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mBadPukError:Landroid/widget/TextView;

    const v3, 0x7f08028b

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 422
    iget-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mBadPukError:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 423
    iget-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mPukRetryLabel:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/phone/ChangeIccPinScreen;->getRetryPuk2()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 424
    iget-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mPUKCode:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->clear()V

    .line 425
    iget-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mPUKCode:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 594
    iget-boolean v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mChangePin2:Z

    if-eqz v1, :cond_0

    const-string v0, "[ChgPin2]"

    .line 595
    .local v0, prefix:Ljava/lang/String;
    :goto_0
    const-string v1, "Settings/PhoneGlobals"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    return-void

    .line 594
    .end local v0           #prefix:Ljava/lang/String;
    :cond_0
    const-string v0, "[ChgPin]"

    goto :goto_0
.end method

.method private reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 251
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v2, v2}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 252
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mBadPinError:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 253
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mBadPukError:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 254
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mMismatchError:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 255
    return-void
.end method

.method private resolveIntent()V
    .locals 3

    .prologue
    .line 245
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 246
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "pin2"

    iget-boolean v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mChangePin2:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mChangePin2:Z

    .line 247
    const-string v1, "simId"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mSimId:I

    .line 248
    return-void
.end method

.method private showConfirmation()V
    .locals 5

    .prologue
    .line 582
    iget-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mState:Lcom/android/phone/ChangeIccPinScreen$EntryState;

    sget-object v3, Lcom/android/phone/ChangeIccPinScreen$EntryState;->ES_PUK:Lcom/android/phone/ChangeIccPinScreen$EntryState;

    if-ne v2, v3, :cond_0

    .line 583
    const v0, 0x7f08014c

    .line 588
    .local v0, id:I
    :goto_0
    iget-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mExt:Lcom/mediatek/phone/ext/SettingsExtension;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/ChangeIccPinScreen;->mSimId:I

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/phone/ext/SettingsExtension;->replaceSimBySlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 589
    .local v1, text:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 591
    return-void

    .line 585
    .end local v0           #id:I
    .end local v1           #text:Ljava/lang/String;
    :cond_0
    iget-boolean v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mChangePin2:Z

    if-eqz v2, :cond_1

    const v0, 0x7f080290

    .restart local v0       #id:I
    :goto_1
    goto :goto_0

    .end local v0           #id:I
    :cond_1
    const v0, 0x7f080285

    goto :goto_1
.end method

.method private showPinPanel()V
    .locals 5

    .prologue
    .line 552
    iget-boolean v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mChangePin2:Z

    if-eqz v2, :cond_0

    const v0, 0x7f080252

    .line 554
    .local v0, id:I
    :goto_0
    iget-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mExt:Lcom/mediatek/phone/ext/SettingsExtension;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/ChangeIccPinScreen;->mSimId:I

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/phone/ext/SettingsExtension;->replaceSimBySlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 555
    .local v1, text:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 557
    iget-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mPinRetryLabel:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/phone/ChangeIccPinScreen;->getRetryPin()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 558
    iget-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mIccPUKPanel:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 559
    iget-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mOldPINPanel:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 560
    iget-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mOldPin:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 561
    return-void

    .line 552
    .end local v0           #id:I
    .end local v1           #text:Ljava/lang/String;
    :cond_0
    const v0, 0x7f080277

    goto :goto_0
.end method

.method private showPukPanel()V
    .locals 2

    .prologue
    .line 544
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08014d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 545
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mPukRetryLabel:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/phone/ChangeIccPinScreen;->getRetryPuk2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 546
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mIccPUKPanel:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 547
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mOldPINPanel:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 548
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mPUKCode:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 549
    return-void
.end method

.method private updateScreenPanel()V
    .locals 1

    .prologue
    .line 564
    iget-boolean v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mChangePin2:Z

    if-eqz v0, :cond_2

    .line 565
    invoke-direct {p0}, Lcom/android/phone/ChangeIccPinScreen;->getRetryPinCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 566
    invoke-direct {p0}, Lcom/android/phone/ChangeIccPinScreen;->getRetryPuk2Count()I

    move-result v0

    if-nez v0, :cond_0

    .line 567
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 569
    :cond_0
    sget-object v0, Lcom/android/phone/ChangeIccPinScreen$EntryState;->ES_PUK:Lcom/android/phone/ChangeIccPinScreen$EntryState;

    iput-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mState:Lcom/android/phone/ChangeIccPinScreen$EntryState;

    .line 570
    invoke-direct {p0}, Lcom/android/phone/ChangeIccPinScreen;->showPukPanel()V

    .line 578
    :goto_0
    return-void

    .line 572
    :cond_1
    sget-object v0, Lcom/android/phone/ChangeIccPinScreen$EntryState;->ES_PIN:Lcom/android/phone/ChangeIccPinScreen$EntryState;

    iput-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mState:Lcom/android/phone/ChangeIccPinScreen$EntryState;

    .line 573
    invoke-direct {p0}, Lcom/android/phone/ChangeIccPinScreen;->showPinPanel()V

    goto :goto_0

    .line 576
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/ChangeIccPinScreen;->showPinPanel()V

    goto :goto_0
.end method

.method private validateNewPin(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "p1"
    .parameter "p2"

    .prologue
    const/4 v1, 0x2

    .line 258
    if-nez p1, :cond_1

    .line 272
    :cond_0
    :goto_0
    return v1

    .line 262
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 263
    const/4 v1, 0x1

    goto :goto_0

    .line 266
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 268
    .local v0, len1:I
    const/4 v2, 0x4

    if-lt v0, v2, :cond_0

    const/16 v2, 0x8

    if-gt v0, v2, :cond_0

    .line 272
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const/16 v6, 0x12

    .line 151
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 153
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/ChangeIccPinScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 155
    invoke-direct {p0}, Lcom/android/phone/ChangeIccPinScreen;->resolveIntent()V

    .line 157
    const v3, 0x7f040007

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setContentView(I)V

    .line 159
    invoke-static {}, Lcom/mediatek/phone/ext/ExtensionManager;->getInstance()Lcom/mediatek/phone/ext/ExtensionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/phone/ext/ExtensionManager;->getSettingsExtension()Lcom/mediatek/phone/ext/SettingsExtension;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/ChangeIccPinScreen;->mExt:Lcom/mediatek/phone/ext/SettingsExtension;

    .line 163
    const v3, 0x7f0a0028

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/ChangeIccPinScreen;->mOldPinLabel:Landroid/widget/TextView;

    .line 164
    iget-object v3, p0, Lcom/android/phone/ChangeIccPinScreen;->mOldPinLabel:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 165
    iget-boolean v3, p0, Lcom/android/phone/ChangeIccPinScreen;->mChangePin2:Z

    if-eqz v3, :cond_5

    const v1, 0x7f080288

    .line 166
    .local v1, id:I
    :goto_0
    iget-object v3, p0, Lcom/android/phone/ChangeIccPinScreen;->mOldPinLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(I)V

    .line 167
    iget-object v3, p0, Lcom/android/phone/ChangeIccPinScreen;->mOldPinLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08014f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 170
    .end local v1           #id:I
    :cond_0
    const v3, 0x7f0a0029

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/ChangeIccPinScreen;->mPinRetryLabel:Landroid/widget/TextView;

    .line 171
    const v3, 0x7f0a0027

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/phone/ChangeIccPinScreen;->mOldPINPanel:Landroid/widget/LinearLayout;

    .line 174
    const v3, 0x7f0a002c

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/ChangeIccPinScreen;->mNewPin1Label:Landroid/widget/TextView;

    .line 175
    iget-object v3, p0, Lcom/android/phone/ChangeIccPinScreen;->mNewPin1Label:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 176
    iget-boolean v3, p0, Lcom/android/phone/ChangeIccPinScreen;->mChangePin2:Z

    if-eqz v3, :cond_6

    const v1, 0x7f080289

    .line 177
    .restart local v1       #id:I
    :goto_1
    iget-object v3, p0, Lcom/android/phone/ChangeIccPinScreen;->mNewPin1Label:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(I)V

    .line 181
    .end local v1           #id:I
    :cond_1
    const v3, 0x7f0a002e

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/ChangeIccPinScreen;->mNewPin2Label:Landroid/widget/TextView;

    .line 182
    iget-object v3, p0, Lcom/android/phone/ChangeIccPinScreen;->mNewPin2Label:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    .line 183
    iget-boolean v3, p0, Lcom/android/phone/ChangeIccPinScreen;->mChangePin2:Z

    if-eqz v3, :cond_7

    const v1, 0x7f08028a

    .line 184
    .restart local v1       #id:I
    :goto_2
    iget-object v3, p0, Lcom/android/phone/ChangeIccPinScreen;->mNewPin2Label:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(I)V

    .line 187
    .end local v1           #id:I
    :cond_2
    const v3, 0x7f0a0023

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/ChangeIccPinScreen;->mPuk2Label:Landroid/widget/TextView;

    .line 188
    iget-object v3, p0, Lcom/android/phone/ChangeIccPinScreen;->mPuk2Label:Landroid/widget/TextView;

    if-eqz v3, :cond_3

    .line 189
    iget-object v3, p0, Lcom/android/phone/ChangeIccPinScreen;->mPuk2Label:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080150

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 191
    :cond_3
    const v3, 0x7f0a0024

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/ChangeIccPinScreen;->mPukRetryLabel:Landroid/widget/TextView;

    .line 192
    const v3, 0x7f0a0026

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/ChangeIccPinScreen;->mBadPukError:Landroid/widget/TextView;

    .line 193
    const v3, 0x7f0a002a

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/phone/ChangeIccPinScreen;->mOldPin:Landroid/widget/EditText;

    .line 194
    const v3, 0x7f0a002d

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/phone/ChangeIccPinScreen;->mNewPin1:Landroid/widget/EditText;

    .line 195
    const v3, 0x7f0a002f

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/phone/ChangeIccPinScreen;->mNewPin2:Landroid/widget/EditText;

    .line 197
    iget-object v3, p0, Lcom/android/phone/ChangeIccPinScreen;->mOldPin:Landroid/widget/EditText;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setInputType(I)V

    .line 198
    iget-object v3, p0, Lcom/android/phone/ChangeIccPinScreen;->mNewPin1:Landroid/widget/EditText;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setInputType(I)V

    .line 199
    iget-object v3, p0, Lcom/android/phone/ChangeIccPinScreen;->mNewPin2:Landroid/widget/EditText;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setInputType(I)V

    .line 201
    const v3, 0x7f0a002b

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/ChangeIccPinScreen;->mBadPinError:Landroid/widget/TextView;

    .line 202
    const v3, 0x7f0a0030

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/ChangeIccPinScreen;->mMismatchError:Landroid/widget/TextView;

    .line 204
    const v3, 0x7f0a0031

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/phone/ChangeIccPinScreen;->mButton:Landroid/widget/Button;

    .line 205
    iget-object v3, p0, Lcom/android/phone/ChangeIccPinScreen;->mButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/phone/ChangeIccPinScreen;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    const v3, 0x7f0a0021

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ScrollView;

    iput-object v3, p0, Lcom/android/phone/ChangeIccPinScreen;->mScrollView:Landroid/widget/ScrollView;

    .line 209
    const v3, 0x7f0a0025

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/phone/ChangeIccPinScreen;->mPUKCode:Landroid/widget/EditText;

    .line 210
    iget-object v3, p0, Lcom/android/phone/ChangeIccPinScreen;->mPUKCode:Landroid/widget/EditText;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setInputType(I)V

    .line 212
    const v3, 0x7f0a0022

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/phone/ChangeIccPinScreen;->mIccPUKPanel:Landroid/widget/LinearLayout;

    .line 215
    sget-object v3, Lcom/android/phone/ChangeIccPinScreen$EntryState;->ES_PIN:Lcom/android/phone/ChangeIccPinScreen$EntryState;

    iput-object v3, p0, Lcom/android/phone/ChangeIccPinScreen;->mState:Lcom/android/phone/ChangeIccPinScreen$EntryState;

    .line 216
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 220
    .local v2, intentFilter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.DUAL_SIM_MODE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 223
    iget-object v3, p0, Lcom/android/phone/ChangeIccPinScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 224
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 225
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_4

    .line 227
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 229
    :cond_4
    return-void

    .line 165
    .end local v0           #actionBar:Landroid/app/ActionBar;
    .end local v2           #intentFilter:Landroid/content/IntentFilter;
    :cond_5
    const v1, 0x7f080279

    goto/16 :goto_0

    .line 176
    :cond_6
    const v1, 0x7f08027a

    goto/16 :goto_1

    .line 183
    :cond_7
    const v1, 0x7f08027b

    goto/16 :goto_2
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 452
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 453
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 454
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 233
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 234
    .local v0, itemId:I
    packed-switch v0, :pswitch_data_0

    .line 241
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 236
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 237
    const/4 v1, 0x1

    goto :goto_0

    .line 234
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 445
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 446
    invoke-direct {p0}, Lcom/android/phone/ChangeIccPinScreen;->updateScreenPanel()V

    .line 447
    invoke-direct {p0}, Lcom/android/phone/ChangeIccPinScreen;->reset()V

    .line 448
    return-void
.end method
