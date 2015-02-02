.class public Lcom/amoi/AmoiEngineerMode/util/CommandHelper;
.super Ljava/lang/Object;
.source "CommandHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CommandHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static execCommand(Ljava/lang/String;)Z
    .locals 8
    .parameter "command"

    .prologue
    const/4 v4, 0x1

    .line 19
    const-string v5, "EngineerMode"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CommandHelper execCommand: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    .line 22
    .local v3, proc:Ljava/lang/Process;
    new-instance v1, Lcom/amoi/AmoiEngineerMode/util/StreamGobbler;

    invoke-virtual {v3}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v5

    const/4 v6, 0x2

    invoke-direct {v1, v5, v6}, Lcom/amoi/AmoiEngineerMode/util/StreamGobbler;-><init>(Ljava/io/InputStream;I)V

    .line 24
    .local v1, errorGobbler:Lcom/amoi/AmoiEngineerMode/util/StreamGobbler;
    new-instance v2, Lcom/amoi/AmoiEngineerMode/util/StreamGobbler;

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v2, v5, v6}, Lcom/amoi/AmoiEngineerMode/util/StreamGobbler;-><init>(Ljava/io/InputStream;I)V

    .line 26
    .local v2, outputGobbler:Lcom/amoi/AmoiEngineerMode/util/StreamGobbler;
    invoke-virtual {v1}, Lcom/amoi/AmoiEngineerMode/util/StreamGobbler;->start()V

    .line 27
    invoke-virtual {v2}, Lcom/amoi/AmoiEngineerMode/util/StreamGobbler;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .end local v1           #errorGobbler:Lcom/amoi/AmoiEngineerMode/util/StreamGobbler;
    .end local v2           #outputGobbler:Lcom/amoi/AmoiEngineerMode/util/StreamGobbler;
    .end local v3           #proc:Ljava/lang/Process;
    :goto_0
    return v4

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .local v0, e:Ljava/io/IOException;
    const-string v4, "EngineerMode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CommandHelper execCommand: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 30
    const/4 v4, 0x0

    goto :goto_0
.end method
