.class public Lcom/android/email/activity/setup/AccountSetupAccountType;
.super Lcom/android/email/activity/setup/AccountSetupActivity;
.source "AccountSetupAccountType.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DEFAULT_PREFIX_POP3_SERVER:Ljava/lang/String; = "pop"


# instance fields
.field private mExtension:Lcom/mediatek/email/ext/IServerProviderPlugin;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupActivity;-><init>()V

    return-void
.end method

.method public static actionSelectAccountType(Landroid/app/Activity;)V
    .locals 1
    .parameter "fromActivity"

    .prologue
    .line 50
    const-class v0, Lcom/android/email/activity/setup/AccountSetupAccountType;

    invoke-static {p0, v0}, Lcom/android/email/activity/setup/SetupData;->intentWithBackup(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 52
    return-void
.end method

.method private onExchange()V
    .locals 8

    .prologue
    .line 152
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 153
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    invoke-virtual {v0, p0}, Lcom/android/emailcommon/provider/Account;->getOrCreateHostAuthRecv(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v1

    .line 154
    .local v1, recvAuth:Lcom/android/emailcommon/provider/HostAuth;
    const-string v4, "eas"

    iget-object v5, v1, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    iget v6, v1, Lcom/android/emailcommon/provider/HostAuth;->mPort:I

    iget v7, v1, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    or-int/lit8 v7, v7, 0x1

    invoke-virtual {v1, v4, v5, v6, v7}, Lcom/android/emailcommon/provider/HostAuth;->setConnection(Ljava/lang/String;Ljava/lang/String;II)V

    .line 156
    iget-object v4, v1, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    const-string v5, "eas"

    invoke-static {p0, v4, v5}, Lcom/android/email/activity/setup/AccountSettingsUtils;->findManualInfoForDomain(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 158
    .local v3, serverName:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 159
    iput-object v3, v1, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    .line 161
    :cond_0
    invoke-virtual {v0, p0}, Lcom/android/emailcommon/provider/Account;->getOrCreateHostAuthSend(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v2

    .line 162
    .local v2, sendAuth:Lcom/android/emailcommon/provider/HostAuth;
    const-string v4, "eas"

    iget-object v5, v2, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    iget v6, v2, Lcom/android/emailcommon/provider/HostAuth;->mPort:I

    iget v7, v2, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    or-int/lit8 v7, v7, 0x1

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/android/emailcommon/provider/HostAuth;->setConnection(Ljava/lang/String;Ljava/lang/String;II)V

    .line 164
    if-eqz v3, :cond_1

    .line 165
    iput-object v3, v2, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    .line 168
    :cond_1
    const-string v4, "eas"

    invoke-static {v0, v4}, Lcom/android/email/activity/setup/AccountSetupBasics;->setFlagsForProtocol(Lcom/android/emailcommon/provider/Account;Ljava/lang/String;)V

    .line 169
    const/4 v4, 0x4

    invoke-static {v4}, Lcom/android/email/activity/setup/SetupData;->setCheckSettingsMode(I)V

    .line 170
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getFlowMode()I

    move-result v4

    invoke-static {p0, v4, v0}, Lcom/android/email/activity/setup/AccountSetupExchange;->actionIncomingSettings(Landroid/app/Activity;ILcom/android/emailcommon/provider/Account;)V

    .line 171
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 172
    return-void
.end method

.method private onImap()V
    .locals 6

    .prologue
    .line 129
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 130
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    iget-object v1, v0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    .line 131
    .local v1, hostAuth:Lcom/android/emailcommon/provider/HostAuth;
    const-string v3, "imap"

    iput-object v3, v1, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    .line 132
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    .line 133
    iget-object v3, v1, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    const-string v4, "imap"

    invoke-static {p0, v3, v4}, Lcom/android/email/activity/setup/AccountSettingsUtils;->findManualInfoForDomain(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 135
    .local v2, serverName:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 136
    iput-object v2, v1, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    .line 141
    :goto_0
    const-string v3, "imap"

    invoke-static {v0, v3}, Lcom/android/email/activity/setup/AccountSetupBasics;->setFlagsForProtocol(Lcom/android/emailcommon/provider/Account;Ljava/lang/String;)V

    .line 142
    const/4 v3, 0x3

    invoke-static {v3}, Lcom/android/email/activity/setup/SetupData;->setCheckSettingsMode(I)V

    .line 143
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getFlowMode()I

    move-result v3

    invoke-static {p0, v3, v0}, Lcom/android/email/activity/setup/AccountSetupIncoming;->actionIncomingSettings(Landroid/app/Activity;ILcom/android/emailcommon/provider/Account;)V

    .line 144
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 145
    return-void

    .line 138
    :cond_0
    iget-object v3, v1, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    const-string v4, "imap"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/email/activity/setup/AccountSettingsUtils;->inferServerName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    goto :goto_0
.end method

.method private onPop()V
    .locals 6

    .prologue
    .line 106
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 107
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    iget-object v1, v0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    .line 108
    .local v1, hostAuth:Lcom/android/emailcommon/provider/HostAuth;
    const-string v3, "pop3"

    iput-object v3, v1, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    .line 109
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    .line 110
    iget-object v3, v1, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    const-string v4, "pop3"

    invoke-static {p0, v3, v4}, Lcom/android/email/activity/setup/AccountSettingsUtils;->findManualInfoForDomain(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 112
    .local v2, serverName:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 113
    iput-object v2, v1, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    .line 118
    :goto_0
    const-string v3, "pop3"

    invoke-static {v0, v3}, Lcom/android/email/activity/setup/AccountSetupBasics;->setFlagsForProtocol(Lcom/android/emailcommon/provider/Account;Ljava/lang/String;)V

    .line 119
    const/4 v3, 0x3

    invoke-static {v3}, Lcom/android/email/activity/setup/SetupData;->setCheckSettingsMode(I)V

    .line 120
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getFlowMode()I

    move-result v3

    invoke-static {p0, v3, v0}, Lcom/android/email/activity/setup/AccountSetupIncoming;->actionIncomingSettings(Landroid/app/Activity;ILcom/android/emailcommon/provider/Account;)V

    .line 121
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 122
    return-void

    .line 115
    :cond_0
    iget-object v3, v1, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    const-string v4, "pop"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/email/activity/setup/AccountSettingsUtils;->inferServerName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 175
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 189
    :goto_0
    :pswitch_0
    return-void

    .line 177
    :pswitch_1
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupAccountType;->onPop()V

    goto :goto_0

    .line 180
    :pswitch_2
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupAccountType;->onImap()V

    goto :goto_0

    .line 183
    :pswitch_3
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupAccountType;->onExchange()V

    goto :goto_0

    .line 186
    :pswitch_4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 175
    :pswitch_data_0
    .packed-switch 0x7f0f001b
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountSetupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-static {p0}, Lcom/mediatek/email/extension/OPExtensionFactory;->getProviderExtension(Landroid/content/Context;)Lcom/mediatek/email/ext/IServerProviderPlugin;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSetupAccountType;->mExtension:Lcom/mediatek/email/ext/IServerProviderPlugin;

    .line 59
    invoke-static {p0}, Lcom/android/email/activity/ActivityHelper;->debugSetWindowFlags(Landroid/app/Activity;)V

    .line 60
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getFlowMode()I

    move-result v1

    .line 65
    .local v1, flowMode:I
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupAccountType;->mExtension:Lcom/mediatek/email/ext/IServerProviderPlugin;

    invoke-static {v4}, Lcom/mediatek/email/extension/AccountSetupChooseESP;->isSelectedExchange(Lcom/mediatek/email/ext/IServerProviderPlugin;)Z

    move-result v3

    .line 68
    .local v3, selectedExchangefromChooseESP:Z
    const/4 v4, 0x1

    if-eq v1, v4, :cond_0

    if-eqz v3, :cond_2

    .line 69
    :cond_0
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupAccountType;->onExchange()V

    .line 99
    :cond_1
    :goto_0
    return-void

    .line 75
    :cond_2
    const v4, 0x7f040007

    invoke-virtual {p0, v4}, Landroid/app/Activity;->setContentView(I)V

    .line 76
    const v4, 0x7f0f001b

    invoke-static {p0, v4}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    const v4, 0x7f0f001c

    invoke-static {p0, v4}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    const v4, 0x7f0f001d

    invoke-static {p0, v4}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 79
    .local v0, exchangeButton:Landroid/widget/Button;
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 80
    const v4, 0x7f0f0022

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 81
    .local v2, previousButton:Landroid/widget/Button;
    if-eqz v2, :cond_3

    .line 82
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    :cond_3
    invoke-static {p0}, Lcom/android/email/service/EmailServiceUtils;->isExchangeAvailable(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupAccountType;->mExtension:Lcom/mediatek/email/ext/IServerProviderPlugin;

    invoke-interface {v4}, Lcom/mediatek/email/ext/IServerProviderPlugin;->isSupportProviderList()Z

    move-result v4

    if-nez v4, :cond_1

    .line 91
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 93
    invoke-static {p0}, Lcom/android/email/VendorPolicyLoader;->getInstance(Landroid/content/Context;)Lcom/android/email/VendorPolicyLoader;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/email/VendorPolicyLoader;->useAlternateExchangeStrings()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 94
    const v4, 0x7f08013e

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
