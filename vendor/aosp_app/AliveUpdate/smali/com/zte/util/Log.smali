.class public Lcom/zte/util/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field private static instance:Lcom/zte/util/Log;

.field private static level:I

.field private static out:Lcom/zte/util/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x3

    sput v0, Lcom/zte/util/Log;->level:I

    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/util/Log;->instance:Lcom/zte/util/Log;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static debug(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 4
    .parameter "obj"
    .parameter "msg"

    .prologue
    .line 251
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 252
    .local v0, message:Ljava/lang/StringBuffer;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {}, Lcom/zte/util/Log;->getTraceInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 253
    const/4 v1, 0x3

    const-string v2, "DEBUG"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/zte/util/Log;->writeLogMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 254
    return-void
.end method

.method public static debug(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 225
    const/4 v0, 0x3

    const-string v1, "DEBUG"

    invoke-static {v0, v1, p0}, Lcom/zte/util/Log;->writeLogMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 226
    return-void
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 237
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 238
    .local v0, message:Ljava/lang/StringBuffer;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 239
    const/4 v1, 0x3

    const-string v2, "DEBUG"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/zte/util/Log;->writeLogMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 240
    return-void
.end method

.method public static error(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 4
    .parameter "obj"
    .parameter "msg"

    .prologue
    .line 118
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 119
    .local v0, message:Ljava/lang/StringBuffer;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {}, Lcom/zte/util/Log;->getTraceInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 120
    const/4 v1, 0x0

    const-string v2, "ERROR"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/zte/util/Log;->writeLogMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public static error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .parameter "obj"
    .parameter "msg"
    .parameter "e"

    .prologue
    const/4 v3, 0x0

    .line 156
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 157
    .local v0, message:Ljava/lang/StringBuffer;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {}, Lcom/zte/util/Log;->getTraceInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 158
    const-string v1, "ERROR"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v1, v2}, Lcom/zte/util/Log;->writeLogMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v1, "ERROR"

    invoke-static {p2}, Lcom/zte/util/StackTracePrinter;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v1, v2}, Lcom/zte/util/Log;->writeLogMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method public static error(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 106
    const/4 v0, 0x0

    const-string v1, "ERROR"

    invoke-static {v0, v1, p0}, Lcom/zte/util/Log;->writeLogMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 132
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 133
    .local v0, message:Ljava/lang/StringBuffer;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    const/4 v1, 0x0

    const-string v2, "ERROR"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/zte/util/Log;->writeLogMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .parameter "tag"
    .parameter "msg"
    .parameter "e"

    .prologue
    const/4 v3, 0x0

    .line 173
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 174
    .local v0, message:Ljava/lang/StringBuffer;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 175
    const-string v1, "ERROR"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v1, v2}, Lcom/zte/util/Log;->writeLogMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v1, "ERROR"

    invoke-static {p2}, Lcom/zte/util/StackTracePrinter;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v1, v2}, Lcom/zte/util/Log;->writeLogMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method public static getInstance()Lcom/zte/util/Log;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/zte/util/Log;->instance:Lcom/zte/util/Log;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/zte/util/Log;

    invoke-direct {v0}, Lcom/zte/util/Log;-><init>()V

    sput-object v0, Lcom/zte/util/Log;->instance:Lcom/zte/util/Log;

    .line 39
    :cond_0
    sget-object v0, Lcom/zte/util/Log;->instance:Lcom/zte/util/Log;

    return-object v0
.end method

.method public static getLogLevel()I
    .locals 1

    .prologue
    .line 96
    sget v0, Lcom/zte/util/Log;->level:I

    return v0
.end method

.method public static getLogger()Lcom/zte/util/Logger;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/zte/util/Log;->out:Lcom/zte/util/Logger;

    return-object v0
.end method

.method private static getTraceInfo()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 138
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 139
    .local v0, methodLineMsg:Ljava/lang/StringBuffer;
    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 140
    .local v1, stacks:[Ljava/lang/StackTraceElement;
    array-length v2, v1

    .line 141
    .local v2, stacksLen:I
    const-string v3, " : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    aget-object v4, v1, v5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    aget-object v4, v1, v5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 142
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static info(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 4
    .parameter "obj"
    .parameter "msg"

    .prologue
    .line 198
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 199
    .local v0, message:Ljava/lang/StringBuffer;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {}, Lcom/zte/util/Log;->getTraceInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 201
    const/4 v1, 0x2

    const-string v2, "INFO "

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/zte/util/Log;->writeLogMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 202
    return-void
.end method

.method public static info(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 186
    const/4 v0, 0x2

    const-string v1, "INFO "

    invoke-static {v0, v1, p0}, Lcom/zte/util/Log;->writeLogMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 187
    return-void
.end method

.method public static info(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 213
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 214
    .local v0, message:Ljava/lang/StringBuffer;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 215
    const/4 v1, 0x2

    const-string v2, "INFO "

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/zte/util/Log;->writeLogMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method public static initLog(Lcom/zte/util/Logger;)V
    .locals 1
    .parameter "object"

    .prologue
    .line 66
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/zte/util/Log;->initLog(Lcom/zte/util/Logger;I)V

    .line 67
    return-void
.end method

.method public static initLog(Lcom/zte/util/Logger;I)V
    .locals 1
    .parameter "object"
    .parameter "level"

    .prologue
    .line 54
    sput-object p0, Lcom/zte/util/Log;->out:Lcom/zte/util/Logger;

    .line 55
    sget-object v0, Lcom/zte/util/Log;->out:Lcom/zte/util/Logger;

    invoke-interface {v0}, Lcom/zte/util/Logger;->initLogger()V

    .line 56
    sput p1, Lcom/zte/util/Log;->level:I

    .line 57
    return-void
.end method

.method public static isLoggable(I)Z
    .locals 1
    .parameter "msgLevel"

    .prologue
    .line 263
    sget v0, Lcom/zte/util/Log;->level:I

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setLogLevel(I)V
    .locals 2
    .parameter "newlevel"

    .prologue
    .line 84
    sput p0, Lcom/zte/util/Log;->level:I

    .line 85
    sget-object v0, Lcom/zte/util/Log;->out:Lcom/zte/util/Logger;

    if-eqz v0, :cond_0

    .line 86
    sget-object v0, Lcom/zte/util/Log;->out:Lcom/zte/util/Logger;

    sget v1, Lcom/zte/util/Log;->level:I

    invoke-interface {v0, v1}, Lcom/zte/util/Logger;->setLogLevel(I)V

    .line 88
    :cond_0
    return-void
.end method

.method private static writeLogMessage(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "msgLevel"
    .parameter "levelMsg"
    .parameter "msg"

    .prologue
    .line 267
    sget v3, Lcom/zte/util/Log;->level:I

    if-lt v3, p0, :cond_0

    .line 269
    :try_start_0
    sget-object v3, Lcom/zte/util/Log;->out:Lcom/zte/util/Logger;

    if-eqz v3, :cond_1

    .line 270
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 271
    .local v1, message:Ljava/lang/StringBuffer;
    const-string v3, "["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 272
    sget-object v3, Lcom/zte/util/Log;->out:Lcom/zte/util/Logger;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, p0, v4}, Lcom/zte/util/Logger;->logMsg(ILjava/lang/String;)V

    .line 284
    .end local v1           #message:Ljava/lang/StringBuffer;
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 275
    .local v2, now:Ljava/util/Date;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 276
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 277
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 280
    .end local v2           #now:Ljava/util/Date;
    :catch_0
    move-exception v0

    .line 281
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
