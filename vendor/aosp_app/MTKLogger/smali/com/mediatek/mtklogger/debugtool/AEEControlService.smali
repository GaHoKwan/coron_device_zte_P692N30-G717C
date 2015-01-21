.class public Lcom/mediatek/mtklogger/debugtool/AEEControlService;
.super Landroid/app/Service;
.source "AEEControlService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/mtklogger/debugtool/AEEControlService$LocalBinder;
    }
.end annotation


# static fields
.field protected static final COMMAND_CLEAN_DATA:Ljava/lang/String; = "rm -r /data/core/ /data/anr"

.field protected static final COMMAND_CLEAR_DAL:Ljava/lang/String; = "aee -c dal"

.field private static final TAG:Ljava/lang/String; = "MTKLogger/Debugutils"


# instance fields
.field protected commandMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mBinder:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 63
    new-instance v0, Lcom/mediatek/mtklogger/debugtool/AEEControlService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/mediatek/mtklogger/debugtool/AEEControlService$LocalBinder;-><init>(Lcom/mediatek/mtklogger/debugtool/AEEControlService;)V

    iput-object v0, p0, Lcom/mediatek/mtklogger/debugtool/AEEControlService;->mBinder:Landroid/os/IBinder;

    .line 69
    return-void
.end method

.method private static varargs buildCommandList([Ljava/lang/String;)Ljava/util/Map;
    .locals 8
    .parameter "cmdentries"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 153
    .local v2, commandMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v1, v0, v3

    .line 154
    .local v1, cmdentry:Ljava/lang/String;
    const-string v6, "#"

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 155
    .local v4, kv:[Ljava/lang/String;
    const/4 v6, 0x0

    aget-object v6, v4, v6

    const/4 v7, 0x1

    aget-object v7, v4, v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 157
    .end local v1           #cmdentry:Ljava/lang/String;
    .end local v4           #kv:[Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method private static systemexec(Ljava/lang/String;)Ljava/lang/StringBuffer;
    .locals 7
    .parameter "command"

    .prologue
    .line 132
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 134
    .local v2, output:Ljava/lang/StringBuffer;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    .line 135
    .local v3, process:Ljava/lang/Process;
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 137
    .local v4, reader:Ljava/io/BufferedReader;
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 138
    .local v1, line:Ljava/lang/String;
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 139
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 144
    .end local v1           #line:Ljava/lang/String;
    .end local v3           #process:Ljava/lang/Process;
    .end local v4           #reader:Ljava/io/BufferedReader;
    :catch_0
    move-exception v0

    .line 145
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 146
    const-string v5, "MTKLogger/Debugutils"

    const-string v6, "Operation failed."

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .end local v0           #e:Ljava/lang/Exception;
    :goto_1
    return-object v2

    .line 141
    .restart local v1       #line:Ljava/lang/String;
    .restart local v3       #process:Ljava/lang/Process;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    :cond_0
    :try_start_1
    const-string v5, "MTKLogger/Debugutils"

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I

    .line 143
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public changeAEEMode(Ljava/lang/String;)V
    .locals 2
    .parameter "modevalue"

    .prologue
    .line 104
    iget-object v1, p0, Lcom/mediatek/mtklogger/debugtool/AEEControlService;->commandMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 105
    .local v0, command:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 106
    invoke-static {v0}, Lcom/mediatek/mtklogger/debugtool/AEEControlService;->systemexec(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 107
    :cond_0
    return-void
.end method

.method public cleanData()V
    .locals 3

    .prologue
    .line 124
    iget-object v1, p0, Lcom/mediatek/mtklogger/debugtool/AEEControlService;->commandMap:Ljava/util/Map;

    const-string v2, "AEECleanData"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 125
    .local v0, command:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 126
    invoke-static {v0}, Lcom/mediatek/mtklogger/debugtool/AEEControlService;->systemexec(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    :cond_0
    const-string v1, "MTKLogger/Debugutils"

    const-string v2, "Device /data partition cleaned up."

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const-string v1, "Device /data partition cleaned up."

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 129
    return-void
.end method

.method public clearDAL()V
    .locals 3

    .prologue
    .line 116
    iget-object v1, p0, Lcom/mediatek/mtklogger/debugtool/AEEControlService;->commandMap:Ljava/util/Map;

    const-string v2, "AEEClearDAL"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 117
    .local v0, command:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 118
    invoke-static {v0}, Lcom/mediatek/mtklogger/debugtool/AEEControlService;->systemexec(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 119
    :cond_0
    const-string v1, "MTKLogger/Debugutils"

    const-string v2, "Device AEE red screen cleared."

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return-void
.end method

.method public dalSetting(Ljava/lang/String;)V
    .locals 2
    .parameter "dal_option"

    .prologue
    .line 110
    iget-object v1, p0, Lcom/mediatek/mtklogger/debugtool/AEEControlService;->commandMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 111
    .local v0, command:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 112
    invoke-static {v0}, Lcom/mediatek/mtklogger/debugtool/AEEControlService;->systemexec(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 113
    :cond_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/mediatek/mtklogger/debugtool/AEEControlService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 77
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "AEECleanData#rm -r /data/core /data/anr /data/tombstones"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "AEEClearDAL#aee -c dal"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "MediatekEngineer#aee -m 1"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "MediatekUser#aee -m 2"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "CustomerEngineer#aee -m 3"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "CustomerUser#aee -m 4"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "EnableDAL#aee -s on"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "DisableDAL#aee -s off"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/mediatek/mtklogger/debugtool/AEEControlService;->buildCommandList([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/mtklogger/debugtool/AEEControlService;->commandMap:Ljava/util/Map;

    .line 81
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 85
    const-string v0, "AEEControlService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received start id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const/4 v0, 0x1

    return v0
.end method
