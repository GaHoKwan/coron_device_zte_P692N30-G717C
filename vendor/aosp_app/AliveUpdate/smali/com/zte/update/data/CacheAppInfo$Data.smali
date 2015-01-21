.class Lcom/zte/update/data/CacheAppInfo$Data;
.super Ljava/lang/Object;
.source "CacheAppInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/update/data/CacheAppInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Data"
.end annotation


# instance fields
.field protected allSze:J

.field protected apkUrl:Ljava/lang/String;

.field protected appName:Ljava/lang/String;

.field protected appUid:Ljava/lang/String;

.field protected mainKeyValue:Ljava/lang/Object;

.field protected packageName:Ljava/lang/String;

.field protected patchSize:J

.field private publishTime:J

.field private summary:Ljava/lang/String;

.field final synthetic this$0:Lcom/zte/update/data/CacheAppInfo;

.field private versionCode:I

.field private versionName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/zte/update/data/CacheAppInfo;)V
    .locals 2
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lcom/zte/update/data/CacheAppInfo$Data;->this$0:Lcom/zte/update/data/CacheAppInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/update/data/CacheAppInfo$Data;->versionCode:I

    .line 189
    const-string v0, ""

    iput-object v0, p0, Lcom/zte/update/data/CacheAppInfo$Data;->versionName:Ljava/lang/String;

    .line 190
    const-string v0, ""

    iput-object v0, p0, Lcom/zte/update/data/CacheAppInfo$Data;->summary:Ljava/lang/String;

    .line 191
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/zte/update/data/CacheAppInfo$Data;->publishTime:J

    .line 193
    const-string v0, ""

    iput-object v0, p0, Lcom/zte/update/data/CacheAppInfo$Data;->packageName:Ljava/lang/String;

    .line 194
    const-string v0, ""

    iput-object v0, p0, Lcom/zte/update/data/CacheAppInfo$Data;->appName:Ljava/lang/String;

    .line 196
    const-string v0, ""

    iput-object v0, p0, Lcom/zte/update/data/CacheAppInfo$Data;->apkUrl:Ljava/lang/String;

    .line 198
    const-string v0, ""

    iput-object v0, p0, Lcom/zte/update/data/CacheAppInfo$Data;->mainKeyValue:Ljava/lang/Object;

    .line 200
    const-string v0, ""

    iput-object v0, p0, Lcom/zte/update/data/CacheAppInfo$Data;->appUid:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/update/data/CacheAppInfo;Lcom/zte/update/data/CacheAppInfo$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lcom/zte/update/data/CacheAppInfo$Data;-><init>(Lcom/zte/update/data/CacheAppInfo;)V

    return-void
.end method

.method static synthetic access$100(Lcom/zte/update/data/CacheAppInfo$Data;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 187
    iget v0, p0, Lcom/zte/update/data/CacheAppInfo$Data;->versionCode:I

    return v0
.end method

.method static synthetic access$102(Lcom/zte/update/data/CacheAppInfo$Data;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 187
    iput p1, p0, Lcom/zte/update/data/CacheAppInfo$Data;->versionCode:I

    return p1
.end method

.method static synthetic access$200(Lcom/zte/update/data/CacheAppInfo$Data;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/zte/update/data/CacheAppInfo$Data;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/zte/update/data/CacheAppInfo$Data;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 187
    iput-object p1, p0, Lcom/zte/update/data/CacheAppInfo$Data;->versionName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/zte/update/data/CacheAppInfo$Data;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/zte/update/data/CacheAppInfo$Data;->summary:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/zte/update/data/CacheAppInfo$Data;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 187
    iput-object p1, p0, Lcom/zte/update/data/CacheAppInfo$Data;->summary:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/zte/update/data/CacheAppInfo$Data;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 187
    iget-wide v0, p0, Lcom/zte/update/data/CacheAppInfo$Data;->publishTime:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/zte/update/data/CacheAppInfo$Data;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 187
    iput-wide p1, p0, Lcom/zte/update/data/CacheAppInfo$Data;->publishTime:J

    return-wide p1
.end method
