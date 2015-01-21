.class public Lcom/mediatek/email/plugin/ServerProviderPlugin;
.super Lcom/mediatek/email/ext/DefaultServerProviderExtension;
.source "ServerProviderPlugin.java"


# static fields
.field private static final DEFAULT_PROVIDER_DOMAIN:Ljava/lang/String; = "189.cn"

.field private static final DISPLAY_ESP_NUMBER:I = 0x7

.field private static final IS_SUPPORT_PROVIDER_LIST:Z = true

.field private static final TAG:Ljava/lang/String; = "CTProviderPlugin"

.field private static sAccountNameDescription:Ljava/lang/String;

.field private static sDefaultAccountSignature:Ljava/lang/String;

.field private static sDisplayESPNum:I

.field private static sESPDomains:[Ljava/lang/String;

.field private static sProviderIconIds:[I

.field private static sProviderNames:[Ljava/lang/String;

.field private static sProviderxml:I


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/mediatek/email/ext/DefaultServerProviderExtension;-><init>()V

    .line 57
    const-string v0, "CTProviderPlugin"

    const-string v1, "ServerProviderPlugin set up"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iput-object p1, p0, Lcom/mediatek/email/plugin/ServerProviderPlugin;->mContext:Landroid/content/Context;

    .line 59
    invoke-direct {p0}, Lcom/mediatek/email/plugin/ServerProviderPlugin;->loadProviderResources()V

    .line 60
    return-void
.end method

.method private loadProviderResources()V
    .locals 5

    .prologue
    .line 163
    iget-object v3, p0, Lcom/mediatek/email/plugin/ServerProviderPlugin;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 164
    .local v2, res:Landroid/content/res/Resources;
    const v3, 0x7f050006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 165
    .local v1, providerIconResources:Landroid/content/res/TypedArray;
    const v3, 0x7f050005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/mediatek/email/plugin/ServerProviderPlugin;->sProviderNames:[Ljava/lang/String;

    .line 166
    const v3, 0x7f040009

    sput v3, Lcom/mediatek/email/plugin/ServerProviderPlugin;->sProviderxml:I

    .line 167
    const v3, 0x7f050007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/mediatek/email/plugin/ServerProviderPlugin;->sESPDomains:[Ljava/lang/String;

    .line 168
    const/4 v3, 0x7

    sput v3, Lcom/mediatek/email/plugin/ServerProviderPlugin;->sDisplayESPNum:I

    .line 169
    const v3, 0x7f090006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/mediatek/email/plugin/ServerProviderPlugin;->sAccountNameDescription:Ljava/lang/String;

    .line 170
    const v3, 0x7f090005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/mediatek/email/plugin/ServerProviderPlugin;->sDefaultAccountSignature:Ljava/lang/String;

    .line 172
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    new-array v3, v3, [I

    sput-object v3, Lcom/mediatek/email/plugin/ServerProviderPlugin;->sProviderIconIds:[I

    .line 173
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 174
    sget-object v3, Lcom/mediatek/email/plugin/ServerProviderPlugin;->sProviderIconIds:[I

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    aput v4, v3, v0

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 176
    :cond_0
    const-string v3, "CTProviderPlugin"

    const-string v4, "loadProviderResources compelete"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    return-void
.end method


# virtual methods
.method public getAccountNameDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    sget-object v0, Lcom/mediatek/email/plugin/ServerProviderPlugin;->sAccountNameDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    sget-object v0, Lcom/mediatek/email/plugin/ServerProviderPlugin;->sDefaultAccountSignature:Ljava/lang/String;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mediatek/email/plugin/ServerProviderPlugin;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDefaultProviderDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    const-string v0, "189.cn"

    return-object v0
.end method

.method public getDisplayESPNum()I
    .locals 1

    .prologue
    .line 138
    sget v0, Lcom/mediatek/email/plugin/ServerProviderPlugin;->sDisplayESPNum:I

    return v0
.end method

.method public getProviderDomains()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/mediatek/email/plugin/ServerProviderPlugin;->sESPDomains:[Ljava/lang/String;

    return-object v0
.end method

.method public getProviderIcons()[I
    .locals 1

    .prologue
    .line 120
    sget-object v0, Lcom/mediatek/email/plugin/ServerProviderPlugin;->sProviderIconIds:[I

    return-object v0
.end method

.method public getProviderNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/mediatek/email/plugin/ServerProviderPlugin;->sProviderNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getProviderXml()I
    .locals 1

    .prologue
    .line 100
    sget v0, Lcom/mediatek/email/plugin/ServerProviderPlugin;->sProviderxml:I

    return v0
.end method

.method public isSupportProviderList()Z
    .locals 2

    .prologue
    .line 79
    const-string v0, "CTProviderPlugin"

    const-string v1, "isSupportProviderList true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const/4 v0, 0x1

    return v0
.end method
