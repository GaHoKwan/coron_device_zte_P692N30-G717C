.class public Lcom/android/email/activity/setup/AccountCheckSettingsFragment;
.super Lcom/android/email/activity/SafeFragment;
.source "AccountCheckSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/setup/AccountCheckSettingsFragment$SecurityRequiredDialog;,
        Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;,
        Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;,
        Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;,
        Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;,
        Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;
    }
.end annotation


# static fields
.field public static final AUTODISCOVER_AUTHENTICATION:I = 0x2

.field public static final AUTODISCOVER_NO_DATA:I = 0x1

.field public static final AUTODISCOVER_OK:I = 0x0

.field public static final BUNDLE_KEY:Ljava/lang/String; = "AccountCheckSettingFragment.checkMode"

.field public static final CHECK_SETTINGS_CLIENT_CERTIFICATE_NEEDED:I = 0x3

.field public static final CHECK_SETTINGS_OK:I = 0x0

.field public static final CHECK_SETTINGS_SECURITY_USER_DENY:I = 0x2

.field public static final CHECK_SETTINGS_SERVER_ERROR:I = 0x1

.field public static final CHECK_SETTINGS_USER_CANCEL:I = 0x4

.field private static final DEBUG_FAKE_CHECK_CYCLE:Z = false

.field private static final DEBUG_FAKE_CHECK_ERR:Z = false

.field private static final DEBUG_FORCE_SECURITY_REQUIRED:Z = false

.field public static final RESULT_REPORTED_KEY:Ljava/lang/String; = "AccountCheckSettingFragment.resultHasReported"

.field private static final STATE_AUTODISCOVER_AUTH_DIALOG:I = 0x7

.field private static final STATE_AUTODISCOVER_RESULT:I = 0x8

.field private static final STATE_CHECK_AUTODISCOVER:I = 0x1

.field private static final STATE_CHECK_ERROR:I = 0x6

.field private static final STATE_CHECK_INCOMING:I = 0x2

.field private static final STATE_CHECK_OK:I = 0x4

.field private static final STATE_CHECK_OUTGOING:I = 0x3

.field private static final STATE_CHECK_SHOW_SECURITY:I = 0x5

.field public static final STATE_KEY:Ljava/lang/String; = "AccountCheckSettingFragment.state"

.field private static final STATE_START:I = 0x0

.field public static final TAG:Ljava/lang/String; = "AccountCheckSettingsFragment"


# instance fields
.field mAccountCheckTask:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;

.field private mAttached:Z

.field private mCheckMode:I

.field private mCheckingDialog:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

.field private mProgressException:Lcom/android/emailcommon/mail/MessagingException;

.field private mResultHasReported:Z

.field private mState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Lcom/android/email/activity/SafeFragment;-><init>()V

    .line 84
    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mResultHasReported:Z

    .line 85
    iput v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mState:I

    .line 1041
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/setup/AccountCheckSettingsFragment;ILcom/android/emailcommon/mail/MessagingException;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->reportProgress(ILcom/android/emailcommon/mail/MessagingException;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/email/activity/setup/AccountCheckSettingsFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->onCheckingDialogCancel()V

    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;Lcom/android/emailcommon/mail/MessagingException;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-static {p0, p1}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->getErrorString(Landroid/content/Context;Lcom/android/emailcommon/mail/MessagingException;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/email/activity/setup/AccountCheckSettingsFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->onEditCertificateOk()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/email/activity/setup/AccountCheckSettingsFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->onErrorDialogEditButton()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/email/activity/setup/AccountCheckSettingsFragment;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->onSecurityRequiredDialogResultOk(Z)V

    return-void
.end method

.method private finish()V
    .locals 3

    .prologue
    .line 458
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 459
    .local v0, fm:Landroid/app/FragmentManager;
    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 460
    invoke-virtual {p0}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 462
    :cond_0
    if-eqz v0, :cond_1

    .line 463
    const-string v1, "Kill current fragment if not already killed (finish)"

    invoke-static {v1}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;)V

    .line 464
    invoke-virtual {p0}, Landroid/app/Fragment;->getId()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentManager;->popBackStack(II)V

    .line 466
    :cond_1
    return-void
.end method

.method private getCallbackTarget()Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;
    .locals 5

    .prologue
    .line 374
    invoke-virtual {p0}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    .line 375
    .local v1, target:Landroid/app/Fragment;
    instance-of v2, v1, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;

    if-eqz v2, :cond_0

    .line 376
    check-cast v1, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;

    .line 386
    .end local v1           #target:Landroid/app/Fragment;
    :goto_0
    return-object v1

    .line 378
    .restart local v1       #target:Landroid/app/Fragment;
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 379
    .local v0, activity:Landroid/app/Activity;
    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCallbackTarget activity = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    instance-of v2, v0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;

    if-eqz v2, :cond_1

    .line 381
    check-cast v0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;

    .end local v0           #activity:Landroid/app/Activity;
    move-object v1, v0

    goto :goto_0

    .line 386
    .restart local v0       #activity:Landroid/app/Activity;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getErrorString(Landroid/content/Context;Lcom/android/emailcommon/mail/MessagingException;)Ljava/lang/String;
    .locals 11
    .parameter "context"
    .parameter "ex"

    .prologue
    .line 744
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 745
    .local v5, message:Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 746
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 748
    :cond_0
    invoke-virtual {p1}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 811
    :pswitch_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    const v3, 0x7f080186

    .line 816
    .local v3, id:I
    :goto_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    :goto_1
    return-object v9

    .line 752
    .end local v3           #id:I
    :pswitch_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    const v3, 0x7f080181

    .line 755
    .restart local v3       #id:I
    :goto_2
    goto :goto_0

    .line 752
    .end local v3           #id:I
    :cond_1
    const v3, 0x7f080182

    goto :goto_2

    .line 758
    :pswitch_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    const v3, 0x7f08017f

    .line 761
    .restart local v3       #id:I
    :goto_3
    goto :goto_0

    .line 758
    .end local v3           #id:I
    :cond_2
    const v3, 0x7f080180

    goto :goto_3

    .line 763
    :pswitch_3
    const v3, 0x7f080185

    .line 764
    .restart local v3       #id:I
    goto :goto_0

    .line 766
    .end local v3           #id:I
    :pswitch_4
    const v3, 0x7f08018b

    .line 767
    .restart local v3       #id:I
    goto :goto_0

    .line 769
    .end local v3           #id:I
    :pswitch_5
    const v3, 0x7f080188

    .line 770
    .restart local v3       #id:I
    goto :goto_0

    .line 772
    .end local v3           #id:I
    :pswitch_6
    const v3, 0x7f080189

    .line 773
    .restart local v3       #id:I
    goto :goto_0

    .line 775
    .end local v3           #id:I
    :pswitch_7
    const v3, 0x7f080190

    .line 777
    .restart local v3       #id:I
    invoke-virtual {p1}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionData()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    move-object v8, v9

    check-cast v8, [Ljava/lang/String;

    .line 778
    .local v8, unsupportedPolicies:[Ljava/lang/String;
    if-nez v8, :cond_3

    .line 779
    const-string v9, "AccountCheckSettingsFragment"

    const-string v10, "No data for unsupported policies?"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 783
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 784
    .local v7, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 785
    .local v1, first:Z
    move-object v0, v8

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_4
    if-ge v2, v4, :cond_5

    aget-object v6, v0, v2

    .line 786
    .local v6, policyName:Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 787
    const/4 v1, 0x0

    .line 791
    :goto_5
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 785
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 789
    :cond_4
    const-string v9, ", "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 793
    .end local v6           #policyName:Ljava/lang/String;
    :cond_5
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 794
    goto :goto_0

    .line 796
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #first:Z
    .end local v2           #i$:I
    .end local v3           #id:I
    .end local v4           #len$:I
    .end local v7           #sb:Ljava/lang/StringBuilder;
    .end local v8           #unsupportedPolicies:[Ljava/lang/String;
    :pswitch_8
    const v3, 0x7f08018d

    .line 797
    .restart local v3       #id:I
    goto :goto_0

    .line 799
    .end local v3           #id:I
    :pswitch_9
    const v3, 0x7f08018c

    .line 800
    .restart local v3       #id:I
    goto :goto_0

    .line 802
    .end local v3           #id:I
    :pswitch_a
    const v3, 0x7f08018a

    .line 803
    .restart local v3       #id:I
    goto :goto_0

    .line 805
    .end local v3           #id:I
    :pswitch_b
    const v3, 0x7f080183

    .line 806
    .restart local v3       #id:I
    goto :goto_0

    .line 808
    .end local v3           #id:I
    :pswitch_c
    const v3, 0x7f080184

    .line 809
    .restart local v3       #id:I
    goto/16 :goto_0

    .line 811
    .end local v3           #id:I
    :cond_6
    const v3, 0x7f080187

    goto/16 :goto_0

    .line 816
    .restart local v3       #id:I
    :cond_7
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    invoke-virtual {p0, v3, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    .line 748
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_a
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_9
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_8
        :pswitch_0
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private isAccountAvailable(Lcom/android/emailcommon/provider/Account;)Z
    .locals 1
    .parameter "checkAccount"

    .prologue
    .line 214
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v0, v0, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v0, v0, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newInstance(ILandroid/app/Fragment;)Lcom/android/email/activity/setup/AccountCheckSettingsFragment;
    .locals 1
    .parameter "mode"
    .parameter "parentFragment"

    .prologue
    .line 140
    new-instance v0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;

    invoke-direct {v0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;-><init>()V

    .line 141
    .local v0, f:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;
    invoke-virtual {v0, p1, p0}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 142
    return-object v0
.end method

.method private onCheckingDialogCancel()V
    .locals 3

    .prologue
    .line 410
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mAccountCheckTask:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;

    invoke-static {v1}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 411
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mAccountCheckTask:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;

    .line 413
    const-string v1, "Email"

    const-string v2, "onCheckingDialogCancel"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->getCallbackTarget()Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;

    move-result-object v0

    .line 416
    .local v0, callbackTarget:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;
    if-nez v0, :cond_0

    .line 423
    :goto_0
    return-void

    .line 420
    :cond_0
    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;->onCheckSettingsComplete(I)V

    .line 422
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->finish()V

    goto :goto_0
.end method

.method private onEditCertificateOk()V
    .locals 2

    .prologue
    .line 426
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->getCallbackTarget()Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;

    move-result-object v0

    .line 427
    .local v0, callback:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;
    if-nez v0, :cond_0

    .line 432
    :goto_0
    return-void

    .line 430
    :cond_0
    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;->onCheckSettingsComplete(I)V

    .line 431
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->finish()V

    goto :goto_0
.end method

.method private onErrorDialogEditButton()V
    .locals 3

    .prologue
    .line 442
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->getCallbackTarget()Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;

    move-result-object v0

    .line 443
    .local v0, callbackTarget:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;
    if-nez v0, :cond_0

    .line 454
    :goto_0
    return-void

    .line 446
    :cond_0
    iget v1, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mState:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    .line 448
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;->onAutoDiscoverComplete(ILcom/android/emailcommon/provider/HostAuth;)V

    .line 453
    :goto_1
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->finish()V

    goto :goto_0

    .line 451
    :cond_1
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;->onCheckSettingsComplete(I)V

    goto :goto_1
.end method

.method private onSecurityRequiredDialogResultOk(Z)V
    .locals 3
    .parameter "okPressed"

    .prologue
    .line 474
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->getCallbackTarget()Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;

    move-result-object v0

    .line 475
    .local v0, callbackTarget:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;
    if-nez v0, :cond_1

    .line 488
    :cond_0
    :goto_0
    return-void

    .line 478
    :cond_1
    if-eqz p1, :cond_2

    const/4 v2, 0x0

    :goto_1
    invoke-interface {v0, v2}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;->onCheckSettingsComplete(I)V

    .line 482
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 483
    .local v1, fm:Landroid/app/FragmentManager;
    if-eqz v1, :cond_0

    .line 484
    const-string v2, "Kill current fragment if not already killed (onSecurityRequiredDialogResultOk)"

    invoke-static {v2}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;)V

    .line 486
    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V

    goto :goto_0

    .line 478
    .end local v1           #fm:Landroid/app/FragmentManager;
    :cond_2
    const/4 v2, 0x2

    goto :goto_1
.end method

.method private recoverAndDismissCheckingDialog()V
    .locals 2

    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mCheckingDialog:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

    if-nez v0, :cond_0

    .line 394
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "CheckProgressDialog"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mCheckingDialog:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mCheckingDialog:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

    if-eqz v0, :cond_1

    .line 398
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mCheckingDialog:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 399
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mCheckingDialog:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

    .line 401
    :cond_1
    return-void
.end method

.method private reportProgress(ILcom/android/emailcommon/mail/MessagingException;Z)V
    .locals 8
    .parameter "newState"
    .parameter "ex"
    .parameter "syncCommit"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 271
    iput p1, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mState:I

    .line 272
    iput-object p2, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mProgressException:Lcom/android/emailcommon/mail/MessagingException;

    .line 275
    iget-boolean v7, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mAttached:Z

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->isResumed()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 276
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 278
    .local v2, fm:Landroid/app/FragmentManager;
    packed-switch p1, :pswitch_data_0

    .line 351
    const-string v5, "CheckProgressDialog"

    invoke-virtual {v2, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mCheckingDialog:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

    .line 353
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mCheckingDialog:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

    if-nez v5, :cond_6

    .line 354
    iget v5, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mState:I

    invoke-static {p0, v5}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->newInstance(Lcom/android/email/activity/setup/AccountCheckSettingsFragment;I)Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mCheckingDialog:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

    .line 355
    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v5

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mCheckingDialog:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

    const-string v7, "CheckProgressDialog"

    invoke-virtual {v5, v6, v7}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 358
    if-eqz p3, :cond_0

    .line 360
    invoke-virtual {v2}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 368
    .end local v2           #fm:Landroid/app/FragmentManager;
    .end local p2
    :cond_0
    :goto_0
    return-void

    .line 282
    .restart local v2       #fm:Landroid/app/FragmentManager;
    .restart local p2
    :pswitch_0
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->recoverAndDismissCheckingDialog()V

    .line 284
    invoke-virtual {v2}, Landroid/app/FragmentManager;->popBackStack()V

    .line 285
    const-string v7, "Exit current fragment in thread, state: ok"

    invoke-static {v7}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;)V

    .line 289
    const-string v7, "Send onCheckSettingsComplete call back "

    invoke-static {v7}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;)V

    .line 290
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->getCallbackTarget()Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;

    move-result-object v7

    invoke-interface {v7, v5}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;->onCheckSettingsComplete(I)V

    .line 291
    iput-boolean v6, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mResultHasReported:Z

    goto :goto_0

    .line 295
    :pswitch_1
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->recoverAndDismissCheckingDialog()V

    .line 297
    const-string v7, "SecurityRequiredDialog"

    invoke-virtual {v2, v7}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v7

    if-nez v7, :cond_2

    .line 298
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 299
    .local v3, message:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 300
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 302
    :cond_1
    invoke-static {p0, v3}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$SecurityRequiredDialog;->newInstance(Lcom/android/email/activity/setup/AccountCheckSettingsFragment;Ljava/lang/String;)Lcom/android/email/activity/setup/AccountCheckSettingsFragment$SecurityRequiredDialog;

    move-result-object v4

    .line 304
    .local v4, securityRequiredDialog:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$SecurityRequiredDialog;
    invoke-virtual {v4, v5}, Landroid/app/DialogFragment;->setCancelable(Z)V

    .line 305
    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v5

    const-string v7, "SecurityRequiredDialog"

    invoke-virtual {v5, v4, v7}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 308
    if-eqz p3, :cond_2

    .line 310
    invoke-virtual {v2}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 313
    .end local v3           #message:Ljava/lang/String;
    .end local v4           #securityRequiredDialog:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$SecurityRequiredDialog;
    :cond_2
    iput-boolean v6, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mResultHasReported:Z

    goto :goto_0

    .line 318
    :pswitch_2
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->recoverAndDismissCheckingDialog()V

    .line 320
    const-string v5, "ErrorDialog"

    invoke-virtual {v2, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v5

    if-nez v5, :cond_3

    .line 321
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v7, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mProgressException:Lcom/android/emailcommon/mail/MessagingException;

    invoke-static {v5, p0, v7}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;->newInstance(Landroid/content/Context;Lcom/android/email/activity/setup/AccountCheckSettingsFragment;Lcom/android/emailcommon/mail/MessagingException;)Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;

    move-result-object v1

    .line 323
    .local v1, errorDialog:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;
    const-string v5, "launch the error dialog"

    invoke-static {v5}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;)V

    .line 324
    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v5

    const-string v7, "ErrorDialog"

    invoke-virtual {v5, v1, v7}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 327
    if-eqz p3, :cond_3

    .line 329
    invoke-virtual {v2}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 332
    .end local v1           #errorDialog:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;
    :cond_3
    iput-boolean v6, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mResultHasReported:Z

    goto :goto_0

    .line 336
    :pswitch_3
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->recoverAndDismissCheckingDialog()V

    .line 338
    const-string v7, "Exit current fragment, state: AUTODISCOVER"

    invoke-static {v7}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;)V

    .line 339
    invoke-virtual {v2}, Landroid/app/FragmentManager;->popBackStack()V

    .line 341
    if-eqz p2, :cond_4

    .line 342
    check-cast p2, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;

    .end local p2
    iget-object v0, p2, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    .line 343
    .local v0, autoDiscoverResult:Lcom/android/emailcommon/provider/HostAuth;
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->getCallbackTarget()Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;

    move-result-object v7

    if-eqz v0, :cond_5

    :goto_1
    invoke-interface {v7, v5, v0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;->onAutoDiscoverComplete(ILcom/android/emailcommon/provider/HostAuth;)V

    .line 347
    .end local v0           #autoDiscoverResult:Lcom/android/emailcommon/provider/HostAuth;
    :cond_4
    iput-boolean v6, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mResultHasReported:Z

    goto/16 :goto_0

    .restart local v0       #autoDiscoverResult:Lcom/android/emailcommon/provider/HostAuth;
    :cond_5
    move v5, v6

    .line 343
    goto :goto_1

    .line 363
    .end local v0           #autoDiscoverResult:Lcom/android/emailcommon/provider/HostAuth;
    .restart local p2
    :cond_6
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mCheckingDialog:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

    iget v6, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mState:I

    invoke-virtual {v5, v6}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->updateProgress(I)V

    goto/16 :goto_0

    .line 278
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 174
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 175
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mAttached:Z

    .line 178
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mAccountCheckTask:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;

    if-nez v1, :cond_3

    .line 179
    if-eqz p1, :cond_4

    const-string v1, "AccountCheckSettingFragment.checkMode"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 181
    const-string v1, "AccountCheckSettingFragment.checkMode"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mCheckMode:I

    .line 187
    :goto_0
    if-eqz p1, :cond_0

    const-string v1, "AccountCheckSettingFragment.state"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    const-string v1, "AccountCheckSettingFragment.state"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mState:I

    .line 191
    :cond_0
    if-eqz p1, :cond_1

    const-string v1, "AccountCheckSettingFragment.resultHasReported"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 192
    const-string v1, "AccountCheckSettingFragment.resultHasReported"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mResultHasReported:Z

    .line 198
    :cond_1
    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mResultHasReported:Z

    if-nez v1, :cond_2

    .line 199
    iput v3, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mState:I

    .line 200
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 201
    .local v0, checkAccount:Lcom/android/emailcommon/provider/Account;
    new-instance v1, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;

    iget v2, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mCheckMode:I

    invoke-direct {v1, p0, v2, v0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;-><init>(Lcom/android/email/activity/setup/AccountCheckSettingsFragment;ILcom/android/emailcommon/provider/Account;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mAccountCheckTask:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "onActivityCreated  new AccountCheckTask "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;)V

    .line 205
    .end local v0           #checkAccount:Lcom/android/emailcommon/provider/Account;
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ### onActivityCreated  #### checkMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mCheckMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mAccountCheckTask:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  mState= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;)V

    .line 208
    :cond_3
    return-void

    .line 183
    :cond_4
    invoke-virtual {p0}, Landroid/app/Fragment;->getTargetRequestCode()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mCheckMode:I

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 151
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 152
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->setRetainInstance(Z)V

    .line 153
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mAccountCheckTask:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 241
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mAccountCheckTask:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;

    .line 242
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 243
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 260
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 261
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mAttached:Z

    .line 262
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 226
    invoke-super {p0}, Lcom/android/email/activity/SafeFragment;->onResume()V

    .line 228
    iget v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mState:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mResultHasReported:Z

    if-nez v0, :cond_0

    .line 230
    iget v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mState:I

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mProgressException:Lcom/android/emailcommon/mail/MessagingException;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->reportProgress(ILcom/android/emailcommon/mail/MessagingException;Z)V

    .line 232
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 157
    const-string v0, "AccountCheckSettingFragment.checkMode"

    iget v1, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mCheckMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 160
    const-string v0, "AccountCheckSettingFragment.state"

    iget v1, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 162
    const-string v0, "AccountCheckSettingFragment.resultHasReported"

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mResultHasReported:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 163
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 164
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 250
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->recoverAndDismissCheckingDialog()V

    .line 251
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 252
    return-void
.end method
