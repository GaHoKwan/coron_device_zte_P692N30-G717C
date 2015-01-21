.class Lcom/android/wifidirect/test/VcardFileHandler;
.super Ljava/lang/Object;
.source "VcardFileHandler.java"

# interfaces
.implements Lcom/android/wifidirect/test/WifiDirectOppFileProcessor$FileHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wifidirect/test/VcardFileHandler$VCardReadThread;,
        Lcom/android/wifidirect/test/VcardFileHandler$VCardFile;
    }
.end annotation


# static fields
.field private static final D:Z = true

.field static final TAG:Ljava/lang/String; = "BtOppVcradFileHandler"

.field private static final V:Z = true


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultVcardType:I

.field private mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;

.field private mProcessor:Lcom/android/wifidirect/test/WifiDirectOppFileProcessor;

.field private mReadThread:Lcom/android/wifidirect/test/VcardFileHandler$VCardReadThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wifidirect/test/WifiOppShareInfo;)V
    .locals 1
    .parameter "context"
    .parameter "info"

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object v0, p0, Lcom/android/wifidirect/test/VcardFileHandler;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;

    .line 60
    iput-object v0, p0, Lcom/android/wifidirect/test/VcardFileHandler;->mContext:Landroid/content/Context;

    .line 65
    sget v0, Lcom/android/vcard/VCardConfig;->VCARD_TYPE_DEFAULT:I

    iput v0, p0, Lcom/android/wifidirect/test/VcardFileHandler;->mDefaultVcardType:I

    .line 72
    iput-object p1, p0, Lcom/android/wifidirect/test/VcardFileHandler;->mContext:Landroid/content/Context;

    .line 73
    iput-object p2, p0, Lcom/android/wifidirect/test/VcardFileHandler;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;

    .line 75
    invoke-static {p1}, Lcom/android/wifidirect/test/WifiDirectOppFileProcessor;->getInstance(Landroid/content/Context;)Lcom/android/wifidirect/test/WifiDirectOppFileProcessor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wifidirect/test/VcardFileHandler;->mProcessor:Lcom/android/wifidirect/test/WifiDirectOppFileProcessor;

    .line 77
    return-void
.end method

.method static synthetic access$100(Lcom/android/wifidirect/test/VcardFileHandler;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/wifidirect/test/VcardFileHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/wifidirect/test/VcardFileHandler;Landroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/wifidirect/test/VcardFileHandler;->updateHistory(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/wifidirect/test/VcardFileHandler;)Lcom/android/wifidirect/test/WifiOppShareInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/wifidirect/test/VcardFileHandler;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/wifidirect/test/VcardFileHandler;)Lcom/android/wifidirect/test/WifiDirectOppFileProcessor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/wifidirect/test/VcardFileHandler;->mProcessor:Lcom/android/wifidirect/test/WifiDirectOppFileProcessor;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/wifidirect/test/VcardFileHandler;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/android/wifidirect/test/VcardFileHandler;->mDefaultVcardType:I

    return v0
.end method

.method private updateHistory(Landroid/net/Uri;)V
    .locals 5
    .parameter "contactUri"

    .prologue
    const/4 v4, 0x0

    .line 103
    if-eqz p1, :cond_0

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/wifidirect/test/WifiShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/wifidirect/test/VcardFileHandler;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;

    iget v3, v3, Lcom/android/wifidirect/test/WifiOppShareInfo;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 105
    .local v0, contentUri:Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 106
    .local v1, updateValues:Landroid/content/ContentValues;
    const-string v2, "_data"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v2, p0, Lcom/android/wifidirect/test/VcardFileHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 110
    .end local v0           #contentUri:Landroid/net/Uri;
    .end local v1           #updateValues:Landroid/content/ContentValues;
    :cond_0
    return-void
.end method


# virtual methods
.method public notifyProcessing()V
    .locals 7

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/wifidirect/test/VcardFileHandler;->mProcessor:Lcom/android/wifidirect/test/WifiDirectOppFileProcessor;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/wifidirect/test/VcardFileHandler;->mContext:Landroid/content/Context;

    const v3, 0x7f080076

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/wifidirect/test/VcardFileHandler;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;

    iget-object v6, v6, Lcom/android/wifidirect/test/WifiOppShareInfo;->mHint:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/wifidirect/test/WifiDirectOppFileProcessor;->onFileProcessStateChanged(ILjava/lang/String;)V

    .line 383
    return-void
.end method

.method public process()Z
    .locals 3

    .prologue
    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wifidirect/test/VcardFileHandler;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;

    iget-object v2, v2, Lcom/android/wifidirect/test/WifiOppShareInfo;->mFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 81
    .local v0, fileUri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/wifidirect/test/VcardFileHandler;->mReadThread:Lcom/android/wifidirect/test/VcardFileHandler$VCardReadThread;

    if-nez v1, :cond_1

    .line 82
    new-instance v1, Lcom/android/wifidirect/test/VcardFileHandler$VCardReadThread;

    invoke-direct {v1, p0, v0}, Lcom/android/wifidirect/test/VcardFileHandler$VCardReadThread;-><init>(Lcom/android/wifidirect/test/VcardFileHandler;Landroid/net/Uri;)V

    iput-object v1, p0, Lcom/android/wifidirect/test/VcardFileHandler;->mReadThread:Lcom/android/wifidirect/test/VcardFileHandler$VCardReadThread;

    .line 88
    :cond_0
    invoke-virtual {p0}, Lcom/android/wifidirect/test/VcardFileHandler;->notifyProcessing()V

    .line 90
    iget-object v1, p0, Lcom/android/wifidirect/test/VcardFileHandler;->mReadThread:Lcom/android/wifidirect/test/VcardFileHandler$VCardReadThread;

    invoke-virtual {v1}, Lcom/android/wifidirect/test/VcardFileHandler$VCardReadThread;->start()V

    .line 91
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 83
    :cond_1
    iget-object v1, p0, Lcom/android/wifidirect/test/VcardFileHandler;->mReadThread:Lcom/android/wifidirect/test/VcardFileHandler$VCardReadThread;

    #getter for: Lcom/android/wifidirect/test/VcardFileHandler$VCardReadThread;->mIsRunning:Z
    invoke-static {v1}, Lcom/android/wifidirect/test/VcardFileHandler$VCardReadThread;->access$000(Lcom/android/wifidirect/test/VcardFileHandler$VCardReadThread;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    const-string v1, "BtOppVcradFileHandler"

    const-string v2, "ERROR: read thread running!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const/4 v1, 0x0

    goto :goto_0
.end method
