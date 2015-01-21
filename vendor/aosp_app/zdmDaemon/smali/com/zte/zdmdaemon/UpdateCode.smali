.class public Lcom/zte/zdmdaemon/UpdateCode;
.super Ljava/lang/Object;
.source "UpdateCode.java"


# static fields
.field private static final FS_ERROR_CODE:Ljava/io/File; = null

.field private static final GOTA_DIR:Ljava/io/File; = null

.field private static final GOTA_DIRECTORY:Ljava/io/File; = null

.field private static final GOTA_FOTA_RESULT:Ljava/io/File; = null

.field private static final GOTA_RESULT_FILE:Ljava/io/File; = null

.field private static final LOG_TAG:Ljava/lang/String; = "UpdateCode"

.field public static final RESULT_ERROR_CODE:Ljava/lang/String; = "error_code"

.field private static final RESULT_PATH:Ljava/lang/String; = "/data/upversion/fota_result"

.field private static me:Lcom/zte/zdmdaemon/UpdateCode;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 15
    new-instance v0, Ljava/io/File;

    const-string v1, "data/upversion"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zte/zdmdaemon/UpdateCode;->GOTA_DIRECTORY:Ljava/io/File;

    .line 16
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/zte/zdmdaemon/UpdateCode;->GOTA_DIRECTORY:Ljava/io/File;

    const-string v2, "result_file"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/zte/zdmdaemon/UpdateCode;->GOTA_RESULT_FILE:Ljava/io/File;

    .line 18
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/zte/zdmdaemon/UpdateCode;->GOTA_DIRECTORY:Ljava/io/File;

    const-string v2, "fota_result"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/zte/zdmdaemon/UpdateCode;->GOTA_FOTA_RESULT:Ljava/io/File;

    .line 21
    new-instance v0, Ljava/io/File;

    const-string v1, "/cache/fota"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zte/zdmdaemon/UpdateCode;->GOTA_DIR:Ljava/io/File;

    .line 22
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/zte/zdmdaemon/UpdateCode;->GOTA_DIR:Ljava/io/File;

    const-string v2, "error_code"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/zte/zdmdaemon/UpdateCode;->FS_ERROR_CODE:Ljava/io/File;

    .line 11
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method private equals([C[C)Z
    .locals 4
    .parameter "ori"
    .parameter "tar"

    .prologue
    .line 70
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_2

    .line 71
    :cond_0
    const/4 v1, 0x0

    .line 80
    :cond_1
    :goto_0
    return v1

    .line 73
    :cond_2
    const/4 v1, 0x1

    .line 74
    .local v1, result:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 75
    aget-char v2, p1, v0

    aget-char v3, p2, v0

    if-eq v2, v3, :cond_3

    .line 76
    const/4 v1, 0x0

    .line 77
    goto :goto_0

    .line 74
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static getInstance()Lcom/zte/zdmdaemon/UpdateCode;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/zte/zdmdaemon/UpdateCode;->me:Lcom/zte/zdmdaemon/UpdateCode;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/zte/zdmdaemon/UpdateCode;

    invoke-direct {v0}, Lcom/zte/zdmdaemon/UpdateCode;-><init>()V

    sput-object v0, Lcom/zte/zdmdaemon/UpdateCode;->me:Lcom/zte/zdmdaemon/UpdateCode;

    .line 35
    :cond_0
    sget-object v0, Lcom/zte/zdmdaemon/UpdateCode;->me:Lcom/zte/zdmdaemon/UpdateCode;

    return-object v0
.end method

.method private handleInitFile(Ljava/io/File;I)V
    .locals 4
    .parameter "file"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 143
    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, p1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 145
    .local v0, fw:Ljava/io/FileWriter;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 149
    :try_start_0
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    .line 153
    const-string v2, "sync"

    invoke-static {v2}, Lcom/zte/zdmdaemon/util/AndroidCMD;->runCMD(Ljava/lang/String;)V

    .line 154
    const/4 v0, 0x0

    .line 156
    return-void

    .line 146
    :cond_0
    :try_start_1
    invoke-virtual {v0, p2}, Ljava/io/FileWriter;->write(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    shr-int/lit8 p2, p2, 0x8

    .line 145
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 151
    :catchall_0
    move-exception v2

    .line 152
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    .line 153
    const-string v3, "sync"

    invoke-static {v3}, Lcom/zte/zdmdaemon/util/AndroidCMD;->runCMD(Ljava/lang/String;)V

    .line 154
    const/4 v0, 0x0

    .line 155
    throw v2
.end method

.method private setVariableForUpdate()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 93
    const/4 v0, 0x0

    .line 95
    .local v0, initValue:I
    sget-object v3, Lcom/zte/zdmdaemon/UpdateCode;->GOTA_DIRECTORY:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 96
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "chmod 777 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/zte/zdmdaemon/UpdateCode;->GOTA_DIRECTORY:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zte/zdmdaemon/util/AndroidCMD;->runCMD(Ljava/lang/String;)V

    .line 97
    sget-object v3, Lcom/zte/zdmdaemon/UpdateCode;->GOTA_RESULT_FILE:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 98
    sget-object v3, Lcom/zte/zdmdaemon/UpdateCode;->GOTA_RESULT_FILE:Ljava/io/File;

    const-string v4, "/data/upversion/fota_result"

    invoke-direct {p0, v3, v4}, Lcom/zte/zdmdaemon/UpdateCode;->writeResultPathToFile(Ljava/io/File;Ljava/lang/String;)V

    .line 99
    sget-object v3, Lcom/zte/zdmdaemon/UpdateCode;->GOTA_FOTA_RESULT:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 100
    sget-object v3, Lcom/zte/zdmdaemon/UpdateCode;->GOTA_FOTA_RESULT:Ljava/io/File;

    invoke-direct {p0, v3, v0}, Lcom/zte/zdmdaemon/UpdateCode;->writeValueToFile(Ljava/io/File;I)V

    .line 101
    invoke-virtual {p0}, Lcom/zte/zdmdaemon/UpdateCode;->readUpdateStatus()[C

    move-result-object v2

    .line 102
    .local v2, statusCode1:[C
    const-string v3, "UpdateCode"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "read statusCode = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-char v5, v2, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 103
    aget-char v5, v2, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-char v5, v2, v8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 104
    aget-char v5, v2, v9

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 102
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    sget-object v3, Lcom/zte/zdmdaemon/UpdateCode;->GOTA_DIR:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 108
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "chmod 777 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/zte/zdmdaemon/UpdateCode;->GOTA_DIR:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zte/zdmdaemon/util/AndroidCMD;->runCMD(Ljava/lang/String;)V

    .line 109
    sget-object v3, Lcom/zte/zdmdaemon/UpdateCode;->FS_ERROR_CODE:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 110
    sget-object v3, Lcom/zte/zdmdaemon/UpdateCode;->FS_ERROR_CODE:Ljava/io/File;

    invoke-direct {p0, v3, v0}, Lcom/zte/zdmdaemon/UpdateCode;->writeValueToFile(Ljava/io/File;I)V

    .line 111
    invoke-virtual {p0}, Lcom/zte/zdmdaemon/UpdateCode;->readUpdateStatus()[C

    move-result-object v1

    .line 112
    .local v1, statusCode:[C
    const-string v3, "UpdateCode"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "read statusCode = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-char v5, v1, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 113
    aget-char v5, v1, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-char v5, v1, v8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 114
    aget-char v5, v1, v9

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 112
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return-void
.end method

.method private writeResultPathToFile(Ljava/io/File;Ljava/lang/String;)V
    .locals 2
    .parameter "file"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 131
    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, p1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 132
    .local v0, fw:Ljava/io/FileWriter;
    invoke-virtual {v0, p2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    .line 134
    const-string v1, "sync"

    invoke-static {v1}, Lcom/zte/zdmdaemon/util/AndroidCMD;->runCMD(Ljava/lang/String;)V

    .line 135
    const/4 v0, 0x0

    .line 136
    return-void
.end method

.method private writeValueToFile(Ljava/io/File;I)V
    .locals 0
    .parameter "file"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 139
    invoke-direct {p0, p1, p2}, Lcom/zte/zdmdaemon/UpdateCode;->handleInitFile(Ljava/io/File;I)V

    .line 140
    return-void
.end method


# virtual methods
.method public chmodFileMod()V
    .locals 2

    .prologue
    .line 118
    sget-object v0, Lcom/zte/zdmdaemon/UpdateCode;->GOTA_DIR:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    sget-object v0, Lcom/zte/zdmdaemon/UpdateCode;->GOTA_DIR:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 121
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "chmod 777 "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/zte/zdmdaemon/UpdateCode;->GOTA_DIR:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdmdaemon/util/AndroidCMD;->runCMD(Ljava/lang/String;)V

    .line 123
    sget-object v0, Lcom/zte/zdmdaemon/UpdateCode;->GOTA_DIRECTORY:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 124
    sget-object v0, Lcom/zte/zdmdaemon/UpdateCode;->GOTA_DIRECTORY:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 126
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "chmod 777 "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/zte/zdmdaemon/UpdateCode;->GOTA_DIRECTORY:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdmdaemon/util/AndroidCMD;->runCMD(Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public handleInitVariable()V
    .locals 4

    .prologue
    .line 85
    :try_start_0
    invoke-direct {p0}, Lcom/zte/zdmdaemon/UpdateCode;->setVariableForUpdate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 88
    const-string v1, "UpdateCode"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "etVariableForUpdate exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public readUpdateStatus()[C
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    .line 39
    new-array v0, v4, [C

    .line 40
    .local v0, buf1:[C
    new-array v1, v4, [C

    .line 41
    .local v1, buf2:[C
    new-array v3, v4, [C

    .line 42
    .local v3, origiValue:[C
    sget-object v4, Lcom/zte/zdmdaemon/UpdateCode;->GOTA_FOTA_RESULT:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 43
    new-instance v2, Ljava/io/FileReader;

    sget-object v4, Lcom/zte/zdmdaemon/UpdateCode;->GOTA_FOTA_RESULT:Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 45
    .local v2, fr:Ljava/io/FileReader;
    :try_start_0
    invoke-virtual {v2, v0}, Ljava/io/FileReader;->read([C)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    .line 51
    .end local v2           #fr:Ljava/io/FileReader;
    :cond_0
    sget-object v4, Lcom/zte/zdmdaemon/UpdateCode;->FS_ERROR_CODE:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 52
    new-instance v2, Ljava/io/FileReader;

    sget-object v4, Lcom/zte/zdmdaemon/UpdateCode;->FS_ERROR_CODE:Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 54
    .restart local v2       #fr:Ljava/io/FileReader;
    :try_start_1
    invoke-virtual {v2, v1}, Ljava/io/FileReader;->read([C)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 56
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    .line 61
    .end local v2           #fr:Ljava/io/FileReader;
    :cond_1
    invoke-direct {p0, v0, v3}, Lcom/zte/zdmdaemon/UpdateCode;->equals([C[C)Z

    move-result v4

    if-nez v4, :cond_2

    .line 66
    .end local v0           #buf1:[C
    :goto_0
    return-object v0

    .line 46
    .restart local v0       #buf1:[C
    .restart local v2       #fr:Ljava/io/FileReader;
    :catchall_0
    move-exception v4

    .line 47
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    .line 48
    const/4 v2, 0x0

    .line 49
    throw v4

    .line 55
    :catchall_1
    move-exception v4

    .line 56
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    .line 57
    const/4 v2, 0x0

    .line 58
    throw v4

    .line 64
    .end local v2           #fr:Ljava/io/FileReader;
    :cond_2
    invoke-direct {p0, v1, v3}, Lcom/zte/zdmdaemon/UpdateCode;->equals([C[C)Z

    move-result v4

    if-nez v4, :cond_3

    move-object v0, v1

    .line 65
    goto :goto_0

    :cond_3
    move-object v0, v3

    .line 66
    goto :goto_0
.end method
