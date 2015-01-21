.class public Lcom/android/exchange/utility/FileLogger;
.super Ljava/lang/Object;
.source "FileLogger.java"


# static fields
.field private static LOGGER:Lcom/android/exchange/utility/FileLogger; = null

.field public static LOG_FILE_NAME:Ljava/lang/String; = null

.field private static final MAX_RETRY_COUNT:I = 0x3

.field private static sLogWriter:Ljava/io/FileWriter;

.field private static sRetryDepth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 28
    sput-object v0, Lcom/android/exchange/utility/FileLogger;->LOGGER:Lcom/android/exchange/utility/FileLogger;

    .line 29
    sput-object v0, Lcom/android/exchange/utility/FileLogger;->sLogWriter:Ljava/io/FileWriter;

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/emaillog.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/exchange/utility/FileLogger;->LOG_FILE_NAME:Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    sput v0, Lcom/android/exchange/utility/FileLogger;->sRetryDepth:I

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    :try_start_0
    new-instance v0, Ljava/io/FileWriter;

    sget-object v1, Lcom/android/exchange/utility/FileLogger;->LOG_FILE_NAME:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/android/exchange/utility/FileLogger;->sLogWriter:Ljava/io/FileWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :goto_0
    return-void

    .line 43
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static declared-synchronized close()V
    .locals 2

    .prologue
    .line 49
    const-class v1, Lcom/android/exchange/utility/FileLogger;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/exchange/utility/FileLogger;->sLogWriter:Ljava/io/FileWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 51
    :try_start_1
    sget-object v0, Lcom/android/exchange/utility/FileLogger;->sLogWriter:Ljava/io/FileWriter;

    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 55
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    sput-object v0, Lcom/android/exchange/utility/FileLogger;->sLogWriter:Ljava/io/FileWriter;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 57
    :cond_0
    monitor-exit v1

    return-void

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 52
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static declared-synchronized getLogger(Landroid/content/Context;)Lcom/android/exchange/utility/FileLogger;
    .locals 2
    .parameter "c"

    .prologue
    .line 36
    const-class v1, Lcom/android/exchange/utility/FileLogger;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/android/exchange/utility/FileLogger;

    invoke-direct {v0}, Lcom/android/exchange/utility/FileLogger;-><init>()V

    sput-object v0, Lcom/android/exchange/utility/FileLogger;->LOGGER:Lcom/android/exchange/utility/FileLogger;

    .line 37
    sget-object v0, Lcom/android/exchange/utility/FileLogger;->LOGGER:Lcom/android/exchange/utility/FileLogger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized log(Ljava/lang/Exception;)V
    .locals 4
    .parameter "e"

    .prologue
    .line 60
    const-class v2, Lcom/android/exchange/utility/FileLogger;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/android/exchange/utility/FileLogger;->sLogWriter:Ljava/io/FileWriter;

    if-eqz v1, :cond_0

    .line 61
    const-string v1, "Exception"

    const-string v3, "Stack trace follows..."

    invoke-static {v1, v3}, Lcom/android/exchange/utility/FileLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    new-instance v0, Ljava/io/PrintWriter;

    sget-object v1, Lcom/android/exchange/utility/FileLogger;->sLogWriter:Ljava/io/FileWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 63
    .local v0, pw:Ljava/io/PrintWriter;
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 64
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .end local v0           #pw:Ljava/io/PrintWriter;
    :cond_0
    monitor-exit v2

    return-void

    .line 60
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter "prefix"
    .parameter "str"

    .prologue
    const/16 v10, 0xa

    .line 70
    const-class v8, Lcom/android/exchange/utility/FileLogger;

    monitor-enter v8

    :try_start_0
    sget v7, Lcom/android/exchange/utility/FileLogger;->sRetryDepth:I

    add-int/lit8 v7, v7, 0x1

    sput v7, Lcom/android/exchange/utility/FileLogger;->sRetryDepth:I

    .line 72
    sget-object v7, Lcom/android/exchange/utility/FileLogger;->LOGGER:Lcom/android/exchange/utility/FileLogger;

    if-nez v7, :cond_0

    .line 73
    new-instance v7, Lcom/android/exchange/utility/FileLogger;

    invoke-direct {v7}, Lcom/android/exchange/utility/FileLogger;-><init>()V

    sput-object v7, Lcom/android/exchange/utility/FileLogger;->LOGGER:Lcom/android/exchange/utility/FileLogger;

    .line 74
    const-string v7, "Logger"

    const-string v9, "\r\n\r\n --- New Log ---"

    invoke-static {v7, v9}, Lcom/android/exchange/utility/FileLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 77
    .local v0, d:Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v2

    .line 78
    .local v2, hr:I
    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v3

    .line 79
    .local v3, min:I
    invoke-virtual {v0}, Ljava/util/Date;->getSeconds()I

    move-result v6

    .line 82
    .local v6, sec:I
    new-instance v5, Ljava/lang/StringBuffer;

    const/16 v7, 0x100

    invoke-direct {v5, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 83
    .local v5, sb:Ljava/lang/StringBuffer;
    const/16 v7, 0x5b

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 84
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 85
    const/16 v7, 0x3a

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 86
    if-ge v3, v10, :cond_1

    .line 87
    const/16 v7, 0x30

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 88
    :cond_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 89
    const/16 v7, 0x3a

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 90
    if-ge v6, v10, :cond_2

    .line 91
    const/16 v7, 0x30

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 93
    :cond_2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 94
    const-string v7, "] "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    if-eqz p0, :cond_3

    .line 96
    invoke-virtual {v5, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    const-string v7, "| "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    :cond_3
    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    const-string v7, "\r\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 103
    .local v4, s:Ljava/lang/String;
    sget-object v7, Lcom/android/exchange/utility/FileLogger;->sLogWriter:Ljava/io/FileWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_4

    .line 105
    :try_start_1
    sget-object v7, Lcom/android/exchange/utility/FileLogger;->sLogWriter:Ljava/io/FileWriter;

    invoke-virtual {v7, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 106
    sget-object v7, Lcom/android/exchange/utility/FileLogger;->sLogWriter:Ljava/io/FileWriter;

    invoke-virtual {v7}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 129
    :cond_4
    :goto_0
    :try_start_2
    sget v7, Lcom/android/exchange/utility/FileLogger;->sRetryDepth:I

    add-int/lit8 v7, v7, -0x1

    sput v7, Lcom/android/exchange/utility/FileLogger;->sRetryDepth:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 130
    :goto_1
    monitor-exit v8

    return-void

    .line 107
    :catch_0
    move-exception v1

    .line 109
    .local v1, e:Ljava/io/IOException;
    :try_start_3
    const-string v7, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 111
    sget v7, Lcom/android/exchange/utility/FileLogger;->sRetryDepth:I

    const/4 v9, 0x3

    if-ne v7, v9, :cond_5

    .line 113
    sget v7, Lcom/android/exchange/utility/FileLogger;->sRetryDepth:I

    add-int/lit8 v7, v7, -0x1

    sput v7, Lcom/android/exchange/utility/FileLogger;->sRetryDepth:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 70
    .end local v0           #d:Ljava/util/Date;
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #hr:I
    .end local v3           #min:I
    .end local v4           #s:Ljava/lang/String;
    .end local v5           #sb:Ljava/lang/StringBuffer;
    .end local v6           #sec:I
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    .line 116
    .restart local v0       #d:Ljava/util/Date;
    .restart local v1       #e:Ljava/io/IOException;
    .restart local v2       #hr:I
    .restart local v3       #min:I
    .restart local v4       #s:Ljava/lang/String;
    .restart local v5       #sb:Ljava/lang/StringBuffer;
    .restart local v6       #sec:I
    :cond_5
    :try_start_4
    new-instance v7, Lcom/android/exchange/utility/FileLogger;

    invoke-direct {v7}, Lcom/android/exchange/utility/FileLogger;-><init>()V

    sput-object v7, Lcom/android/exchange/utility/FileLogger;->LOGGER:Lcom/android/exchange/utility/FileLogger;

    .line 117
    sget-object v7, Lcom/android/exchange/utility/FileLogger;->sLogWriter:Ljava/io/FileWriter;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v7, :cond_4

    .line 119
    :try_start_5
    const-string v7, "FileLogger"

    const-string v9, "Exception writing log; recreating..."

    invoke-static {v7, v9}, Lcom/android/exchange/utility/FileLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-static {p0, p1}, Lcom/android/exchange/utility/FileLogger;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 121
    :catch_1
    move-exception v7

    goto :goto_0
.end method
