.class public Lcom/hf/share/BaiDuShare;
.super Lcom/hf/share/Share;
.source "BaiDuShare.java"


# static fields
.field private static final SERVICE_IMAGE_NAME:Ljava/lang/String; = "%s.jpg"

.field private static final TAG:Ljava/lang/String; = "baidu"

.field private static final mbApiKey:Ljava/lang/String; = "d702S8MKeqBHG4vxV7Z0y3XU"


# instance fields
.field private mMessage:Ljava/lang/String;

.field private mPath:Ljava/lang/String;

.field private mToken:Ljava/lang/String;

.field private mbUiThreadHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1}, Lcom/hf/share/Share;-><init>(Landroid/content/Context;)V

    .line 29
    iput-object v0, p0, Lcom/hf/share/BaiDuShare;->mbUiThreadHandler:Landroid/os/Handler;

    .line 33
    iput-object v0, p0, Lcom/hf/share/BaiDuShare;->mToken:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/hf/share/BaiDuShare;->mMessage:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/hf/share/BaiDuShare;->mPath:Ljava/lang/String;

    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/hf/share/BaiDuShare;->mbUiThreadHandler:Landroid/os/Handler;

    .line 37
    return-void
.end method

.method static synthetic access$0(Lcom/hf/share/BaiDuShare;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lcom/hf/share/BaiDuShare;->mToken:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1(Lcom/hf/share/BaiDuShare;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/hf/share/BaiDuShare;->uploadFile()V

    return-void
.end method

.method static synthetic access$2(Lcom/hf/share/BaiDuShare;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/hf/share/BaiDuShare;->mToken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/hf/share/BaiDuShare;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/hf/share/BaiDuShare;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/hf/share/BaiDuShare;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/hf/share/BaiDuShare;->mbUiThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private uploadFile()V
    .locals 2

    .prologue
    .line 82
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/hf/share/BaiDuShare$2;

    invoke-direct {v1, p0}, Lcom/hf/share/BaiDuShare$2;-><init>(Lcom/hf/share/BaiDuShare;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 123
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 125
    return-void
.end method


# virtual methods
.method public imageShare(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "content"
    .parameter "path"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/hf/share/BaiDuShare;->mMessage:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/hf/share/BaiDuShare;->mPath:Ljava/lang/String;

    .line 50
    const-string v1, "baidu"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mPath = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/hf/share/BaiDuShare;->mPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    new-instance v0, Lcom/baidu/oauth/BaiduOAuth;

    invoke-direct {v0}, Lcom/baidu/oauth/BaiduOAuth;-><init>()V

    .line 52
    .local v0, mOAuth:Lcom/baidu/oauth/BaiduOAuth;
    iget-object v1, p0, Lcom/hf/share/BaiDuShare;->mContext:Landroid/content/Context;

    const-string v2, "d702S8MKeqBHG4vxV7Z0y3XU"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "basic"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "netdisk"

    aput-object v5, v3, v4

    new-instance v4, Lcom/hf/share/BaiDuShare$1;

    invoke-direct {v4, p0}, Lcom/hf/share/BaiDuShare$1;-><init>(Lcom/hf/share/BaiDuShare;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/baidu/oauth/BaiduOAuth;->startOAuth(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Lcom/baidu/oauth/BaiduOAuth$OAuthListener;)V

    .line 76
    return-void
.end method

.method public messageShare(Ljava/lang/String;)V
    .locals 0
    .parameter "content"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/hf/share/BaiDuShare;->mMessage:Ljava/lang/String;

    .line 43
    return-void
.end method
