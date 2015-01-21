.class public Lcom/mediatek/email/extension/AccountSetupChooseESP;
.super Landroid/app/ListActivity;
.source "AccountSetupChooseESP.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/email/extension/AccountSetupChooseESP$MyAdapter;
    }
.end annotation


# static fields
.field private static final DEFAULT_PROVIDER_POSITION_IN_XML:I = 0x0

.field private static final EXCHAGNE_PROVIDER_POSITION_IN_XML:I = 0x1

.field private static final EXTRA_ACCOUNT_SETUP_FINISHED:Ljava/lang/String; = "extra_account_setup_finished"

.field private static final FIFTH_PROVIDER_POSITION_IN_XML:I = 0x4

.field private static final FIRST_PROVIDER_POSITION_IN_XML:I = 0x0

.field private static final FOURTH_PROVIDER_POSITION_IN_XML:I = 0x3

.field private static final PROVIDER_POSITION:[I = null

.field private static final SENCOND_PROVIDER_POSITION_IN_XML:I = 0x1

.field private static final SERVER_189_PROVIDER_POSITION_IN_XML:I = 0x0

.field private static final SEVENTH_PROVIDER_POSITION_IN_XML:I = 0x6

.field private static final SIXTH_PROVIDER_POSITION_IN_XML:I = 0x5

.field private static final TAG:Ljava/lang/String; = "AccountSetupChooseESP"

.field private static final THIRD_PROVIDER_POSITION_IN_XML:I = 0x2

.field public static final UNKNOWN_DOMAIN:Ljava/lang/String; = "UNKNOWN"

.field private static sSelectedProviderDomain:Ljava/lang/String;


# instance fields
.field private mCachedIntent:Landroid/content/Intent;

.field private mESPDomains:[Ljava/lang/String;

.field private mESPIcons:[I

.field private mESPNames:[Ljava/lang/String;

.field private mEspDisplayCountLimit:I

.field private mExtension:Lcom/mediatek/email/ext/IServerProviderPlugin;

.field private mSetUpFinsished:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 106
    const-string v0, "UNKNOWN"

    sput-object v0, Lcom/mediatek/email/extension/AccountSetupChooseESP;->sSelectedProviderDomain:Ljava/lang/String;

    .line 127
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mediatek/email/extension/AccountSetupChooseESP;->PROVIDER_POSITION:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 103
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/email/extension/AccountSetupChooseESP;->mSetUpFinsished:Z

    .line 236
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/email/extension/AccountSetupChooseESP;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget v0, p0, Lcom/mediatek/email/extension/AccountSetupChooseESP;->mEspDisplayCountLimit:I

    return v0
.end method

.method static synthetic access$100(Lcom/mediatek/email/extension/AccountSetupChooseESP;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/mediatek/email/extension/AccountSetupChooseESP;->mESPIcons:[I

    return-object v0
.end method

.method static synthetic access$200()[I
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/mediatek/email/extension/AccountSetupChooseESP;->PROVIDER_POSITION:[I

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/email/extension/AccountSetupChooseESP;)Lcom/mediatek/email/ext/IServerProviderPlugin;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/mediatek/email/extension/AccountSetupChooseESP;->mExtension:Lcom/mediatek/email/ext/IServerProviderPlugin;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/email/extension/AccountSetupChooseESP;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/mediatek/email/extension/AccountSetupChooseESP;->mESPNames:[Ljava/lang/String;

    return-object v0
.end method

.method public static getSelectedDoamin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    sget-object v0, Lcom/mediatek/email/extension/AccountSetupChooseESP;->sSelectedProviderDomain:Ljava/lang/String;

    return-object v0
.end method

.method public static isEmailPrefixNameValid(Ljava/lang/String;)Z
    .locals 3
    .parameter "emailName"

    .prologue
    .line 354
    const-string v2, "^((\\u0022.+?\\u0022@)|(([\\Q-!#$%&\'*+/=?^`{}|~\\E\\w])+(\\.[\\Q-!#$%&\'*+/=?^`{}|~\\E\\w]+)*@?))"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 356
    .local v1, p:Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 357
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    return v2
.end method

.method public static isSelectedExchange(Lcom/mediatek/email/ext/IServerProviderPlugin;)Z
    .locals 4
    .parameter "extension"

    .prologue
    const/4 v2, 0x0

    .line 306
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mediatek/email/ext/IServerProviderPlugin;->isSupportProviderList()Z

    move-result v3

    if-nez v3, :cond_1

    .line 314
    :cond_0
    :goto_0
    return v2

    .line 309
    :cond_1
    invoke-interface {p0}, Lcom/mediatek/email/ext/IServerProviderPlugin;->getProviderDomains()[Ljava/lang/String;

    move-result-object v1

    .line 310
    .local v1, providerDomains:[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 311
    const/4 v2, 0x1

    aget-object v0, v1, v2

    .line 312
    .local v0, exchangeDefaultDomain:Ljava/lang/String;
    sget-object v2, Lcom/mediatek/email/extension/AccountSetupChooseESP;->sSelectedProviderDomain:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public static isSelectedSpecialESP(Lcom/mediatek/email/ext/IServerProviderPlugin;)Z
    .locals 4
    .parameter "extension"

    .prologue
    const/4 v2, 0x0

    .line 323
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mediatek/email/ext/IServerProviderPlugin;->isSupportProviderList()Z

    move-result v3

    if-nez v3, :cond_1

    .line 331
    :cond_0
    :goto_0
    return v2

    .line 326
    :cond_1
    invoke-interface {p0}, Lcom/mediatek/email/ext/IServerProviderPlugin;->getProviderDomains()[Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, providerDomains:[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 328
    aget-object v1, v0, v2

    .line 329
    .local v1, specialESPDomain:Ljava/lang/String;
    sget-object v2, Lcom/mediatek/email/extension/AccountSetupChooseESP;->sSelectedProviderDomain:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public static isServerDomainUnknown()Z
    .locals 2

    .prologue
    .line 339
    sget-object v0, Lcom/mediatek/email/extension/AccountSetupChooseESP;->sSelectedProviderDomain:Ljava/lang/String;

    .line 340
    .local v0, domain:Ljava/lang/String;
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 341
    const/4 v1, 0x0

    .line 343
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isSpecialESPAccount(Lcom/mediatek/email/ext/IServerProviderPlugin;Ljava/lang/String;)Z
    .locals 7
    .parameter "extension"
    .parameter "accountName"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 286
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p1}, Lcom/android/emailcommon/mail/Address;->isAllValid(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 296
    :cond_0
    :goto_0
    return v4

    .line 289
    :cond_1
    invoke-interface {p0}, Lcom/mediatek/email/ext/IServerProviderPlugin;->getDefaultProviderDomain()Ljava/lang/String;

    move-result-object v2

    .line 290
    .local v2, specialESPName:Ljava/lang/String;
    const-string v5, "@"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 291
    .local v1, emailParts:[Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 292
    aget-object v0, v1, v3

    .line 293
    .local v0, domain:Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :goto_1
    move v4, v3

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_1

    .line 295
    .end local v0           #domain:Ljava/lang/String;
    :cond_3
    const-string v3, "AccountSetupChooseESP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "account name is wrong! accountName : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private loadResources()V
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/mediatek/email/extension/AccountSetupChooseESP;->mExtension:Lcom/mediatek/email/ext/IServerProviderPlugin;

    invoke-interface {v0}, Lcom/mediatek/email/ext/IServerProviderPlugin;->getProviderNames()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/email/extension/AccountSetupChooseESP;->mESPNames:[Ljava/lang/String;

    .line 272
    iget-object v0, p0, Lcom/mediatek/email/extension/AccountSetupChooseESP;->mExtension:Lcom/mediatek/email/ext/IServerProviderPlugin;

    invoke-interface {v0}, Lcom/mediatek/email/ext/IServerProviderPlugin;->getProviderIcons()[I

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/email/extension/AccountSetupChooseESP;->mESPIcons:[I

    .line 273
    iget-object v0, p0, Lcom/mediatek/email/extension/AccountSetupChooseESP;->mExtension:Lcom/mediatek/email/ext/IServerProviderPlugin;

    invoke-interface {v0}, Lcom/mediatek/email/ext/IServerProviderPlugin;->getProviderDomains()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/email/extension/AccountSetupChooseESP;->mESPDomains:[Ljava/lang/String;

    .line 274
    iget-object v0, p0, Lcom/mediatek/email/extension/AccountSetupChooseESP;->mExtension:Lcom/mediatek/email/ext/IServerProviderPlugin;

    invoke-interface {v0}, Lcom/mediatek/email/ext/IServerProviderPlugin;->getDisplayESPNum()I

    move-result v0

    iput v0, p0, Lcom/mediatek/email/extension/AccountSetupChooseESP;->mEspDisplayCountLimit:I

    .line 275
    return-void
.end method

.method public static onAccountSetupFinished(Landroid/app/Activity;)V
    .locals 4
    .parameter "fromActivity"

    .prologue
    .line 147
    const-string v1, "AccountSetupChooseESP"

    const-string v2, "account set up finished"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 148
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/email/extension/AccountSetupChooseESP;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 155
    .local v0, i:Landroid/content/Intent;
    const/high16 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 156
    const-string v1, "extra_account_setup_finished"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 157
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 158
    return-void
.end method

.method private redirectToOriginalFlow(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/mediatek/email/extension/AccountSetupChooseESP;->mCachedIntent:Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSetupBasics;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 162
    iget-object v0, p0, Lcom/mediatek/email/extension/AccountSetupChooseESP;->mCachedIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 163
    return-void
.end method

.method public static resetESPSettings()V
    .locals 1

    .prologue
    .line 216
    const-string v0, "UNKNOWN"

    sput-object v0, Lcom/mediatek/email/extension/AccountSetupChooseESP;->sSelectedProviderDomain:Ljava/lang/String;

    .line 217
    return-void
.end method

.method private setSelectedDomain(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 220
    iget-object v0, p0, Lcom/mediatek/email/extension/AccountSetupChooseESP;->mESPDomains:[Ljava/lang/String;

    sget-object v1, Lcom/mediatek/email/extension/AccountSetupChooseESP;->PROVIDER_POSITION:[I

    aget v1, v1, p1

    aget-object v0, v0, v1

    sput-object v0, Lcom/mediatek/email/extension/AccountSetupChooseESP;->sSelectedProviderDomain:Ljava/lang/String;

    .line 221
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    .line 167
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 168
    const-string v3, "AccountSetupChooseESP"

    const-string v4, "AccountSetupChooseESP onCreate"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 169
    invoke-static {}, Lcom/mediatek/email/extension/AccountSetupChooseESP;->resetESPSettings()V

    .line 173
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/email/extension/AccountSetupChooseESP;->mCachedIntent:Landroid/content/Intent;

    .line 174
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 175
    .local v2, i:Landroid/content/Intent;
    const-string v3, "extra_account_setup_finished"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/mediatek/email/extension/AccountSetupChooseESP;->mSetUpFinsished:Z

    .line 176
    iget-boolean v3, p0, Lcom/mediatek/email/extension/AccountSetupChooseESP;->mSetUpFinsished:Z

    if-eqz v3, :cond_0

    .line 177
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 192
    :goto_0
    return-void

    .line 181
    :cond_0
    const-string v3, "FLOW_MODE"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 182
    .local v1, flowMode:I
    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 183
    invoke-direct {p0, p0}, Lcom/mediatek/email/extension/AccountSetupChooseESP;->redirectToOriginalFlow(Landroid/content/Context;)V

    .line 184
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 187
    :cond_1
    const v3, 0x7f04004d

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setContentView(I)V

    .line 188
    invoke-static {p0}, Lcom/mediatek/email/extension/OPExtensionFactory;->getProviderExtension(Landroid/content/Context;)Lcom/mediatek/email/ext/IServerProviderPlugin;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/email/extension/AccountSetupChooseESP;->mExtension:Lcom/mediatek/email/ext/IServerProviderPlugin;

    .line 189
    invoke-direct {p0}, Lcom/mediatek/email/extension/AccountSetupChooseESP;->loadResources()V

    .line 190
    new-instance v0, Lcom/mediatek/email/extension/AccountSetupChooseESP$MyAdapter;

    invoke-direct {v0, p0, p0}, Lcom/mediatek/email/extension/AccountSetupChooseESP$MyAdapter;-><init>(Lcom/mediatek/email/extension/AccountSetupChooseESP;Landroid/content/Context;)V

    .line 191
    .local v0, adapter:Lcom/mediatek/email/extension/AccountSetupChooseESP$MyAdapter;
    invoke-virtual {p0, v0}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 198
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 199
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 229
    const-string v0, "AccountSetupChooseESP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AccountSetupChooseESP onListItemClick position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 231
    invoke-direct {p0, p3}, Lcom/mediatek/email/extension/AccountSetupChooseESP;->setSelectedDomain(I)V

    .line 233
    invoke-direct {p0, p0}, Lcom/mediatek/email/extension/AccountSetupChooseESP;->redirectToOriginalFlow(Landroid/content/Context;)V

    .line 234
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 205
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 208
    iget-boolean v0, p0, Lcom/mediatek/email/extension/AccountSetupChooseESP;->mSetUpFinsished:Z

    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 211
    :cond_0
    invoke-static {}, Lcom/mediatek/email/extension/AccountSetupChooseESP;->resetESPSettings()V

    .line 212
    return-void
.end method
