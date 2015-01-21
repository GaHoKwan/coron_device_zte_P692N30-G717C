.class public Lcom/zte/feedback/UEImprove;
.super Ljava/lang/Object;
.source "UEImprove.java"


# static fields
.field static final TAG:Ljava/lang/String; = "UEImprove"


# instance fields
.field private feedback:Lcom/zte/feedback/FeedbackPayload;

.field mContext:Landroid/content/Context;

.field private uploadException:Lcom/zte/feedback/UploadException;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "m"

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object v0, p0, Lcom/zte/feedback/UEImprove;->feedback:Lcom/zte/feedback/FeedbackPayload;

    .line 45
    iput-object v0, p0, Lcom/zte/feedback/UEImprove;->uploadException:Lcom/zte/feedback/UploadException;

    .line 49
    iput-object p1, p0, Lcom/zte/feedback/UEImprove;->mContext:Landroid/content/Context;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/zte/feedback/UEImprove;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/zte/feedback/UEImprove;->isExistCrashLog()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/zte/feedback/UEImprove;)Lcom/zte/feedback/UploadException;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/zte/feedback/UEImprove;->uploadException:Lcom/zte/feedback/UploadException;

    return-object v0
.end method

.method public static delete(Ljava/io/File;)V
    .locals 3
    .parameter "file"

    .prologue
    .line 239
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 240
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 245
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 246
    .local v0, childFiles:[Ljava/io/File;
    if-eqz v0, :cond_2

    array-length v2, v0

    if-nez v2, :cond_3

    .line 247
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 251
    :cond_3
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_4

    .line 252
    aget-object v2, v0, v1

    invoke-static {v2}, Lcom/zte/feedback/UEImprove;->delete(Ljava/io/File;)V

    .line 251
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 254
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method private isExistCrashLog()Z
    .locals 3

    .prologue
    .line 261
    const-string v1, "HeartyService-crash.log"

    .line 262
    .local v1, fileName:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 263
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 265
    const/4 v2, 0x1

    .line 267
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method readCrashInfo(I)Ljava/lang/String;
    .locals 11
    .parameter "size"

    .prologue
    .line 147
    const-string v3, "HeartyService-crash.log"

    .line 148
    .local v3, fileName:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-direct {v2, v8, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 150
    .local v2, file:Ljava/io/File;
    const-string v8, "UEImprove"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " file ============="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const-string v6, ""

    .line 156
    .local v6, res:Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 159
    .local v4, fin:Ljava/io/FileInputStream;
    invoke-virtual {v4}, Ljava/io/FileInputStream;->available()I

    move-result v5

    .line 160
    .local v5, length:I
    const/4 v7, 0x0

    .line 161
    .local v7, uploadSize:I
    const/16 v8, 0x1000

    if-ne p1, v8, :cond_0

    if-ge v5, p1, :cond_0

    .line 163
    move v7, v5

    .line 168
    :goto_0
    new-array v0, v7, [B

    .line 170
    .local v0, buffer:[B
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 172
    const-string v8, "UTF-8"

    invoke-static {v0, v8}, Lorg/apache/http/util/EncodingUtils;->getString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 174
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    .end local v0           #buffer:[B
    .end local v4           #fin:Ljava/io/FileInputStream;
    .end local v5           #length:I
    .end local v7           #uploadSize:I
    :goto_1
    const-string v8, "UEImprove"

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    return-object v6

    .line 166
    .restart local v4       #fin:Ljava/io/FileInputStream;
    .restart local v5       #length:I
    .restart local v7       #uploadSize:I
    :cond_0
    move v7, p1

    goto :goto_0

    .line 176
    .end local v4           #fin:Ljava/io/FileInputStream;
    .end local v5           #length:I
    .end local v7           #uploadSize:I
    :catch_0
    move-exception v1

    .line 178
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public showDialog()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lcom/zte/feedback/UEImprove$1;

    invoke-direct {v0, p0}, Lcom/zte/feedback/UEImprove$1;-><init>(Lcom/zte/feedback/UEImprove;)V

    invoke-virtual {v0}, Lcom/zte/feedback/UEImprove$1;->start()V

    .line 143
    return-void
.end method

.method submitCrashInfo(Z)V
    .locals 4
    .parameter "notifyUser"

    .prologue
    .line 189
    const-string v0, "UEImprove"

    const-string v1, "submitCrashInfo ="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    new-instance v0, Lcom/zte/feedback/FeedbackPayload;

    iget-object v1, p0, Lcom/zte/feedback/UEImprove;->mContext:Landroid/content/Context;

    const-string v2, "638c5fc37ba15bb6636f6c6c65637469"

    iget-object v3, p0, Lcom/zte/feedback/UEImprove;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/zte/heartyservice/update/Config;->getVerCode(Landroid/content/Context;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/zte/feedback/FeedbackPayload;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zte/feedback/UEImprove;->feedback:Lcom/zte/feedback/FeedbackPayload;

    .line 193
    iget-object v0, p0, Lcom/zte/feedback/UEImprove;->feedback:Lcom/zte/feedback/FeedbackPayload;

    const-string v1, "xxx@xxx.xxx"

    invoke-virtual {v0, v1}, Lcom/zte/feedback/FeedbackPayload;->setEmail(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/zte/feedback/UEImprove;->feedback:Lcom/zte/feedback/FeedbackPayload;

    const/16 v1, 0x1f4

    invoke-virtual {p0, v1}, Lcom/zte/feedback/UEImprove;->readCrashInfo(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/feedback/FeedbackPayload;->setFeedback(Ljava/lang/String;)V

    .line 196
    new-instance v0, Lcom/zte/feedback/UploadException;

    iget-object v1, p0, Lcom/zte/feedback/UEImprove;->mContext:Landroid/content/Context;

    const/16 v2, 0x1000

    invoke-virtual {p0, v2}, Lcom/zte/feedback/UEImprove;->readCrashInfo(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/feedback/UEImprove;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/zte/heartyservice/update/Config;->getVerCode(Landroid/content/Context;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/zte/feedback/UploadException;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zte/feedback/UEImprove;->uploadException:Lcom/zte/feedback/UploadException;

    .line 199
    new-instance v0, Lcom/zte/feedback/UEImprove$2;

    invoke-direct {v0, p0, p1}, Lcom/zte/feedback/UEImprove$2;-><init>(Lcom/zte/feedback/UEImprove;Z)V

    invoke-virtual {v0}, Lcom/zte/feedback/UEImprove$2;->start()V

    .line 236
    return-void
.end method
