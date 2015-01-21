.class public Lcom/android/email/activity/setup/AccountSetupExchangeFragment;
.super Lcom/android/email/activity/setup/AccountServerBaseFragment;
.source "AccountSetupExchangeFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/android/email/view/CertificateSelector$HostCallback;


# static fields
.field private static final CERTIFICATE_REQUEST:I = 0x0

.field private static final PORT_NORMAL:I = 0x50

.field private static final PORT_SSL:I = 0x1bb

.field private static final STATE_KEY_CREDENTIAL:Ljava/lang/String; = "AccountSetupExchangeFragment.credential"

.field private static final STATE_KEY_LOADED:Ljava/lang/String; = "AccountSetupExchangeFragment.loaded"

.field private static final STATE_KEY_SSL:Ljava/lang/String; = "AccountSetupExchangeFragment.ssl"


# instance fields
.field private mCacheLoginCredential:Ljava/lang/String;

.field private mClientCertificateSelector:Lcom/android/email/view/CertificateSelector;

.field mLoaded:Z

.field private mPasswordView:Landroid/widget/EditText;

.field private mPortView:Landroid/widget/EditText;

.field private mServerView:Landroid/widget/EditText;

.field private mSslSecurityView:Landroid/widget/CheckBox;

.field private mStarted:Z

.field private mTrustCertificatesView:Landroid/widget/CheckBox;

.field private mUsernameView:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/setup/AccountSetupExchangeFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->validateFields()Z

    move-result v0

    return v0
.end method

.method private forceLoadSettings(Lcom/android/emailcommon/provider/Account;)Z
    .locals 1
    .parameter "account"

    .prologue
    .line 271
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mLoaded:Z

    .line 272
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->loadSettings(Lcom/android/emailcommon/provider/Account;)Z

    move-result v0

    return v0
.end method

.method private getPortFromSecurityType()I
    .locals 3

    .prologue
    .line 277
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mSslSecurityView:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    .line 278
    .local v1, useSsl:Z
    if-eqz v1, :cond_0

    const/16 v0, 0x1bb

    .line 279
    .local v0, port:I
    :goto_0
    return v0

    .line 278
    .end local v0           #port:I
    :cond_0
    const/16 v0, 0x50

    goto :goto_0
.end method

.method private initLengthFilter()V
    .locals 4

    .prologue
    const/16 v3, 0x100

    const/4 v2, 0x1

    .line 572
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 573
    .local v0, content:Landroid/content/Context;
    if-nez v0, :cond_0

    .line 574
    const-string v1, "This fragment may be finished, can\'t do some ui operation."

    invoke-static {v1}, Lcom/android/emailcommon/Logging;->e(Ljava/lang/String;)V

    .line 583
    :goto_0
    return-void

    .line 577
    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-static {v1, v0, v3, v2}, Lcom/android/email/activity/UiUtilities;->setupLengthFilter(Landroid/widget/EditText;Landroid/content/Context;IZ)V

    .line 579
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mServerView:Landroid/widget/EditText;

    invoke-static {v1, v0, v3, v2}, Lcom/android/email/activity/UiUtilities;->setupLengthFilter(Landroid/widget/EditText;Landroid/content/Context;IZ)V

    .line 581
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mUsernameView:Landroid/widget/EditText;

    invoke-static {v1, v0, v3, v2}, Lcom/android/email/activity/UiUtilities;->setupLengthFilter(Landroid/widget/EditText;Landroid/content/Context;IZ)V

    goto :goto_0
.end method

.method private updatePortFromSecurityType()V
    .locals 3

    .prologue
    .line 283
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->getPortFromSecurityType()I

    move-result v0

    .line 284
    .local v0, port:I
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mPortView:Landroid/widget/EditText;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    return-void
.end method

.method private usernameFieldValid(Landroid/widget/EditText;)Z
    .locals 2
    .parameter "usernameView"

    .prologue
    .line 347
    invoke-static {p1}, Lcom/android/emailcommon/utility/Utility;->isTextViewNotEmpty(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private validateFields()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 356
    iget-boolean v2, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mLoaded:Z

    if-nez v2, :cond_0

    .line 374
    :goto_0
    return v0

    .line 357
    :cond_0
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mUsernameView:Landroid/widget/EditText;

    invoke-direct {p0, v2}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->usernameFieldValid(Landroid/widget/EditText;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-static {v2}, Lcom/android/emailcommon/utility/Utility;->isTextViewNotEmpty(Landroid/widget/TextView;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mServerView:Landroid/widget/EditText;

    invoke-static {v2}, Lcom/android/emailcommon/utility/Utility;->isServerNameValid(Landroid/widget/TextView;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mPortView:Landroid/widget/EditText;

    invoke-static {v2}, Lcom/android/emailcommon/utility/Utility;->isPortFieldValid(Landroid/widget/TextView;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 361
    .local v0, enabled:Z
    :cond_1
    if-eqz v0, :cond_2

    .line 363
    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->getUri()Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    :cond_2
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->enableNextButton(Z)V

    .line 372
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-static {v2, v3}, Lcom/android/email/activity/setup/AccountSettingsUtils;->checkPasswordSpaces(Landroid/content/Context;Landroid/widget/EditText;)V

    goto :goto_0

    .line 364
    :catch_0
    move-exception v1

    .line 365
    .local v1, use:Ljava/net/URISyntaxException;
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method getUri()Ljava/net/URI;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 378
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mSslSecurityView:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v8

    .line 379
    .local v8, sslRequired:Z
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mTrustCertificatesView:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v9

    .line 380
    .local v9, trustCertificates:Z
    if-eqz v8, :cond_2

    if-eqz v9, :cond_1

    const-string v1, "eas+ssl+trustallcerts"

    .line 383
    .local v1, scheme:Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 386
    .local v10, userName:Ljava/lang/String;
    const-string v4, "\\"

    invoke-virtual {v10, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 387
    const/4 v4, 0x1

    invoke-virtual {v10, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 389
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ":"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 390
    .local v2, userInfo:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mServerView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 391
    .local v3, host:Ljava/lang/String;
    const/4 v5, 0x0

    .line 393
    .local v5, path:Ljava/lang/String;
    new-instance v0, Ljava/net/URI;

    const/4 v4, 0x0

    move-object v7, v6

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    .local v0, uri:Ljava/net/URI;
    return-object v0

    .line 380
    .end local v0           #uri:Ljava/net/URI;
    .end local v1           #scheme:Ljava/lang/String;
    .end local v2           #userInfo:Ljava/lang/String;
    .end local v3           #host:Ljava/lang/String;
    .end local v5           #path:Ljava/lang/String;
    .end local v10           #userName:Ljava/lang/String;
    :cond_1
    const-string v1, "eas+ssl+"

    goto :goto_0

    :cond_2
    const-string v1, "eas"

    goto :goto_0
.end method

.method loadSettings(Lcom/android/emailcommon/provider/Account;)Z
    .locals 10
    .parameter "account"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 295
    iget-boolean v8, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mLoaded:Z

    if-eqz v8, :cond_0

    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->validateFields()Z

    move-result v6

    .line 343
    :goto_0
    return v6

    .line 297
    :cond_0
    iget-object v0, p1, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    .line 299
    .local v0, hostAuth:Lcom/android/emailcommon/provider/HostAuth;
    iget-object v5, v0, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    .line 300
    .local v5, userName:Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 303
    const/16 v8, 0x5c

    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-gez v8, :cond_1

    .line 304
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\\"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 306
    :cond_1
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    :cond_2
    iget-object v8, v0, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    if-eqz v8, :cond_3

    .line 310
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mPasswordView:Landroid/widget/EditText;

    iget-object v9, v0, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    iget-boolean v8, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mSettingsMode:Z

    if-eqz v8, :cond_3

    .line 313
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    .line 317
    :cond_3
    iget-object v2, v0, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    .line 318
    .local v2, protocol:Ljava/lang/String;
    if-eqz v2, :cond_4

    const-string v8, "eas"

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 319
    :cond_4
    new-instance v6, Ljava/lang/Error;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown account type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v6

    .line 322
    :cond_5
    iget-object v8, v0, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    if-eqz v8, :cond_6

    .line 323
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mServerView:Landroid/widget/EditText;

    iget-object v9, v0, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    :cond_6
    iget v8, v0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_8

    move v3, v6

    .line 327
    .local v3, ssl:Z
    :goto_1
    iget v8, v0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    and-int/lit8 v8, v8, 0x8

    if-eqz v8, :cond_9

    move v4, v6

    .line 328
    .local v4, trustCertificates:Z
    :goto_2
    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mSslSecurityView:Landroid/widget/CheckBox;

    invoke-virtual {v7, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 329
    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mTrustCertificatesView:Landroid/widget/CheckBox;

    invoke-virtual {v7, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 330
    iget-object v7, v0, Lcom/android/emailcommon/provider/HostAuth;->mClientCertAlias:Ljava/lang/String;

    if-eqz v7, :cond_7

    .line 331
    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mClientCertificateSelector:Lcom/android/email/view/CertificateSelector;

    iget-object v8, v0, Lcom/android/emailcommon/provider/HostAuth;->mClientCertAlias:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/android/email/view/CertificateSelector;->setCertificate(Ljava/lang/String;)V

    .line 333
    :cond_7
    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->onUseSslChanged(Z)V

    .line 335
    iget v1, v0, Lcom/android/emailcommon/provider/HostAuth;->mPort:I

    .line 336
    .local v1, port:I
    const/4 v7, -0x1

    if-eq v1, v7, :cond_a

    .line 337
    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mPortView:Landroid/widget/EditText;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    :goto_3
    iput-object v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mLoadedRecvAuth:Lcom/android/emailcommon/provider/HostAuth;

    .line 342
    iput-boolean v6, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mLoaded:Z

    .line 343
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->validateFields()Z

    move-result v6

    goto/16 :goto_0

    .end local v1           #port:I
    .end local v3           #ssl:Z
    .end local v4           #trustCertificates:Z
    :cond_8
    move v3, v7

    .line 326
    goto :goto_1

    .restart local v3       #ssl:Z
    :cond_9
    move v4, v7

    .line 327
    goto :goto_2

    .line 339
    .restart local v1       #port:I
    .restart local v4       #trustCertificates:Z
    :cond_a
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->updatePortFromSecurityType()V

    goto :goto_3
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 173
    const-string v0, "AccountSetupExchangeFragment onActivityCreated"

    invoke-static {v0}, Lcom/android/emailcommon/Logging;->lifecycle(Ljava/lang/String;)V

    .line 175
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 176
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mClientCertificateSelector:Lcom/android/email/view/CertificateSelector;

    invoke-virtual {v0, p0}, Lcom/android/email/view/CertificateSelector;->setHostActivity(Lcom/android/email/view/CertificateSelector$HostCallback;)V

    .line 181
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0801ad

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 182
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 559
    if-nez p1, :cond_0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 560
    const-string v1, "CertificateRequestor.alias"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 561
    .local v0, certAlias:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 562
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mClientCertificateSelector:Lcom/android/email/view/CertificateSelector;

    invoke-virtual {v1, v0}, Lcom/android/email/view/CertificateSelector;->setCertificate(Ljava/lang/String;)V

    .line 565
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mSslSecurityView:Landroid/widget/CheckBox;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 566
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f080069

    invoke-static {v1, v2}, Lcom/android/emailcommon/utility/Utility;->showToastShortTime(Landroid/content/Context;I)V

    .line 569
    .end local v0           #certAlias:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onAutoDiscoverComplete(ILcom/android/emailcommon/provider/HostAuth;)V
    .locals 1
    .parameter "result"
    .parameter "hostAuth"

    .prologue
    .line 477
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/AccountSetupExchange;

    .line 478
    .local v0, activity:Lcom/android/email/activity/setup/AccountSetupExchange;
    invoke-virtual {v0, p1, p2}, Lcom/android/email/activity/setup/AccountSetupExchange;->onAutoDiscoverComplete(ILcom/android/emailcommon/provider/HostAuth;)V

    .line 479
    return-void
.end method

.method public onCertificateRemoved()V
    .locals 2

    .prologue
    .line 552
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mSslSecurityView:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mSslSecurityView:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 555
    :cond_0
    return-void
.end method

.method public onCertificateRequested()V
    .locals 2

    .prologue
    .line 542
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.emailcommon.REQUEST_CERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 543
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "eas://com.android.emailcommon/certrequest"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 544
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 545
    return-void
.end method

.method public onCheckSettingsComplete(I)V
    .locals 2
    .parameter "result"

    .prologue
    .line 426
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mSslSecurityView:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 428
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->onCertificateRequested()V

    .line 432
    :goto_0
    return-void

    .line 431
    :cond_0
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onCheckSettingsComplete(I)V

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 407
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0f0030

    if-ne v0, v1, :cond_0

    .line 408
    invoke-virtual {p0, p2}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->onUseSslChanged(Z)V

    .line 410
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 92
    const-string v0, "AccountSetupExchangeFragment onCreate"

    invoke-static {v0}, Lcom/android/emailcommon/Logging;->lifecycle(Ljava/lang/String;)V

    .line 94
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 96
    if-eqz p1, :cond_0

    .line 97
    const-string v0, "AccountSetupExchangeFragment.credential"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mCacheLoginCredential:Ljava/lang/String;

    .line 98
    const-string v0, "AccountSetupExchangeFragment.loaded"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mLoaded:Z

    .line 100
    :cond_0
    const-string v0, "eas"

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mBaseScheme:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 107
    const-string v7, "AccountSetupExchangeFragment onCreateView"

    invoke-static {v7}, Lcom/android/emailcommon/Logging;->lifecycle(Ljava/lang/String;)V

    .line 109
    iget-boolean v7, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mSettingsMode:Z

    if-eqz v7, :cond_2

    const v4, 0x7f040003

    .line 113
    .local v4, layoutId:I
    :goto_0
    const/4 v7, 0x0

    invoke-virtual {p1, v4, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 114
    .local v6, view:Landroid/view/View;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 116
    .local v0, context:Landroid/content/Context;
    const v7, 0x7f0f002e

    invoke-static {v6, v7}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mUsernameView:Landroid/widget/EditText;

    .line 117
    const v7, 0x7f0f0028

    invoke-static {v6, v7}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mPasswordView:Landroid/widget/EditText;

    .line 118
    const v7, 0x7f0f002f

    invoke-static {v6, v7}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mServerView:Landroid/widget/EditText;

    .line 119
    const v7, 0x7f0f0033

    invoke-static {v6, v7}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mPortView:Landroid/widget/EditText;

    .line 120
    const v7, 0x7f0f0030

    invoke-static {v6, v7}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    iput-object v7, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mSslSecurityView:Landroid/widget/CheckBox;

    .line 121
    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mSslSecurityView:Landroid/widget/CheckBox;

    invoke-virtual {v7, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 123
    if-eqz p3, :cond_0

    .line 124
    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mSslSecurityView:Landroid/widget/CheckBox;

    const-string v8, "AccountSetupExchangeFragment.ssl"

    invoke-virtual {p3, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 127
    :cond_0
    const v7, 0x7f0f0031

    invoke-static {v6, v7}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    iput-object v7, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mTrustCertificatesView:Landroid/widget/CheckBox;

    .line 128
    const v7, 0x7f0f0032

    invoke-static {v6, v7}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/email/view/CertificateSelector;

    iput-object v7, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mClientCertificateSelector:Lcom/android/email/view/CertificateSelector;

    .line 132
    new-instance v5, Lcom/android/email/activity/setup/AccountSetupExchangeFragment$1;

    invoke-direct {v5, p0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment$1;-><init>(Lcom/android/email/activity/setup/AccountSetupExchangeFragment;)V

    .line 144
    .local v5, validationTextWatcher:Landroid/text/TextWatcher;
    iget-boolean v7, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mSettingsMode:Z

    if-eqz v7, :cond_1

    .line 145
    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mUsernameView:Landroid/widget/EditText;

    const v8, 0x7f080191

    invoke-virtual {p0, v8}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->makeTextViewUneditable(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 148
    :cond_1
    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 149
    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 150
    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mServerView:Landroid/widget/EditText;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 151
    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mPortView:Landroid/widget/EditText;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 153
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mServerView:Landroid/widget/EditText;

    .line 154
    .local v3, lastView:Landroid/widget/EditText;
    iget-object v7, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mDismissImeOnDoneListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 156
    const-string v1, ""

    .line 158
    .local v1, deviceId:Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Lcom/android/emailcommon/Device;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 162
    :goto_1
    const v7, 0x7f0f0034

    invoke-static {v6, v7}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    invoke-virtual {p0, v6}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onCreateViewSettingsMode(Landroid/view/View;)V

    .line 166
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->initLengthFilter()V

    .line 167
    return-object v6

    .line 109
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #deviceId:Ljava/lang/String;
    .end local v3           #lastView:Landroid/widget/EditText;
    .end local v4           #layoutId:I
    .end local v5           #validationTextWatcher:Landroid/text/TextWatcher;
    .end local v6           #view:Landroid/view/View;
    :cond_2
    const v4, 0x7f04000c

    goto/16 :goto_0

    .line 159
    .restart local v0       #context:Landroid/content/Context;
    .restart local v1       #deviceId:Ljava/lang/String;
    .restart local v3       #lastView:Landroid/widget/EditText;
    .restart local v4       #layoutId:I
    .restart local v5       #validationTextWatcher:Landroid/text/TextWatcher;
    .restart local v6       #view:Landroid/view/View;
    :catch_0
    move-exception v2

    .line 160
    .local v2, e:Ljava/io/IOException;
    const-string v7, "Email"

    const-string v8, "Exception in method onCreateView when get the DeviceId"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 235
    const-string v0, "AccountSetupExchangeFragment onDestroy"

    invoke-static {v0}, Lcom/android/emailcommon/Logging;->lifecycle(Ljava/lang/String;)V

    .line 237
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 238
    return-void
.end method

.method public onNext()V
    .locals 21

    .prologue
    .line 486
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->getCurrentAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v16

    .line 488
    .local v16, account:Lcom/android/emailcommon/provider/Account;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    .line 489
    .local v19, userName:Ljava/lang/String;
    const-string v3, "\\"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 490
    const/4 v3, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    .line 496
    :cond_0
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mCacheLoginCredential:Ljava/lang/String;

    .line 498
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    .line 500
    .local v20, userPassword:Ljava/lang/String;
    const/4 v6, 0x0

    .line 501
    .local v6, flags:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mSslSecurityView:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 502
    or-int/lit8 v6, v6, 0x1

    .line 504
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mTrustCertificatesView:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 505
    or-int/lit8 v6, v6, 0x8

    .line 507
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mClientCertificateSelector:Lcom/android/email/view/CertificateSelector;

    invoke-virtual {v3}, Lcom/android/email/view/CertificateSelector;->getCertificate()Ljava/lang/String;

    move-result-object v7

    .line 508
    .local v7, certAlias:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mServerView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 510
    .local v4, serverAddress:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mPortView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    .line 513
    .local v18, portText:Ljava/lang/String;
    :try_start_0
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 520
    .local v5, port:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/provider/Account;->getOrCreateHostAuthSend(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v2

    .line 521
    .local v2, sendAuth:Lcom/android/emailcommon/provider/HostAuth;
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Lcom/android/emailcommon/provider/HostAuth;->setLogin(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mBaseScheme:Ljava/lang/String;

    invoke-virtual/range {v2 .. v7}, Lcom/android/emailcommon/provider/HostAuth;->setConnection(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 523
    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/emailcommon/provider/HostAuth;->mDomain:Ljava/lang/String;

    .line 525
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/provider/Account;->getOrCreateHostAuthRecv(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v8

    .line 526
    .local v8, recvAuth:Lcom/android/emailcommon/provider/HostAuth;
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Lcom/android/emailcommon/provider/HostAuth;->setLogin(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mBaseScheme:Ljava/lang/String;

    move-object v10, v4

    move v11, v5

    move v12, v6

    move-object v13, v7

    invoke-virtual/range {v8 .. v13}, Lcom/android/emailcommon/provider/HostAuth;->setConnection(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 528
    const/4 v3, 0x0

    iput-object v3, v8, Lcom/android/emailcommon/provider/HostAuth;->mDomain:Ljava/lang/String;

    .line 535
    move-object/from16 v0, v16

    iget-wide v10, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-object v12, v8, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mCacheLoginCredential:Ljava/lang/String;

    iget-object v14, v8, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    const/4 v15, 0x1

    move-object/from16 v9, p0

    invoke-virtual/range {v9 .. v15}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->startDuplicateTaskCheck(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 538
    return-void

    .line 514
    .end local v2           #sendAuth:Lcom/android/emailcommon/provider/HostAuth;
    .end local v5           #port:I
    .end local v8           #recvAuth:Lcom/android/emailcommon/provider/HostAuth;
    :catch_0
    move-exception v17

    .line 516
    .local v17, e:Ljava/lang/NumberFormatException;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mSslSecurityView:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v5, 0x1bb

    .line 517
    .restart local v5       #port:I
    :goto_1
    const-string v3, "Email"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Non-integer server port; using \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 516
    .end local v5           #port:I
    :cond_3
    const/16 v5, 0x50

    goto :goto_1
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 212
    const-string v0, "AccountSetupExchangeFragment onPause"

    invoke-static {v0}, Lcom/android/emailcommon/Logging;->lifecycle(Ljava/lang/String;)V

    .line 214
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onPause()V

    .line 215
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 203
    const-string v0, "AccountSetupExchangeFragment onResume"

    invoke-static {v0}, Lcom/android/emailcommon/Logging;->lifecycle(Ljava/lang/String;)V

    .line 205
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 206
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->validateFields()Z

    .line 207
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 243
    const-string v0, "AccountSetupExchangeFragment onSaveInstanceState"

    invoke-static {v0}, Lcom/android/emailcommon/Logging;->lifecycle(Ljava/lang/String;)V

    .line 245
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 247
    const-string v0, "AccountSetupExchangeFragment.credential"

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mCacheLoginCredential:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string v0, "AccountSetupExchangeFragment.loaded"

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mLoaded:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 250
    const-string v0, "AccountSetupExchangeFragment.ssl"

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mSslSecurityView:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 252
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 190
    const-string v0, "AccountSetupExchangeFragment onStart"

    invoke-static {v0}, Lcom/android/emailcommon/Logging;->lifecycle(Ljava/lang/String;)V

    .line 192
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mStarted:Z

    .line 194
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->getCurrentAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->loadSettings(Lcom/android/emailcommon/provider/Account;)Z

    .line 195
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 223
    const-string v0, "AccountSetupExchangeFragment onStop"

    invoke-static {v0}, Lcom/android/emailcommon/Logging;->lifecycle(Ljava/lang/String;)V

    .line 225
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 226
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mStarted:Z

    .line 227
    return-void
.end method

.method public onUseSslChanged(Z)V
    .locals 3
    .parameter "useSsl"

    .prologue
    .line 413
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 414
    .local v0, mode:I
    :goto_0
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mTrustCertificatesView:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 415
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0f0035

    invoke-static {v1, v2, v0}, Lcom/android/email/activity/UiUtilities;->setVisibilitySafe(Landroid/view/View;II)V

    .line 416
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mClientCertificateSelector:Lcom/android/email/view/CertificateSelector;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 417
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0f0036

    invoke-static {v1, v2, v0}, Lcom/android/email/activity/UiUtilities;->setVisibilitySafe(Landroid/view/View;II)V

    .line 420
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->updatePortFromSecurityType()V

    .line 422
    return-void

    .line 413
    .end local v0           #mode:I
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public saveSettingsAfterEdit()V
    .locals 4

    .prologue
    .line 441
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->getCurrentAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 442
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    iget-object v1, v0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/HostAuth;->toContentValues()Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 443
    iget-object v1, v0, Lcom/android/emailcommon/provider/Account;->mHostAuthSend:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/emailcommon/provider/Account;->mHostAuthSend:Lcom/android/emailcommon/provider/HostAuth;

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/HostAuth;->toContentValues()Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 446
    :try_start_0
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/email/service/EmailServiceUtils;->getExchangeService(Landroid/content/Context;Lcom/android/emailcommon/service/IEmailServiceCallback;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v1

    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-interface {v1, v2, v3}, Lcom/android/emailcommon/service/IEmailService;->hostChanged(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 451
    :goto_0
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/email/provider/AccountBackupRestore;->backup(Landroid/content/Context;)V

    .line 452
    return-void

    .line 447
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public saveSettingsAfterSetup()V
    .locals 0

    .prologue
    .line 459
    return-void
.end method

.method public setCallback(Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 259
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->setCallback(Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;)V

    .line 260
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mStarted:Z

    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->getCurrentAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->loadSettings(Lcom/android/emailcommon/provider/Account;)Z

    .line 263
    :cond_0
    return-void
.end method

.method public setHostAuthFromAutodiscover(Lcom/android/emailcommon/provider/HostAuth;)Z
    .locals 2
    .parameter "newHostAuth"

    .prologue
    .line 465
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->getCurrentAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 466
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    iput-object p1, v0, Lcom/android/emailcommon/provider/Account;->mHostAuthSend:Lcom/android/emailcommon/provider/HostAuth;

    .line 467
    iput-object p1, v0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    .line 469
    invoke-direct {p0, v0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->forceLoadSettings(Lcom/android/emailcommon/provider/Account;)Z

    move-result v1

    return v1
.end method
