.class Lcom/zte/util/AndroidLogger$FileLogger;
.super Ljava/lang/Object;
.source "AndroidLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/util/AndroidLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileLogger"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/util/AndroidLogger;


# direct methods
.method private constructor <init>(Lcom/zte/util/AndroidLogger;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/zte/util/AndroidLogger$FileLogger;->this$0:Lcom/zte/util/AndroidLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/util/AndroidLogger;Lcom/zte/util/AndroidLogger$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/zte/util/AndroidLogger$FileLogger;-><init>(Lcom/zte/util/AndroidLogger;)V

    return-void
.end method

.method private checkClear()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    invoke-static {}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->getDefault()Lcom/zte/aliveupdate/main/AliveUpdateApp;

    move-result-object v0

    .line 179
    .local v0, context:Landroid/content/Context;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/data/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/files/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "aliveupdate.log"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 180
    .local v2, logFileName:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 183
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    sget v5, Lcom/zte/util/AndroidLogger;->FILE_LIMIT_LENGTH:I

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 184
    iget-object v3, p0, Lcom/zte/util/AndroidLogger$FileLogger;->this$0:Lcom/zte/util/AndroidLogger;

    iget-object v3, v3, Lcom/zte/util/AndroidLogger;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V

    .line 185
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 186
    iget-object v3, p0, Lcom/zte/util/AndroidLogger$FileLogger;->this$0:Lcom/zte/util/AndroidLogger;

    new-instance v4, Lcom/zte/util/NormalLoggerImpl;

    invoke-direct {v4}, Lcom/zte/util/NormalLoggerImpl;-><init>()V

    invoke-virtual {v4, v0}, Lcom/zte/util/NormalLoggerImpl;->initLog(Landroid/content/Context;)Ljava/io/OutputStreamWriter;

    move-result-object v4

    iput-object v4, v3, Lcom/zte/util/AndroidLogger;->osw:Ljava/io/OutputStreamWriter;

    .line 188
    :cond_0
    return-void
.end method


# virtual methods
.method declared-synchronized init(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    .line 128
    monitor-enter p0

    const/4 v1, 0x1

    .line 129
    .local v1, result:Z
    :try_start_0
    const-string v2, "ZDMAPP"

    const-string v3, "FileLogger.Init"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    :try_start_1
    iget-object v2, p0, Lcom/zte/util/AndroidLogger$FileLogger;->this$0:Lcom/zte/util/AndroidLogger;

    new-instance v3, Lcom/zte/util/NormalLoggerImpl;

    invoke-direct {v3}, Lcom/zte/util/NormalLoggerImpl;-><init>()V

    invoke-virtual {v3, p1}, Lcom/zte/util/NormalLoggerImpl;->initLog(Landroid/content/Context;)Ljava/io/OutputStreamWriter;

    move-result-object v3

    iput-object v3, v2, Lcom/zte/util/AndroidLogger;->osw:Ljava/io/OutputStreamWriter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 139
    const/4 v1, 0x1

    .line 144
    :goto_0
    monitor-exit p0

    return v1

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v2, "ZDMAPP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FileLogger.init - caught exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 142
    const/4 v1, 0x0

    goto :goto_0

    .line 128
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public logMsg(Ljava/lang/String;)V
    .locals 7
    .parameter "message"

    .prologue
    .line 155
    iget-object v3, p0, Lcom/zte/util/AndroidLogger$FileLogger;->this$0:Lcom/zte/util/AndroidLogger;

    iget-object v4, v3, Lcom/zte/util/AndroidLogger;->osw:Ljava/io/OutputStreamWriter;

    monitor-enter v4

    .line 158
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 159
    .local v0, cal:Ljava/util/Calendar;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "HH:mm:ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    .local v2, sdf:Ljava/text/SimpleDateFormat;
    :try_start_1
    invoke-direct {p0}, Lcom/zte/util/AndroidLogger$FileLogger;->checkClear()V

    .line 163
    iget-object v3, p0, Lcom/zte/util/AndroidLogger$FileLogger;->this$0:Lcom/zte/util/AndroidLogger;

    iget-object v3, v3, Lcom/zte/util/AndroidLogger;->osw:Ljava/io/OutputStreamWriter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 164
    iget-object v3, p0, Lcom/zte/util/AndroidLogger$FileLogger;->this$0:Lcom/zte/util/AndroidLogger;

    iget-object v3, v3, Lcom/zte/util/AndroidLogger;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 170
    :goto_0
    :try_start_2
    monitor-exit v4

    .line 174
    return-void

    .line 166
    :catch_0
    move-exception v1

    .line 167
    .local v1, e:Ljava/io/IOException;
    const-string v3, "ZDMAPP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FileLogger.prefixMsg - caught exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 170
    .end local v0           #cal:Ljava/util/Calendar;
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #sdf:Ljava/text/SimpleDateFormat;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method declared-synchronized term()V
    .locals 4

    .prologue
    .line 193
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/zte/util/AndroidLogger$FileLogger;->this$0:Lcom/zte/util/AndroidLogger;

    iget-object v1, v1, Lcom/zte/util/AndroidLogger;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V

    .line 194
    const-string v1, "ZDMAPP"

    const-string v2, "FileLogger.term"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :goto_0
    monitor-exit p0

    return-void

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, e:Ljava/io/IOException;
    :try_start_1
    const-string v1, "ZDMAPP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FileLogger.term - caught exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 193
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
