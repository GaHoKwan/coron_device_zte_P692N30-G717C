.class public Lcom/mediatek/CellConnService/ConfirmDlgActivity;
.super Landroid/app/Activity;
.source "ConfirmDlgActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static final CANCEL_BUTTON:I = 0x7f070004

.field private static final LOGTAG:Ljava/lang/String; = "ConfirmDlgActivity"

.field public static final OK_BUTTON:I = 0x7f070005

.field private static final SYSTEM_DIALOG_REASON_HOME_KEY:Ljava/lang/String; = "homekey"

.field private static final SYSTEM_DIALOG_REASON_KEY:Ljava/lang/String; = "reason"

.field private static final SYSTEM_DIALOG_REASON_RECENT_APPS:Ljava/lang/String; = "recentapps"


# instance fields
.field private mAlertDlg:Landroid/app/AlertDialog;

.field private mBReceiverIsUnregistered:Z

.field private mButtonText:Ljava/lang/String;

.field private mConfirmType:I

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mNegativeExit:Z

.field private mOperator09:Z

.field private mPhoneState:I

.field private mPreferSlot:I

.field private mRButtonText:Ljava/lang/String;

.field private mResultSent:Z

.field private mSlot:I

.field private mText:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 96
    iput-boolean v0, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mBReceiverIsUnregistered:Z

    .line 97
    iput v0, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mPhoneState:I

    .line 98
    iput-boolean v0, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mOperator09:Z

    .line 100
    new-instance v0, Lcom/mediatek/CellConnService/ConfirmDlgActivity$1;

    invoke-direct {v0, p0}, Lcom/mediatek/CellConnService/ConfirmDlgActivity$1;-><init>(Lcom/mediatek/CellConnService/ConfirmDlgActivity;)V

    iput-object v0, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$002(Lcom/mediatek/CellConnService/ConfirmDlgActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mNegativeExit:Z

    return p1
.end method

.method static synthetic access$100(Lcom/mediatek/CellConnService/ConfirmDlgActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mConfirmType:I

    return v0
.end method

.method static synthetic access$200(Lcom/mediatek/CellConnService/ConfirmDlgActivity;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->sendConfirmResult(IZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/CellConnService/ConfirmDlgActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mSlot:I

    return v0
.end method

.method private dismissAlertDialog()V
    .locals 3

    .prologue
    .line 560
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mAlertDlg:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mAlertDlg:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 561
    const-string v1, "ConfirmDlgActivity"

    const-string v2, "dismissAlertDialog"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    iget-object v1, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mAlertDlg:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 567
    :cond_0
    :goto_0
    return-void

    .line 564
    :catch_0
    move-exception v0

    .line 565
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "ConfirmDlgActivity"

    const-string v2, "Trying to dismiss a dialog not connected to the current UI"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getResourceTypePin()V
    .locals 3

    .prologue
    .line 449
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mTitle:Ljava/lang/String;

    .line 450
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mText:Ljava/lang/String;

    .line 451
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05002e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mButtonText:Ljava/lang/String;

    .line 453
    iget-boolean v1, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mOperator09:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 454
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mSlot:I

    invoke-static {v1, v2}, Lcom/mediatek/telephony/SimInfoManager;->getOperatorBySlot(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 455
    .local v0, strOperator:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 456
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mTitle:Ljava/lang/String;

    .line 457
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mText:Ljava/lang/String;

    .line 463
    .end local v0           #strOperator:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 458
    .restart local v0       #strOperator:Ljava/lang/String;
    :cond_1
    const-string v1, "OP09"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 459
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mTitle:Ljava/lang/String;

    .line 460
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mText:Ljava/lang/String;

    goto :goto_0
.end method

.method private getResourceTypeRadio(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 419
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mSlot:I

    invoke-static {v1, v2}, Lcom/mediatek/telephony/SimInfoManager;->getOperatorBySlot(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 421
    .local v0, strOperator:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mTitle:Ljava/lang/String;

    .line 422
    iget-boolean v1, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mOperator09:Z

    if-ne v1, v5, :cond_0

    .line 423
    if-nez v0, :cond_2

    .line 424
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mTitle:Ljava/lang/String;

    .line 431
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050006

    new-array v3, v5, [Ljava/lang/Object;

    const-string v4, "confirm_cardName"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mText:Ljava/lang/String;

    .line 433
    iget-boolean v1, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mOperator09:Z

    if-ne v1, v5, :cond_1

    .line 434
    if-nez v0, :cond_3

    .line 435
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050008

    new-array v3, v5, [Ljava/lang/Object;

    const-string v4, "confirm_cardName"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mText:Ljava/lang/String;

    .line 445
    :cond_1
    :goto_1
    return-void

    .line 425
    :cond_2
    const-string v1, "OP09"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 426
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mTitle:Ljava/lang/String;

    goto :goto_0

    .line 437
    :cond_3
    const-string v1, "OP09"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 438
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050007

    new-array v3, v5, [Ljava/lang/Object;

    const-string v4, "confirm_cardName"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mText:Ljava/lang/String;

    goto :goto_1
.end method

.method private getResourceTypeRoaning(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 485
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mTitle:Ljava/lang/String;

    .line 486
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05002a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mText:Ljava/lang/String;

    .line 487
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050038

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mButtonText:Ljava/lang/String;

    .line 488
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050039

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mRButtonText:Ljava/lang/String;

    .line 490
    iget-boolean v1, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mOperator09:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 491
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mSlot:I

    invoke-static {v1, v2}, Lcom/mediatek/telephony/SimInfoManager;->getOperatorBySlot(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 492
    .local v0, strOperator:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 493
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05002c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mText:Ljava/lang/String;

    .line 498
    .end local v0           #strOperator:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 494
    .restart local v0       #strOperator:Ljava/lang/String;
    :cond_1
    const-string v1, "OP09"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 495
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05002b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mText:Ljava/lang/String;

    goto :goto_0
.end method

.method private getResourceTypeSimLocked()V
    .locals 3

    .prologue
    .line 501
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050034

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mText:Ljava/lang/String;

    .line 502
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mButtonText:Ljava/lang/String;

    .line 503
    iget-boolean v1, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mOperator09:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 504
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mSlot:I

    invoke-static {v1, v2}, Lcom/mediatek/telephony/SimInfoManager;->getOperatorBySlot(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 505
    .local v0, strOperator:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 506
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050036

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mText:Ljava/lang/String;

    .line 511
    .end local v0           #strOperator:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 507
    .restart local v0       #strOperator:Ljava/lang/String;
    :cond_1
    const-string v1, "OP09"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 508
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050035

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mText:Ljava/lang/String;

    goto :goto_0
.end method

.method private getResourceTypeSimMe()V
    .locals 3

    .prologue
    .line 467
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mText:Ljava/lang/String;

    .line 468
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mTitle:Ljava/lang/String;

    .line 469
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05002e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mButtonText:Ljava/lang/String;

    .line 471
    iget-boolean v1, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mOperator09:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 472
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mSlot:I

    invoke-static {v1, v2}, Lcom/mediatek/telephony/SimInfoManager;->getOperatorBySlot(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 473
    .local v0, strOperator:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 474
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mText:Ljava/lang/String;

    .line 479
    .end local v0           #strOperator:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 475
    .restart local v0       #strOperator:Ljava/lang/String;
    :cond_1
    const-string v1, "OP09"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 476
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mText:Ljava/lang/String;

    goto :goto_0
.end method

.method private initFromIntent(Landroid/content/Intent;)V
    .locals 9
    .parameter "intent"

    .prologue
    const v6, 0x7f05000a

    const v8, 0x104000a

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 347
    const-string v2, "ConfirmDlgActivity"

    const-string v3, "initFromIntent ++ "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iput v7, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mConfirmType:I

    .line 349
    if-eqz p1, :cond_d

    .line 350
    const-string v2, "confirm_slot"

    invoke-virtual {p1, v2, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mSlot:I

    .line 351
    const-string v2, "ConfirmDlgActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initFromIntent mSlot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mSlot:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget v2, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mSlot:I

    iput v2, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mPreferSlot:I

    .line 353
    const-string v2, "confirm_phone_state"

    invoke-virtual {p1, v2, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mPhoneState:I

    .line 355
    const-string v2, "confirm_type"

    invoke-virtual {p1, v2, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mConfirmType:I

    .line 357
    const-string v2, "ConfirmDlgActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initFromIntent confirmType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mConfirmType:I

    invoke-static {v4}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->confirmTypeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    const/16 v2, 0x191

    iget v3, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mConfirmType:I

    if-ne v2, v3, :cond_6

    .line 361
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 362
    .local v0, airplaneMode:I
    invoke-direct {p0, p1}, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->getResourceTypeRadio(Landroid/content/Intent;)V

    .line 363
    if-ne v0, v5, :cond_0

    .line 364
    iget v2, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mSlot:I

    invoke-direct {p0, v2}, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->isRadioOffBySimManagement(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 365
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mText:Ljava/lang/String;

    .line 366
    iget-boolean v2, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mOperator09:Z

    if-ne v2, v5, :cond_4

    .line 367
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mSlot:I

    invoke-static {v2, v3}, Lcom/mediatek/telephony/SimInfoManager;->getOperatorBySlot(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 368
    .local v1, strOperator:Ljava/lang/String;
    if-nez v1, :cond_2

    .line 369
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f05000c

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "confirm_cardName"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mText:Ljava/lang/String;

    .line 390
    .end local v1           #strOperator:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mButtonText:Ljava/lang/String;

    .line 415
    .end local v0           #airplaneMode:I
    :cond_1
    :goto_1
    const-string v2, "ConfirmDlgActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initFromIntent - ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    return-void

    .line 372
    .restart local v0       #airplaneMode:I
    .restart local v1       #strOperator:Ljava/lang/String;
    :cond_2
    const-string v2, "OP09"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 373
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f05000b

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "confirm_cardName"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mText:Ljava/lang/String;

    goto :goto_0

    .line 377
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    const-string v5, "confirm_cardName"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v3, v6, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mText:Ljava/lang/String;

    goto/16 :goto_0

    .line 382
    .end local v1           #strOperator:Ljava/lang/String;
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    const-string v5, "confirm_cardName"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v3, v6, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mText:Ljava/lang/String;

    goto/16 :goto_0

    .line 387
    :cond_5
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mText:Ljava/lang/String;

    goto/16 :goto_0

    .line 391
    .end local v0           #airplaneMode:I
    :cond_6
    const/16 v2, 0x192

    iget v3, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mConfirmType:I

    if-ne v2, v3, :cond_7

    .line 392
    invoke-direct {p0}, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->getResourceTypePin()V

    goto/16 :goto_1

    .line 393
    :cond_7
    const/16 v2, 0x198

    iget v3, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mConfirmType:I

    if-ne v2, v3, :cond_8

    .line 394
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05000f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mTitle:Ljava/lang/String;

    .line 395
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050012

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mText:Ljava/lang/String;

    .line 396
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05002e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mButtonText:Ljava/lang/String;

    goto/16 :goto_1

    .line 397
    :cond_8
    const/16 v2, 0x193

    iget v3, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mConfirmType:I

    if-ne v2, v3, :cond_9

    .line 398
    invoke-direct {p0}, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->getResourceTypeSimMe()V

    goto/16 :goto_1

    .line 399
    :cond_9
    const/16 v2, 0x194

    iget v3, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mConfirmType:I

    if-ne v2, v3, :cond_a

    .line 400
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050019

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mTitle:Ljava/lang/String;

    .line 401
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05001a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mText:Ljava/lang/String;

    .line 402
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mButtonText:Ljava/lang/String;

    goto/16 :goto_1

    .line 403
    :cond_a
    const/16 v2, 0x195

    iget v3, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mConfirmType:I

    if-ne v2, v3, :cond_b

    .line 404
    invoke-direct {p0, p1}, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->getResourceTypeRoaning(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 405
    :cond_b
    const/16 v2, 0x196

    iget v3, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mConfirmType:I

    if-ne v2, v3, :cond_c

    .line 406
    invoke-direct {p0}, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->getResourceTypeSimLocked()V

    goto/16 :goto_1

    .line 407
    :cond_c
    const/16 v2, 0x197

    iget v3, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mConfirmType:I

    if-ne v2, v3, :cond_1

    .line 408
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050037

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mText:Ljava/lang/String;

    .line 409
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mButtonText:Ljava/lang/String;

    goto/16 :goto_1

    .line 412
    :cond_d
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_1
.end method

.method private isNeedConfirmDialog()Z
    .locals 4

    .prologue
    .line 570
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mSlot:I

    invoke-virtual {v1, v2}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSimState(I)I

    move-result v0

    .line 571
    .local v0, state:I
    const-string v1, "ConfirmDlgActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SIM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mSlot:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " State = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    const-string v1, "ConfirmDlgActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "confirm type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mConfirmType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", PhoneState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mPhoneState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    iget v1, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mConfirmType:I

    const/16 v2, 0x191

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mConfirmType:I

    const/16 v2, 0x192

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mConfirmType:I

    const/16 v2, 0x193

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mConfirmType:I

    const/16 v2, 0x198

    if-ne v1, v2, :cond_1

    .line 579
    :cond_0
    const/4 v1, 0x5

    if-ne v1, v0, :cond_1

    iget v1, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mPhoneState:I

    if-nez v1, :cond_1

    .line 581
    const/4 v1, 0x0

    .line 584
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isRadioOffBySimManagement(I)Z
    .locals 5
    .parameter "simId"

    .prologue
    .line 514
    const-string v3, "RADIO_STATUS"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 515
    .local v0, mIccidPreference:Landroid/content/SharedPreferences;
    invoke-static {p0, p1}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v2

    .line 516
    .local v2, simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    const/4 v1, 0x1

    .line 517
    .local v1, result:Z
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 518
    iget-object v3, v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mIccId:Ljava/lang/String;

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    .line 520
    :cond_0
    return v1
.end method

.method private sendConfirmResult(II)V
    .locals 4
    .parameter "confirmType"
    .parameter "nRet"

    .prologue
    .line 588
    const-string v1, "ConfirmDlgActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendConfirmResult confirmType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->confirmTypeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " nRet = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->confirmResultToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "start_type"

    const-string v3, "response"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 596
    .local v0, retIntent:Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 597
    const-string v1, "ConfirmDlgActivity"

    const-string v2, "sendConfirmResult new retIntent failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    :goto_0
    return-void

    .line 600
    :cond_0
    const-string v1, "confirm_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 601
    const-string v1, "confirm_result_preferSlot"

    iget v2, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mPreferSlot:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 602
    const-string v1, "confirm_result"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 604
    iget-boolean v1, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mBReceiverIsUnregistered:Z

    if-nez v1, :cond_1

    .line 605
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mBReceiverIsUnregistered:Z

    .line 606
    iget-object v1, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 609
    :cond_1
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 610
    invoke-direct {p0}, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->dismissAlertDialog()V

    .line 611
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method private sendConfirmResult(IZ)V
    .locals 7
    .parameter "confirmType"
    .parameter "bRet"

    .prologue
    const v6, 0x7f050031

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 615
    const-string v1, "ConfirmDlgActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendConfirmResult confirmType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->confirmTypeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bRet = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    iput-boolean v5, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mResultSent:Z

    .line 622
    if-nez p2, :cond_0

    .line 623
    iget v1, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mConfirmType:I

    packed-switch v1, :pswitch_data_0

    .line 654
    :cond_0
    :goto_0
    :pswitch_0
    if-eqz p2, :cond_4

    .line 655
    const/16 v1, 0x1c3

    invoke-direct {p0, p1, v1}, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->sendConfirmResult(II)V

    .line 659
    :goto_1
    return-void

    .line 625
    :pswitch_1
    const v1, 0x7f050030

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 630
    :pswitch_2
    const v1, 0x7f05002f

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 633
    :pswitch_3
    iget-boolean v1, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mOperator09:Z

    if-ne v1, v5, :cond_3

    .line 634
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mSlot:I

    invoke-static {v1, v2}, Lcom/mediatek/telephony/SimInfoManager;->getOperatorBySlot(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 635
    .local v0, strOperator:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 636
    const v1, 0x7f050033

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 638
    :cond_1
    const-string v1, "OP09"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 639
    const v1, 0x7f050032

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 642
    :cond_2
    invoke-static {p0, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 646
    .end local v0           #strOperator:Ljava/lang/String;
    :cond_3
    invoke-static {p0, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 657
    :cond_4
    const/16 v1, 0x1c4

    invoke-direct {p0, p1, v1}, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->sendConfirmResult(II)V

    goto :goto_1

    .line 623
    :pswitch_data_0
    .packed-switch 0x191
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 525
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 526
    const-string v0, "ConfirmDlgActivity"

    const-string v1, "onClick is true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iget v0, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mConfirmType:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->sendConfirmResult(IZ)V

    .line 532
    :cond_0
    :goto_0
    return-void

    .line 528
    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 529
    const-string v0, "ConfirmDlgActivity"

    const-string v1, "onClick is false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    iget v0, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mConfirmType:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->sendConfirmResult(IZ)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 554
    const-string v0, "ConfirmDlgActivity"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 556
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    .line 197
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 198
    const-string v3, "ConfirmDlgActivity"

    const-string v4, "onCreate"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 200
    .local v1, itFilter:Landroid/content/IntentFilter;
    if-nez v1, :cond_0

    .line 201
    const-string v3, "ConfirmDlgActivity"

    const-string v4, "onCreate new intent failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :goto_0
    return-void

    .line 205
    :cond_0
    const-string v3, "ro.operator.optr"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, optr:Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string v3, "OP09"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 207
    const-string v3, "ConfirmDlgActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "optr = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mOperator09:Z

    .line 211
    :cond_1
    const-string v3, "android.intent.action.DUAL_SIM_MODE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 212
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 213
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 214
    const-string v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 215
    const-string v3, "action_pin_dismiss"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 216
    const-string v3, "action_melock_dismiss"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 217
    iget-object v3, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 218
    iput v6, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mPreferSlot:I

    .line 219
    iput-boolean v6, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mNegativeExit:Z

    .line 220
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 223
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.phone.CONFIRM_DIALOG_START"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 224
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 230
    const-string v0, "ConfirmDlgActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-boolean v0, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mBReceiverIsUnregistered:Z

    if-nez v0, :cond_0

    .line 232
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mBReceiverIsUnregistered:Z

    .line 233
    iget-object v0, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 235
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 239
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 537
    packed-switch p1, :pswitch_data_0

    .line 548
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 539
    :pswitch_0
    const-string v1, "ConfirmDlgActivity"

    const-string v2, "onKeyDown back confirm result is false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mNegativeExit:Z

    .line 541
    iget v1, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mConfirmType:I

    invoke-direct {p0, v1, v0}, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->sendConfirmResult(IZ)V

    goto :goto_0

    .line 537
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 244
    const-string v0, "ConfirmDlgActivity"

    const-string v1, "onNewIntent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->initFromIntent(Landroid/content/Intent;)V

    .line 246
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 247
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 252
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 253
    const-string v0, "ConfirmDlgActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const v3, 0x1080027

    const/4 v2, 0x1

    .line 273
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 274
    const-string v0, "ConfirmDlgActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-direct {p0}, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->isNeedConfirmDialog()Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    const-string v0, "ConfirmDlgActivity"

    const-string v1, "The request slot is ready, close dialog."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iput-boolean v2, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mNegativeExit:Z

    .line 280
    iget v0, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mConfirmType:I

    invoke-direct {p0, v0, v4}, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->sendConfirmResult(IZ)V

    .line 343
    :goto_0
    return-void

    .line 284
    :cond_0
    const/16 v0, 0x194

    iget v1, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mConfirmType:I

    if-eq v0, v1, :cond_1

    const/16 v0, 0x196

    iget v1, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mConfirmType:I

    if-eq v0, v1, :cond_1

    const/16 v0, 0x197

    iget v1, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mConfirmType:I

    if-ne v0, v1, :cond_2

    .line 287
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/mediatek/CellConnService/ConfirmDlgActivity$2;

    invoke-direct {v1, p0}, Lcom/mediatek/CellConnService/ConfirmDlgActivity$2;-><init>(Lcom/mediatek/CellConnService/ConfirmDlgActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mAlertDlg:Landroid/app/AlertDialog;

    .line 326
    :goto_1
    iget-object v0, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mAlertDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x8000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 327
    iget-object v0, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mAlertDlg:Landroid/app/AlertDialog;

    new-instance v1, Lcom/mediatek/CellConnService/ConfirmDlgActivity$5;

    invoke-direct {v1, p0}, Lcom/mediatek/CellConnService/ConfirmDlgActivity$5;-><init>(Lcom/mediatek/CellConnService/ConfirmDlgActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 342
    iput-boolean v4, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mResultSent:Z

    goto :goto_0

    .line 298
    :cond_2
    const/16 v0, 0x195

    iget v1, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mConfirmType:I

    if-ne v0, v1, :cond_3

    .line 299
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mButtonText:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mRButtonText:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/mediatek/CellConnService/ConfirmDlgActivity$3;

    invoke-direct {v1, p0}, Lcom/mediatek/CellConnService/ConfirmDlgActivity$3;-><init>(Lcom/mediatek/CellConnService/ConfirmDlgActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mAlertDlg:Landroid/app/AlertDialog;

    goto :goto_1

    .line 312
    :cond_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mButtonText:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/mediatek/CellConnService/ConfirmDlgActivity$4;

    invoke-direct {v1, p0}, Lcom/mediatek/CellConnService/ConfirmDlgActivity$4;-><init>(Lcom/mediatek/CellConnService/ConfirmDlgActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mAlertDlg:Landroid/app/AlertDialog;

    goto/16 :goto_1
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 259
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 260
    const-string v0, "ConfirmDlgActivity"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-boolean v0, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mResultSent:Z

    if-nez v0, :cond_1

    .line 262
    const/16 v0, 0x195

    iget v1, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mConfirmType:I

    if-ne v0, v1, :cond_0

    .line 263
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mNegativeExit:Z

    .line 265
    :cond_0
    const-string v0, "ConfirmDlgActivity"

    const-string v1, "Cancel confirm dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget v0, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mConfirmType:I

    const/16 v1, 0x1c4

    invoke-direct {p0, v0, v1}, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->sendConfirmResult(II)V

    .line 268
    :cond_1
    return-void
.end method
