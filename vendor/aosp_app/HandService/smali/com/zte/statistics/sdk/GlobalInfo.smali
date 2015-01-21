.class public Lcom/zte/statistics/sdk/GlobalInfo;
.super Ljava/lang/Object;
.source "GlobalInfo.java"


# static fields
.field public static URL_BASE:Ljava/lang/String; = null

.field public static final ZTEStatistics_API_VERSION:Ljava/lang/String; = "23"

.field public static androidId:Ljava/lang/String;

.field public static apiKey:Ljava/lang/String;

.field public static appDisplayName:Ljava/lang/String;

.field public static appPackage:Ljava/lang/String;

.field public static bCrypt:Z

.field public static bFetchAppConfiguration:Z

.field public static bIsFeedBack:Z

.field public static bSendMode:Lcom/zte/statistics/sdk/comm/ConstantDefine$SendMode;

.field public static carrier:Ljava/lang/String;

.field public static criterion:J

.field public static currentCarrier:Ljava/lang/String;

.field public static imei:Ljava/lang/String;

.field public static initialized:Z

.field public static isAppDebuggable:Z

.field public static market:Ljava/lang/String;

.field public static networkType:I

.field public static userEmail:Ljava/lang/String;

.field public static userPhone:Ljava/lang/String;

.field public static version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 14
    sput-boolean v1, Lcom/zte/statistics/sdk/GlobalInfo;->bCrypt:Z

    .line 15
    sget-object v0, Lcom/zte/statistics/sdk/comm/ConstantDefine$SendMode;->ONLYBYPROXY:Lcom/zte/statistics/sdk/comm/ConstantDefine$SendMode;

    sput-object v0, Lcom/zte/statistics/sdk/GlobalInfo;->bSendMode:Lcom/zte/statistics/sdk/comm/ConstantDefine$SendMode;

    .line 16
    sput-boolean v1, Lcom/zte/statistics/sdk/GlobalInfo;->bFetchAppConfiguration:Z

    .line 17
    sput-boolean v1, Lcom/zte/statistics/sdk/GlobalInfo;->isAppDebuggable:Z

    .line 18
    sput-boolean v1, Lcom/zte/statistics/sdk/GlobalInfo;->bIsFeedBack:Z

    .line 20
    sput-boolean v1, Lcom/zte/statistics/sdk/GlobalInfo;->initialized:Z

    .line 30
    sput-object v2, Lcom/zte/statistics/sdk/GlobalInfo;->apiKey:Ljava/lang/String;

    .line 31
    sput-object v2, Lcom/zte/statistics/sdk/GlobalInfo;->market:Ljava/lang/String;

    .line 36
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/zte/statistics/sdk/GlobalInfo;->criterion:J

    .line 37
    sget-object v0, Lcom/zte/statistics/sdk/comm/ConstantDefine;->defualtUrl:Ljava/lang/String;

    sput-object v0, Lcom/zte/statistics/sdk/GlobalInfo;->URL_BASE:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
