.class Lcom/zte/update/data/DownloadInfo$Data;
.super Ljava/lang/Object;
.source "DownloadInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/update/data/DownloadInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Data"
.end annotation


# instance fields
.field private appName:Ljava/lang/String;

.field private downloadDir:Ljava/lang/String;

.field private downloadOffset:J

.field private downloadPath:Ljava/lang/String;

.field private downloadTotalSize:J

.field private downloadUrlstr:Ljava/lang/String;

.field private downloadfileName:Ljava/lang/String;

.field private install_type:I

.field lastpercent:I

.field protected mainKeyValue:Ljava/lang/Object;

.field private status:I

.field final synthetic this$0:Lcom/zte/update/data/DownloadInfo;


# direct methods
.method private constructor <init>(Lcom/zte/update/data/DownloadInfo;)V
    .locals 3
    .parameter

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 200
    iput-object p1, p0, Lcom/zte/update/data/DownloadInfo$Data;->this$0:Lcom/zte/update/data/DownloadInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    iput-object v0, p0, Lcom/zte/update/data/DownloadInfo$Data;->downloadUrlstr:Ljava/lang/String;

    .line 202
    iput-wide v1, p0, Lcom/zte/update/data/DownloadInfo$Data;->downloadOffset:J

    .line 203
    iput-wide v1, p0, Lcom/zte/update/data/DownloadInfo$Data;->downloadTotalSize:J

    .line 204
    iput-object v0, p0, Lcom/zte/update/data/DownloadInfo$Data;->downloadfileName:Ljava/lang/String;

    .line 205
    iput-object v0, p0, Lcom/zte/update/data/DownloadInfo$Data;->downloadPath:Ljava/lang/String;

    .line 207
    iput-object v0, p0, Lcom/zte/update/data/DownloadInfo$Data;->downloadDir:Ljava/lang/String;

    .line 208
    const-string v0, ""

    iput-object v0, p0, Lcom/zte/update/data/DownloadInfo$Data;->mainKeyValue:Ljava/lang/Object;

    .line 210
    const/16 v0, 0x64

    iput v0, p0, Lcom/zte/update/data/DownloadInfo$Data;->install_type:I

    .line 212
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/update/data/DownloadInfo$Data;->lastpercent:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/update/data/DownloadInfo;Lcom/zte/update/data/DownloadInfo$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-direct {p0, p1}, Lcom/zte/update/data/DownloadInfo$Data;-><init>(Lcom/zte/update/data/DownloadInfo;)V

    return-void
.end method

.method static synthetic access$000(Lcom/zte/update/data/DownloadInfo$Data;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget v0, p0, Lcom/zte/update/data/DownloadInfo$Data;->install_type:I

    return v0
.end method

.method static synthetic access$002(Lcom/zte/update/data/DownloadInfo$Data;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    iput p1, p0, Lcom/zte/update/data/DownloadInfo$Data;->install_type:I

    return p1
.end method

.method static synthetic access$200(Lcom/zte/update/data/DownloadInfo$Data;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget v0, p0, Lcom/zte/update/data/DownloadInfo$Data;->status:I

    return v0
.end method

.method static synthetic access$202(Lcom/zte/update/data/DownloadInfo$Data;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    iput p1, p0, Lcom/zte/update/data/DownloadInfo$Data;->status:I

    return p1
.end method

.method static synthetic access$300(Lcom/zte/update/data/DownloadInfo$Data;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 200
    iget-wide v0, p0, Lcom/zte/update/data/DownloadInfo$Data;->downloadOffset:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/zte/update/data/DownloadInfo$Data;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    iput-wide p1, p0, Lcom/zte/update/data/DownloadInfo$Data;->downloadOffset:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/zte/update/data/DownloadInfo$Data;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/zte/update/data/DownloadInfo$Data;->downloadUrlstr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/zte/update/data/DownloadInfo$Data;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    iput-object p1, p0, Lcom/zte/update/data/DownloadInfo$Data;->downloadUrlstr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/zte/update/data/DownloadInfo$Data;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 200
    iget-wide v0, p0, Lcom/zte/update/data/DownloadInfo$Data;->downloadTotalSize:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/zte/update/data/DownloadInfo$Data;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    iput-wide p1, p0, Lcom/zte/update/data/DownloadInfo$Data;->downloadTotalSize:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/zte/update/data/DownloadInfo$Data;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/zte/update/data/DownloadInfo$Data;->downloadfileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/zte/update/data/DownloadInfo$Data;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    iput-object p1, p0, Lcom/zte/update/data/DownloadInfo$Data;->downloadfileName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/zte/update/data/DownloadInfo$Data;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/zte/update/data/DownloadInfo$Data;->appName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/zte/update/data/DownloadInfo$Data;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    iput-object p1, p0, Lcom/zte/update/data/DownloadInfo$Data;->appName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/zte/update/data/DownloadInfo$Data;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/zte/update/data/DownloadInfo$Data;->downloadPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/zte/update/data/DownloadInfo$Data;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    iput-object p1, p0, Lcom/zte/update/data/DownloadInfo$Data;->downloadPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/zte/update/data/DownloadInfo$Data;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/zte/update/data/DownloadInfo$Data;->downloadDir:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/zte/update/data/DownloadInfo$Data;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    iput-object p1, p0, Lcom/zte/update/data/DownloadInfo$Data;->downloadDir:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public onChange(IJ)V
    .locals 5
    .parameter "statuscode"
    .parameter "offset"

    .prologue
    .line 216
    iput p1, p0, Lcom/zte/update/data/DownloadInfo$Data;->status:I

    .line 217
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-lez v1, :cond_0

    .line 218
    iput-wide p2, p0, Lcom/zte/update/data/DownloadInfo$Data;->downloadOffset:J

    .line 220
    :cond_0
    iget-wide v1, p0, Lcom/zte/update/data/DownloadInfo$Data;->downloadOffset:J

    iget-wide v3, p0, Lcom/zte/update/data/DownloadInfo$Data;->downloadTotalSize:J

    invoke-static {v1, v2, v3, v4}, Lcom/zte/aliveupdate/common/utils/CommonUtil;->caculatPersent(JJ)I

    move-result v0

    .line 222
    .local v0, percentNum:I
    iget v1, p0, Lcom/zte/update/data/DownloadInfo$Data;->status:I

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1

    if-lez v0, :cond_1

    const/16 v1, 0x64

    if-ge v0, v1, :cond_1

    iget v1, p0, Lcom/zte/update/data/DownloadInfo$Data;->lastpercent:I

    sub-int v1, v0, v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 233
    :goto_0
    return-void

    .line 226
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notification  status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/zte/update/data/DownloadInfo$Data;->status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mainkey="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/update/data/DownloadInfo$Data;->mainKeyValue:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zte/util/Log;->debug(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    iput v0, p0, Lcom/zte/update/data/DownloadInfo$Data;->lastpercent:I

    goto :goto_0
.end method
