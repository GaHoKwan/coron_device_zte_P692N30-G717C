.class public Lcom/tencent/feedback/eup/jni/NativeExceptionUpload;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ANDROID_LOG_DEBUG:I = 0x3

.field public static final ANDROID_LOG_ERROR:I = 0x6

.field public static final ANDROID_LOG_INFO:I = 0x4

.field public static final ANDROID_LOG_WARN:I = 0x5

.field private static a:Z

.field private static b:Lcom/tencent/feedback/eup/jni/NativeExceptionHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    sput-boolean v1, Lcom/tencent/feedback/eup/jni/NativeExceptionUpload;->a:Z

    .line 24
    :try_start_0
    const-string v0, "NativeRQD"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 25
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/feedback/eup/jni/NativeExceptionUpload;->a:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :goto_0
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/feedback/eup/jni/NativeExceptionUpload;->b:Lcom/tencent/feedback/eup/jni/NativeExceptionHandler;

    return-void

    .line 27
    :catch_0
    move-exception v0

    .line 29
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 30
    const-string v0, "rqdp{  load library fail! see detail ,will turn off native eup function!}"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltmsdkobf/eq;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static native doNativeCrashForTest()V
.end method

.method protected static native enableHandler(Z)V
.end method

.method public static enableNativeEUP(Z)V
    .locals 2
    .parameter

    .prologue
    .line 75
    sget-boolean v0, Lcom/tencent/feedback/eup/jni/NativeExceptionUpload;->a:Z

    if-nez v0, :cond_0

    .line 77
    const-string v0, "rqdp{  n enable disable!!}"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltmsdkobf/eq;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    :goto_0
    return-void

    .line 81
    :cond_0
    invoke-static {p0}, Lcom/tencent/feedback/eup/jni/NativeExceptionUpload;->enableHandler(Z)V

    goto :goto_0
.end method

.method public static declared-synchronized getmHandler()Lcom/tencent/feedback/eup/jni/NativeExceptionHandler;
    .locals 2

    .prologue
    .line 38
    const-class v0, Lcom/tencent/feedback/eup/jni/NativeExceptionUpload;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/feedback/eup/jni/NativeExceptionUpload;->b:Lcom/tencent/feedback/eup/jni/NativeExceptionHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static registEUP(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 48
    sget-boolean v1, Lcom/tencent/feedback/eup/jni/NativeExceptionUpload;->a:Z

    if-nez v1, :cond_0

    .line 50
    const-string v1, "rqdp{  nreg disable!}"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltmsdkobf/eq;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    :goto_0
    return v0

    .line 54
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    .line 56
    :cond_1
    const-string v1, "rqdp{  nreg param!}"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltmsdkobf/eq;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 60
    :cond_2
    invoke-static {}, Ltmsdkobf/fe;->bm()Ltmsdkobf/fe;

    move-result-object v0

    invoke-virtual {v0}, Ltmsdkobf/fe;->bu()Ltmsdkobf/ev;

    move-result-object v0

    .line 62
    invoke-static {}, Ltmsdkobf/er;->aQ()J

    move-result-wide v1

    invoke-virtual {v0}, Ltmsdkobf/ev;->aU()I

    move-result v3

    mul-int/lit8 v3, v3, 0x18

    mul-int/lit16 v3, v3, 0xe10

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    sub-long/2addr v1, v3

    .line 63
    invoke-virtual {v0}, Ltmsdkobf/ev;->aT()I

    move-result v0

    .line 65
    invoke-static {}, Ltmsdkobf/eo;->aH()Ltmsdkobf/eo;

    move-result-object v3

    new-instance v4, Lcom/tencent/feedback/eup/jni/b;

    invoke-direct {v4, p1, v1, v2, v0}, Lcom/tencent/feedback/eup/jni/b;-><init>(Ljava/lang/String;JI)V

    invoke-virtual {v3, v4}, Ltmsdkobf/eo;->a(Ljava/lang/Runnable;)V

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/lib/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-static {}, Ltmsdkobf/eo;->aH()Ltmsdkobf/eo;

    move-result-object v1

    new-instance v2, Lcom/tencent/feedback/eup/jni/a;

    invoke-direct {v2, p0, v0}, Lcom/tencent/feedback/eup/jni/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ltmsdkobf/eo;->a(Ljava/lang/Runnable;)V

    .line 70
    invoke-static {p0}, Ltmsdkobf/dz;->a(Landroid/content/Context;)Ltmsdkobf/dz;

    invoke-static {}, Ltmsdkobf/dz;->ae()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ltmsdkobf/dz;->a(Landroid/content/Context;)Ltmsdkobf/dz;

    move-result-object v1

    invoke-virtual {v1}, Ltmsdkobf/dz;->ad()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/tencent/feedback/eup/jni/NativeExceptionUpload;->registNativeExceptionHandler(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0
.end method

.method protected static native registNativeExceptionHandler(Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method protected static native setLogMode(I)V
.end method

.method public static setNativeLogMode(I)V
    .locals 2
    .parameter

    .prologue
    .line 97
    sget-boolean v0, Lcom/tencent/feedback/eup/jni/NativeExceptionUpload;->a:Z

    if-nez v0, :cond_0

    .line 99
    const-string v0, "rqdp{  n sNL disable!!}"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltmsdkobf/eq;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    :goto_0
    return-void

    .line 102
    :cond_0
    invoke-static {p0}, Lcom/tencent/feedback/eup/jni/NativeExceptionUpload;->setLogMode(I)V

    goto :goto_0
.end method

.method public static declared-synchronized setmHandler(Lcom/tencent/feedback/eup/jni/NativeExceptionHandler;)V
    .locals 2
    .parameter

    .prologue
    .line 43
    const-class v0, Lcom/tencent/feedback/eup/jni/NativeExceptionUpload;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/tencent/feedback/eup/jni/NativeExceptionUpload;->b:Lcom/tencent/feedback/eup/jni/NativeExceptionHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    monitor-exit v0

    return-void

    .line 43
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static testNativeCrash()V
    .locals 2

    .prologue
    .line 86
    sget-boolean v0, Lcom/tencent/feedback/eup/jni/NativeExceptionUpload;->a:Z

    if-nez v0, :cond_0

    .line 88
    const-string v0, "rqdp{  n testNC disable!!}"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltmsdkobf/eq;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    :goto_0
    return-void

    .line 92
    :cond_0
    invoke-static {}, Lcom/tencent/feedback/eup/jni/NativeExceptionUpload;->doNativeCrashForTest()V

    goto :goto_0
.end method
