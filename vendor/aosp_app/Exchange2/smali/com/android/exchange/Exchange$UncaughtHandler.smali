.class Lcom/android/exchange/Exchange$UncaughtHandler;
.super Ljava/lang/Object;
.source "Exchange.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/Exchange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UncaughtHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exchange/Exchange;


# direct methods
.method private constructor <init>(Lcom/android/exchange/Exchange;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/exchange/Exchange$UncaughtHandler;->this$0:Lcom/android/exchange/Exchange;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/exchange/Exchange;Lcom/android/exchange/Exchange$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/exchange/Exchange$UncaughtHandler;-><init>(Lcom/android/exchange/Exchange;)V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "thread"
    .parameter "ex"

    .prologue
    .line 80
    const-string v0, "UncaughtException"

    const-string v1, "uncaughtException :"

    invoke-static {v0, v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    instance-of v0, p2, Lcom/android/emailcommon/provider/ProviderUnavailableException;

    if-eqz v0, :cond_0

    .line 82
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 83
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 87
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/android/exchange/Exchange$UncaughtHandler;->this$0:Lcom/android/exchange/Exchange;

    #getter for: Lcom/android/exchange/Exchange;->mDefaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;
    invoke-static {v0}, Lcom/android/exchange/Exchange;->access$100(Lcom/android/exchange/Exchange;)Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
