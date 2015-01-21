.class public Lcom/mediatek/mtklogger/exceptionreporter/ExceptionReportManager;
.super Ljava/lang/Object;
.source "ExceptionReportManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MTKLogger/MockExceptionReporterManager"

.field private static instance:Lcom/mediatek/mtklogger/exceptionreporter/ExceptionReportManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/mtklogger/exceptionreporter/ExceptionReportManager;->instance:Lcom/mediatek/mtklogger/exceptionreporter/ExceptionReportManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "MTKLogger/MockExceptionReporterManager"

    const-string v1, "<init>, empty implementation"

    invoke-static {v0, v1}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/mediatek/mtklogger/exceptionreporter/ExceptionReportManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 22
    sget-object v0, Lcom/mediatek/mtklogger/exceptionreporter/ExceptionReportManager;->instance:Lcom/mediatek/mtklogger/exceptionreporter/ExceptionReportManager;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/mediatek/mtklogger/exceptionreporter/ExceptionReportManager;

    invoke-direct {v0, p0}, Lcom/mediatek/mtklogger/exceptionreporter/ExceptionReportManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mediatek/mtklogger/exceptionreporter/ExceptionReportManager;->instance:Lcom/mediatek/mtklogger/exceptionreporter/ExceptionReportManager;

    .line 25
    :cond_0
    sget-object v0, Lcom/mediatek/mtklogger/exceptionreporter/ExceptionReportManager;->instance:Lcom/mediatek/mtklogger/exceptionreporter/ExceptionReportManager;

    return-object v0
.end method

.method public static runExceptionHistory(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 33
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public beginException(Landroid/content/Intent;)Z
    .locals 2
    .parameter "intent"

    .prologue
    .line 29
    const-string v0, "MTKLogger/MockExceptionReporterManager"

    const-string v1, "-->beginException(), this should not happened at any time. Attentions!"

    invoke-static {v0, v1}, Lcom/mediatek/mtklogger/utils/Utils;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const/4 v0, 0x0

    return v0
.end method
