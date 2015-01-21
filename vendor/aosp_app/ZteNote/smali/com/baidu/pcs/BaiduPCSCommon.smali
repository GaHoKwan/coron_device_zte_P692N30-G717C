.class public Lcom/baidu/pcs/BaiduPCSCommon;
.super Ljava/lang/Object;


# static fields
.field private static baiduPCSCommon:Lcom/baidu/pcs/BaiduPCSCommon;


# instance fields
.field private accessToken:Ljava/lang/String;

.field private accountID:Ljava/lang/String;

.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/pcs/BaiduPCSCommon;->baiduPCSCommon:Lcom/baidu/pcs/BaiduPCSCommon;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSCommon;->accessToken:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSCommon;->accountID:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSCommon;->context:Landroid/content/Context;

    return-void
.end method

.method public static getInstance()Lcom/baidu/pcs/BaiduPCSCommon;
    .locals 1

    sget-object v0, Lcom/baidu/pcs/BaiduPCSCommon;->baiduPCSCommon:Lcom/baidu/pcs/BaiduPCSCommon;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/pcs/BaiduPCSCommon;

    invoke-direct {v0}, Lcom/baidu/pcs/BaiduPCSCommon;-><init>()V

    sput-object v0, Lcom/baidu/pcs/BaiduPCSCommon;->baiduPCSCommon:Lcom/baidu/pcs/BaiduPCSCommon;

    :cond_0
    sget-object v0, Lcom/baidu/pcs/BaiduPCSCommon;->baiduPCSCommon:Lcom/baidu/pcs/BaiduPCSCommon;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    const/4 v1, 0x0

    sput-object v1, Lcom/baidu/pcs/BaiduPCSCommon;->baiduPCSCommon:Lcom/baidu/pcs/BaiduPCSCommon;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSCommon;->accessToken:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSCommon;->accountID:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/pcs/BaiduPCSCommon;->context:Landroid/content/Context;

    return-void
.end method

.method public final getAccessToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSCommon;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getAccountID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSCommon;->accountID:Ljava/lang/String;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSCommon;->context:Landroid/content/Context;

    return-object v0
.end method

.method final setAccessToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/pcs/BaiduPCSCommon;->accessToken:Ljava/lang/String;

    return-void
.end method

.method final setAccountID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/pcs/BaiduPCSCommon;->accountID:Ljava/lang/String;

    return-void
.end method

.method final setContext(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/pcs/BaiduPCSCommon;->context:Landroid/content/Context;

    return-void
.end method
