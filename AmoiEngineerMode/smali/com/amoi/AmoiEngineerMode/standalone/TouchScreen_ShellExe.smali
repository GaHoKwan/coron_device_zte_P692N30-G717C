.class public Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_ShellExe;
.super Ljava/lang/Object;
.source "TouchScreen_ShellExe.java"


# static fields
.field public static ERROR:Ljava/lang/String;

.field private static sb:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    const-string v0, "ERROR"

    sput-object v0, Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_ShellExe;->ERROR:Ljava/lang/String;

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_ShellExe;->sb:Ljava/lang/StringBuilder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static execCommand([Ljava/lang/String;)I
    .locals 11
    .parameter "command"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 27
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    .line 28
    .local v6, runtime:Ljava/lang/Runtime;
    invoke-virtual {v6, p0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    .line 29
    .local v5, proc:Ljava/lang/Process;
    invoke-virtual {v5}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 30
    .local v2, inputstream:Ljava/io/InputStream;
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 31
    .local v3, inputstreamreader:Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 35
    .local v0, bufferedreader:Ljava/io/BufferedReader;
    sget-object v9, Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_ShellExe;->sb:Ljava/lang/StringBuilder;

    sget-object v10, Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_ShellExe;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    invoke-virtual {v9, v8, v10}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 37
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/Process;->waitFor()I

    move-result v9

    if-eqz v9, :cond_0

    .line 38
    const-string v8, "MTK"

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

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    sget-object v8, Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_ShellExe;->sb:Ljava/lang/StringBuilder;

    sget-object v9, Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_ShellExe;->ERROR:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    :goto_0
    return v7

    .line 43
    :cond_0
    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, line:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 44
    sget-object v9, Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_ShellExe;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 49
    .end local v4           #line:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 50
    .local v1, e:Ljava/lang/InterruptedException;
    const-string v8, "MTK"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "exe fail "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    sget-object v8, Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_ShellExe;->sb:Ljava/lang/StringBuilder;

    sget-object v9, Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_ShellExe;->ERROR:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .end local v1           #e:Ljava/lang/InterruptedException;
    .restart local v4       #line:Ljava/lang/String;
    :cond_1
    move v7, v8

    .line 47
    goto :goto_0
.end method

.method public static getOutput()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/amoi/AmoiEngineerMode/standalone/TouchScreen_ShellExe;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
