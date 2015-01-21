.class public Lcom/zte/util/AndroidLogger;
.super Ljava/lang/Object;
.source "AndroidLogger.java"

# interfaces
.implements Lcom/zte/util/Logger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/util/AndroidLogger$1;,
        Lcom/zte/util/AndroidLogger$FileLogger;
    }
.end annotation


# static fields
.field private static final APP_TAG:Ljava/lang/String; = "AliveUpdateLog"

.field public static FILE_LIMIT_LENGTH:I = 0x0

.field private static final LOG_FILENAME:Ljava/lang/String; = "aliveupdate.log"


# instance fields
.field private _fileLog:Lcom/zte/util/AndroidLogger$FileLogger;

.field osw:Ljava/io/OutputStreamWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/high16 v0, 0x30

    sput v0, Lcom/zte/util/AndroidLogger;->FILE_LIMIT_LENGTH:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    return-void
.end method

.method private logMsg(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .parameter "tag"
    .parameter "priority"
    .parameter "message"

    .prologue
    .line 107
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, threadId:Ljava/lang/String;
    new-instance v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 111
    .local v0, logTag:Ljava/lang/String;
    iget-object v2, p0, Lcom/zte/util/AndroidLogger;->_fileLog:Lcom/zte/util/AndroidLogger$FileLogger;

    if-eqz v2, :cond_0

    .line 112
    iget-object v2, p0, Lcom/zte/util/AndroidLogger;->_fileLog:Lcom/zte/util/AndroidLogger$FileLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zte/util/AndroidLogger$FileLogger;->logMsg(Ljava/lang/String;)V

    .line 115
    :cond_0
    invoke-static {p2, v0, p3}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 117
    return-void
.end method


# virtual methods
.method public initLogger()V
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/zte/util/AndroidLogger;->_fileLog:Lcom/zte/util/AndroidLogger$FileLogger;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/zte/util/AndroidLogger$FileLogger;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zte/util/AndroidLogger$FileLogger;-><init>(Lcom/zte/util/AndroidLogger;Lcom/zte/util/AndroidLogger$1;)V

    iput-object v0, p0, Lcom/zte/util/AndroidLogger;->_fileLog:Lcom/zte/util/AndroidLogger$FileLogger;

    .line 35
    iget-object v0, p0, Lcom/zte/util/AndroidLogger;->_fileLog:Lcom/zte/util/AndroidLogger$FileLogger;

    invoke-static {}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->getDefault()Lcom/zte/aliveupdate/main/AliveUpdateApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/util/AndroidLogger$FileLogger;->init(Landroid/content/Context;)Z

    .line 37
    :cond_0
    return-void
.end method

.method public logMsg(ILjava/lang/String;)V
    .locals 2
    .parameter "priority"
    .parameter "message"

    .prologue
    .line 73
    packed-switch p1, :pswitch_data_0

    .line 87
    const/4 v0, 0x2

    .line 91
    .local v0, level:I
    :goto_0
    const-string v1, "AliveUpdateLog"

    invoke-direct {p0, v1, v0, p2}, Lcom/zte/util/AndroidLogger;->logMsg(Ljava/lang/String;ILjava/lang/String;)V

    .line 92
    return-void

    .line 75
    .end local v0           #level:I
    :pswitch_0
    const/4 v0, 0x6

    .line 76
    .restart local v0       #level:I
    goto :goto_0

    .line 78
    .end local v0           #level:I
    :pswitch_1
    const/4 v0, 0x5

    .line 79
    .restart local v0       #level:I
    goto :goto_0

    .line 81
    .end local v0           #level:I
    :pswitch_2
    const/4 v0, 0x4

    .line 82
    .restart local v0       #level:I
    goto :goto_0

    .line 84
    .end local v0           #level:I
    :pswitch_3
    const/4 v0, 0x3

    .line 85
    .restart local v0       #level:I
    goto :goto_0

    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setLogLevel(I)V
    .locals 0
    .parameter "level"

    .prologue
    .line 60
    return-void
.end method

.method public termLogger()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/zte/util/AndroidLogger;->_fileLog:Lcom/zte/util/AndroidLogger$FileLogger;

    invoke-virtual {v0}, Lcom/zte/util/AndroidLogger$FileLogger;->term()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/util/AndroidLogger;->_fileLog:Lcom/zte/util/AndroidLogger$FileLogger;

    .line 48
    return-void
.end method
