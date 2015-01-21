.class Lcom/zte/statistics/sdk/ExceptionModule$CrashHandler;
.super Ljava/lang/Object;
.source "ExceptionModule.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/statistics/sdk/ExceptionModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CrashHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/statistics/sdk/ExceptionModule;


# direct methods
.method private constructor <init>(Lcom/zte/statistics/sdk/ExceptionModule;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/zte/statistics/sdk/ExceptionModule$CrashHandler;->this$0:Lcom/zte/statistics/sdk/ExceptionModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/statistics/sdk/ExceptionModule;Lcom/zte/statistics/sdk/ExceptionModule$CrashHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/zte/statistics/sdk/ExceptionModule$CrashHandler;-><init>(Lcom/zte/statistics/sdk/ExceptionModule;)V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 6
    .parameter "thread"
    .parameter "ex"

    .prologue
    const/4 v5, 0x0

    .line 43
    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    aget-object v1, v2, v5

    .line 44
    .local v1, ste:Ljava/lang/StackTraceElement;
    const-string v2, "[%s]:%s[%s](%s)"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x1

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, info:Ljava/lang/String;
    invoke-static {}, Lcom/zte/statistics/sdk/offline/PayloadManager;->getInstance()Lcom/zte/statistics/sdk/offline/PayloadManager;

    move-result-object v2

    new-instance v3, Lcom/zte/statistics/sdk/offline/ExceptionPayload;

    const-string v4, "1"

    invoke-direct {v3, v4, v0}, Lcom/zte/statistics/sdk/offline/ExceptionPayload;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/zte/statistics/sdk/offline/PayloadManager;->putPayload(Lcom/zte/statistics/sdk/offline/Payload;)V

    .line 46
    invoke-static {}, Lcom/zte/statistics/sdk/ExceptionModule;->access$0()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 47
    return-void
.end method
