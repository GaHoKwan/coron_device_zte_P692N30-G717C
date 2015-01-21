.class public Lcom/android/email/activity/Welcome$MyConnectionAlertDialog;
.super Landroid/app/DialogFragment;
.source "Welcome.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/Welcome;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyConnectionAlertDialog"
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "MyConnectionAlertDialog"

.field private static sTarget:Lcom/android/email/activity/Welcome;


# instance fields
.field private mHasValidAccount:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 571
    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/activity/Welcome$MyConnectionAlertDialog;->sTarget:Lcom/android/email/activity/Welcome;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 580
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 574
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/Welcome$MyConnectionAlertDialog;->mHasValidAccount:Z

    .line 581
    return-void
.end method

.method static synthetic access$700()Lcom/android/email/activity/Welcome;
    .locals 1

    .prologue
    .line 570
    sget-object v0, Lcom/android/email/activity/Welcome$MyConnectionAlertDialog;->sTarget:Lcom/android/email/activity/Welcome;

    return-object v0
.end method

.method public static newInstance(Lcom/android/email/activity/Welcome;)Lcom/android/email/activity/Welcome$MyConnectionAlertDialog;
    .locals 1
    .parameter "activity"

    .prologue
    .line 584
    new-instance v0, Lcom/android/email/activity/Welcome$MyConnectionAlertDialog;

    invoke-direct {v0}, Lcom/android/email/activity/Welcome$MyConnectionAlertDialog;-><init>()V

    .line 585
    .local v0, frag:Lcom/android/email/activity/Welcome$MyConnectionAlertDialog;
    sput-object p0, Lcom/android/email/activity/Welcome$MyConnectionAlertDialog;->sTarget:Lcom/android/email/activity/Welcome;

    .line 586
    return-object v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    const/4 v1, 0x1

    .line 641
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 642
    iget-boolean v0, p0, Lcom/android/email/activity/Welcome$MyConnectionAlertDialog;->mHasValidAccount:Z

    if-eqz v0, :cond_0

    .line 644
    sget-object v0, Lcom/android/email/activity/Welcome$MyConnectionAlertDialog;->sTarget:Lcom/android/email/activity/Welcome;

    const-wide/16 v1, -0x1

    #setter for: Lcom/android/email/activity/Welcome;->mAccountId:J
    invoke-static {v0, v1, v2}, Lcom/android/email/activity/Welcome;->access$902(Lcom/android/email/activity/Welcome;J)J

    .line 645
    sget-object v0, Lcom/android/email/activity/Welcome$MyConnectionAlertDialog;->sTarget:Lcom/android/email/activity/Welcome;

    #calls: Lcom/android/email/activity/Welcome;->resolveAccount()V
    invoke-static {v0}, Lcom/android/email/activity/Welcome;->access$500(Lcom/android/email/activity/Welcome;)V

    .line 651
    :goto_0
    return-void

    .line 648
    :cond_0
    sget-object v0, Lcom/android/email/activity/Welcome$MyConnectionAlertDialog;->sTarget:Lcom/android/email/activity/Welcome;

    #setter for: Lcom/android/email/activity/Welcome;->mNeedResolveAccount:Z
    invoke-static {v0, v1}, Lcom/android/email/activity/Welcome;->access$802(Lcom/android/email/activity/Welcome;Z)Z

    .line 649
    sget-object v0, Lcom/android/email/activity/Welcome$MyConnectionAlertDialog;->sTarget:Lcom/android/email/activity/Welcome;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const v7, 0x7f080015

    const v6, 0x7f080012

    const v5, 0x1010355

    .line 591
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 592
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/email/activity/UiUtilities;->isWifiOnly(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 593
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f080014

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {p0, v7}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/android/email/activity/Welcome$MyConnectionAlertDialog$1;

    invoke-direct {v6, p0}, Lcom/android/email/activity/Welcome$MyConnectionAlertDialog$1;-><init>(Lcom/android/email/activity/Welcome$MyConnectionAlertDialog;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 617
    :goto_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/email/Preferences;->getLastUsedAccountId()J

    move-result-wide v2

    .line 618
    .local v2, lastUsedId:J
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    .line 619
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v2, v3}, Lcom/android/emailcommon/provider/Account;->isValidId(Landroid/content/Context;J)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 621
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/email/activity/Welcome$MyConnectionAlertDialog;->mHasValidAccount:Z

    .line 622
    const v4, 0x7f080079

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/email/activity/Welcome$MyConnectionAlertDialog$3;

    invoke-direct {v5, p0}, Lcom/android/email/activity/Welcome$MyConnectionAlertDialog$3;-><init>(Lcom/android/email/activity/Welcome$MyConnectionAlertDialog;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 631
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 632
    .local v1, dialog:Landroid/app/Dialog;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 633
    return-object v1

    .line 604
    .end local v1           #dialog:Landroid/app/Dialog;
    .end local v2           #lastUsedId:J
    :cond_1
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f080013

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {p0, v7}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/android/email/activity/Welcome$MyConnectionAlertDialog$2;

    invoke-direct {v6, p0}, Lcom/android/email/activity/Welcome$MyConnectionAlertDialog$2;-><init>(Lcom/android/email/activity/Welcome$MyConnectionAlertDialog;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method
