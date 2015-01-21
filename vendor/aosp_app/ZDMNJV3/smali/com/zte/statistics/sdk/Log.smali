.class public Lcom/zte/statistics/sdk/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field public static final ASSERT:I = 0x7

.field public static final DEBUG:I = 0x3

.field public static final ERROR:I = 0x6

.field public static final INFO:I = 0x4

.field private static final TAG:Ljava/lang/String; = "ZTE_Statistics"

.field public static final VERBOSE:I = 0x2

.field public static final WARN:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 1
    .parameter "message"
    .parameter "throwable"
    .parameter "args"

    .prologue
    .line 84
    const/4 v0, 0x7

    invoke-static {v0, p1, p0, p2}, Lcom/zte/statistics/sdk/Log;->doLog(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    return-void
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .parameter "message"
    .parameter "args"

    .prologue
    .line 81
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1}, Lcom/zte/statistics/sdk/Log;->doLog(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    return-void
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 1
    .parameter "message"
    .parameter "throwable"
    .parameter "args"

    .prologue
    .line 56
    const/4 v0, 0x3

    invoke-static {v0, p1, p0, p2}, Lcom/zte/statistics/sdk/Log;->doLog(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    return-void
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .parameter "message"
    .parameter "args"

    .prologue
    .line 53
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1}, Lcom/zte/statistics/sdk/Log;->doLog(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    return-void
.end method

.method private static varargs doLog(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .parameter "level"
    .parameter "throwable"
    .parameter "message"
    .parameter "args"

    .prologue
    .line 25
    sget-boolean v2, Lcom/zte/statistics/sdk/GlobalInfo;->isAppDebuggable:Z

    if-nez v2, :cond_3

    const/4 v2, 0x3

    if-gt p0, v2, :cond_3

    const/4 v1, 0x0

    .line 26
    .local v1, loggable:Z
    :goto_0
    if-eqz v1, :cond_2

    if-eqz p2, :cond_2

    .line 27
    array-length v2, p3

    if-lez v2, :cond_0

    .line 29
    :try_start_0
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/IllegalFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 35
    :cond_0
    :goto_1
    const-string v2, "ZTE_Statistics"

    invoke-static {p0, v2, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 36
    if-eqz p1, :cond_2

    .line 37
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 38
    const-string v2, "ZTE_Statistics"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 40
    :cond_1
    const-string v2, "ZTE_Statistics"

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_2
    return-void

    .line 25
    .end local v1           #loggable:Z
    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    .line 30
    .restart local v1       #loggable:Z
    :catch_0
    move-exception v0

    .line 31
    .local v0, e:Ljava/util/IllegalFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error formatting log message [level="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 32
    const/4 p0, 0x6

    goto :goto_1
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 1
    .parameter "message"
    .parameter "throwable"
    .parameter "args"

    .prologue
    .line 77
    const/4 v0, 0x6

    invoke-static {v0, p1, p0, p2}, Lcom/zte/statistics/sdk/Log;->doLog(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    return-void
.end method

.method public static varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .parameter "message"
    .parameter "args"

    .prologue
    .line 74
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1}, Lcom/zte/statistics/sdk/Log;->doLog(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    return-void
.end method

.method public static varargs i(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 1
    .parameter "message"
    .parameter "throwable"
    .parameter "args"

    .prologue
    .line 63
    const/4 v0, 0x4

    invoke-static {v0, p1, p0, p2}, Lcom/zte/statistics/sdk/Log;->doLog(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    return-void
.end method

.method public static varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .parameter "message"
    .parameter "args"

    .prologue
    .line 60
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1}, Lcom/zte/statistics/sdk/Log;->doLog(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    return-void
.end method

.method public static varargs v(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 1
    .parameter "message"
    .parameter "throwable"
    .parameter "args"

    .prologue
    .line 49
    const/4 v0, 0x2

    invoke-static {v0, p1, p0, p2}, Lcom/zte/statistics/sdk/Log;->doLog(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    return-void
.end method

.method public static varargs v(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .parameter "message"
    .parameter "args"

    .prologue
    .line 46
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1}, Lcom/zte/statistics/sdk/Log;->doLog(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    return-void
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 1
    .parameter "message"
    .parameter "throwable"
    .parameter "args"

    .prologue
    .line 70
    const/4 v0, 0x5

    invoke-static {v0, p1, p0, p2}, Lcom/zte/statistics/sdk/Log;->doLog(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    return-void
.end method

.method public static varargs w(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .parameter "message"
    .parameter "args"

    .prologue
    .line 67
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1}, Lcom/zte/statistics/sdk/Log;->doLog(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    return-void
.end method
