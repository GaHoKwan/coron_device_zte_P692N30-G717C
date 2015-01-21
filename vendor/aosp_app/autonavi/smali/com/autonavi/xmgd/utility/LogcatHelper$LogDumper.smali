.class Lcom/autonavi/xmgd/utility/LogcatHelper$LogDumper;
.super Ljava/lang/Thread;


# instance fields
.field cmds:Ljava/lang/String;

.field private logcatProc:Ljava/lang/Process;

.field private mPID:Ljava/lang/String;

.field private mReader:Ljava/io/BufferedReader;

.field private mRunning:Z

.field private out:Ljava/io/FileOutputStream;

.field final synthetic this$0:Lcom/autonavi/xmgd/utility/LogcatHelper;


# direct methods
.method public constructor <init>(Lcom/autonavi/xmgd/utility/LogcatHelper;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/autonavi/xmgd/utility/LogcatHelper$LogDumper;->this$0:Lcom/autonavi/xmgd/utility/LogcatHelper;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object v1, p0, Lcom/autonavi/xmgd/utility/LogcatHelper$LogDumper;->mReader:Ljava/io/BufferedReader;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/xmgd/utility/LogcatHelper$LogDumper;->mRunning:Z

    iput-object v1, p0, Lcom/autonavi/xmgd/utility/LogcatHelper$LogDumper;->cmds:Ljava/lang/String;

    iput-object v1, p0, Lcom/autonavi/xmgd/utility/LogcatHelper$LogDumper;->out:Ljava/io/FileOutputStream;

    iput-object p2, p0, Lcom/autonavi/xmgd/utility/LogcatHelper$LogDumper;->mPID:Ljava/lang/String;

    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "traces_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getStringTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".log"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/utility/LogcatHelper$LogDumper;->out:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "logcat  | grep \"("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/utility/LogcatHelper$LogDumper;->mPID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/utility/LogcatHelper$LogDumper;->cmds:Ljava/lang/String;

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/utility/LogcatHelper$LogDumper;->cmds:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/utility/LogcatHelper$LogDumper;->logcatProc:Ljava/lang/Process;

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lcom/autonavi/xmgd/utility/LogcatHelper$LogDumper;->logcatProc:Ljava/lang/Process;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v2, 0x400

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    iput-object v0, p0, Lcom/autonavi/xmgd/utility/LogcatHelper$LogDumper;->mReader:Ljava/io/BufferedReader;

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/autonavi/xmgd/utility/LogcatHelper$LogDumper;->mRunning:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/LogcatHelper$LogDumper;->mReader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/autonavi/xmgd/utility/LogcatHelper$LogDumper;->mRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_5

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/utility/LogcatHelper$LogDumper;->logcatProc:Ljava/lang/Process;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/LogcatHelper$LogDumper;->logcatProc:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    iput-object v4, p0, Lcom/autonavi/xmgd/utility/LogcatHelper$LogDumper;->logcatProc:Ljava/lang/Process;

    :cond_2
    iget-object v0, p0, Lcom/autonavi/xmgd/utility/LogcatHelper$LogDumper;->mReader:Ljava/io/BufferedReader;

    if-eqz v0, :cond_3

    :try_start_1
    iget-object v0, p0, Lcom/autonavi/xmgd/utility/LogcatHelper$LogDumper;->mReader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/xmgd/utility/LogcatHelper$LogDumper;->mReader:Ljava/io/BufferedReader;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/autonavi/xmgd/utility/LogcatHelper$LogDumper;->out:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_4

    :try_start_2
    iget-object v0, p0, Lcom/autonavi/xmgd/utility/LogcatHelper$LogDumper;->out:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    iput-object v4, p0, Lcom/autonavi/xmgd/utility/LogcatHelper$LogDumper;->out:Ljava/io/FileOutputStream;

    :cond_4
    :goto_3
    return-void

    :cond_5
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/xmgd/utility/LogcatHelper$LogDumper;->out:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/xmgd/utility/LogcatHelper$LogDumper;->mPID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/xmgd/utility/LogcatHelper$LogDumper;->out:Ljava/io/FileOutputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getStringTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/LogcatHelper$LogDumper;->logcatProc:Ljava/lang/Process;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/LogcatHelper$LogDumper;->logcatProc:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    iput-object v4, p0, Lcom/autonavi/xmgd/utility/LogcatHelper$LogDumper;->logcatProc:Ljava/lang/Process;

    :cond_6
    iget-object v0, p0, Lcom/autonavi/xmgd/utility/LogcatHelper$LogDumper;->mReader:Ljava/io/BufferedReader;

    if-eqz v0, :cond_7

    :try_start_5
    iget-object v0, p0, Lcom/autonavi/xmgd/utility/LogcatHelper$LogDumper;->mReader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/xmgd/utility/LogcatHelper$LogDumper;->mReader:Ljava/io/BufferedReader;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_7
    :goto_4
    iget-object v0, p0, Lcom/autonavi/xmgd/utility/LogcatHelper$LogDumper;->out:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_4

    :try_start_6
    iget-object v0, p0, Lcom/autonavi/xmgd/utility/LogcatHelper$LogDumper;->out:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :goto_5
    iput-object v4, p0, Lcom/autonavi/xmgd/utility/LogcatHelper$LogDumper;->out:Ljava/io/FileOutputStream;

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/autonavi/xmgd/utility/LogcatHelper$LogDumper;->logcatProc:Ljava/lang/Process;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/autonavi/xmgd/utility/LogcatHelper$LogDumper;->logcatProc:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    iput-object v4, p0, Lcom/autonavi/xmgd/utility/LogcatHelper$LogDumper;->logcatProc:Ljava/lang/Process;

    :cond_8
    iget-object v1, p0, Lcom/autonavi/xmgd/utility/LogcatHelper$LogDumper;->mReader:Ljava/io/BufferedReader;

    if-eqz v1, :cond_9

    :try_start_7
    iget-object v1, p0, Lcom/autonavi/xmgd/utility/LogcatHelper$LogDumper;->mReader:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/autonavi/xmgd/utility/LogcatHelper$LogDumper;->mReader:Ljava/io/BufferedReader;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_9
    :goto_6
    iget-object v1, p0, Lcom/autonavi/xmgd/utility/LogcatHelper$LogDumper;->out:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_a

    :try_start_8
    iget-object v1, p0, Lcom/autonavi/xmgd/utility/LogcatHelper$LogDumper;->out:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    :goto_7
    iput-object v4, p0, Lcom/autonavi/xmgd/utility/LogcatHelper$LogDumper;->out:Ljava/io/FileOutputStream;

    :cond_a
    throw v0

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :catch_6
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7
.end method

.method public stopLogs()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/xmgd/utility/LogcatHelper$LogDumper;->mRunning:Z

    return-void
.end method
