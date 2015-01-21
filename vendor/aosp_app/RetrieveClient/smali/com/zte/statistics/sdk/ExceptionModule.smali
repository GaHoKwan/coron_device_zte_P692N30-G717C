.class public Lcom/zte/statistics/sdk/ExceptionModule;
.super Ljava/lang/Object;
.source "ExceptionModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/statistics/sdk/ExceptionModule$CrashHandler;
    }
.end annotation


# static fields
.field private static INSTANCE:Lcom/zte/statistics/sdk/ExceptionModule;

.field private static final mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/zte/statistics/sdk/ExceptionModule;

    invoke-direct {v0}, Lcom/zte/statistics/sdk/ExceptionModule;-><init>()V

    sput-object v0, Lcom/zte/statistics/sdk/ExceptionModule;->INSTANCE:Lcom/zte/statistics/sdk/ExceptionModule;

    .line 17
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    sput-object v0, Lcom/zte/statistics/sdk/ExceptionModule;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 15
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method static synthetic access$0()Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/zte/statistics/sdk/ExceptionModule;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method

.method public static getInstance()Lcom/zte/statistics/sdk/ExceptionModule;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/zte/statistics/sdk/ExceptionModule;->INSTANCE:Lcom/zte/statistics/sdk/ExceptionModule;

    return-object v0
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 6
    .parameter "ex"

    .prologue
    const/4 v5, 0x0

    .line 35
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    aget-object v1, v2, v5

    .line 36
    .local v1, ste:Ljava/lang/StackTraceElement;
    const-string v2, "[%s]:%s[%s](%s)"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

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

    .line 37
    .local v0, info:Ljava/lang/String;
    invoke-static {}, Lcom/zte/statistics/sdk/offline/PayloadManager;->getInstance()Lcom/zte/statistics/sdk/offline/PayloadManager;

    move-result-object v2

    new-instance v3, Lcom/zte/statistics/sdk/offline/ExceptionPayload;

    const-string v4, "0"

    invoke-direct {v3, v4, v0}, Lcom/zte/statistics/sdk/offline/ExceptionPayload;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/zte/statistics/sdk/offline/PayloadManager;->putPayload(Lcom/zte/statistics/sdk/offline/Payload;)V

    .line 38
    return-void
.end method

.method public setReportUncaughtExceptions(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 27
    if-eqz p1, :cond_0

    .line 28
    new-instance v0, Lcom/zte/statistics/sdk/ExceptionModule$CrashHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zte/statistics/sdk/ExceptionModule$CrashHandler;-><init>(Lcom/zte/statistics/sdk/ExceptionModule;Lcom/zte/statistics/sdk/ExceptionModule$CrashHandler;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 32
    :goto_0
    return-void

    .line 30
    :cond_0
    sget-object v0, Lcom/zte/statistics/sdk/ExceptionModule;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    goto :goto_0
.end method
