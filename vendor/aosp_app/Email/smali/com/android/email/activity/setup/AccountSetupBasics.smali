.class public Lcom/android/email/activity/setup/AccountSetupBasics;
.super Lcom/android/email/activity/setup/AccountSetupActivity;
.source "AccountSetupBasics.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/setup/AccountSetupBasics$SaveAddressTask;,
        Lcom/android/email/activity/setup/AccountSetupBasics$PrepareAddressDataTask;,
        Lcom/android/email/activity/setup/AccountSetupBasics$NoteDialogFragment;,
        Lcom/android/email/activity/setup/AccountSetupBasics$DisplayCheckboxTask;,
        Lcom/android/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;
    }
.end annotation


# static fields
.field private static final ACTION_CREATE_ACCOUNT:Ljava/lang/String; = "com.android.email.CREATE_ACCOUNT"

.field private static final DEBUG_ALLOW_NON_TEST_HARNESS_CREATION:Ljava/lang/Boolean; = null

.field public static final DEFAULT_ACCOUNT_CHECK_INTERVAL:I = 0xf

#the value of this static final field might be set in the static constructor
.field public static final ENTER_DEBUG_SCREEN:Z = false

.field private static final EXTRA_CREATE_ACCOUNT_EMAIL:Ljava/lang/String; = "EMAIL"

.field private static final EXTRA_CREATE_ACCOUNT_INCOMING:Ljava/lang/String; = "INCOMING"

.field private static final EXTRA_CREATE_ACCOUNT_OUTGOING:Ljava/lang/String; = "OUTGOING"

.field private static final EXTRA_CREATE_ACCOUNT_USER:Ljava/lang/String; = "USER"

.field public static final EXTRA_FLOW_MODE:Ljava/lang/String; = "FLOW_MODE"

.field private static final EXTRA_INTENT_TO_MESSAGE_COMPOSE:Ljava/lang/String; = "INTENT_TO_MESSAGE_COMPOSE"

.field private static final STATE_KEY_PROVIDER:Ljava/lang/String; = "AccountSetupBasics.provider"

.field private static final TAG:Ljava/lang/String; = "AccountSetupBasics"


# instance fields
.field private mDefaultView:Landroid/widget/CheckBox;

.field mDropdownAdapter:Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mEmailAccountTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

.field private final mEmailValidator:Lcom/android/email/EmailAddressValidator;

.field private mEmailView:Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;

.field private mExtension:Lcom/mediatek/email/ext/IServerProviderPlugin;

.field mHisAddressAdapter:Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mHisAddressTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

.field private mManualButton:Landroid/widget/Button;

.field private mNextButton:Landroid/widget/Button;

.field private mNextButtonInhibit:Z

.field private final mOwnerLookupCallable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mOwnerLookupTask:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPasswordView:Landroid/widget/EditText;

.field private mPaused:Z

.field private mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

.field private mReportAccountAuthenticatorError:Z

.field private mWelcomeView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 116
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v2, "eng"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/email/activity/setup/AccountSetupBasics;->ENTER_DEBUG_SCREEN:Z

    .line 128
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/setup/AccountSetupBasics;->DEBUG_ALLOW_NON_TEST_HARNESS_CREATION:Ljava/lang/Boolean;

    return-void

    :cond_0
    move v0, v1

    .line 116
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupActivity;-><init>()V

    .line 144
    new-instance v0, Lcom/android/email/EmailAddressValidator;

    invoke-direct {v0}, Lcom/android/email/EmailAddressValidator;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailValidator:Lcom/android/email/EmailAddressValidator;

    .line 162
    new-instance v0, Landroid/widget/MultiAutoCompleteTextView$CommaTokenizer;

    invoke-direct {v0}, Landroid/widget/MultiAutoCompleteTextView$CommaTokenizer;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mHisAddressTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    .line 163
    new-instance v0, Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView$EmailAccountTokenizer;

    invoke-direct {v0}, Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView$EmailAccountTokenizer;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailAccountTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    .line 641
    new-instance v0, Lcom/android/email/activity/setup/AccountSetupBasics$3;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/AccountSetupBasics$3;-><init>(Lcom/android/email/activity/setup/AccountSetupBasics;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mOwnerLookupCallable:Ljava/util/concurrent/Callable;

    .line 1045
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/setup/AccountSetupBasics;)Lcom/mediatek/email/ext/IServerProviderPlugin;
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mExtension:Lcom/mediatek/email/ext/IServerProviderPlugin;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/email/activity/setup/AccountSetupBasics;)Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/email/activity/setup/AccountSetupBasics;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/email/activity/setup/AccountSetupBasics;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mNextButtonInhibit:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/email/activity/setup/AccountSetupBasics;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPaused:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/email/activity/setup/AccountSetupBasics;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mDefaultView:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/email/activity/setup/AccountSetupBasics;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->finishAutoSetup()V

    return-void
.end method

.method public static actionAccountCreateFinished(Landroid/app/Activity;J)V
    .locals 4
    .parameter "fromActivity"
    .parameter "accountId"

    .prologue
    .line 253
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getFromAccountManager()Z

    move-result v2

    .line 254
    .local v2, isFromAccountManager:Z
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/android/email/activity/setup/AccountSetupBasics;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 257
    .local v1, i:Landroid/content/Intent;
    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 258
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    const/4 v3, 0x6

    invoke-static {v3, v0}, Lcom/android/email/activity/setup/SetupData;->init(ILcom/android/emailcommon/provider/Account;)V

    .line 259
    invoke-static {v2}, Lcom/android/email/activity/setup/SetupData;->setFromAccountManager(Z)V

    .line 260
    const/high16 v3, 0x400

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 261
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 262
    return-void
.end method

.method public static actionAccountCreateFinishedAccountFlow(Landroid/app/Activity;)V
    .locals 2
    .parameter "fromActivity"

    .prologue
    .line 243
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSetupBasics;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 246
    .local v0, i:Landroid/content/Intent;
    const/4 v1, 0x5

    invoke-static {v1}, Lcom/android/email/activity/setup/SetupData;->init(I)V

    .line 247
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 248
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 249
    return-void
.end method

.method public static actionAccountCreateFinishedComposeFlow(Landroid/app/Activity;)V
    .locals 3
    .parameter "fromActivity"

    .prologue
    .line 230
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/email/activity/setup/AccountSetupBasics;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 231
    .local v1, i:Landroid/content/Intent;
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getExtraBundle()Landroid/os/Parcelable;

    move-result-object v0

    .line 232
    .local v0, data:Landroid/os/Parcelable;
    const/16 v2, 0x9

    invoke-static {v2}, Lcom/android/email/activity/setup/SetupData;->init(I)V

    .line 233
    invoke-static {v0}, Lcom/android/email/activity/setup/SetupData;->setExtraBundle(Landroid/os/Parcelable;)V

    .line 234
    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 235
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 236
    return-void
.end method

.method public static actionNewAccount(Landroid/app/Activity;)V
    .locals 3
    .parameter "fromActivity"

    .prologue
    .line 179
    invoke-static {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->createIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 180
    .local v0, i:Landroid/content/Intent;
    const-string v1, "FLOW_MODE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 181
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 182
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 183
    return-void
.end method

.method public static actionNewAccountFromMessageCompose(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 3
    .parameter "fromActivity"
    .parameter "intentToStore"

    .prologue
    .line 191
    invoke-static {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->createIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 192
    .local v0, i:Landroid/content/Intent;
    const-string v1, "FLOW_MODE"

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 193
    const-string v1, "INTENT_TO_MESSAGE_COMPOSE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 194
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 195
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 196
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 197
    return-void
.end method

.method public static actionSetupExchangeIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3
    .parameter "context"

    .prologue
    .line 204
    invoke-static {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->createIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 205
    .local v0, i:Landroid/content/Intent;
    const-string v1, "FLOW_MODE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 207
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 208
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 209
    return-object v0
.end method

.method public static actionSetupPopImapIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3
    .parameter "context"

    .prologue
    .line 217
    invoke-static {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->createIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 218
    .local v0, i:Landroid/content/Intent;
    const-string v1, "FLOW_MODE"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 220
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 221
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 222
    return-object v0
.end method

.method public static createIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3
    .parameter "fromActivity"

    .prologue
    .line 168
    invoke-static {p0}, Lcom/mediatek/email/extension/OPExtensionFactory;->getProviderExtension(Landroid/content/Context;)Lcom/mediatek/email/ext/IServerProviderPlugin;

    move-result-object v0

    .line 169
    .local v0, extension:Lcom/mediatek/email/ext/IServerProviderPlugin;
    invoke-interface {v0}, Lcom/mediatek/email/ext/IServerProviderPlugin;->isSupportProviderList()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    const-string v1, "AccountSetupBasics"

    const-string v2, "createIntent to AccountSetupChooseESP #actionChooseESP"

    invoke-static {v1, v2}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/mediatek/email/extension/AccountSetupChooseESP;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 173
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/email/activity/setup/AccountSetupBasics;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method private finishAutoSetup()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 660
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 661
    .local v8, email:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 664
    .local v9, password:Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    invoke-virtual {v0, v8}, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->expandTemplates(Ljava/lang/String;)V

    .line 666
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v6

    .line 667
    .local v6, account:Lcom/android/emailcommon/provider/Account;
    invoke-virtual {v6, p0}, Lcom/android/emailcommon/provider/Account;->getOrCreateHostAuthRecv(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v10

    .line 668
    .local v10, recvAuth:Lcom/android/emailcommon/provider/HostAuth;
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->incomingUri:Ljava/lang/String;

    invoke-static {v10, v0}, Lcom/android/emailcommon/provider/HostAuth;->setHostAuthFromString(Lcom/android/emailcommon/provider/HostAuth;Ljava/lang/String;)V

    .line 669
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->incomingUsername:Ljava/lang/String;

    invoke-virtual {v10, v0, v9}, Lcom/android/emailcommon/provider/HostAuth;->setLogin(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    invoke-virtual {v6, p0}, Lcom/android/emailcommon/provider/Account;->getOrCreateHostAuthSend(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v11

    .line 672
    .local v11, sendAuth:Lcom/android/emailcommon/provider/HostAuth;
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->outgoingUri:Ljava/lang/String;

    invoke-static {v11, v0}, Lcom/android/emailcommon/provider/HostAuth;->setHostAuthFromString(Lcom/android/emailcommon/provider/HostAuth;Ljava/lang/String;)V

    .line 673
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->outgoingUsername:Ljava/lang/String;

    invoke-virtual {v11, v0, v9}, Lcom/android/emailcommon/provider/HostAuth;->setLogin(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mDefaultView:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    invoke-direct {p0, v0, v8, v1}, Lcom/android/email/activity/setup/AccountSetupBasics;->populateSetupData(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 685
    new-instance v0, Lcom/android/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;

    iget-object v3, v10, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    iget-object v4, v1, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->incomingUsername:Ljava/lang/String;

    iget-object v5, v10, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;-><init>(Lcom/android/email/activity/setup/AccountSetupBasics;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 697
    .end local v6           #account:Lcom/android/emailcommon/provider/Account;
    .end local v10           #recvAuth:Lcom/android/emailcommon/provider/HostAuth;
    .end local v11           #sendAuth:Lcom/android/emailcommon/provider/HostAuth;
    :goto_0
    return-void

    .line 688
    :catch_0
    move-exception v7

    .line 695
    .local v7, e:Ljava/net/URISyntaxException;
    invoke-direct {p0, v12}, Lcom/android/email/activity/setup/AccountSetupBasics;->onManualSetup(Z)V

    goto :goto_0
.end method

.method private getOwnerName()Ljava/lang/String;
    .locals 6

    .prologue
    .line 627
    const/4 v2, 0x0

    .line 629
    .local v2, result:Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mOwnerLookupTask:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v3}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 635
    :goto_0
    return-object v2

    .line 630
    :catch_0
    move-exception v1

    .line 631
    .local v1, e:Ljava/lang/InterruptedException;
    const-string v3, "AccountSetupBasics"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " invokes in method getOwnerName()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 632
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    .line 633
    .local v1, e:Ljava/util/concurrent/ExecutionException;
    const-string v3, "AccountSetupBasics"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " invokes in method getOwnerName()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initLengthFilter()V
    .locals 3

    .prologue
    const/16 v2, 0x100

    const/4 v1, 0x1

    .line 1005
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;

    invoke-static {v0, p0, v2, v1}, Lcom/android/email/activity/UiUtilities;->setupLengthFilter(Landroid/widget/EditText;Landroid/content/Context;IZ)V

    .line 1007
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    invoke-static {v0, p0, v2, v1}, Lcom/android/email/activity/UiUtilities;->setupLengthFilter(Landroid/widget/EditText;Landroid/content/Context;IZ)V

    .line 1009
    return-void
.end method

.method private onEnableProceedButtons(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 953
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mManualButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 954
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 955
    return-void
.end method

.method private onManualSetup(Z)V
    .locals 11
    .parameter "allowAutoDiscover"

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 802
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 803
    .local v2, email:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 804
    .local v4, password:Ljava/lang/String;
    const-string v8, "@"

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 805
    .local v3, emailParts:[Ljava/lang/String;
    aget-object v8, v3, v9

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 806
    .local v7, user:Ljava/lang/String;
    const/4 v8, 0x1

    aget-object v8, v3, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 811
    .local v1, domain:Ljava/lang/String;
    sget-boolean v8, Lcom/android/email/activity/setup/AccountSetupBasics;->ENTER_DEBUG_SCREEN:Z

    if-eqz v8, :cond_0

    const-string v8, "d@d.d"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "debug"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 812
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;

    const-string v9, ""

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 813
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    const-string v9, ""

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 814
    invoke-static {p0}, Lcom/android/email/activity/setup/AccountSettings;->actionSettingsWithDebug(Landroid/content/Context;)V

    .line 832
    :goto_0
    return-void

    .line 818
    :cond_0
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 819
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    invoke-virtual {v0, p0}, Lcom/android/emailcommon/provider/Account;->getOrCreateHostAuthRecv(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v5

    .line 820
    .local v5, recvAuth:Lcom/android/emailcommon/provider/HostAuth;
    invoke-virtual {v5, v7, v4}, Lcom/android/emailcommon/provider/HostAuth;->setLogin(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    const-string v8, "placeholder"

    invoke-virtual {v5, v8, v1, v10, v9}, Lcom/android/emailcommon/provider/HostAuth;->setConnection(Ljava/lang/String;Ljava/lang/String;II)V

    .line 823
    invoke-virtual {v0, p0}, Lcom/android/emailcommon/provider/Account;->getOrCreateHostAuthSend(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v6

    .line 824
    .local v6, sendAuth:Lcom/android/emailcommon/provider/HostAuth;
    invoke-virtual {v6, v7, v4}, Lcom/android/emailcommon/provider/HostAuth;->setLogin(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    const-string v8, "placeholder"

    invoke-virtual {v6, v8, v1, v10, v9}, Lcom/android/emailcommon/provider/HostAuth;->setConnection(Ljava/lang/String;Ljava/lang/String;II)V

    .line 828
    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mDefaultView:Landroid/widget/CheckBox;

    invoke-virtual {v9}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v9

    invoke-direct {p0, v8, v2, v9}, Lcom/android/email/activity/setup/AccountSetupBasics;->populateSetupData(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 830
    invoke-static {p1}, Lcom/android/email/activity/setup/SetupData;->setAllowAutodiscover(Z)V

    .line 831
    invoke-static {p0}, Lcom/android/email/activity/setup/AccountSetupAccountType;->actionSelectAccountType(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method private onNext()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 765
    const-string v6, "input_method"

    invoke-virtual {p0, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodManager;

    .line 766
    .local v4, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v4, v6, v7}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 771
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mExtension:Lcom/mediatek/email/ext/IServerProviderPlugin;

    invoke-static {v6}, Lcom/mediatek/email/extension/AccountSetupChooseESP;->isSelectedExchange(Lcom/mediatek/email/ext/IServerProviderPlugin;)Z

    move-result v5

    .line 773
    .local v5, selectedExchangefromChooseESP:Z
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getFlowMode()I

    move-result v6

    if-eq v6, v8, :cond_1

    if-nez v5, :cond_1

    .line 775
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 776
    .local v2, email:Ljava/lang/String;
    const-string v6, "@"

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 777
    .local v3, emailParts:[Ljava/lang/String;
    aget-object v6, v3, v8

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 778
    .local v1, domain:Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsUtils;->findProviderForDomain(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    move-result-object v6

    iput-object v6, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    .line 779
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    if-eqz v6, :cond_1

    .line 780
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    iget-object v6, v6, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->note:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 781
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    iget-object v6, v6, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->note:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/email/activity/setup/AccountSetupBasics$NoteDialogFragment;->newInstance(Ljava/lang/String;)Lcom/android/email/activity/setup/AccountSetupBasics$NoteDialogFragment;

    move-result-object v0

    .line 783
    .local v0, dialogFragment:Lcom/android/email/activity/setup/AccountSetupBasics$NoteDialogFragment;
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    const-string v7, "NoteDialogFragment"

    invoke-virtual {v0, v6, v7}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 792
    .end local v0           #dialogFragment:Lcom/android/email/activity/setup/AccountSetupBasics$NoteDialogFragment;
    .end local v1           #domain:Ljava/lang/String;
    .end local v2           #email:Ljava/lang/String;
    .end local v3           #emailParts:[Ljava/lang/String;
    :goto_0
    return-void

    .line 785
    .restart local v1       #domain:Ljava/lang/String;
    .restart local v2       #email:Ljava/lang/String;
    .restart local v3       #emailParts:[Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->finishAutoSetup()V

    goto :goto_0

    .line 791
    .end local v1           #domain:Ljava/lang/String;
    .end local v2           #email:Ljava/lang/String;
    .end local v3           #emailParts:[Ljava/lang/String;
    :cond_1
    invoke-direct {p0, v7}, Lcom/android/email/activity/setup/AccountSetupBasics;->onManualSetup(Z)V

    goto :goto_0
.end method

.method private populateSetupData(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .parameter "senderName"
    .parameter "senderEmail"
    .parameter "isDefault"

    .prologue
    .line 866
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 867
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    invoke-virtual {v0, p1}, Lcom/android/emailcommon/provider/Account;->setSenderName(Ljava/lang/String;)V

    .line 868
    invoke-virtual {v0, p2}, Lcom/android/emailcommon/provider/Account;->setEmailAddress(Ljava/lang/String;)V

    .line 869
    invoke-virtual {v0, p2}, Lcom/android/emailcommon/provider/Account;->setDisplayName(Ljava/lang/String;)V

    .line 870
    invoke-virtual {v0, p3}, Lcom/android/emailcommon/provider/Account;->setDefaultAccount(Z)V

    .line 871
    invoke-static {p3}, Lcom/android/email/activity/setup/SetupData;->setDefault(Z)V

    .line 873
    iget-object v2, v0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v1, v2, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    .line 874
    .local v1, protocol:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/email/activity/setup/AccountSetupBasics;->setFlagsForProtocol(Lcom/android/emailcommon/provider/Account;Ljava/lang/String;)V

    .line 875
    return-void
.end method

.method static setFlagsForProtocol(Lcom/android/emailcommon/provider/Account;Ljava/lang/String;)V
    .locals 2
    .parameter "account"
    .parameter "protocol"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v1, 0x2

    .line 885
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    .line 887
    const-string v0, "imap"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 890
    invoke-virtual {p0, v1}, Lcom/android/emailcommon/provider/Account;->setDeletePolicy(I)V

    .line 891
    iget v0, p0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    .line 894
    :cond_0
    const-string v0, "eas"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 895
    invoke-virtual {p0, v1}, Lcom/android/emailcommon/provider/Account;->setDeletePolicy(I)V

    .line 896
    const/4 v0, -0x5

    invoke-virtual {p0, v0}, Lcom/android/emailcommon/provider/Account;->setSyncInterval(I)V

    .line 897
    invoke-virtual {p0, v1}, Lcom/android/emailcommon/provider/Account;->setSyncLookback(I)V

    .line 901
    :goto_0
    return-void

    .line 899
    :cond_1
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/android/emailcommon/provider/Account;->setSyncInterval(I)V

    goto :goto_0
.end method

.method private validateFields()V
    .locals 3

    .prologue
    .line 614
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;

    invoke-static {v1}, Lcom/android/emailcommon/utility/Utility;->isTextViewNotEmpty(Landroid/widget/TextView;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    invoke-static {v1}, Lcom/android/emailcommon/utility/Utility;->isTextViewNotEmpty(Landroid/widget/TextView;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailValidator:Lcom/android/email/EmailAddressValidator;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/email/EmailAddressValidator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 617
    .local v0, valid:Z
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/email/activity/setup/AccountSetupBasics;->onEnableProceedButtons(Z)V

    .line 620
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    invoke-static {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsUtils;->checkPasswordSpaces(Landroid/content/Context;Landroid/widget/EditText;)V

    .line 621
    return-void

    .line 614
    .end local v0           #valid:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 567
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->validateFields()V

    .line 568
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 574
    return-void
.end method

.method public finish()V
    .locals 3

    .prologue
    .line 525
    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mReportAccountAuthenticatorError:Z

    if-eqz v1, :cond_0

    .line 526
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccountAuthenticatorResponse()Landroid/accounts/AccountAuthenticatorResponse;

    move-result-object v0

    .line 528
    .local v0, authenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;
    if-eqz v0, :cond_0

    .line 529
    const/4 v1, 0x4

    const-string v2, "canceled"

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountAuthenticatorResponse;->onError(ILjava/lang/String;)V

    .line 530
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/email/activity/setup/SetupData;->setAccountAuthenticatorResponse(Landroid/accounts/AccountAuthenticatorResponse;)V

    .line 533
    .end local v0           #authenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 534
    return-void
.end method

.method public forceCreateAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "email"
    .parameter "user"
    .parameter "incoming"
    .parameter "outgoing"

    .prologue
    .line 846
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 848
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/android/emailcommon/provider/Account;->getOrCreateHostAuthRecv(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v2

    .line 849
    .local v2, recvAuth:Lcom/android/emailcommon/provider/HostAuth;
    invoke-static {v2, p3}, Lcom/android/emailcommon/provider/HostAuth;->setHostAuthFromString(Lcom/android/emailcommon/provider/HostAuth;Ljava/lang/String;)V

    .line 851
    invoke-virtual {v0, p0}, Lcom/android/emailcommon/provider/Account;->getOrCreateHostAuthSend(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v3

    .line 852
    .local v3, sendAuth:Lcom/android/emailcommon/provider/HostAuth;
    invoke-static {v3, p4}, Lcom/android/emailcommon/provider/HostAuth;->setHostAuthFromString(Lcom/android/emailcommon/provider/HostAuth;Ljava/lang/String;)V

    .line 854
    const/4 v4, 0x0

    invoke-direct {p0, p2, p1, v4}, Lcom/android/email/activity/setup/AccountSetupBasics;->populateSetupData(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 860
    .end local v2           #recvAuth:Lcom/android/emailcommon/provider/HostAuth;
    .end local v3           #sendAuth:Lcom/android/emailcommon/provider/HostAuth;
    :goto_0
    return-void

    .line 855
    :catch_0
    move-exception v1

    .line 857
    .local v1, e:Ljava/net/URISyntaxException;
    const v4, 0x7f08012c

    const/4 v5, 0x1

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onAutoDiscoverComplete(ILcom/android/emailcommon/provider/HostAuth;)V
    .locals 1
    .parameter "result"
    .parameter "hostAuth"

    .prologue
    .line 927
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public onCheckSettingsComplete(I)V
    .locals 1
    .parameter "result"

    .prologue
    .line 913
    if-nez p1, :cond_0

    .line 914
    invoke-static {p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->actionOptions(Landroid/app/Activity;)V

    .line 915
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mReportAccountAuthenticatorError:Z

    .line 919
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 549
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 561
    :cond_0
    :goto_0
    return-void

    .line 552
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mNextButtonInhibit:Z

    if-nez v0, :cond_0

    .line 555
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->onNext()V

    goto :goto_0

    .line 558
    :pswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/email/activity/setup/AccountSetupBasics;->onManualSetup(Z)V

    goto :goto_0

    .line 549
    nop

    :pswitch_data_0
    .packed-switch 0x7f0f0025
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 25
    .parameter "savedInstanceState"

    .prologue
    .line 266
    invoke-super/range {p0 .. p1}, Lcom/android/email/activity/setup/AccountSetupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 267
    invoke-static/range {p0 .. p0}, Lcom/android/email/activity/ActivityHelper;->debugSetWindowFlags(Landroid/app/Activity;)V

    .line 270
    invoke-static/range {p0 .. p0}, Lcom/mediatek/email/extension/OPExtensionFactory;->getProviderExtension(Landroid/content/Context;)Lcom/mediatek/email/ext/IServerProviderPlugin;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupBasics;->mExtension:Lcom/mediatek/email/ext/IServerProviderPlugin;

    .line 272
    if-eqz p1, :cond_2

    const-string v21, "com.android.email.setupdata"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_2

    const/4 v14, 0x1

    .line 276
    .local v14, isAppilcationRestart:Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 277
    .local v5, action:Ljava/lang/String;
    const-string v21, "com.android.email.CREATE_ACCOUNT"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 278
    const/16 v21, 0x4

    invoke-static/range {v21 .. v21}, Lcom/android/email/activity/setup/SetupData;->init(I)V

    .line 281
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v21

    const-string v22, "FLOW_MODE"

    const/16 v23, -0x1

    invoke-virtual/range {v21 .. v23}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 282
    .local v10, flowMode:I
    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v10, v0, :cond_3

    if-nez v14, :cond_3

    .line 283
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " AccountSetupBasics::onCreate, flowMode = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;)V

    .line 284
    invoke-static {v10}, Lcom/android/email/activity/setup/SetupData;->init(I)V

    .line 294
    :goto_1
    const/16 v21, 0x1

    move/from16 v0, v21

    if-eq v10, v0, :cond_1

    const/16 v21, 0x2

    move/from16 v0, v21

    if-ne v10, v0, :cond_4

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Intent;->getFlags()I

    move-result v21

    const/high16 v22, 0x1000

    and-int v21, v21, v22

    if-nez v21, :cond_4

    .line 297
    const-string v21, "Add account from AccountManager and FLAG_ACTVITY_NEW_TASK has been lost, re-add it and restart Email"

    invoke-static/range {v21 .. v21}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;)V

    .line 299
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v13

    .line 300
    .local v13, intent:Landroid/content/Intent;
    const/high16 v21, 0x1000

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 301
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 302
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->finish()V

    .line 507
    .end local v13           #intent:Landroid/content/Intent;
    :goto_2
    return-void

    .line 272
    .end local v5           #action:Ljava/lang/String;
    .end local v10           #flowMode:I
    .end local v14           #isAppilcationRestart:Z
    :cond_2
    const/4 v14, 0x0

    goto :goto_0

    .line 288
    .restart local v5       #action:Ljava/lang/String;
    .restart local v10       #flowMode:I
    .restart local v14       #isAppilcationRestart:Z
    :cond_3
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getFlowMode()I

    move-result v10

    goto :goto_1

    .line 307
    :cond_4
    const/16 v21, 0x5

    move/from16 v0, v21

    if-ne v10, v0, :cond_5

    .line 309
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->finish()V

    goto :goto_2

    .line 311
    :cond_5
    const/16 v21, 0x6

    move/from16 v0, v21

    if-ne v10, v0, :cond_f

    .line 312
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v4

    .line 313
    .local v4, account:Lcom/android/emailcommon/provider/Account;
    if-eqz v4, :cond_7

    iget-wide v0, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v21, v0

    const-wide/16 v23, 0x0

    cmp-long v21, v21, v23

    if-ltz v21, :cond_7

    .line 314
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getFromAccountManager()Z

    move-result v21

    if-eqz v21, :cond_6

    .line 315
    iget-wide v0, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v21, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/Welcome;->actionSyncInboxAndFinish(Landroid/app/Activity;J)V

    .line 320
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->finish()V

    goto :goto_2

    .line 318
    :cond_6
    iget-wide v0, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v21, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/Welcome;->actionOpenAccountInbox(Landroid/app/Activity;J)V

    goto :goto_3

    .line 323
    :cond_7
    const-string v21, "Account is null, may be removed."

    invoke-static/range {v21 .. v21}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;)V

    .line 324
    invoke-static/range {p0 .. p0}, Lcom/android/email/activity/Welcome;->actionStart(Landroid/app/Activity;)V

    .line 325
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->finish()V

    .line 342
    .end local v4           #account:Lcom/android/emailcommon/provider/Account;
    :cond_8
    :goto_4
    const/16 v21, 0x8

    move/from16 v0, v21

    if-ne v10, v0, :cond_9

    .line 343
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v21

    const-string v22, "INTENT_TO_MESSAGE_COMPOSE"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/content/Intent;

    .line 344
    .local v8, composeIntent:Landroid/content/Intent;
    if-eqz v8, :cond_9

    .line 345
    invoke-static {v8}, Lcom/android/email/activity/setup/SetupData;->setExtraBundle(Landroid/os/Parcelable;)V

    .line 350
    .end local v8           #composeIntent:Landroid/content/Intent;
    :cond_9
    const v21, 0x7f040008

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 352
    const v21, 0x7f0f0021

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupBasics;->mWelcomeView:Landroid/widget/TextView;

    .line 353
    const v21, 0x7f0f0027

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;

    .line 355
    const v21, 0x7f0f0028

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/EditText;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    .line 356
    const v21, 0x7f0f0029

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/CheckBox;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupBasics;->mDefaultView:Landroid/widget/CheckBox;

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mExtension:Lcom/mediatek/email/ext/IServerProviderPlugin;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/mediatek/email/extension/AccountSetupChooseESP;->isSelectedSpecialESP(Lcom/mediatek/email/ext/IServerProviderPlugin;)Z

    move-result v21

    if-eqz v21, :cond_a

    .line 361
    const-string v21, "AccountSetupBasics"

    const-string v22, "user chose dafault type ESP, set mDefaultView checked."

    invoke-static/range {v21 .. v22}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mDefaultView:Landroid/widget/CheckBox;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 364
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;

    move-object/from16 v21, v0

    new-instance v22, Lcom/android/email/activity/setup/AccountSetupBasics$1;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/setup/AccountSetupBasics$1;-><init>(Lcom/android/email/activity/setup/AccountSetupBasics;)V

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 394
    new-instance v21, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;

    const v22, 0x7f040015

    invoke-static/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSettingsUtils;->CollectAutoSetupDomain(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupBasics;->mDropdownAdapter:Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mDropdownAdapter:Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;

    move-object/from16 v21, v0

    new-instance v22, Lcom/android/email/activity/setup/DropdownAccountsFilter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mDropdownAdapter:Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;

    move-object/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Lcom/android/email/activity/setup/DropdownAccountsFilter;-><init>(Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;)V

    invoke-virtual/range {v21 .. v22}, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->setFilter(Landroid/widget/Filter;)V

    .line 398
    new-instance v21, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;

    const v22, 0x7f040015

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupBasics;->mHisAddressAdapter:Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mHisAddressAdapter:Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;

    move-object/from16 v21, v0

    new-instance v22, Lcom/android/email/activity/setup/DropdownAddressFilter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mHisAddressAdapter:Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;

    move-object/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Lcom/android/email/activity/setup/DropdownAddressFilter;-><init>(Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;)V

    invoke-virtual/range {v21 .. v22}, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->setFilter(Landroid/widget/Filter;)V

    .line 400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mHisAddressAdapter:Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mHisAddressTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    .line 402
    new-instance v21, Lcom/android/email/activity/setup/AccountSetupBasics$PrepareAddressDataTask;

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/email/activity/setup/AccountSetupBasics$PrepareAddressDataTask;-><init>(Lcom/android/email/activity/setup/AccountSetupBasics;Lcom/android/email/activity/setup/AccountSetupBasics$1;)V

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;

    move-object/from16 v21, v0

    new-instance v22, Lcom/android/email/activity/setup/AccountSetupBasics$2;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/setup/AccountSetupBasics$2;-><init>(Lcom/android/email/activity/setup/AccountSetupBasics;)V

    invoke-virtual/range {v21 .. v22}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 414
    new-instance v21, Lcom/android/email/activity/setup/AccountSetupBasics$DisplayCheckboxTask;

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/email/activity/setup/AccountSetupBasics$DisplayCheckboxTask;-><init>(Lcom/android/email/activity/setup/AccountSetupBasics;Lcom/android/email/activity/setup/AccountSetupBasics$1;)V

    sget-object v22, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Void;

    move-object/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 416
    const/4 v15, 0x1

    .line 417
    .local v15, manualButtonDisplayed:Z
    const/4 v6, 0x0

    .line 420
    .local v6, alternateStrings:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mExtension:Lcom/mediatek/email/ext/IServerProviderPlugin;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/mediatek/email/extension/AccountSetupChooseESP;->isSelectedExchange(Lcom/mediatek/email/ext/IServerProviderPlugin;)Z

    move-result v18

    .line 422
    .local v18, selectedExchangeProvider:Z
    const/16 v21, 0x1

    move/from16 v0, v21

    if-eq v10, v0, :cond_b

    if-eqz v18, :cond_c

    .line 425
    :cond_b
    const/4 v15, 0x0

    .line 427
    invoke-static/range {p0 .. p0}, Lcom/android/email/VendorPolicyLoader;->getInstance(Landroid/content/Context;)Lcom/android/email/VendorPolicyLoader;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/email/VendorPolicyLoader;->useAlternateExchangeStrings()Z

    move-result v6

    .line 428
    if-eqz v6, :cond_11

    const v21, 0x7f080123

    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mWelcomeView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    if-eqz v6, :cond_12

    const v21, 0x7f080127

    :goto_6
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 437
    :cond_c
    const v21, 0x7f0f0025

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/Button;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupBasics;->mManualButton:Landroid/widget/Button;

    .line 438
    const v21, 0x7f0f0026

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/Button;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupBasics;->mNextButton:Landroid/widget/Button;

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mManualButton:Landroid/widget/Button;

    move-object/from16 v22, v0

    if-eqz v15, :cond_13

    const/16 v21, 0x0

    :goto_7
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mManualButton:Landroid/widget/Button;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mNextButton:Landroid/widget/Button;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 443
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/email/activity/setup/AccountSetupBasics;->onEnableProceedButtons(Z)V

    .line 445
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/email/activity/setup/AccountSetupBasics;->mNextButtonInhibit:Z

    .line 448
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v21

    const-string v22, "accountAuthenticatorResponse"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/accounts/AccountAuthenticatorResponse;

    .line 450
    .local v7, authenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;
    invoke-static {v7}, Lcom/android/email/activity/setup/SetupData;->setAccountAuthenticatorResponse(Landroid/accounts/AccountAuthenticatorResponse;)V

    .line 451
    if-eqz v7, :cond_d

    .line 457
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/email/activity/setup/AccountSetupBasics;->mReportAccountAuthenticatorError:Z

    .line 461
    :cond_d
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getUsername()Ljava/lang/String;

    move-result-object v20

    .line 462
    .local v20, userName:Ljava/lang/String;
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getPassword()Ljava/lang/String;

    move-result-object v17

    .line 463
    .local v17, password:Ljava/lang/String;
    if-eqz v20, :cond_e

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 465
    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Lcom/android/email/activity/setup/SetupData;->setUsername(Ljava/lang/String;)V

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 467
    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Lcom/android/email/activity/setup/SetupData;->setPassword(Ljava/lang/String;)V

    .line 472
    :cond_e
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getFlowMode()I

    move-result v21

    const/16 v22, 0x4

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_17

    .line 473
    sget-object v21, Lcom/android/email/activity/setup/AccountSetupBasics;->DEBUG_ALLOW_NON_TEST_HARNESS_CREATION:Ljava/lang/Boolean;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    if-nez v21, :cond_14

    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v21

    if-nez v21, :cond_14

    .line 475
    const-string v21, "AccountSetupBasics"

    const-string v22, "ERROR: Force account create only allowed while in test harness"

    invoke-static/range {v21 .. v22}, Lcom/android/emailcommon/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->finish()V

    goto/16 :goto_2

    .line 327
    .end local v6           #alternateStrings:Z
    .end local v7           #authenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;
    .end local v15           #manualButtonDisplayed:Z
    .end local v17           #password:Ljava/lang/String;
    .end local v18           #selectedExchangeProvider:Z
    .end local v20           #userName:Ljava/lang/String;
    :cond_f
    const/16 v21, 0x9

    move/from16 v0, v21

    if-ne v10, v0, :cond_8

    .line 330
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getExtraBundle()Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Landroid/content/Intent;

    .line 331
    .local v11, i:Landroid/content/Intent;
    if-eqz v11, :cond_10

    .line 332
    const-string v21, "AccountSetupBasics"

    const-string v22, "After finished setup account, Email will start the orignal activity :MessageCompose "

    invoke-static/range {v21 .. v22}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const/high16 v21, 0x400

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 335
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 337
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->finish()V

    goto/16 :goto_4

    .line 428
    .end local v11           #i:Landroid/content/Intent;
    .restart local v6       #alternateStrings:Z
    .restart local v15       #manualButtonDisplayed:Z
    .restart local v18       #selectedExchangeProvider:Z
    :cond_11
    const v21, 0x7f080122

    goto/16 :goto_5

    .line 431
    :cond_12
    const v21, 0x7f080126

    goto/16 :goto_6

    .line 439
    :cond_13
    const/16 v21, 0x4

    goto/16 :goto_7

    .line 479
    .restart local v7       #authenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;
    .restart local v17       #password:Ljava/lang/String;
    .restart local v20       #userName:Ljava/lang/String;
    :cond_14
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v13

    .line 480
    .restart local v13       #intent:Landroid/content/Intent;
    const-string v21, "EMAIL"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 481
    .local v9, email:Ljava/lang/String;
    const-string v21, "USER"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 482
    .local v19, user:Ljava/lang/String;
    const-string v21, "INCOMING"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 483
    .local v12, incoming:Ljava/lang/String;
    const-string v21, "OUTGOING"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 484
    .local v16, outgoing:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_15

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_15

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_15

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_16

    .line 486
    :cond_15
    const-string v21, "AccountSetupBasics"

    const-string v22, "ERROR: Force account create requires extras EMAIL, USER, INCOMING, OUTGOING"

    invoke-static/range {v21 .. v22}, Lcom/android/emailcommon/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->finish()V

    goto/16 :goto_2

    .line 491
    :cond_16
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    invoke-virtual {v0, v9, v1, v12, v2}, Lcom/android/email/activity/setup/AccountSetupBasics;->forceCreateAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupBasics;->onCheckSettingsComplete(I)V

    goto/16 :goto_2

    .line 496
    .end local v9           #email:Ljava/lang/String;
    .end local v12           #incoming:Ljava/lang/String;
    .end local v13           #intent:Landroid/content/Intent;
    .end local v16           #outgoing:Ljava/lang/String;
    .end local v19           #user:Ljava/lang/String;
    :cond_17
    if-eqz p1, :cond_18

    const-string v21, "AccountSetupBasics.provider"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_18

    .line 497
    const-string v21, "AccountSetupBasics.provider"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v21

    check-cast v21, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    .line 502
    :cond_18
    new-instance v21, Ljava/util/concurrent/FutureTask;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mOwnerLookupCallable:Ljava/util/concurrent/Callable;

    move-object/from16 v22, v0

    invoke-direct/range {v21 .. v22}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupBasics;->mOwnerLookupTask:Ljava/util/concurrent/FutureTask;

    .line 503
    const-string v21, "AccountSetupBasics"

    const-string v22, ">>>>> Utility.runAsync onCreate"

    invoke-static/range {v21 .. v22}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mOwnerLookupTask:Ljava/util/concurrent/FutureTask;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 506
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->initLengthFilter()V

    goto/16 :goto_2
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 511
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 512
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPaused:Z

    .line 513
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 517
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 518
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPaused:Z

    .line 519
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 538
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountSetupActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 539
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    if-eqz v0, :cond_0

    .line 540
    const-string v0, "AccountSetupBasics.provider"

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 542
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 11
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 581
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 582
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "@"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 583
    .local v2, indexOfAt:I
    if-lez v2, :cond_3

    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v8

    if-ge v2, v8, :cond_3

    .line 584
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;

    invoke-virtual {v8}, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v8

    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mDropdownAdapter:Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;

    if-eq v8, v9, :cond_0

    .line 585
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;

    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mDropdownAdapter:Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;

    invoke-virtual {v8, v9}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 586
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;

    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailAccountTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-virtual {v8, v9}, Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    .line 596
    .end local v2           #indexOfAt:I
    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mDropdownAdapter:Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;

    if-eqz v8, :cond_2

    .line 597
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 598
    .local v0, email:Ljava/lang/String;
    const-string v8, "@"

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 599
    .local v1, emailParts:[Ljava/lang/String;
    array-length v8, v1

    if-lez v8, :cond_1

    .line 600
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mDropdownAdapter:Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;

    const/4 v9, 0x0

    aget-object v9, v1, v9

    invoke-virtual {v8, v9}, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->setUserName(Ljava/lang/String;)V

    .line 603
    :cond_1
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;

    invoke-virtual {v8}, Landroid/view/View;->getScrollX()I

    move-result v4

    .line 604
    .local v4, scrollX:I
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;

    invoke-virtual {v8}, Landroid/view/View;->getScrollY()I

    move-result v5

    .line 605
    .local v5, scrollY:I
    const/4 v6, 0x0

    .line 606
    .local v6, xoff:I
    const/4 v7, 0x0

    .line 607
    .local v7, yoff:I
    new-instance v3, Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;

    invoke-virtual {v8}, Landroid/widget/AutoCompleteTextView;->getDropDownWidth()I

    move-result v8

    add-int/2addr v8, v4

    add-int/2addr v8, v6

    add-int/lit16 v9, v5, 0x1f4

    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    add-int/2addr v9, v7

    invoke-direct {v3, v4, v5, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 609
    .local v3, r:Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;

    const/4 v9, 0x1

    invoke-virtual {v8, v3, v9}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    .line 611
    .end local v0           #email:Ljava/lang/String;
    .end local v1           #emailParts:[Ljava/lang/String;
    .end local v3           #r:Landroid/graphics/Rect;
    .end local v4           #scrollX:I
    .end local v5           #scrollY:I
    .end local v6           #xoff:I
    .end local v7           #yoff:I
    :cond_2
    return-void

    .line 589
    .restart local v2       #indexOfAt:I
    :cond_3
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;

    invoke-virtual {v8}, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v8

    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mHisAddressAdapter:Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;

    if-eq v8, v9, :cond_0

    .line 590
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;

    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mHisAddressAdapter:Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;

    invoke-virtual {v8, v9}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 591
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;

    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mHisAddressTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-virtual {v8, v9}, Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    goto :goto_0
.end method
