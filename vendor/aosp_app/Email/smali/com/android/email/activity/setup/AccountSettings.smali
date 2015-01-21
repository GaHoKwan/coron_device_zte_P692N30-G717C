.class public Lcom/android/email/activity/setup/AccountSettings;
.super Landroid/preference/PreferenceActivity;
.source "AccountSettings.java"

# interfaces
.implements Landroid/app/FragmentManager$OnBackStackChangedListener;
.implements Lcom/android/email/activity/setup/LoginWarningDialog$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/setup/AccountSettings$WaitingRemoveAccountDialog;,
        Lcom/android/email/activity/setup/AccountSettings$UnsavedChangesDialogFragment;,
        Lcom/android/email/activity/setup/AccountSettings$RemoveAccountCallback;,
        Lcom/android/email/activity/setup/AccountSettings$AccountServerSettingsFragmentCallback;,
        Lcom/android/email/activity/setup/AccountSettings$AccountSettingsFragmentCallback;,
        Lcom/android/email/activity/setup/AccountSettings$LoadAccountListTask;
    }
.end annotation


# static fields
.field private static final EXTRA_ENABLE_DEBUG:Ljava/lang/String; = "AccountSettings.enable_debug"

.field private static final EXTRA_LOGIN_WARNING_FOR_ACCOUNT:Ljava/lang/String; = "AccountSettings.for_account"

.field private static final EXTRA_TITLE:Ljava/lang/String; = "AccountSettings.title"

.field private static final QUICK_RESPONSE_ACCOUNT_KEY:Ljava/lang/String; = "account"

.field private static final SECRET_KEY_CODES:[I = null

.field protected static final TAG:Ljava/lang/String; = "AccountSettings"


# instance fields
.field private mAccountListHeaders:[Landroid/preference/PreferenceActivity$Header;

.field private mAccountObserver:Landroid/database/ContentObserver;

.field private final mAccountServerSettingsFragmentCallback:Lcom/android/email/activity/setup/AccountSettings$AccountServerSettingsFragmentCallback;

.field private final mAccountSettingsFragmentCallback:Lcom/android/email/activity/setup/AccountSettings$AccountSettingsFragmentCallback;

.field private mAppPreferencesHeader:Landroid/preference/PreferenceActivity$Header;

.field mCurrentFragment:Landroid/app/Fragment;

.field private mDeletingAccountId:J

.field private mFinishedLoadAccount:Z

.field private mFragmentManager:Landroid/app/FragmentManager;

.field private mGeneratedHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field private mIsBackGround:Z

.field private mLoadAccountListTask:Lcom/android/email/activity/setup/AccountSettings$LoadAccountListTask;

.field private mNumGeneralHeaderClicked:I

.field private mProgressDialog:Landroid/app/DialogFragment;

.field private mRequestedAccountHeader:Landroid/preference/PreferenceActivity$Header;

.field private mRequestedAccountId:J

.field private mSecretKeyCodeIndex:I

.field private mShowDebugMenu:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/email/activity/setup/AccountSettings;->SECRET_KEY_CODES:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x20t 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
        0x23t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 95
    iput v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mSecretKeyCodeIndex:I

    .line 98
    iput v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mNumGeneralHeaderClicked:I

    .line 105
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mDeletingAccountId:J

    .line 122
    new-instance v0, Lcom/android/email/activity/setup/AccountSettings$AccountSettingsFragmentCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/email/activity/setup/AccountSettings$AccountSettingsFragmentCallback;-><init>(Lcom/android/email/activity/setup/AccountSettings;Lcom/android/email/activity/setup/AccountSettings$1;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccountSettingsFragmentCallback:Lcom/android/email/activity/setup/AccountSettings$AccountSettingsFragmentCallback;

    .line 124
    new-instance v0, Lcom/android/email/activity/setup/AccountSettings$AccountServerSettingsFragmentCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/email/activity/setup/AccountSettings$AccountServerSettingsFragmentCallback;-><init>(Lcom/android/email/activity/setup/AccountSettings;Lcom/android/email/activity/setup/AccountSettings$1;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccountServerSettingsFragmentCallback:Lcom/android/email/activity/setup/AccountSettings$AccountServerSettingsFragmentCallback;

    .line 956
    return-void
.end method

.method static synthetic access$1000(Lcom/android/email/activity/setup/AccountSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettings;->forceBack()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/email/activity/setup/AccountSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSettings;->forceSwitchHeader(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/email/activity/setup/AccountSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettings;->updateAccounts()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/email/activity/setup/AccountSettings;[Landroid/preference/PreferenceActivity$Header;)[Landroid/preference/PreferenceActivity$Header;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccountListHeaders:[Landroid/preference/PreferenceActivity$Header;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/email/activity/setup/AccountSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mIsBackGround:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/email/activity/setup/AccountSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/android/email/activity/setup/AccountSettings;->mFinishedLoadAccount:Z

    return p1
.end method

.method static synthetic access$702(Lcom/android/email/activity/setup/AccountSettings;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-wide p1, p0, Lcom/android/email/activity/setup/AccountSettings;->mDeletingAccountId:J

    return-wide p1
.end method

.method static synthetic access$800(Lcom/android/email/activity/setup/AccountSettings;)Landroid/app/DialogFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mProgressDialog:Landroid/app/DialogFragment;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/email/activity/setup/AccountSettings;Landroid/app/DialogFragment;)Landroid/app/DialogFragment;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettings;->mProgressDialog:Landroid/app/DialogFragment;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/email/activity/setup/AccountSettings;)Landroid/preference/PreferenceActivity$Header;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettings;->getAppPreferencesHeader()Landroid/preference/PreferenceActivity$Header;

    move-result-object v0

    return-object v0
.end method

.method public static actionSettings(Landroid/app/Activity;J)V
    .locals 1
    .parameter "fromActivity"
    .parameter "accountId"

    .prologue
    .line 133
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/email/activity/setup/AccountSettings;->createAccountSettingsIntent(Landroid/content/Context;JLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 134
    return-void
.end method

.method public static actionSettingsWithDebug(Landroid/content/Context;)V
    .locals 3
    .parameter "fromContext"

    .prologue
    .line 156
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSettings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 157
    .local v0, i:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 158
    const-string v1, "AccountSettings.enable_debug"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 159
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 160
    return-void
.end method

.method public static createAccountSettingsIntent(Landroid/content/Context;JLjava/lang/String;)Landroid/content/Intent;
    .locals 4
    .parameter "context"
    .parameter "accountId"
    .parameter "loginWarningAccountName"

    .prologue
    .line 143
    const-string v2, "settings"

    invoke-static {v2}, Lcom/android/emailcommon/utility/IntentUtilities;->createActivityIntentUrlBuilder(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 144
    .local v0, b:Landroid/net/Uri$Builder;
    invoke-static {v0, p1, p2}, Lcom/android/emailcommon/utility/IntentUtilities;->setAccountId(Landroid/net/Uri$Builder;J)V

    .line 145
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.EDIT"

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 146
    .local v1, i:Landroid/content/Intent;
    if-eqz p3, :cond_0

    .line 147
    const-string v2, "AccountSettings.for_account"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    :cond_0
    return-object v1
.end method

.method private enableDebugMenu()V
    .locals 1

    .prologue
    .line 368
    sget-boolean v0, Lcom/android/email/activity/setup/AccountSetupBasics;->ENTER_DEBUG_SCREEN:Z

    if-eqz v0, :cond_0

    .line 369
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mShowDebugMenu:Z

    .line 370
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->invalidateHeaders()V

    .line 372
    :cond_0
    return-void
.end method

.method private forceBack()V
    .locals 1

    .prologue
    .line 622
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mCurrentFragment:Landroid/app/Fragment;

    .line 623
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettings;->onBackPressed()V

    .line 624
    return-void
.end method

.method private forceSwitchHeader(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 610
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mCurrentFragment:Landroid/app/Fragment;

    .line 612
    invoke-virtual {p0, p1}, Landroid/app/ListActivity;->setSelection(I)V

    .line 613
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mGeneratedHeaders:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 614
    .local v0, header:Landroid/preference/PreferenceActivity$Header;
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 615
    return-void
.end method

.method private getAppPreferencesHeader()Landroid/preference/PreferenceActivity$Header;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 461
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mAppPreferencesHeader:Landroid/preference/PreferenceActivity$Header;

    if-nez v0, :cond_0

    .line 462
    new-instance v0, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v0}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mAppPreferencesHeader:Landroid/preference/PreferenceActivity$Header;

    .line 463
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mAppPreferencesHeader:Landroid/preference/PreferenceActivity$Header;

    const v1, 0x7f0801e0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 464
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mAppPreferencesHeader:Landroid/preference/PreferenceActivity$Header;

    iput-object v2, v0, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    .line 465
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mAppPreferencesHeader:Landroid/preference/PreferenceActivity$Header;

    const/4 v1, 0x0

    iput v1, v0, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    .line 466
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mAppPreferencesHeader:Landroid/preference/PreferenceActivity$Header;

    const-class v1, Lcom/android/email/activity/setup/GeneralPreferences;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 467
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mAppPreferencesHeader:Landroid/preference/PreferenceActivity$Header;

    iput-object v2, v0, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 469
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mAppPreferencesHeader:Landroid/preference/PreferenceActivity$Header;

    return-object v0
.end method

.method private onAddNewAccount()V
    .locals 0

    .prologue
    .line 393
    invoke-static {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->actionNewAccount(Landroid/app/Activity;)V

    .line 394
    return-void
.end method

.method private shouldShowNewAccount()Z
    .locals 1

    .prologue
    .line 379
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v0

    if-nez v0, :cond_0

    .line 380
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->hasHeaders()Z

    move-result v0

    .line 389
    :goto_0
    return v0

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mCurrentFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mCurrentFragment:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/android/email/activity/setup/GeneralPreferences;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mCurrentFragment:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/android/email/activity/setup/DebugFragment;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mCurrentFragment:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;

    if-nez v0, :cond_1

    .line 387
    const/4 v0, 0x0

    goto :goto_0

    .line 389
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateAccounts()V
    .locals 6

    .prologue
    .line 400
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->hasHeaders()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mLoadAccountListTask:Lcom/android/email/activity/setup/AccountSettings$LoadAccountListTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 402
    new-instance v0, Lcom/android/email/activity/setup/AccountSettings$LoadAccountListTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/setup/AccountSettings$LoadAccountListTask;-><init>(Lcom/android/email/activity/setup/AccountSettings;Lcom/android/email/activity/setup/AccountSettings$1;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Long;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/android/email/activity/setup/AccountSettings;->mDeletingAccountId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/AccountSettings$LoadAccountListTask;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mLoadAccountListTask:Lcom/android/email/activity/setup/AccountSettings$LoadAccountListTask;

    .line 406
    :cond_0
    return-void
.end method


# virtual methods
.method public deleteAccount(Lcom/android/emailcommon/provider/Account;)V
    .locals 4
    .parameter "account"

    .prologue
    .line 840
    invoke-static {}, Lcom/android/email/activity/setup/AccountSettings$WaitingRemoveAccountDialog;->newInstance()Lcom/android/email/activity/setup/AccountSettings$WaitingRemoveAccountDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mProgressDialog:Landroid/app/DialogFragment;

    .line 841
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mProgressDialog:Landroid/app/DialogFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/DialogFragment;->setCancelable(Z)V

    .line 842
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mProgressDialog:Landroid/app/DialogFragment;

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "WaitingRemoveDialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 845
    invoke-static {p0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    new-instance v3, Lcom/android/email/activity/setup/AccountSettings$RemoveAccountCallback;

    invoke-direct {v3, p0}, Lcom/android/email/activity/setup/AccountSettings$RemoveAccountCallback;-><init>(Lcom/android/email/activity/setup/AccountSettings;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/Controller;->deleteAccount(JLcom/android/email/activity/setup/AccountSettings$RemoveAccountCallback;)V

    .line 846
    return-void
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 3
    .parameter "f"

    .prologue
    .line 628
    invoke-super {p0, p1}, Landroid/app/Activity;->onAttachFragment(Landroid/app/Fragment;)V

    .line 630
    instance-of v2, p1, Lcom/android/email/activity/setup/AccountSettingsFragment;

    if-eqz v2, :cond_1

    move-object v1, p1

    .line 631
    check-cast v1, Lcom/android/email/activity/setup/AccountSettingsFragment;

    .line 632
    .local v1, asf:Lcom/android/email/activity/setup/AccountSettingsFragment;
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccountSettingsFragmentCallback:Lcom/android/email/activity/setup/AccountSettings$AccountSettingsFragmentCallback;

    invoke-virtual {v1, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->setCallback(Lcom/android/email/activity/setup/AccountSettingsFragment$Callback;)V

    .line 640
    .end local v1           #asf:Lcom/android/email/activity/setup/AccountSettingsFragment;
    :goto_0
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettings;->mCurrentFragment:Landroid/app/Fragment;

    .line 643
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 644
    :cond_0
    return-void

    .line 633
    :cond_1
    instance-of v2, p1, Lcom/android/email/activity/setup/AccountServerBaseFragment;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 634
    check-cast v0, Lcom/android/email/activity/setup/AccountServerBaseFragment;

    .line 635
    .local v0, asbf:Lcom/android/email/activity/setup/AccountServerBaseFragment;
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccountServerSettingsFragmentCallback:Lcom/android/email/activity/setup/AccountSettings$AccountServerSettingsFragmentCallback;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->setCallback(Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 5

    .prologue
    .line 331
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettings;->mCurrentFragment:Landroid/app/Fragment;

    instance-of v3, v3, Lcom/android/email/activity/setup/AccountServerBaseFragment;

    if-eqz v3, :cond_0

    .line 332
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettings;->mCurrentFragment:Landroid/app/Fragment;

    check-cast v3, Lcom/android/email/activity/setup/AccountServerBaseFragment;

    invoke-virtual {v3}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->haveSettingsChanged()Z

    move-result v0

    .line 333
    .local v0, changed:Z
    if-eqz v0, :cond_0

    .line 334
    invoke-static {}, Lcom/android/email/activity/setup/AccountSettings$UnsavedChangesDialogFragment;->newInstanceForBack()Lcom/android/email/activity/setup/AccountSettings$UnsavedChangesDialogFragment;

    move-result-object v2

    .line 336
    .local v2, dialogFragment:Lcom/android/email/activity/setup/AccountSettings$UnsavedChangesDialogFragment;
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "UnsavedChangesDialogFragment"

    invoke-virtual {v2, v3, v4}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 347
    .end local v0           #changed:Z
    .end local v2           #dialogFragment:Lcom/android/email/activity/setup/AccountSettings$UnsavedChangesDialogFragment;
    :goto_0
    return-void

    .line 341
    :cond_0
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettings;->mCurrentFragment:Landroid/app/Fragment;

    instance-of v3, v3, Lcom/android/email/activity/setup/AccountSettingsFragment;

    if-eqz v3, :cond_1

    .line 342
    invoke-static {p0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v1

    .line 343
    .local v1, controller:Lcom/android/email/Controller;
    iget-wide v3, p0, Lcom/android/email/activity/setup/AccountSettings;->mRequestedAccountId:J

    invoke-virtual {v1, v3, v4}, Lcom/android/email/Controller;->stopOof(J)V

    .line 346
    .end local v1           #controller:Lcom/android/email/Controller;
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onBackStackChanged()V
    .locals 3

    .prologue
    .line 218
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mFragmentManager:Landroid/app/FragmentManager;

    const v2, 0x1020354

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 219
    .local v0, f:Landroid/app/Fragment;
    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mCurrentFragment:Landroid/app/Fragment;

    .line 220
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mCurrentFragment:Landroid/app/Fragment;

    instance-of v1, v1, Lcom/android/email/activity/setup/AccountSettingsFragment;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mCurrentFragment:Landroid/app/Fragment;

    instance-of v1, v1, Lcom/android/email/activity/setup/GeneralPreferences;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mCurrentFragment:Landroid/app/Fragment;

    instance-of v1, v1, Lcom/android/email/activity/setup/DebugFragment;

    if-eqz v1, :cond_1

    .line 223
    :cond_0
    const v1, 0x7f080091

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 225
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 226
    return-void
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, target:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const-wide/16 v9, -0x1

    const/4 v8, 0x0

    .line 417
    iput-object v8, p0, Lcom/android/email/activity/setup/AccountSettings;->mRequestedAccountHeader:Landroid/preference/PreferenceActivity$Header;

    .line 420
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 421
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettings;->getAppPreferencesHeader()Landroid/preference/PreferenceActivity$Header;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 424
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccountListHeaders:[Landroid/preference/PreferenceActivity$Header;

    if-eqz v4, :cond_1

    .line 425
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccountListHeaders:[Landroid/preference/PreferenceActivity$Header;

    array-length v2, v4

    .line 426
    .local v2, headerCount:I
    const/4 v3, 0x0

    .local v3, index:I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 427
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccountListHeaders:[Landroid/preference/PreferenceActivity$Header;

    aget-object v1, v4, v3

    .line 428
    .local v1, header:Landroid/preference/PreferenceActivity$Header;
    if-eqz v1, :cond_0

    iget-wide v4, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    cmp-long v4, v4, v9

    if-eqz v4, :cond_0

    .line 429
    iget-wide v4, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    iget-wide v6, p0, Lcom/android/email/activity/setup/AccountSettings;->mDeletingAccountId:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 430
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 431
    iget-wide v4, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    iget-wide v6, p0, Lcom/android/email/activity/setup/AccountSettings;->mRequestedAccountId:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 432
    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mRequestedAccountHeader:Landroid/preference/PreferenceActivity$Header;

    .line 433
    iput-wide v9, p0, Lcom/android/email/activity/setup/AccountSettings;->mRequestedAccountId:J

    .line 426
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 441
    .end local v1           #header:Landroid/preference/PreferenceActivity$Header;
    .end local v2           #headerCount:I
    .end local v3           #index:I
    :cond_1
    iget-boolean v4, p0, Lcom/android/email/activity/setup/AccountSettings;->mShowDebugMenu:Z

    if-eqz v4, :cond_2

    .line 443
    new-instance v0, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v0}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 444
    .local v0, debugHeader:Landroid/preference/PreferenceActivity$Header;
    const v4, 0x7f080076

    invoke-virtual {p0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 445
    iput-object v8, v0, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    .line 446
    const/4 v4, 0x0

    iput v4, v0, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    .line 447
    const-class v4, Lcom/android/email/activity/setup/DebugFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 448
    iput-object v8, v0, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 449
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 453
    .end local v0           #debugHeader:Landroid/preference/PreferenceActivity$Header;
    :cond_2
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettings;->mGeneratedHeaders:Ljava/util/List;

    .line 454
    return-void
.end method

.method public onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;
    .locals 3
    .parameter "fragmentName"
    .parameter "args"
    .parameter "titleRes"
    .parameter "shortTitleRes"

    .prologue
    .line 307
    invoke-super {p0, p1, p2, p3, p4}, Landroid/preference/PreferenceActivity;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v0

    .line 312
    .local v0, result:Landroid/content/Intent;
    invoke-static {p2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getTitleFromArgs(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    .line 313
    .local v1, title:Ljava/lang/String;
    if-nez p3, :cond_0

    if-eqz v1, :cond_0

    .line 314
    const-string v2, "AccountSettings.title"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 316
    :cond_0
    return-object v0
.end method

.method public onChangePwd(J)V
    .locals 12
    .parameter "accountId"

    .prologue
    .line 786
    :try_start_0
    invoke-static {p0}, Lcom/android/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/android/email/NotificationController;

    move-result-object v9

    .line 787
    .local v9, nc:Lcom/android/email/NotificationController;
    invoke-virtual {v9, p1, p2}, Lcom/android/email/NotificationController;->cancelLoginFailedNotification(J)V

    .line 788
    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v7

    .line 789
    .local v7, account:Lcom/android/emailcommon/provider/Account;
    if-nez v7, :cond_1

    .line 810
    .end local v7           #account:Lcom/android/emailcommon/provider/Account;
    .end local v9           #nc:Lcom/android/email/NotificationController;
    :cond_0
    :goto_0
    return-void

    .line 792
    .restart local v7       #account:Lcom/android/emailcommon/provider/Account;
    .restart local v9       #nc:Lcom/android/email/NotificationController;
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/android/email/mail/Store;->getInstance(Lcom/android/emailcommon/provider/Account;Landroid/content/Context;)Lcom/android/email/mail/Store;

    move-result-object v11

    .line 793
    .local v11, store:Lcom/android/email/mail/Store;
    if-eqz v11, :cond_0

    .line 794
    invoke-virtual {v11}, Lcom/android/email/mail/Store;->getSettingActivityClass()Ljava/lang/Class;

    move-result-object v10

    .line 795
    .local v10, setting:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/app/Activity;>;"
    if-eqz v10, :cond_0

    .line 796
    const-class v0, Lcom/android/email/activity/setup/AccountSetupIncoming;

    invoke-virtual {v10, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 797
    const/4 v0, 0x7

    invoke-static {p0, v0, v7}, Lcom/android/email/activity/setup/AccountSetupIncoming;->actionIncomingSettings(Landroid/app/Activity;ILcom/android/emailcommon/provider/Account;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 807
    .end local v7           #account:Lcom/android/emailcommon/provider/Account;
    .end local v9           #nc:Lcom/android/email/NotificationController;
    .end local v10           #setting:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/app/Activity;>;"
    .end local v11           #store:Lcom/android/email/mail/Store;
    :catch_0
    move-exception v8

    .line 808
    .local v8, e:Ljava/lang/Exception;
    const-string v0, "Email"

    const-string v1, "Error while trying to invoke store settings."

    invoke-static {v0, v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 799
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v7       #account:Lcom/android/emailcommon/provider/Account;
    .restart local v9       #nc:Lcom/android/email/NotificationController;
    .restart local v10       #setting:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/app/Activity;>;"
    .restart local v11       #store:Lcom/android/email/mail/Store;
    :cond_2
    :try_start_1
    const-class v0, Lcom/android/email/activity/setup/AccountSetupExchange;

    invoke-virtual {v10, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 800
    const/4 v0, 0x3

    invoke-static {v0, v7}, Lcom/android/email/activity/setup/SetupData;->init(ILcom/android/emailcommon/provider/Account;)V

    .line 801
    const-class v0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, v7, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->getSettingsModeArgs(Ljava/lang/Long;)Landroid/os/Bundle;

    move-result-object v2

    const v3, 0x7f0801ad

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x4

    .line 164
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 165
    invoke-static {p0}, Lcom/android/email/activity/ActivityHelper;->debugSetWindowFlags(Landroid/app/Activity;)V

    .line 167
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 168
    .local v1, i:Landroid/content/Intent;
    if-nez p1, :cond_0

    .line 171
    invoke-static {v1}, Lcom/android/emailcommon/utility/IntentUtilities;->getAccountIdFromIntent(Landroid/content/Intent;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/email/activity/setup/AccountSettings;->mRequestedAccountId:J

    .line 172
    const-string v4, "AccountSettings.for_account"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 173
    .local v2, loginWarningAccount:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 175
    iget-wide v4, p0, Lcom/android/email/activity/setup/AccountSettings;->mRequestedAccountId:J

    const/4 v6, 0x0

    invoke-static {v2, v4, v5, v6}, Lcom/android/email/activity/setup/LoginWarningDialog;->newInstance(Ljava/lang/String;JLandroid/app/Fragment;)Lcom/android/email/activity/setup/LoginWarningDialog;

    move-result-object v0

    .line 177
    .local v0, dialog:Lcom/android/email/activity/setup/LoginWarningDialog;
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "loginwarning"

    invoke-virtual {v0, v4, v5}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 180
    .end local v0           #dialog:Lcom/android/email/activity/setup/LoginWarningDialog;
    .end local v2           #loginWarningAccount:Ljava/lang/String;
    :cond_0
    const-string v4, "AccountSettings.enable_debug"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/email/activity/setup/AccountSettings;->mShowDebugMenu:Z

    .line 182
    const-string v4, "AccountSettings.title"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 183
    .local v3, title:Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 184
    invoke-virtual {p0, v3}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 191
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v7, v7}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 194
    new-instance v4, Lcom/android/email/activity/setup/AccountSettings$1;

    invoke-static {}, Lcom/android/emailcommon/utility/Utility;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/email/activity/setup/AccountSettings$1;-><init>(Lcom/android/email/activity/setup/AccountSettings;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccountObserver:Landroid/database/ContentObserver;

    .line 201
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 202
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettings;->mFragmentManager:Landroid/app/FragmentManager;

    .line 203
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettings;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v4, p0}, Landroid/app/FragmentManager;->addOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V

    .line 206
    :cond_2
    return-void

    .line 185
    :cond_3
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 188
    const v4, 0x7f080091

    invoke-virtual {p0, v4}, Landroid/app/Activity;->setTitle(I)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 272
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 273
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mFinishedLoadAccount:Z

    if-nez v0, :cond_0

    .line 274
    const/4 v0, 0x0

    .line 277
    :goto_0
    return v0

    .line 276
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0e

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 277
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 248
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 249
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mLoadAccountListTask:Lcom/android/email/activity/setup/AccountSettings$LoadAccountListTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 250
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mLoadAccountListTask:Lcom/android/email/activity/setup/AccountSettings$LoadAccountListTask;

    .line 251
    return-void
.end method

.method public onEditQuickResponses(Lcom/android/emailcommon/provider/Account;)V
    .locals 8
    .parameter "account"

    .prologue
    .line 746
    :try_start_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 747
    .local v2, args:Landroid/os/Bundle;
    const-string v0, "account"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 748
    const-class v0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0801b4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 753
    .end local v2           #args:Landroid/os/Bundle;
    :goto_0
    return-void

    .line 750
    :catch_0
    move-exception v7

    .line 751
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "Email"

    const-string v1, "Error while trying to invoke edit quick responses."

    invoke-static {v0, v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onGetNewHeader()Landroid/preference/PreferenceActivity$Header;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 358
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 364
    :goto_0
    return-object v0

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mRequestedAccountHeader:Landroid/preference/PreferenceActivity$Header;

    .line 363
    .local v0, result:Landroid/preference/PreferenceActivity$Header;
    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mRequestedAccountHeader:Landroid/preference/PreferenceActivity$Header;

    goto :goto_0
.end method

.method public onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 4
    .parameter "header"
    .parameter "position"

    .prologue
    .line 579
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings;->mCurrentFragment:Landroid/app/Fragment;

    instance-of v2, v2, Lcom/android/email/activity/setup/AccountServerBaseFragment;

    if-eqz v2, :cond_0

    .line 580
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings;->mCurrentFragment:Landroid/app/Fragment;

    check-cast v2, Lcom/android/email/activity/setup/AccountServerBaseFragment;

    invoke-virtual {v2}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->haveSettingsChanged()Z

    move-result v0

    .line 581
    .local v0, changed:Z
    if-eqz v0, :cond_0

    .line 582
    invoke-static {p2}, Lcom/android/email/activity/setup/AccountSettings$UnsavedChangesDialogFragment;->newInstanceForHeader(I)Lcom/android/email/activity/setup/AccountSettings$UnsavedChangesDialogFragment;

    move-result-object v1

    .line 584
    .local v1, dialogFragment:Lcom/android/email/activity/setup/AccountSettings$UnsavedChangesDialogFragment;
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "UnsavedChangesDialogFragment"

    invoke-virtual {v1, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 601
    .end local v0           #changed:Z
    .end local v1           #dialogFragment:Lcom/android/email/activity/setup/AccountSettings$UnsavedChangesDialogFragment;
    :goto_0
    return-void

    .line 590
    :cond_0
    if-nez p2, :cond_2

    .line 591
    iget v2, p0, Lcom/android/email/activity/setup/AccountSettings;->mNumGeneralHeaderClicked:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/email/activity/setup/AccountSettings;->mNumGeneralHeaderClicked:I

    .line 592
    iget v2, p0, Lcom/android/email/activity/setup/AccountSettings;->mNumGeneralHeaderClicked:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    .line 593
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettings;->enableDebugMenu()V

    .line 600
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    goto :goto_0

    .line 596
    :cond_2
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/email/activity/setup/AccountSettings;->mNumGeneralHeaderClicked:I

    goto :goto_1
.end method

.method public onIncomingSettings(Lcom/android/emailcommon/provider/Account;)V
    .locals 10
    .parameter "account"

    .prologue
    .line 763
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/android/email/mail/Store;->getInstance(Lcom/android/emailcommon/provider/Account;Landroid/content/Context;Z)Lcom/android/email/mail/Store;

    move-result-object v9

    .line 764
    .local v9, store:Lcom/android/email/mail/Store;
    if-eqz v9, :cond_0

    .line 765
    invoke-virtual {v9}, Lcom/android/email/mail/Store;->getSettingActivityClass()Ljava/lang/Class;

    move-result-object v8

    .line 766
    .local v8, setting:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/app/Activity;>;"
    if-eqz v8, :cond_0

    .line 767
    const/4 v0, 0x3

    invoke-static {v0, p1}, Lcom/android/email/activity/setup/SetupData;->init(ILcom/android/emailcommon/provider/Account;)V

    .line 768
    const-class v0, Lcom/android/email/activity/setup/AccountSetupIncoming;

    invoke-virtual {v8, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 769
    const-class v0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->getSettingsModeArgs(Ljava/lang/Long;)Landroid/os/Bundle;

    move-result-object v2

    const v3, 0x7f0801ad

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 782
    .end local v8           #setting:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/app/Activity;>;"
    .end local v9           #store:Lcom/android/email/mail/Store;
    :cond_0
    :goto_0
    return-void

    .line 772
    .restart local v8       #setting:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/app/Activity;>;"
    .restart local v9       #store:Lcom/android/email/mail/Store;
    :cond_1
    const-class v0, Lcom/android/email/activity/setup/AccountSetupExchange;

    invoke-virtual {v8, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 773
    const-class v0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->getSettingsModeArgs(Ljava/lang/Long;)Landroid/os/Bundle;

    move-result-object v2

    const v3, 0x7f0801ad

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 779
    .end local v8           #setting:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/app/Activity;>;"
    .end local v9           #store:Lcom/android/email/mail/Store;
    :catch_0
    move-exception v7

    .line 780
    .local v7, e:Lcom/android/emailcommon/mail/MessagingException;
    const-string v0, "Email"

    const-string v1, "Error while trying to invoke store settings."

    invoke-static {v0, v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    .line 258
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sget-object v1, Lcom/android/email/activity/setup/AccountSettings;->SECRET_KEY_CODES:[I

    iget v2, p0, Lcom/android/email/activity/setup/AccountSettings;->mSecretKeyCodeIndex:I

    aget v1, v1, v2

    if-ne v0, v1, :cond_1

    .line 259
    iget v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mSecretKeyCodeIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mSecretKeyCodeIndex:I

    .line 260
    iget v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mSecretKeyCodeIndex:I

    sget-object v1, Lcom/android/email/activity/setup/AccountSettings;->SECRET_KEY_CODES:[I

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 261
    iput v3, p0, Lcom/android/email/activity/setup/AccountSettings;->mSecretKeyCodeIndex:I

    .line 262
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettings;->enableDebugMenu()V

    .line 267
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 265
    :cond_1
    iput v3, p0, Lcom/android/email/activity/setup/AccountSettings;->mSecretKeyCodeIndex:I

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 287
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 299
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 301
    :goto_0
    return v0

    .line 293
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettings;->onBackPressed()V

    .line 301
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 296
    :sswitch_1
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettings;->onAddNewAccount()V

    goto :goto_1

    .line 287
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0f0123 -> :sswitch_1
    .end sparse-switch
.end method

.method public onOutgoingSettings(Lcom/android/emailcommon/provider/Account;)V
    .locals 10
    .parameter "account"

    .prologue
    .line 819
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/email/mail/Sender;->getInstance(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)Lcom/android/email/mail/Sender;

    move-result-object v8

    .line 820
    .local v8, sender:Lcom/android/email/mail/Sender;
    if-eqz v8, :cond_0

    .line 821
    invoke-virtual {v8}, Lcom/android/email/mail/Sender;->getSettingActivityClass()Ljava/lang/Class;

    move-result-object v9

    .line 822
    .local v9, setting:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/app/Activity;>;"
    if-eqz v9, :cond_0

    .line 823
    const/4 v0, 0x3

    invoke-static {v0, p1}, Lcom/android/email/activity/setup/SetupData;->init(ILcom/android/emailcommon/provider/Account;)V

    .line 824
    const-class v0, Lcom/android/email/activity/setup/AccountSetupOutgoing;

    invoke-virtual {v9, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 825
    const-class v0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->getSettingsModeArgs(Ljava/lang/Long;)Landroid/os/Bundle;

    move-result-object v2

    const v3, 0x7f0801af

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 834
    .end local v8           #sender:Lcom/android/email/mail/Sender;
    .end local v9           #setting:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/app/Activity;>;"
    :cond_0
    :goto_0
    return-void

    .line 831
    :catch_0
    move-exception v7

    .line 832
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "Email"

    const-string v1, "Error while trying to invoke sender settings."

    invoke-static {v0, v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 241
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 242
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mIsBackGround:Z

    .line 243
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccountObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 244
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 282
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettings;->shouldShowNewAccount()Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 230
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 231
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mIsBackGround:Z

    .line 232
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mFinishedLoadAccount:Z

    if-eqz v0, :cond_1

    .line 233
    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->invalidateHeaders()V

    .line 235
    :cond_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/Account;->NOTIFIER_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccountObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 236
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettings;->updateAccounts()V

    .line 237
    return-void
.end method

.method public onSettingsChanged(Lcom/android/emailcommon/provider/Account;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8
    .parameter "account"
    .parameter "preference"
    .parameter "value"

    .prologue
    .line 728
    const-string v4, "account_description"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 729
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccountListHeaders:[Landroid/preference/PreferenceActivity$Header;

    .local v0, arr$:[Landroid/preference/PreferenceActivity$Header;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 730
    .local v1, header:Landroid/preference/PreferenceActivity$Header;
    iget-wide v4, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    iget-wide v6, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 733
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 734
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->invalidateHeaders()V

    .line 739
    .end local v0           #arr$:[Landroid/preference/PreferenceActivity$Header;
    .end local v1           #header:Landroid/preference/PreferenceActivity$Header;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_0
    return-void

    .line 729
    .restart local v0       #arr$:[Landroid/preference/PreferenceActivity$Header;
    .restart local v1       #header:Landroid/preference/PreferenceActivity$Header;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
