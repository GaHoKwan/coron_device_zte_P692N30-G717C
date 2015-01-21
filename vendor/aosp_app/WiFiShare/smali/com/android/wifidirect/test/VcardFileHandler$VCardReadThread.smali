.class Lcom/android/wifidirect/test/VcardFileHandler$VCardReadThread;
.super Ljava/lang/Thread;
.source "VcardFileHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wifidirect/test/VcardFileHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VCardReadThread"
.end annotation


# instance fields
.field private createdUri:Landroid/net/Uri;

.field private mCanceled:Z

.field private mIsRunning:Z

.field private mResolver:Landroid/content/ContentResolver;

.field private mResult:Z

.field private mTempFile:Ljava/io/File;

.field private mUri:Landroid/net/Uri;

.field private mVCardParser:Lcom/android/vcard/VCardParser;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field final synthetic this$0:Lcom/android/wifidirect/test/VcardFileHandler;


# direct methods
.method public constructor <init>(Lcom/android/wifidirect/test/VcardFileHandler;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter "fileUri"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/wifidirect/test/VcardFileHandler$VCardReadThread;->this$0:Lcom/android/wifidirect/test/VcardFileHandler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 151
    iput-object p2, p0, Lcom/android/wifidirect/test/VcardFileHandler$VCardReadThread;->mUri:Landroid/net/Uri;

    .line 152
    invoke-direct {p0}, Lcom/android/wifidirect/test/VcardFileHandler$VCardReadThread;->init()V

    .line 153
    return-void
.end method

.method static synthetic access$000(Lcom/android/wifidirect/test/VcardFileHandler$VCardReadThread;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/android/wifidirect/test/VcardFileHandler$VCardReadThread;->mIsRunning:Z

    return v0
.end method

.method private deleteFile(Ljava/lang/String;)V
    .locals 5
    .parameter "file"

    .prologue
    .line 250
    const-string v2, "BtOppVcradFileHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteFile "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 253
    .local v1, f:Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :goto_0
    return-void

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "BtOppVcradFileHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can not delete file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private doActuallyReadOneVCard(Landroid/net/Uri;Landroid/accounts/Account;Ljava/lang/String;Lcom/android/vcard/VCardSourceDetector;)Landroid/net/Uri;
    .locals 10
    .parameter "uri"
    .parameter "account"
    .parameter "charset"
    .parameter "detector"

    .prologue
    const/4 v9, 0x0

    .line 287
    if-nez p3, :cond_0

    .line 288
    const-string p3, "UTF-8"

    .line 292
    :cond_0
    new-instance v3, Lcom/android/vcard/VCardEntryConstructor;

    iget-object v0, p0, Lcom/android/wifidirect/test/VcardFileHandler$VCardReadThread;->this$0:Lcom/android/wifidirect/test/VcardFileHandler;

    #getter for: Lcom/android/wifidirect/test/VcardFileHandler;->mDefaultVcardType:I
    invoke-static {v0}, Lcom/android/wifidirect/test/VcardFileHandler;->access$500(Lcom/android/wifidirect/test/VcardFileHandler;)I

    move-result v0

    invoke-direct {v3, v0, p2, p3}, Lcom/android/vcard/VCardEntryConstructor;-><init>(ILandroid/accounts/Account;Ljava/lang/String;)V

    .line 296
    .local v3, builder:Lcom/android/vcard/VCardEntryConstructor;
    new-instance v6, Lcom/android/vcard/VCardEntryCommitter;

    iget-object v0, p0, Lcom/android/wifidirect/test/VcardFileHandler$VCardReadThread;->mResolver:Landroid/content/ContentResolver;

    invoke-direct {v6, v0}, Lcom/android/vcard/VCardEntryCommitter;-><init>(Landroid/content/ContentResolver;)V

    .line 297
    .local v6, committer:Lcom/android/vcard/VCardEntryCommitter;
    invoke-virtual {v3, v6}, Lcom/android/vcard/VCardEntryConstructor;->addEntryHandler(Lcom/android/vcard/VCardEntryHandler;)V

    .line 299
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v4, p4

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/android/wifidirect/test/VcardFileHandler$VCardReadThread;->readOneVCardFile(Landroid/net/Uri;Ljava/lang/String;Lcom/android/vcard/VCardInterpreter;Lcom/android/vcard/VCardSourceDetector;Z)V
    :try_end_0
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    :goto_0
    invoke-virtual {v6}, Lcom/android/vcard/VCardEntryCommitter;->getCreatedUris()Ljava/util/ArrayList;

    move-result-object v7

    .line 307
    .local v7, createdUris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-object v0, p0, Lcom/android/wifidirect/test/VcardFileHandler$VCardReadThread;->createdUri:Landroid/net/Uri;

    return-object v0

    .line 300
    .end local v7           #createdUris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :catch_0
    move-exception v8

    .line 301
    .local v8, e:Lcom/android/vcard/exception/VCardNestedException;
    const-string v0, "BtOppVcradFileHandler"

    const-string v1, "Never reach here."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-direct {p0, v8}, Lcom/android/wifidirect/test/VcardFileHandler$VCardReadThread;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 307
    .end local v8           #e:Lcom/android/vcard/exception/VCardNestedException;
    .restart local v7       #createdUris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_2
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    goto :goto_1
.end method

.method private finish()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 260
    iget-object v0, p0, Lcom/android/wifidirect/test/VcardFileHandler$VCardReadThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 261
    iget-object v0, p0, Lcom/android/wifidirect/test/VcardFileHandler$VCardReadThread;->mTempFile:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/android/wifidirect/test/VcardFileHandler$VCardReadThread;->mTempFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 263
    const-string v0, "BtOppVcradFileHandler"

    const-string v1, "Failed to delete a cache file."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wifidirect/test/VcardFileHandler$VCardReadThread;->mTempFile:Ljava/io/File;

    .line 267
    :cond_1
    iput-boolean v6, p0, Lcom/android/wifidirect/test/VcardFileHandler$VCardReadThread;->mIsRunning:Z

    .line 269
    iget-object v0, p0, Lcom/android/wifidirect/test/VcardFileHandler$VCardReadThread;->this$0:Lcom/android/wifidirect/test/VcardFileHandler;

    #getter for: Lcom/android/wifidirect/test/VcardFileHandler;->mProcessor:Lcom/android/wifidirect/test/WifiDirectOppFileProcessor;
    invoke-static {v0}, Lcom/android/wifidirect/test/VcardFileHandler;->access$400(Lcom/android/wifidirect/test/VcardFileHandler;)Lcom/android/wifidirect/test/WifiDirectOppFileProcessor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wifidirect/test/VcardFileHandler$VCardReadThread;->this$0:Lcom/android/wifidirect/test/VcardFileHandler;

    #getter for: Lcom/android/wifidirect/test/VcardFileHandler;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;
    invoke-static {v1}, Lcom/android/wifidirect/test/VcardFileHandler;->access$300(Lcom/android/wifidirect/test/VcardFileHandler;)Lcom/android/wifidirect/test/WifiOppShareInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/wifidirect/test/WifiDirectOppFileProcessor;->onProcessFinish(Lcom/android/wifidirect/test/WifiOppShareInfo;)V

    .line 272
    iget-boolean v0, p0, Lcom/android/wifidirect/test/VcardFileHandler$VCardReadThread;->mResult:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/wifidirect/test/VcardFileHandler$VCardReadThread;->createdUri:Landroid/net/Uri;

    if-nez v0, :cond_3

    .line 273
    :cond_2
    iget-object v0, p0, Lcom/android/wifidirect/test/VcardFileHandler$VCardReadThread;->this$0:Lcom/android/wifidirect/test/VcardFileHandler;

    #getter for: Lcom/android/wifidirect/test/VcardFileHandler;->mProcessor:Lcom/android/wifidirect/test/WifiDirectOppFileProcessor;
    invoke-static {v0}, Lcom/android/wifidirect/test/VcardFileHandler;->access$400(Lcom/android/wifidirect/test/VcardFileHandler;)Lcom/android/wifidirect/test/WifiDirectOppFileProcessor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wifidirect/test/VcardFileHandler$VCardReadThread;->this$0:Lcom/android/wifidirect/test/VcardFileHandler;

    #getter for: Lcom/android/wifidirect/test/VcardFileHandler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/wifidirect/test/VcardFileHandler;->access$100(Lcom/android/wifidirect/test/VcardFileHandler;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080078

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/wifidirect/test/VcardFileHandler$VCardReadThread;->this$0:Lcom/android/wifidirect/test/VcardFileHandler;

    #getter for: Lcom/android/wifidirect/test/VcardFileHandler;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;
    invoke-static {v4}, Lcom/android/wifidirect/test/VcardFileHandler;->access$300(Lcom/android/wifidirect/test/VcardFileHandler;)Lcom/android/wifidirect/test/WifiOppShareInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/android/wifidirect/test/WifiOppShareInfo;->mFilename:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lcom/android/wifidirect/test/WifiDirectOppFileProcessor;->onFileProcessStateChanged(ILjava/lang/String;)V

    .line 280
    :goto_0
    return-void

    .line 276
    :cond_3
    iget-object v0, p0, Lcom/android/wifidirect/test/VcardFileHandler$VCardReadThread;->this$0:Lcom/android/wifidirect/test/VcardFileHandler;

    #getter for: Lcom/android/wifidirect/test/VcardFileHandler;->mProcessor:Lcom/android/wifidirect/test/WifiDirectOppFileProcessor;
    invoke-static {v0}, Lcom/android/wifidirect/test/VcardFileHandler;->access$400(Lcom/android/wifidirect/test/VcardFileHandler;)Lcom/android/wifidirect/test/WifiDirectOppFileProcessor;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/wifidirect/test/VcardFileHandler$VCardReadThread;->this$0:Lcom/android/wifidirect/test/VcardFileHandler;

    #getter for: Lcom/android/wifidirect/test/VcardFileHandler;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/wifidirect/test/VcardFileHandler;->access$100(Lcom/android/wifidirect/test/VcardFileHandler;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f080077

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/wifidirect/test/VcardFileHandler$VCardReadThread;->this$0:Lcom/android/wifidirect/test/VcardFileHandler;

    #getter for: Lcom/android/wifidirect/test/VcardFileHandler;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;
    invoke-static {v5}, Lcom/android/wifidirect/test/VcardFileHandler;->access$300(Lcom/android/wifidirect/test/VcardFileHandler;)Lcom/android/wifidirect/test/WifiOppShareInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/android/wifidirect/test/WifiOppShareInfo;->mHint:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/wifidirect/test/WifiDirectOppFileProcessor;->onFileProcessStateChanged(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 164
    iget-object v1, p0, Lcom/android/wifidirect/test/VcardFileHandler$VCardReadThread;->this$0:Lcom/android/wifidirect/test/VcardFileHandler;

    #getter for: Lcom/android/wifidirect/test/VcardFileHandler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/wifidirect/test/VcardFileHandler;->access$100(Lcom/android/wifidirect/test/VcardFileHandler;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wifidirect/test/VcardFileHandler$VCardReadThread;->mResolver:Landroid/content/ContentResolver;

    .line 165
    iget-object v1, p0, Lcom/android/wifidirect/test/VcardFileHandler$VCardReadThread;->this$0:Lcom/android/wifidirect/test/VcardFileHandler;

    #getter for: Lcom/android/wifidirect/test/VcardFileHandler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/wifidirect/test/VcardFileHandler;->access$100(Lcom/android/wifidirect/test/VcardFileHandler;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 167
    .local v0, powerManager:Landroid/os/PowerManager;
    const v1, 0x20000006

    const-string v2, "BtOppVcradFileHandler"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wifidirect/test/VcardFileHandler$VCardReadThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 170
    return-void
.end method

.method private onError(Ljava/lang/Throwable;)V
    .locals 3
    .parameter "e"

    .prologue
    .line 156
    const-string v0, "BtOppVcradFileHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "import error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 159
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wifidirect/test/VcardFileHandler$VCardReadThread;->mResult:Z

    .line 161
    return-void
.end method

.method private readOneVCardFile(Landroid/net/Uri;Ljava/lang/String;Lcom/android/vcard/VCardInterpreter;Lcom/android/vcard/VCardSourceDetector;Z)V
    .locals 8
    .parameter "uri"
    .parameter "charset"
    .parameter "builder"
    .parameter "detector"
    .parameter "throwNestedException"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vcard/exception/VCardNestedException;
        }
    .end annotation

    .prologue
    .line 317
    :try_start_0
    iget-object v5, p0, Lcom/android/wifidirect/test/VcardFileHandler$VCardReadThread;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v5, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    .line 318
    .local v4, is:Ljava/io/InputStream;
    new-instance v6, Lcom/android/vcard/VCardParser_V21;

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Lcom/android/vcard/VCardSourceDetector;->getEstimatedType()I

    move-result v5

    :goto_0
    invoke-direct {v6, v5}, Lcom/android/vcard/VCardParser_V21;-><init>(I)V

    iput-object v6, p0, Lcom/android/wifidirect/test/VcardFileHandler$VCardReadThread;->mVCardParser:Lcom/android/vcard/VCardParser;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/android/vcard/exception/VCardNotSupportedException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_0 .. :try_end_0} :catch_5

    .line 322
    :try_start_1
    const-string v5, "BtOppVcradFileHandler"

    const-string v6, "use VCardParser_V21 to parse"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v5, p0, Lcom/android/wifidirect/test/VcardFileHandler$VCardReadThread;->mVCardParser:Lcom/android/vcard/VCardParser;

    invoke-virtual {v5, v4, p3}, Lcom/android/vcard/VCardParser;->parse(Ljava/io/InputStream;Lcom/android/vcard/VCardInterpreter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_1 .. :try_end_1} :catch_0

    .line 349
    if-eqz v4, :cond_0

    .line 351
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lcom/android/vcard/exception/VCardNotSupportedException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_2 .. :try_end_2} :catch_5

    .line 369
    .end local v4           #is:Ljava/io/InputStream;
    :cond_0
    :goto_1
    return-void

    .line 318
    .restart local v4       #is:Ljava/io/InputStream;
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 325
    :catch_0
    move-exception v2

    .line 327
    .local v2, e1:Lcom/android/vcard/exception/VCardVersionException;
    :try_start_3
    const-string v5, "BtOppVcradFileHandler"

    const-string v6, "can not be parsed with VCardParser_V21,try to use VCardParser_V30"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 330
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    .line 333
    :goto_2
    :try_start_5
    instance-of v5, p3, Lcom/android/vcard/VCardEntryConstructor;

    if-eqz v5, :cond_2

    .line 335
    move-object v0, p3

    check-cast v0, Lcom/android/vcard/VCardEntryConstructor;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/vcard/VCardEntryConstructor;->clear()V

    .line 337
    :cond_2
    iget-object v5, p0, Lcom/android/wifidirect/test/VcardFileHandler$VCardReadThread;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v5, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v4

    .line 340
    :try_start_6
    new-instance v5, Lcom/android/vcard/VCardParser_V30;

    invoke-direct {v5}, Lcom/android/vcard/VCardParser_V30;-><init>()V

    iput-object v5, p0, Lcom/android/wifidirect/test/VcardFileHandler$VCardReadThread;->mVCardParser:Lcom/android/vcard/VCardParser;

    .line 341
    iget-object v5, p0, Lcom/android/wifidirect/test/VcardFileHandler$VCardReadThread;->mVCardParser:Lcom/android/vcard/VCardParser;

    invoke-virtual {v5, v4, p3}, Lcom/android/vcard/VCardParser;->parse(Ljava/io/InputStream;Lcom/android/vcard/VCardInterpreter;)V

    .line 343
    const-string v5, "BtOppVcradFileHandler"

    const-string v6, "use VCardParser_V30 to parse"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_6 .. :try_end_6} :catch_2

    .line 349
    if-eqz v4, :cond_0

    .line 351
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lcom/android/vcard/exception/VCardNotSupportedException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_1

    .line 352
    :catch_1
    move-exception v5

    goto :goto_1

    .line 345
    :catch_2
    move-exception v3

    .line 346
    .local v3, e2:Lcom/android/vcard/exception/VCardVersionException;
    :try_start_8
    new-instance v5, Lcom/android/vcard/exception/VCardException;

    const-string v6, "vCard with unspported version."

    invoke-direct {v5, v6}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 349
    .end local v2           #e1:Lcom/android/vcard/exception/VCardVersionException;
    .end local v3           #e2:Lcom/android/vcard/exception/VCardVersionException;
    :catchall_0
    move-exception v5

    if-eqz v4, :cond_3

    .line 351
    :try_start_9
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8
    .catch Lcom/android/vcard/exception/VCardNotSupportedException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_9 .. :try_end_9} :catch_5

    .line 353
    :cond_3
    :goto_3
    :try_start_a
    throw v5
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catch Lcom/android/vcard/exception/VCardNotSupportedException; {:try_start_a .. :try_end_a} :catch_4
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_a .. :try_end_a} :catch_5

    .line 356
    .end local v4           #is:Ljava/io/InputStream;
    :catch_3
    move-exception v1

    .line 357
    .local v1, e:Ljava/io/IOException;
    const-string v5, "BtOppVcradFileHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException was emitted: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    invoke-direct {p0, v1}, Lcom/android/wifidirect/test/VcardFileHandler$VCardReadThread;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 359
    .end local v1           #e:Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 360
    .local v1, e:Lcom/android/vcard/exception/VCardNotSupportedException;
    instance-of v5, v1, Lcom/android/vcard/exception/VCardNestedException;

    if-eqz v5, :cond_4

    if-eqz p5, :cond_4

    .line 361
    check-cast v1, Lcom/android/vcard/exception/VCardNestedException;

    .end local v1           #e:Lcom/android/vcard/exception/VCardNotSupportedException;
    throw v1

    .line 363
    .restart local v1       #e:Lcom/android/vcard/exception/VCardNotSupportedException;
    :cond_4
    invoke-direct {p0, v1}, Lcom/android/wifidirect/test/VcardFileHandler$VCardReadThread;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 364
    .end local v1           #e:Lcom/android/vcard/exception/VCardNotSupportedException;
    :catch_5
    move-exception v1

    .line 366
    .local v1, e:Lcom/android/vcard/exception/VCardException;
    invoke-direct {p0, v1}, Lcom/android/wifidirect/test/VcardFileHandler$VCardReadThread;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 352
    .end local v1           #e:Lcom/android/vcard/exception/VCardException;
    .restart local v4       #is:Ljava/io/InputStream;
    :catch_6
    move-exception v5

    goto :goto_1

    .line 331
    .restart local v2       #e1:Lcom/android/vcard/exception/VCardVersionException;
    :catch_7
    move-exception v5

    goto :goto_2

    .line 352
    .end local v2           #e1:Lcom/android/vcard/exception/VCardVersionException;
    :catch_8
    move-exception v6

    goto :goto_3
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 372
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wifidirect/test/VcardFileHandler$VCardReadThread;->mCanceled:Z

    .line 373
    iget-object v0, p0, Lcom/android/wifidirect/test/VcardFileHandler$VCardReadThread;->mVCardParser:Lcom/android/vcard/VCardParser;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/android/wifidirect/test/VcardFileHandler$VCardReadThread;->mVCardParser:Lcom/android/vcard/VCardParser;

    invoke-virtual {v0}, Lcom/android/vcard/VCardParser;->cancel()V

    .line 376
    :cond_0
    return-void
.end method

.method public finalize()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/wifidirect/test/VcardFileHandler$VCardReadThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wifidirect/test/VcardFileHandler$VCardReadThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/android/wifidirect/test/VcardFileHandler$VCardReadThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 179
    :cond_0
    return-void
.end method

.method public run()V
    .locals 15

    .prologue
    const/4 v13, 0x0

    const/4 v5, 0x1

    .line 184
    const-string v0, "BtOppVcradFileHandler"

    const-string v2, "run()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iput-boolean v5, p0, Lcom/android/wifidirect/test/VcardFileHandler$VCardReadThread;->mResult:Z

    .line 188
    iput-boolean v5, p0, Lcom/android/wifidirect/test/VcardFileHandler$VCardReadThread;->mIsRunning:Z

    .line 190
    iget-object v0, p0, Lcom/android/wifidirect/test/VcardFileHandler$VCardReadThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 192
    iput-object v13, p0, Lcom/android/wifidirect/test/VcardFileHandler$VCardReadThread;->mTempFile:Ljava/io/File;

    .line 197
    :try_start_0
    iget-object v0, p0, Lcom/android/wifidirect/test/VcardFileHandler$VCardReadThread;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 198
    iget-object v1, p0, Lcom/android/wifidirect/test/VcardFileHandler$VCardReadThread;->mUri:Landroid/net/Uri;

    .line 202
    .local v1, targetUri:Landroid/net/Uri;
    const-string v0, "BtOppVcradFileHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start to read "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 205
    .local v8, start:J
    new-instance v3, Lcom/android/vcard/VCardEntryCounter;

    invoke-direct {v3}, Lcom/android/vcard/VCardEntryCounter;-><init>()V

    .line 206
    .local v3, counter:Lcom/android/vcard/VCardEntryCounter;
    new-instance v4, Lcom/android/vcard/VCardSourceDetector;

    invoke-direct {v4}, Lcom/android/vcard/VCardSourceDetector;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 208
    .local v4, detector:Lcom/android/vcard/VCardSourceDetector;
    :try_start_1
    const-string v2, "UTF-8"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/wifidirect/test/VcardFileHandler$VCardReadThread;->readOneVCardFile(Landroid/net/Uri;Ljava/lang/String;Lcom/android/vcard/VCardInterpreter;Lcom/android/vcard/VCardSourceDetector;Z)V
    :try_end_1
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 215
    :goto_0
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sub-long v11, v13, v8

    .line 216
    .local v11, time:J
    const-string v0, "BtOppVcradFileHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "time for counting the number of vCard entries: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " ms"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-boolean v0, p0, Lcom/android/wifidirect/test/VcardFileHandler$VCardReadThread;->mResult:Z

    if-nez v0, :cond_2

    .line 221
    const-string v0, "BtOppVcradFileHandler"

    const-string v2, "run(): error occurred. Aborting"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-direct {p0}, Lcom/android/wifidirect/test/VcardFileHandler$VCardReadThread;->finish()V

    .line 247
    .end local v1           #targetUri:Landroid/net/Uri;
    .end local v3           #counter:Lcom/android/vcard/VCardEntryCounter;
    .end local v4           #detector:Lcom/android/vcard/VCardSourceDetector;
    .end local v8           #start:J
    .end local v11           #time:J
    :cond_0
    :goto_1
    return-void

    .line 210
    .restart local v1       #targetUri:Landroid/net/Uri;
    .restart local v3       #counter:Lcom/android/vcard/VCardEntryCounter;
    .restart local v4       #detector:Lcom/android/vcard/VCardSourceDetector;
    .restart local v8       #start:J
    :catch_0
    move-exception v7

    .line 211
    .local v7, e:Lcom/android/vcard/exception/VCardNestedException;
    invoke-direct {p0, v7}, Lcom/android/wifidirect/test/VcardFileHandler$VCardReadThread;->onError(Ljava/lang/Throwable;)V

    .line 212
    const-string v0, "BtOppVcradFileHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readOneVCardFile error "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 234
    .end local v1           #targetUri:Landroid/net/Uri;
    .end local v3           #counter:Lcom/android/vcard/VCardEntryCounter;
    .end local v4           #detector:Lcom/android/vcard/VCardSourceDetector;
    .end local v7           #e:Lcom/android/vcard/exception/VCardNestedException;
    .end local v8           #start:J
    :catch_1
    move-exception v10

    .line 235
    .local v10, t:Ljava/lang/Throwable;
    invoke-direct {p0, v10}, Lcom/android/wifidirect/test/VcardFileHandler$VCardReadThread;->onError(Ljava/lang/Throwable;)V

    .line 238
    .end local v10           #t:Ljava/lang/Throwable;
    :cond_1
    :goto_2
    invoke-direct {p0}, Lcom/android/wifidirect/test/VcardFileHandler$VCardReadThread;->finish()V

    .line 240
    iget-boolean v0, p0, Lcom/android/wifidirect/test/VcardFileHandler$VCardReadThread;->mResult:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wifidirect/test/VcardFileHandler$VCardReadThread;->createdUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/android/wifidirect/test/VcardFileHandler$VCardReadThread;->this$0:Lcom/android/wifidirect/test/VcardFileHandler;

    iget-object v2, p0, Lcom/android/wifidirect/test/VcardFileHandler$VCardReadThread;->createdUri:Landroid/net/Uri;

    #calls: Lcom/android/wifidirect/test/VcardFileHandler;->updateHistory(Landroid/net/Uri;)V
    invoke-static {v0, v2}, Lcom/android/wifidirect/test/VcardFileHandler;->access$200(Lcom/android/wifidirect/test/VcardFileHandler;Landroid/net/Uri;)V

    .line 242
    iget-object v0, p0, Lcom/android/wifidirect/test/VcardFileHandler$VCardReadThread;->this$0:Lcom/android/wifidirect/test/VcardFileHandler;

    #getter for: Lcom/android/wifidirect/test/VcardFileHandler;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;
    invoke-static {v0}, Lcom/android/wifidirect/test/VcardFileHandler;->access$300(Lcom/android/wifidirect/test/VcardFileHandler;)Lcom/android/wifidirect/test/WifiOppShareInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/android/wifidirect/test/WifiOppShareInfo;->mFilename:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/wifidirect/test/VcardFileHandler$VCardReadThread;->deleteFile(Ljava/lang/String;)V

    goto :goto_1

    .line 227
    .restart local v1       #targetUri:Landroid/net/Uri;
    .restart local v3       #counter:Lcom/android/vcard/VCardEntryCounter;
    .restart local v4       #detector:Lcom/android/vcard/VCardSourceDetector;
    .restart local v8       #start:J
    .restart local v11       #time:J
    :cond_2
    :try_start_3
    invoke-virtual {v4}, Lcom/android/vcard/VCardSourceDetector;->getEstimatedCharset()Ljava/lang/String;

    move-result-object v6

    .line 228
    .local v6, charset:Ljava/lang/String;
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0, v6, v4}, Lcom/android/wifidirect/test/VcardFileHandler$VCardReadThread;->doActuallyReadOneVCard(Landroid/net/Uri;Landroid/accounts/Account;Ljava/lang/String;Lcom/android/vcard/VCardSourceDetector;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wifidirect/test/VcardFileHandler$VCardReadThread;->createdUri:Landroid/net/Uri;

    .line 229
    const-string v0, "BtOppVcradFileHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createdUri = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/android/wifidirect/test/VcardFileHandler$VCardReadThread;->createdUri:Landroid/net/Uri;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2
.end method
