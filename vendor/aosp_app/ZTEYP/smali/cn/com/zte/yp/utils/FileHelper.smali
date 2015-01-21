.class public Lcn/com/zte/yp/utils/FileHelper;
.super Ljava/lang/Object;
.source "FileHelper.java"


# static fields
.field private static instance:Lcn/com/zte/yp/utils/FileHelper;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcn/com/zte/yp/utils/FileHelper;
    .locals 2

    .prologue
    .line 22
    const-class v1, Lcn/com/zte/yp/utils/FileHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/com/zte/yp/utils/FileHelper;->instance:Lcn/com/zte/yp/utils/FileHelper;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcn/com/zte/yp/utils/FileHelper;

    invoke-direct {v0}, Lcn/com/zte/yp/utils/FileHelper;-><init>()V

    sput-object v0, Lcn/com/zte/yp/utils/FileHelper;->instance:Lcn/com/zte/yp/utils/FileHelper;

    .line 25
    :cond_0
    sget-object v0, Lcn/com/zte/yp/utils/FileHelper;->instance:Lcn/com/zte/yp/utils/FileHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 22
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public deleteFile(Ljava/lang/String;)Z
    .locals 4
    .parameter "path"

    .prologue
    const/4 v1, 0x1

    .line 104
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 105
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 114
    :goto_0
    return v1

    .line 108
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 109
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Delete file success. file="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 113
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error. Can not delete dir.file="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 114
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getContentFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "path"

    .prologue
    .line 61
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 62
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 63
    const-string v5, ""

    .line 75
    :goto_0
    return-object v5

    .line 66
    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 67
    .local v3, fis:Ljava/io/FileInputStream;
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v4

    .line 68
    .local v4, length:I
    new-array v0, v4, [B

    .line 69
    .local v0, buf:[B
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 70
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 71
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 73
    .end local v0           #buf:[B
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v4           #length:I
    :catch_0
    move-exception v1

    .line 74
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 75
    const-string v5, ""

    goto :goto_0
.end method

.method public getContentLength(Ljava/lang/String;)I
    .locals 7
    .parameter "path"

    .prologue
    const/4 v4, -0x1

    .line 87
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 88
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    move v3, v4

    .line 99
    :goto_0
    return v3

    .line 92
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 93
    .local v2, fis:Ljava/io/FileInputStream;
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v3

    .line 94
    .local v3, length:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "len="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 97
    .end local v2           #fis:Ljava/io/FileInputStream;
    .end local v3           #length:I
    :catch_0
    move-exception v0

    .line 98
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v3, v4

    .line 99
    goto :goto_0
.end method

.method public writContent2File(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 4
    .parameter "content"
    .parameter "path"
    .parameter "append"

    .prologue
    .line 39
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 42
    .local v1, file:Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 43
    .local v2, fos:Ljava/io/FileOutputStream;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 44
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    const/4 v3, 0x1

    .line 49
    .end local v2           #fos:Ljava/io/FileOutputStream;
    :goto_0
    return v3

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 49
    const/4 v3, 0x0

    goto :goto_0
.end method
