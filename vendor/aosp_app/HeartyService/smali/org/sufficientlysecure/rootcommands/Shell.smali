.class public Lorg/sufficientlysecure/rootcommands/Shell;
.super Ljava/lang/Object;
.source "Shell.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final LD_LIBRARY_PATH:Ljava/lang/String; = null

.field private static final token:Ljava/lang/String; = "F*D^W@#FGF"


# instance fields
.field private close:Z

.field private final commands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/sufficientlysecure/rootcommands/command/Command;",
            ">;"
        }
    .end annotation
.end field

.field private inputRunnable:Ljava/lang/Runnable;

.field private outputRunnable:Ljava/lang/Runnable;

.field private final outputStream:Ljava/io/DataOutputStream;

.field private final shellProcess:Ljava/lang/Process;

.field private final stdOutErr:Ljava/io/BufferedReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-string v0, "LD_LIBRARY_PATH"

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/sufficientlysecure/rootcommands/Shell;->LD_LIBRARY_PATH:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 4
    .parameter "shell"
    .parameter
    .parameter "baseDirectory"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/sufficientlysecure/rootcommands/util/RootAccessDeniedException;
        }
    .end annotation

    .prologue
    .line 131
    .local p2, customEnv:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/sufficientlysecure/rootcommands/Shell;->commands:Ljava/util/List;

    .line 38
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/sufficientlysecure/rootcommands/Shell;->close:Z

    .line 164
    new-instance v1, Lorg/sufficientlysecure/rootcommands/Shell$1;

    invoke-direct {v1, p0}, Lorg/sufficientlysecure/rootcommands/Shell$1;-><init>(Lorg/sufficientlysecure/rootcommands/Shell;)V

    iput-object v1, p0, Lorg/sufficientlysecure/rootcommands/Shell;->inputRunnable:Ljava/lang/Runnable;

    .line 174
    new-instance v1, Lorg/sufficientlysecure/rootcommands/Shell$2;

    invoke-direct {v1, p0}, Lorg/sufficientlysecure/rootcommands/Shell$2;-><init>(Lorg/sufficientlysecure/rootcommands/Shell;)V

    iput-object v1, p0, Lorg/sufficientlysecure/rootcommands/Shell;->outputRunnable:Ljava/lang/Runnable;

    .line 132
    const-string v1, "RootCommands"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting shell: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/sufficientlysecure/rootcommands/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-static {p1, p2, p3}, Lorg/sufficientlysecure/rootcommands/util/Utils;->runWithEnv(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    iput-object v1, p0, Lorg/sufficientlysecure/rootcommands/Shell;->shellProcess:Ljava/lang/Process;

    .line 140
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    iget-object v3, p0, Lorg/sufficientlysecure/rootcommands/Shell;->shellProcess:Ljava/lang/Process;

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v1, p0, Lorg/sufficientlysecure/rootcommands/Shell;->stdOutErr:Ljava/io/BufferedReader;

    .line 141
    new-instance v1, Ljava/io/DataOutputStream;

    iget-object v2, p0, Lorg/sufficientlysecure/rootcommands/Shell;->shellProcess:Ljava/lang/Process;

    invoke-virtual {v2}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lorg/sufficientlysecure/rootcommands/Shell;->outputStream:Ljava/io/DataOutputStream;

    .line 143
    iget-object v1, p0, Lorg/sufficientlysecure/rootcommands/Shell;->outputStream:Ljava/io/DataOutputStream;

    const-string v2, "echo Started\n"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write([B)V

    .line 144
    iget-object v1, p0, Lorg/sufficientlysecure/rootcommands/Shell;->outputStream:Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 147
    :cond_0
    iget-object v1, p0, Lorg/sufficientlysecure/rootcommands/Shell;->stdOutErr:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, line:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 149
    new-instance v1, Lorg/sufficientlysecure/rootcommands/util/RootAccessDeniedException;

    const-string v2, "stdout line is null! Access was denied or this executeable is not a shell!"

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/rootcommands/util/RootAccessDeniedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 151
    :cond_1
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 153
    const-string v1, "Started"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 160
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lorg/sufficientlysecure/rootcommands/Shell;->inputRunnable:Ljava/lang/Runnable;

    const-string v3, "Shell Input"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 161
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lorg/sufficientlysecure/rootcommands/Shell;->outputRunnable:Ljava/lang/Runnable;

    const-string v3, "Shell Output"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 162
    return-void

    .line 156
    :cond_2
    invoke-direct {p0}, Lorg/sufficientlysecure/rootcommands/Shell;->destroyShellProcess()V

    .line 157
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to start shell, unexpected output \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic access$000(Lorg/sufficientlysecure/rootcommands/Shell;)V
    .locals 0
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/sufficientlysecure/rootcommands/Shell;->writeCommands()V

    return-void
.end method

.method static synthetic access$100(Lorg/sufficientlysecure/rootcommands/Shell;)V
    .locals 0
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/sufficientlysecure/rootcommands/Shell;->readOutput()V

    return-void
.end method

.method private destroyShellProcess()V
    .locals 3

    .prologue
    .line 193
    :try_start_0
    iget-object v1, p0, Lorg/sufficientlysecure/rootcommands/Shell;->shellProcess:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->exitValue()I
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :goto_0
    const-string v1, "RootCommands"

    const-string v2, "Shell destroyed"

    invoke-static {v1, v2}, Lorg/sufficientlysecure/rootcommands/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    return-void

    .line 194
    :catch_0
    move-exception v0

    .line 200
    .local v0, e:Ljava/lang/IllegalThreadStateException;
    iget-object v1, p0, Lorg/sufficientlysecure/rootcommands/Shell;->shellProcess:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    goto :goto_0
.end method

.method private readOutput()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 250
    const/4 v0, 0x0

    .line 253
    .local v0, command:Lorg/sufficientlysecure/rootcommands/command/Command;
    const/4 v1, 0x0

    .line 255
    .local v1, commandIndex:I
    :cond_0
    :goto_0
    iget-object v6, p0, Lorg/sufficientlysecure/rootcommands/Shell;->stdOutErr:Ljava/io/BufferedReader;

    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 258
    .local v4, lineStdOut:Ljava/lang/String;
    if-nez v4, :cond_2

    .line 293
    :goto_1
    const-string v6, "RootCommands"

    const-string v7, "Read all output"

    invoke-static {v6, v7}, Lorg/sufficientlysecure/rootcommands/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    iget-object v6, p0, Lorg/sufficientlysecure/rootcommands/Shell;->shellProcess:Ljava/lang/Process;

    invoke-virtual {v6}, Ljava/lang/Process;->waitFor()I

    .line 295
    invoke-direct {p0}, Lorg/sufficientlysecure/rootcommands/Shell;->destroyShellProcess()V

    .line 297
    :goto_2
    iget-object v6, p0, Lorg/sufficientlysecure/rootcommands/Shell;->commands:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_7

    .line 298
    if-nez v0, :cond_1

    .line 299
    iget-object v6, p0, Lorg/sufficientlysecure/rootcommands/Shell;->commands:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #command:Lorg/sufficientlysecure/rootcommands/command/Command;
    check-cast v0, Lorg/sufficientlysecure/rootcommands/command/Command;

    .line 301
    .restart local v0       #command:Lorg/sufficientlysecure/rootcommands/command/Command;
    :cond_1
    const-string v6, "Unexpected Termination!"

    invoke-virtual {v0, v6}, Lorg/sufficientlysecure/rootcommands/command/Command;->terminated(Ljava/lang/String;)V

    .line 302
    add-int/lit8 v1, v1, 0x1

    .line 303
    const/4 v0, 0x0

    goto :goto_2

    .line 261
    :cond_2
    if-nez v0, :cond_4

    .line 264
    iget-object v6, p0, Lorg/sufficientlysecure/rootcommands/Shell;->commands:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lt v1, v6, :cond_3

    .line 265
    iget-boolean v6, p0, Lorg/sufficientlysecure/rootcommands/Shell;->close:Z

    if-eqz v6, :cond_0

    goto :goto_1

    .line 271
    :cond_3
    iget-object v6, p0, Lorg/sufficientlysecure/rootcommands/Shell;->commands:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #command:Lorg/sufficientlysecure/rootcommands/command/Command;
    check-cast v0, Lorg/sufficientlysecure/rootcommands/command/Command;

    .line 274
    .restart local v0       #command:Lorg/sufficientlysecure/rootcommands/command/Command;
    :cond_4
    const-string v6, "F*D^W@#FGF"

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 275
    .local v5, pos:I
    if-lez v5, :cond_5

    .line 276
    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/sufficientlysecure/rootcommands/command/Command;->processOutput(Ljava/lang/String;)V

    .line 278
    :cond_5
    if-ltz v5, :cond_6

    .line 279
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 280
    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 281
    .local v2, fields:[Ljava/lang/String;
    const/4 v6, 0x1

    aget-object v6, v2, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 282
    .local v3, id:I
    if-ne v3, v1, :cond_6

    .line 283
    const/4 v6, 0x2

    aget-object v6, v2, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Lorg/sufficientlysecure/rootcommands/command/Command;->setExitCode(I)V

    .line 286
    add-int/lit8 v1, v1, 0x1

    .line 287
    const/4 v0, 0x0

    .line 288
    goto :goto_0

    .line 291
    .end local v2           #fields:[Ljava/lang/String;
    .end local v3           #id:I
    :cond_6
    invoke-virtual {v0, v4}, Lorg/sufficientlysecure/rootcommands/command/Command;->processOutput(Ljava/lang/String;)V

    goto :goto_0

    .line 305
    .end local v5           #pos:I
    :cond_7
    return-void
.end method

.method public static startCustomShell(Ljava/lang/String;)Lorg/sufficientlysecure/rootcommands/Shell;
    .locals 1
    .parameter "shellPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 127
    invoke-static {p0, v0, v0}, Lorg/sufficientlysecure/rootcommands/Shell;->startCustomShell(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Lorg/sufficientlysecure/rootcommands/Shell;

    move-result-object v0

    return-object v0
.end method

.method public static startCustomShell(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Lorg/sufficientlysecure/rootcommands/Shell;
    .locals 3
    .parameter "shellPath"
    .parameter
    .parameter "baseDirectory"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/sufficientlysecure/rootcommands/Shell;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    .local p1, customEnv:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "RootCommands"

    const-string v2, "Starting Custom Shell!"

    invoke-static {v1, v2}, Lorg/sufficientlysecure/rootcommands/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    new-instance v0, Lorg/sufficientlysecure/rootcommands/Shell;

    invoke-direct {v0, p0, p1, p2}, Lorg/sufficientlysecure/rootcommands/Shell;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 116
    .local v0, shell:Lorg/sufficientlysecure/rootcommands/Shell;
    return-object v0
.end method

.method public static startRootShell()Lorg/sufficientlysecure/rootcommands/Shell;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/sufficientlysecure/rootcommands/util/RootAccessDeniedException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-static {v0, v0}, Lorg/sufficientlysecure/rootcommands/Shell;->startRootShell(Ljava/util/ArrayList;Ljava/lang/String;)Lorg/sufficientlysecure/rootcommands/Shell;

    move-result-object v0

    return-object v0
.end method

.method public static startRootShell(Ljava/util/ArrayList;Ljava/lang/String;)Lorg/sufficientlysecure/rootcommands/Shell;
    .locals 3
    .parameter
    .parameter "baseDirectory"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/sufficientlysecure/rootcommands/Shell;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/sufficientlysecure/rootcommands/util/RootAccessDeniedException;
        }
    .end annotation

    .prologue
    .line 53
    .local p0, customEnv:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "RootCommands"

    const-string v2, "Starting Root Shell!"

    invoke-static {v1, v2}, Lorg/sufficientlysecure/rootcommands/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    if-nez p0, :cond_0

    .line 58
    new-instance p0, Ljava/util/ArrayList;

    .end local p0           #customEnv:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .restart local p0       #customEnv:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LD_LIBRARY_PATH="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/sufficientlysecure/rootcommands/Shell;->LD_LIBRARY_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    new-instance v0, Lorg/sufficientlysecure/rootcommands/Shell;

    invoke-static {}, Lorg/sufficientlysecure/rootcommands/util/Utils;->getSuPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Lorg/sufficientlysecure/rootcommands/Shell;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 64
    .local v0, shell:Lorg/sufficientlysecure/rootcommands/Shell;
    return-object v0
.end method

.method public static startShell()Lorg/sufficientlysecure/rootcommands/Shell;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 99
    invoke-static {v0, v0}, Lorg/sufficientlysecure/rootcommands/Shell;->startShell(Ljava/util/ArrayList;Ljava/lang/String;)Lorg/sufficientlysecure/rootcommands/Shell;

    move-result-object v0

    return-object v0
.end method

.method public static startShell(Ljava/util/ArrayList;Ljava/lang/String;)Lorg/sufficientlysecure/rootcommands/Shell;
    .locals 3
    .parameter
    .parameter "baseDirectory"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/sufficientlysecure/rootcommands/Shell;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    .local p0, customEnv:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "RootCommands"

    const-string v2, "Starting Shell!"

    invoke-static {v1, v2}, Lorg/sufficientlysecure/rootcommands/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    new-instance v0, Lorg/sufficientlysecure/rootcommands/Shell;

    const-string v1, "sh"

    invoke-direct {v0, v1, p0, p1}, Lorg/sufficientlysecure/rootcommands/Shell;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 89
    .local v0, shell:Lorg/sufficientlysecure/rootcommands/Shell;
    return-object v0
.end method

.method private writeCommands()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 214
    const/4 v0, 0x0

    .line 217
    .local v0, commandIndex:I
    :cond_0
    :goto_0
    :try_start_0
    iget-object v6, p0, Lorg/sufficientlysecure/rootcommands/Shell;->commands:Ljava/util/List;

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :goto_1
    :try_start_1
    iget-boolean v5, p0, Lorg/sufficientlysecure/rootcommands/Shell;->close:Z

    if-nez v5, :cond_1

    iget-object v5, p0, Lorg/sufficientlysecure/rootcommands/Shell;->commands:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lt v0, v5, :cond_1

    .line 219
    iget-object v5, p0, Lorg/sufficientlysecure/rootcommands/Shell;->commands:Ljava/util/List;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 222
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v5
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 238
    :catch_0
    move-exception v1

    .line 239
    .local v1, e:Ljava/lang/InterruptedException;
    const-string v5, "RootCommands"

    const-string v6, "interrupted while writing command"

    invoke-static {v5, v6, v1}, Lorg/sufficientlysecure/rootcommands/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 241
    .end local v1           #e:Ljava/lang/InterruptedException;
    :goto_2
    return-void

    .line 221
    :cond_1
    :try_start_3
    iget-object v4, p0, Lorg/sufficientlysecure/rootcommands/Shell;->outputStream:Ljava/io/DataOutputStream;

    .line 222
    .local v4, out:Ljava/io/DataOutputStream;
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 223
    :try_start_4
    iget-object v5, p0, Lorg/sufficientlysecure/rootcommands/Shell;->commands:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 224
    iget-object v5, p0, Lorg/sufficientlysecure/rootcommands/Shell;->commands:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/sufficientlysecure/rootcommands/command/Command;

    .line 225
    .local v3, next:Lorg/sufficientlysecure/rootcommands/command/Command;
    invoke-virtual {v3, v4}, Lorg/sufficientlysecure/rootcommands/command/Command;->writeCommand(Ljava/io/OutputStream;)V

    .line 226
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\necho F*D^W@#FGF "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " $?\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 227
    .local v2, line:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->write([B)V

    .line 228
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    .line 229
    add-int/lit8 v0, v0, 0x1

    .line 230
    goto :goto_0

    .end local v2           #line:Ljava/lang/String;
    .end local v3           #next:Lorg/sufficientlysecure/rootcommands/command/Command;
    :cond_2
    iget-boolean v5, p0, Lorg/sufficientlysecure/rootcommands/Shell;->close:Z

    if-eqz v5, :cond_0

    .line 231
    const-string v5, "\nexit 0\n"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->write([B)V

    .line 232
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    .line 233
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    .line 234
    const-string v5, "RootCommands"

    const-string v6, "Closing shell"

    invoke-static {v5, v6}, Lorg/sufficientlysecure/rootcommands/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2
.end method


# virtual methods
.method public add(Lorg/sufficientlysecure/rootcommands/command/Command;)Lorg/sufficientlysecure/rootcommands/command/Command;
    .locals 2
    .parameter "command"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 315
    iget-boolean v0, p0, Lorg/sufficientlysecure/rootcommands/Shell;->close:Z

    if-eqz v0, :cond_0

    .line 316
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unable to add commands to a closed shell"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    :cond_0
    iget-object v1, p0, Lorg/sufficientlysecure/rootcommands/Shell;->commands:Ljava/util/List;

    monitor-enter v1

    .line 318
    :try_start_0
    iget-object v0, p0, Lorg/sufficientlysecure/rootcommands/Shell;->commands:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    iget-object v0, p0, Lorg/sufficientlysecure/rootcommands/Shell;->commands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, p0, v0}, Lorg/sufficientlysecure/rootcommands/command/Command;->addedToShell(Lorg/sufficientlysecure/rootcommands/Shell;I)V

    .line 321
    iget-object v0, p0, Lorg/sufficientlysecure/rootcommands/Shell;->commands:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 322
    monitor-exit v1

    .line 324
    return-object p1

    .line 322
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 333
    iget-object v1, p0, Lorg/sufficientlysecure/rootcommands/Shell;->commands:Ljava/util/List;

    monitor-enter v1

    .line 334
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/sufficientlysecure/rootcommands/Shell;->close:Z

    .line 335
    iget-object v0, p0, Lorg/sufficientlysecure/rootcommands/Shell;->commands:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 336
    monitor-exit v1

    .line 337
    return-void

    .line 336
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCommandsSize()I
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lorg/sufficientlysecure/rootcommands/Shell;->commands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
