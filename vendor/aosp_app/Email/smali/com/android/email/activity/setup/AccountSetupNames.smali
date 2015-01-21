.class public Lcom/android/email/activity/setup/AccountSetupNames;
.super Lcom/android/email/activity/setup/AccountSetupActivity;
.source "AccountSetupNames.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/setup/AccountSetupNames$FinalSetupTask;
    }
.end annotation


# static fields
.field private static final EXTRA_DATA:Ljava/lang/String; = "setupdata"

.field private static final EXTRA_NAME:Ljava/lang/String; = "name"

.field private static final PROFILE_URI:Landroid/net/Uri; = null

.field private static final REQUEST_SECURITY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AccountSetupNames"


# instance fields
.field private mDescription:Landroid/widget/EditText;

.field private mEasAccount:Z

.field private mExtension:Lcom/mediatek/email/ext/IServerProviderPlugin;

.field private mName:Landroid/widget/EditText;

.field private mNextButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    sget-object v0, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/email/activity/setup/AccountSetupNames;->PROFILE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupActivity;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mEasAccount:Z

    .line 348
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/setup/AccountSetupNames;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupNames;->validateFields()V

    return-void
.end method

.method static synthetic access$100()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/android/email/activity/setup/AccountSetupNames;->PROFILE_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/email/activity/setup/AccountSetupNames;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/email/activity/setup/AccountSetupNames;)Lcom/mediatek/email/ext/IServerProviderPlugin;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mExtension:Lcom/mediatek/email/ext/IServerProviderPlugin;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/email/activity/setup/AccountSetupNames;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupNames;->finishActivity()V

    return-void
.end method

.method public static actionSetNames(Landroid/app/Activity;)V
    .locals 1
    .parameter "fromActivity"

    .prologue
    .line 81
    const-class v0, Lcom/android/email/activity/setup/AccountSetupNames;

    invoke-static {p0, v0}, Lcom/android/email/activity/setup/SetupData;->intentWithBackup(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 83
    return-void
.end method

.method private cleanActivityAndMoveToMessageList()V
    .locals 3

    .prologue
    .line 260
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 261
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    if-eqz v0, :cond_0

    .line 262
    iget-wide v1, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {p0, v1, v2}, Lcom/android/email/activity/setup/AccountSetupBasics;->actionAccountCreateFinished(Landroid/app/Activity;J)V

    .line 268
    :goto_0
    return-void

    .line 266
    :cond_0
    invoke-static {p0}, Lcom/android/email/activity/Welcome;->actionStart(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method private finishActivity()V
    .locals 2

    .prologue
    .line 274
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mExtension:Lcom/mediatek/email/ext/IServerProviderPlugin;

    invoke-interface {v1}, Lcom/mediatek/email/ext/IServerProviderPlugin;->isSupportProviderList()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    invoke-static {p0}, Lcom/mediatek/email/extension/AccountSetupChooseESP;->onAccountSetupFinished(Landroid/app/Activity;)V

    .line 279
    :cond_0
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getFlowMode()I

    move-result v0

    .line 283
    .local v0, flowMode:I
    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 284
    invoke-static {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->actionAccountCreateFinishedComposeFlow(Landroid/app/Activity;)V

    .line 285
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 307
    :goto_0
    return-void

    .line 290
    :cond_1
    packed-switch v0, :pswitch_data_0

    .line 303
    :pswitch_0
    invoke-static {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->actionAccountCreateFinishedAccountFlow(Landroid/app/Activity;)V

    .line 306
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 295
    :pswitch_1
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/email/activity/setup/SetupData;->setFromAccountManager(Z)V

    .line 296
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupNames;->cleanActivityAndMoveToMessageList()V

    goto :goto_1

    .line 299
    :pswitch_2
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupNames;->cleanActivityAndMoveToMessageList()V

    goto :goto_1

    .line 290
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private initLengthFilter()V
    .locals 3

    .prologue
    const/16 v2, 0x100

    const/4 v1, 0x1

    .line 411
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mDescription:Landroid/widget/EditText;

    invoke-static {v0, p0, v2, v1}, Lcom/android/email/activity/UiUtilities;->setupLengthFilter(Landroid/widget/EditText;Landroid/content/Context;IZ)V

    .line 413
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    invoke-static {v0, p0, v2, v1}, Lcom/android/email/activity/UiUtilities;->setupLengthFilter(Landroid/widget/EditText;Landroid/content/Context;IZ)V

    .line 415
    return-void
.end method

.method private onNext()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 314
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 317
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 318
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mDescription:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 319
    .local v1, description:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 320
    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/Account;->setDisplayName(Ljava/lang/String;)V

    .line 322
    :cond_0
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/provider/Account;->setSenderName(Ljava/lang/String;)V

    .line 328
    const/4 v2, 0x2

    const-string v3, "AccountSetupNames:onNext"

    invoke-static {v2, v3}, Lcom/android/emailcommon/Logging;->performance(ILjava/lang/String;)V

    .line 330
    new-instance v2, Lcom/android/email/activity/setup/AccountSetupNames$FinalSetupTask;

    invoke-direct {v2, p0, v0}, Lcom/android/email/activity/setup/AccountSetupNames$FinalSetupTask;-><init>(Lcom/android/email/activity/setup/AccountSetupNames;Lcom/android/emailcommon/provider/Account;)V

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v3, v4}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 331
    return-void
.end method

.method private prefillNameFromProfile()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 192
    new-instance v1, Lcom/android/email/activity/setup/AccountSetupNames$2;

    invoke-direct {v1, p0, v0}, Lcom/android/email/activity/setup/AccountSetupNames$2;-><init>(Lcom/android/email/activity/setup/AccountSetupNames;Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;)V

    check-cast v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/android/emailcommon/utility/EmailAsyncTask;->executeParallel([Ljava/lang/Object;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 216
    return-void
.end method

.method private validateFields()V
    .locals 4

    .prologue
    .line 234
    const/4 v0, 0x1

    .line 236
    .local v0, enableNextButton:Z
    iget-boolean v2, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mEasAccount:Z

    if-nez v2, :cond_0

    .line 237
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 238
    .local v1, userName:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 239
    const/4 v0, 0x0

    .line 240
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    const v3, 0x7f080137

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 245
    .end local v1           #userName:Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 246
    return-void

    .line 242
    .restart local v1       #userName:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 403
    packed-switch p1, :pswitch_data_0

    .line 407
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 408
    return-void

    .line 405
    :pswitch_0
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupNames;->finishActivity()V

    goto :goto_0

    .line 403
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 254
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 223
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 228
    :goto_0
    return-void

    .line 225
    :pswitch_0
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupNames;->onNext()V

    goto :goto_0

    .line 223
    :pswitch_data_0
    .packed-switch 0x7f0f0026
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    const/16 v13, 0x8

    const/4 v10, 0x3

    const/4 v12, 0x0

    const/4 v11, 0x4

    .line 87
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountSetupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    invoke-static {p0}, Lcom/android/email/activity/ActivityHelper;->debugSetWindowFlags(Landroid/app/Activity;)V

    .line 89
    const v8, 0x7f04000f

    invoke-virtual {p0, v8}, Landroid/app/Activity;->setContentView(I)V

    .line 91
    invoke-static {p0}, Lcom/mediatek/email/extension/OPExtensionFactory;->getProviderExtension(Landroid/content/Context;)Lcom/mediatek/email/ext/IServerProviderPlugin;

    move-result-object v8

    iput-object v8, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mExtension:Lcom/mediatek/email/ext/IServerProviderPlugin;

    .line 92
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "setupdata"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 93
    .local v4, bundle:Landroid/os/Bundle;
    if-eqz v4, :cond_0

    .line 94
    invoke-static {v4}, Lcom/android/email/activity/setup/SetupData;->restore(Landroid/os/Bundle;)Lcom/android/email/activity/setup/SetupData;

    .line 96
    :cond_0
    const v8, 0x7f0f003d

    invoke-static {p0, v8}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mDescription:Landroid/widget/EditText;

    .line 97
    const v8, 0x7f0f003f

    invoke-static {p0, v8}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    .line 98
    const v8, 0x7f0f003e

    invoke-static {p0, v8}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v2

    .line 99
    .local v2, accountNameLabel:Landroid/view/View;
    const v8, 0x7f0f0026

    invoke-static {p0, v8}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mNextButton:Landroid/widget/Button;

    .line 100
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v8, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    new-instance v7, Lcom/android/email/activity/setup/AccountSetupNames$1;

    invoke-direct {v7, p0}, Lcom/android/email/activity/setup/AccountSetupNames$1;-><init>(Lcom/android/email/activity/setup/AccountSetupNames;)V

    .line 116
    .local v7, validationTextWatcher:Landroid/text/TextWatcher;
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 117
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    sget-object v9, Landroid/text/method/TextKeyListener$Capitalize;->WORDS:Landroid/text/method/TextKeyListener$Capitalize;

    invoke-static {v12, v9}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 119
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 120
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    if-nez v0, :cond_1

    .line 121
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "unexpected null account"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 123
    :cond_1
    iget-object v8, v0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    if-nez v8, :cond_2

    .line 124
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "unexpected null hostauth"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 126
    :cond_2
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getFlowMode()I

    move-result v6

    .line 128
    .local v6, flowMode:I
    if-eq v6, v11, :cond_5

    if-eq v6, v10, :cond_5

    .line 131
    const/4 v5, 0x0

    .line 132
    .local v5, defaultNameDescription:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mExtension:Lcom/mediatek/email/ext/IServerProviderPlugin;

    invoke-interface {v8}, Lcom/mediatek/email/ext/IServerProviderPlugin;->isSupportProviderList()Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mExtension:Lcom/mediatek/email/ext/IServerProviderPlugin;

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/email/extension/AccountSetupChooseESP;->isSpecialESPAccount(Lcom/mediatek/email/ext/IServerProviderPlugin;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 135
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mExtension:Lcom/mediatek/email/ext/IServerProviderPlugin;

    invoke-interface {v8}, Lcom/mediatek/email/ext/IServerProviderPlugin;->getAccountSignature()Ljava/lang/String;

    move-result-object v3

    .line 136
    .local v3, accountSignature:Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 137
    invoke-virtual {v0, v3}, Lcom/android/emailcommon/provider/Account;->setSignature(Ljava/lang/String;)V

    .line 139
    :cond_3
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mExtension:Lcom/mediatek/email/ext/IServerProviderPlugin;

    invoke-interface {v8}, Lcom/mediatek/email/ext/IServerProviderPlugin;->getAccountNameDescription()Ljava/lang/String;

    move-result-object v5

    .line 141
    .end local v3           #accountSignature:Ljava/lang/String;
    :cond_4
    if-nez v5, :cond_8

    iget-object v1, v0, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    .line 145
    .local v1, accountEmail:Ljava/lang/String;
    :goto_0
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mDescription:Landroid/widget/EditText;

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mDescription:Landroid/widget/EditText;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setSelection(I)V

    .line 152
    .end local v1           #accountEmail:Ljava/lang/String;
    .end local v5           #defaultNameDescription:Ljava/lang/String;
    :cond_5
    const-string v8, "eas"

    iget-object v9, v0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v9, v9, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mEasAccount:Z

    .line 153
    iget-boolean v8, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mEasAccount:Z

    if-eqz v8, :cond_9

    .line 154
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mDescription:Landroid/widget/EditText;

    const/4 v9, 0x6

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 155
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    invoke-virtual {v8, v13}, Landroid/view/View;->setVisibility(I)V

    .line 156
    invoke-virtual {v2, v13}, Landroid/view/View;->setVisibility(I)V

    .line 173
    :cond_6
    :goto_1
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupNames;->validateFields()V

    .line 176
    if-ne v6, v11, :cond_7

    .line 177
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupNames;->onNext()V

    .line 180
    :cond_7
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupNames;->initLengthFilter()V

    .line 181
    return-void

    .restart local v5       #defaultNameDescription:Ljava/lang/String;
    :cond_8
    move-object v1, v5

    .line 141
    goto :goto_0

    .line 158
    .end local v5           #defaultNameDescription:Ljava/lang/String;
    :cond_9
    if-eqz p1, :cond_a

    const-string v8, "name"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 159
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    const-string v9, "name"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 160
    :cond_a
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/Account;->getSenderName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_b

    .line 161
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/Account;->getSenderName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 162
    :cond_b
    if-eq v6, v11, :cond_6

    if-eq v6, v10, :cond_6

    .line 166
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 167
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v9

    const-string v10, "@"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v12

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 185
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountSetupActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 186
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mEasAccount:Z

    if-nez v0, :cond_0

    .line 187
    const-string v0, "name"

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :cond_0
    return-void
.end method
