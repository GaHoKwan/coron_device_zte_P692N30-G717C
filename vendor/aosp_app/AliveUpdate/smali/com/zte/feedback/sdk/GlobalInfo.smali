.class public Lcom/zte/feedback/sdk/GlobalInfo;
.super Ljava/lang/Object;
.source "GlobalInfo.java"


# static fields
.field public static URL_BASE:Ljava/lang/String; = null

.field public static final ZTEStatistics_API_VERSION:Ljava/lang/String; = "feedback V1.0.0"

.field public static androidId:Ljava/lang/String;

.field public static apiKey:Ljava/lang/String;

.field public static appDisplayName:Ljava/lang/String;

.field public static appPackage:Ljava/lang/String;

.field public static bFetchAppConfiguration:Z

.field public static bIsFeedBack:Z

.field public static carrier:Ljava/lang/String;

.field public static criterion:J

.field public static currentCarrier:Ljava/lang/String;

.field public static imei:Ljava/lang/String;

.field public static initialized:Z

.field public static market:Ljava/lang/String;

.field public static networkType:I

.field public static userEmail:Ljava/lang/String;

.field public static userPhone:Ljava/lang/String;

.field public static version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 14
    sput-boolean v0, Lcom/zte/feedback/sdk/GlobalInfo;->bFetchAppConfiguration:Z

    .line 15
    sput-boolean v0, Lcom/zte/feedback/sdk/GlobalInfo;->bIsFeedBack:Z

    .line 17
    sput-boolean v0, Lcom/zte/feedback/sdk/GlobalInfo;->initialized:Z

    .line 27
    sput-object v1, Lcom/zte/feedback/sdk/GlobalInfo;->apiKey:Ljava/lang/String;

    .line 28
    sput-object v1, Lcom/zte/feedback/sdk/GlobalInfo;->market:Ljava/lang/String;

    .line 33
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/zte/feedback/sdk/GlobalInfo;->criterion:J

    .line 34
    sget-object v0, Lcom/zte/feedback/sdk/comm/ConstantDefine;->defualtUrl:Ljava/lang/String;

    sput-object v0, Lcom/zte/feedback/sdk/GlobalInfo;->URL_BASE:Ljava/lang/String;

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
