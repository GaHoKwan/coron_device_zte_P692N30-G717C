.class public Ltmsdkobf/kz;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltmsdkobf/kz$a;
    }
.end annotation


# instance fields
.field private Bu:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Bv:Ltmsdkobf/kz$a;


# direct methods
.method public constructor <init>(Ltmsdkobf/kz$a;)V
    .locals 1
    .parameter "account"

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ltmsdkobf/kz;->Bu:Ljava/util/HashSet;

    .line 61
    iput-object p1, p0, Ltmsdkobf/kz;->Bv:Ltmsdkobf/kz$a;

    .line 62
    return-void
.end method

.method private cw(Ljava/lang/String;)[B
    .locals 14
    .parameter "filePath"

    .prologue
    .line 114
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_2

    .line 115
    :cond_0
    const/4 v1, 0x0

    .line 173
    :cond_1
    :goto_0
    return-object v1

    .line 118
    :cond_2
    const-string v11, "/"

    invoke-virtual {p1, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 120
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 121
    .local v3, file:Ljava/io/File;
    const/4 v0, 0x1

    .line 127
    .local v0, absolutePath:Z
    :goto_1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_4

    .line 128
    const/4 v1, 0x0

    goto :goto_0

    .line 124
    .end local v0           #absolutePath:Z
    .end local v3           #file:Ljava/io/File;
    :cond_3
    invoke-static {}, Ltmsdk/common/TMSDKContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, p1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 125
    .restart local v3       #file:Ljava/io/File;
    const/4 v0, 0x0

    .restart local v0       #absolutePath:Z
    goto :goto_1

    .line 131
    :cond_4
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v9

    .line 132
    .local v9, size:J
    const-wide/16 v11, 0x0

    cmp-long v11, v9, v11

    if-eqz v11, :cond_5

    const-wide/32 v11, 0x200000

    cmp-long v11, v9, v11

    if-lez v11, :cond_6

    .line 133
    :cond_5
    const/4 v1, 0x0

    goto :goto_0

    .line 137
    :cond_6
    const/4 v5, 0x0

    .line 138
    .local v5, fis:Ljava/io/FileInputStream;
    long-to-int v4, v9

    .line 140
    .local v4, fileSize:I
    if-eqz v0, :cond_7

    .line 141
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .end local v5           #fis:Ljava/io/FileInputStream;
    .local v6, fis:Ljava/io/FileInputStream;
    move-object v5, v6

    .line 146
    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    :goto_2
    new-array v1, v4, [B

    .line 147
    .local v1, buffer:[B
    const/4 v7, 0x0

    .line 149
    .local v7, offset:I
    :goto_3
    if-ge v7, v4, :cond_8

    sub-int v11, v4, v7

    invoke-virtual {v5, v1, v7, v11}, Ljava/io/FileInputStream;->read([BII)I

    move-result v8

    .local v8, readed:I
    const/4 v11, -0x1

    if-eq v8, v11, :cond_8

    .line 150
    add-int/2addr v7, v8

    goto :goto_3

    .line 144
    .end local v1           #buffer:[B
    .end local v7           #offset:I
    .end local v8           #readed:I
    :cond_7
    invoke-static {}, Ltmsdk/common/TMSDKContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v5

    goto :goto_2

    .line 152
    .restart local v1       #buffer:[B
    .restart local v7       #offset:I
    :cond_8
    if-eq v7, v4, :cond_9

    .line 153
    new-instance v11, Ljava/io/IOException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unexpected readed size. current: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", excepted: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 155
    .end local v1           #buffer:[B
    .end local v7           #offset:I
    :catch_0
    move-exception v2

    .line 156
    .local v2, e:Ljava/io/FileNotFoundException;
    :try_start_1
    const-string v11, "FileUploadReporter"

    const-string v12, "readFile 1"

    invoke-static {v11, v12, v2}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    const/4 v1, 0x0

    .line 165
    if-eqz v5, :cond_1

    .line 167
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 168
    :catch_1
    move-exception v2

    .line 169
    .local v2, e:Ljava/io/IOException;
    const-string v11, "FileUploadReporter"

    const-string v12, "readFile 4"

    invoke-static {v11, v12, v2}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 165
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #buffer:[B
    .restart local v7       #offset:I
    :cond_9
    if-eqz v5, :cond_1

    .line 167
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 168
    :catch_2
    move-exception v2

    .line 169
    .restart local v2       #e:Ljava/io/IOException;
    const-string v11, "FileUploadReporter"

    const-string v12, "readFile 4"

    invoke-static {v11, v12, v2}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 158
    .end local v1           #buffer:[B
    .end local v2           #e:Ljava/io/IOException;
    .end local v7           #offset:I
    :catch_3
    move-exception v2

    .line 159
    .restart local v2       #e:Ljava/io/IOException;
    :try_start_4
    const-string v11, "FileUploadReporter"

    const-string v12, "readFile 2"

    invoke-static {v11, v12, v2}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 160
    const/4 v1, 0x0

    .line 165
    if-eqz v5, :cond_1

    .line 167
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_0

    .line 168
    :catch_4
    move-exception v2

    .line 169
    const-string v11, "FileUploadReporter"

    const-string v12, "readFile 4"

    invoke-static {v11, v12, v2}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 161
    .end local v2           #e:Ljava/io/IOException;
    :catch_5
    move-exception v2

    .line 162
    .local v2, e:Ljava/lang/Exception;
    :try_start_6
    const-string v11, "FileUploadReporter"

    const-string v12, "readFile 3"

    invoke-static {v11, v12, v2}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 163
    const/4 v1, 0x0

    .line 165
    if-eqz v5, :cond_1

    .line 167
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto/16 :goto_0

    .line 168
    :catch_6
    move-exception v2

    .line 169
    .local v2, e:Ljava/io/IOException;
    const-string v11, "FileUploadReporter"

    const-string v12, "readFile 4"

    invoke-static {v11, v12, v2}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 165
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v11

    if-eqz v5, :cond_a

    .line 167
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 170
    :cond_a
    :goto_4
    throw v11

    .line 168
    :catch_7
    move-exception v2

    .line 169
    .restart local v2       #e:Ljava/io/IOException;
    const-string v12, "FileUploadReporter"

    const-string v13, "readFile 4"

    invoke-static {v12, v13, v2}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_4
.end method

.method private cx(Ljava/lang/String;)I
    .locals 14
    .parameter "filePath"

    .prologue
    const/4 v10, 0x0

    .line 183
    const/4 v3, -0x2

    .line 184
    .local v3, err:I
    invoke-direct {p0, p1}, Ltmsdkobf/kz;->cw(Ljava/lang/String;)[B

    move-result-object v1

    .line 186
    .local v1, buffer:[B
    if-nez v1, :cond_1

    .line 188
    const/16 v10, -0x80c

    .line 240
    :cond_0
    :goto_0
    return v10

    .line 191
    :cond_1
    const/4 v5, 0x0

    .line 193
    .local v5, httpConnection:Ltmsdkobf/jx;
    :try_start_0
    invoke-static {}, Ltmsdk/common/TMSDKContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Ltmsdk/common/utils/PhoneInfoUtil;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 194
    .local v6, imei:Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 195
    const-string v11, "FileUploadReporter"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "org imei = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 196
    const-string v11, "/"

    const-string v12, ""

    invoke-virtual {v6, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 198
    :cond_2
    if-eqz v6, :cond_3

    const-string v11, ""

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 199
    :cond_3
    const-string v6, "000000000000000"

    .line 203
    :cond_4
    iget-object v11, p0, Ltmsdkobf/kz;->Bv:Ltmsdkobf/kz$a;

    invoke-virtual {v11}, Ltmsdkobf/kz$a;->getValue()Ljava/lang/String;

    move-result-object v8

    .line 204
    .local v8, secondName:Ljava/lang/String;
    const-string v11, "/"

    invoke-virtual {p1, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 205
    .local v0, beginPos:I
    if-ltz v0, :cond_5

    .line 206
    add-int/lit8 v11, v0, 0x1

    invoke-virtual {p1, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 207
    .local v4, fileName:Ljava/lang/String;
    const-string v11, " "

    const-string v12, ""

    invoke-virtual {v4, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 208
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_5

    .line 209
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 210
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 214
    .end local v4           #fileName:Ljava/lang/String;
    :cond_5
    const-string v11, "http://jsync.3g.qq.com/postsecurelogs/%s_%s/android/"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v6, v12, v13

    const/4 v13, 0x1

    aput-object v8, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 215
    .local v9, url:Ljava/lang/String;
    const-string v11, "FileUploadReporter"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Report URL: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 217
    invoke-static {v9}, Ltmsdkobf/jx;->cc(Ljava/lang/String;)Ltmsdkobf/jx;

    move-result-object v5

    .line 218
    const-string v11, "POST"

    invoke-virtual {v5, v11}, Ltmsdkobf/jx;->setRequestMethod(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v5, v1}, Ltmsdkobf/jx;->setPostData([B)V

    .line 220
    invoke-virtual {v5}, Ltmsdkobf/jx;->eY()I

    .line 221
    new-instance v7, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v7}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 222
    .local v7, retBytesRef:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<[B>;"
    const/4 v11, 0x0

    invoke-virtual {v5, v11, v7}, Ltmsdkobf/jx;->a(ZLjava/util/concurrent/atomic/AtomicReference;)I

    move-result v3

    .line 223
    invoke-virtual {v5}, Ltmsdkobf/jx;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ltmsdk/common/exception/NetWorkException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 224
    if-eqz v3, :cond_7

    .line 235
    if-eqz v5, :cond_6

    .line 236
    invoke-virtual {v5}, Ltmsdkobf/jx;->close()V

    :cond_6
    move v10, v3

    goto/16 :goto_0

    .line 227
    :cond_7
    :try_start_1
    const-string v11, "FileUploadReporter"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "report res:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ltmsdk/common/exception/NetWorkException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 235
    if-eqz v5, :cond_0

    .line 236
    invoke-virtual {v5}, Ltmsdkobf/jx;->close()V

    goto/16 :goto_0

    .line 228
    .end local v0           #beginPos:I
    .end local v6           #imei:Ljava/lang/String;
    .end local v7           #retBytesRef:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<[B>;"
    .end local v8           #secondName:Ljava/lang/String;
    .end local v9           #url:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 229
    .local v2, e:Ltmsdk/common/exception/NetWorkException;
    :try_start_2
    const-string v10, "FileUploadReporter"

    const-string v11, "NetWorkException"

    invoke-static {v10, v11, v2}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 230
    invoke-virtual {v2}, Ltmsdk/common/exception/NetWorkException;->getErrCode()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v10

    .line 235
    if-eqz v5, :cond_0

    .line 236
    invoke-virtual {v5}, Ltmsdkobf/jx;->close()V

    goto/16 :goto_0

    .line 231
    .end local v2           #e:Ltmsdk/common/exception/NetWorkException;
    :catch_1
    move-exception v2

    .line 232
    .local v2, e:Ljava/lang/Exception;
    :try_start_3
    const-string v10, "FileUploadReporter"

    const-string v11, "Exception"

    invoke-static {v10, v11, v2}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 235
    if-eqz v5, :cond_8

    .line 236
    invoke-virtual {v5}, Ltmsdkobf/jx;->close()V

    :cond_8
    move v10, v3

    goto/16 :goto_0

    .line 235
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    if-eqz v5, :cond_9

    .line 236
    invoke-virtual {v5}, Ltmsdkobf/jx;->close()V

    :cond_9
    throw v10
.end method


# virtual methods
.method public cv(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 73
    if-eqz p1, :cond_0

    .line 74
    iget-object v0, p0, Ltmsdkobf/kz;->Bu:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_0
    return-void
.end method

.method public fV()I
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 89
    iget-object v8, p0, Ltmsdkobf/kz;->Bu:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->toArray()[Ljava/lang/Object;

    move-result-object v5

    .line 90
    .local v5, path:[Ljava/lang/Object;
    if-nez v5, :cond_1

    move v1, v7

    .line 101
    :cond_0
    :goto_0
    return v1

    .line 93
    :cond_1
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/Object;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    .local v4, obj:Ljava/lang/Object;
    move-object v6, v4

    .line 94
    check-cast v6, Ljava/lang/String;

    .line 95
    .local v6, strPath:Ljava/lang/String;
    invoke-direct {p0, v6}, Ltmsdkobf/kz;->cx(Ljava/lang/String;)I

    move-result v1

    .line 97
    .local v1, err:I
    if-nez v1, :cond_0

    .line 93
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1           #err:I
    .end local v4           #obj:Ljava/lang/Object;
    .end local v6           #strPath:Ljava/lang/String;
    :cond_2
    move v1, v7

    .line 101
    goto :goto_0
.end method
