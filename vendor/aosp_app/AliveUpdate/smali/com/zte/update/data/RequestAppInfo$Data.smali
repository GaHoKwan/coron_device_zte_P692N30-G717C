.class Lcom/zte/update/data/RequestAppInfo$Data;
.super Ljava/lang/Object;
.source "RequestAppInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/update/data/RequestAppInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Data"
.end annotation


# instance fields
.field private appDescription:Ljava/lang/String;

.field private appName:Ljava/lang/String;

.field private appUid:Ljava/lang/String;

.field protected mainKeyValue:Ljava/lang/Object;

.field private packageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/zte/update/data/RequestAppInfo;

.field private versionCode:I

.field private versionName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/zte/update/data/RequestAppInfo;)V
    .locals 1
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/zte/update/data/RequestAppInfo$Data;->this$0:Lcom/zte/update/data/RequestAppInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    const-string v0, ""

    iput-object v0, p0, Lcom/zte/update/data/RequestAppInfo$Data;->appName:Ljava/lang/String;

    .line 180
    const-string v0, ""

    iput-object v0, p0, Lcom/zte/update/data/RequestAppInfo$Data;->packageName:Ljava/lang/String;

    .line 182
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/update/data/RequestAppInfo$Data;->versionCode:I

    .line 183
    const-string v0, ""

    iput-object v0, p0, Lcom/zte/update/data/RequestAppInfo$Data;->versionName:Ljava/lang/String;

    .line 184
    const-string v0, ""

    iput-object v0, p0, Lcom/zte/update/data/RequestAppInfo$Data;->appDescription:Ljava/lang/String;

    .line 186
    const-string v0, ""

    iput-object v0, p0, Lcom/zte/update/data/RequestAppInfo$Data;->appUid:Ljava/lang/String;

    .line 188
    const-string v0, ""

    iput-object v0, p0, Lcom/zte/update/data/RequestAppInfo$Data;->mainKeyValue:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/update/data/RequestAppInfo;Lcom/zte/update/data/RequestAppInfo$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/zte/update/data/RequestAppInfo$Data;-><init>(Lcom/zte/update/data/RequestAppInfo;)V

    return-void
.end method

.method static synthetic access$100(Lcom/zte/update/data/RequestAppInfo$Data;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/zte/update/data/RequestAppInfo$Data;->appUid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/zte/update/data/RequestAppInfo$Data;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 178
    iput-object p1, p0, Lcom/zte/update/data/RequestAppInfo$Data;->appUid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/zte/update/data/RequestAppInfo$Data;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/zte/update/data/RequestAppInfo$Data;->appName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/zte/update/data/RequestAppInfo$Data;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 178
    iput-object p1, p0, Lcom/zte/update/data/RequestAppInfo$Data;->appName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/zte/update/data/RequestAppInfo$Data;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/zte/update/data/RequestAppInfo$Data;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/zte/update/data/RequestAppInfo$Data;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 178
    iput-object p1, p0, Lcom/zte/update/data/RequestAppInfo$Data;->packageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/zte/update/data/RequestAppInfo$Data;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget v0, p0, Lcom/zte/update/data/RequestAppInfo$Data;->versionCode:I

    return v0
.end method

.method static synthetic access$402(Lcom/zte/update/data/RequestAppInfo$Data;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 178
    iput p1, p0, Lcom/zte/update/data/RequestAppInfo$Data;->versionCode:I

    return p1
.end method

.method static synthetic access$500(Lcom/zte/update/data/RequestAppInfo$Data;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/zte/update/data/RequestAppInfo$Data;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/zte/update/data/RequestAppInfo$Data;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 178
    iput-object p1, p0, Lcom/zte/update/data/RequestAppInfo$Data;->versionName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/zte/update/data/RequestAppInfo$Data;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/zte/update/data/RequestAppInfo$Data;->appDescription:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/zte/update/data/RequestAppInfo$Data;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 178
    iput-object p1, p0, Lcom/zte/update/data/RequestAppInfo$Data;->appDescription:Ljava/lang/String;

    return-object p1
.end method
