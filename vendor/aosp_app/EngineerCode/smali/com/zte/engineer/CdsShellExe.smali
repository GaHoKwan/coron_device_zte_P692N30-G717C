.class public Lcom/zte/engineer/CdsShellExe;
.super Ljava/lang/Object;
.source "CdsShellExe.java"


# static fields
.field public static ERROR:Ljava/lang/String; = null

.field static final TAG:Ljava/lang/String; = "CdsShellExe"

.field private static sb:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    const-string v0, "ERROR"

    sput-object v0, Lcom/zte/engineer/CdsShellExe;->ERROR:Ljava/lang/String;

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zte/engineer/CdsShellExe;->sb:Ljava/lang/StringBuilder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static execCommand(Ljava/lang/String;)I
    .locals 11
    .parameter "command"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 23
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    .line 24
    .local v6, runtime:Ljava/lang/Runtime;
    invoke-virtual {v6, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    .line 25
    .local v5, proc:Ljava/lang/Process;
    const/4 v2, 0x0

    .line 27
    .local v2, inputstream:Ljava/io/InputStream;
    const-string v8, "CdsShellExe"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "execCommand:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    sget-object v8, Lcom/zte/engineer/CdsShellExe;->sb:Ljava/lang/StringBuilder;

    sget-object v9, Lcom/zte/engineer/CdsShellExe;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    invoke-virtual {v8, v7, v9}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 30
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/Process;->waitFor()I

    move-result v8

    if-eqz v8, :cond_1

    .line 31
    const-string v8, "CdsShellExe"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "exit value = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/lang/Process;->exitValue()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    sget-object v8, Lcom/zte/engineer/CdsShellExe;->sb:Ljava/lang/StringBuilder;

    sget-object v9, Lcom/zte/engineer/CdsShellExe;->ERROR:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v5}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    .line 38
    :goto_0
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 39
    .local v3, inputstreamreader:Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 43
    .local v0, bufferedreader:Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 44
    .local v4, line:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 46
    sget-object v8, Lcom/zte/engineer/CdsShellExe;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 56
    if-nez v4, :cond_2

    .line 71
    .end local v0           #bufferedreader:Ljava/io/BufferedReader;
    .end local v3           #inputstreamreader:Ljava/io/InputStreamReader;
    .end local v4           #line:Ljava/lang/String;
    :cond_0
    :goto_2
    return v7

    .line 35
    :cond_1
    invoke-virtual {v5}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    goto :goto_0

    .line 62
    .restart local v0       #bufferedreader:Ljava/io/BufferedReader;
    .restart local v3       #inputstreamreader:Ljava/io/InputStreamReader;
    .restart local v4       #line:Ljava/lang/String;
    :cond_2
    sget-object v8, Lcom/zte/engineer/CdsShellExe;->sb:Ljava/lang/StringBuilder;

    const/16 v9, 0xa

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 63
    sget-object v8, Lcom/zte/engineer/CdsShellExe;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 68
    .end local v0           #bufferedreader:Ljava/io/BufferedReader;
    .end local v3           #inputstreamreader:Ljava/io/InputStreamReader;
    .end local v4           #line:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 69
    .local v1, e:Ljava/lang/InterruptedException;
    const-string v7, "CdsShellExe"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "exe fail "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    sget-object v7, Lcom/zte/engineer/CdsShellExe;->sb:Ljava/lang/StringBuilder;

    sget-object v8, Lcom/zte/engineer/CdsShellExe;->ERROR:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    const/4 v7, -0x1

    goto :goto_2
.end method

.method public static getOutput()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/zte/engineer/CdsShellExe;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
