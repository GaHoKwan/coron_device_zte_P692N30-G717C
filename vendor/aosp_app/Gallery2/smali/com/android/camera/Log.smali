.class public Lcom/android/camera/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field private static final DEBUG_FILE_V:Ljava/lang/String; = "/Camera_Debug_V_Off"

.field private static final DEFAULT:I = -0x1

.field private static final DEFAULT_TAG:Ljava/lang/String; = "Default_Tag"

.field private static ENG_SWITCH:Z = false

.field private static FILTER_SWITCH:Z = false

#the value of this static final field might be set in the static constructor
.field public static final LOGV:Z = false

.field private static MAIN_SWITCH:Z = false

.field private static PERFORMANCE_SWITCH:Z = false

.field private static final PERFORMANCE_TAG:Ljava/lang/String; = "Performance_Switch"

.field private static final TAG:Ljava/lang/String; = "Camera_Debug_D"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/camera/Log;->MAIN_SWITCH:Z

    .line 22
    invoke-static {}, Lcom/android/camera/Log;->isEng()Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/Log;->ENG_SWITCH:Z

    .line 26
    invoke-static {}, Lcom/android/camera/Log;->isPerformanceLogSwitch()Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/Log;->PERFORMANCE_SWITCH:Z

    .line 29
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/camera/Log;->FILTER_SWITCH:Z

    .line 32
    invoke-static {}, Lcom/android/camera/Log;->isLogV()Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/Log;->LOGV:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 70
    sget-boolean v0, Lcom/android/camera/Log;->ENG_SWITCH:Z

    if-eqz v0, :cond_0

    .line 71
    invoke-static {p0, p1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 73
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 77
    sget-boolean v0, Lcom/android/camera/Log;->ENG_SWITCH:Z

    if-eqz v0, :cond_0

    .line 78
    invoke-static {p0, p1, p2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 80
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 102
    invoke-static {p0, p1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 105
    invoke-static {p0, p1, p2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 84
    sget-boolean v0, Lcom/android/camera/Log;->MAIN_SWITCH:Z

    if-eqz v0, :cond_0

    .line 85
    invoke-static {p0, p1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 87
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 90
    sget-boolean v0, Lcom/android/camera/Log;->MAIN_SWITCH:Z

    if-eqz v0, :cond_0

    .line 91
    invoke-static {p0, p1, p2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 93
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static isEng()Z
    .locals 4

    .prologue
    .line 49
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 50
    .local v0, debug:Z
    const-string v2, "Camera_Debug_D"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    .line 51
    .local v1, log:Z
    sget-boolean v2, Lcom/android/camera/Log;->MAIN_SWITCH:Z

    if-eqz v2, :cond_1

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static isLogV()Z
    .locals 5

    .prologue
    .line 35
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 36
    .local v0, debug:Z
    const-string v2, "Camera_Debug_D"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    .line 38
    .local v1, log:Z
    const-string v2, "Camera_Debug_D"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isLogV() debug="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", log="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static isPerformanceLogSwitch()Z
    .locals 3

    .prologue
    .line 43
    const-string v1, "Performance_Switch"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    .line 44
    .local v0, log:Z
    if-eqz v0, :cond_0

    sget-boolean v1, Lcom/android/camera/Log;->MAIN_SWITCH:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 57
    sget-boolean v0, Lcom/android/camera/Log;->PERFORMANCE_SWITCH:Z

    if-eqz v0, :cond_0

    .line 58
    invoke-static {p0, p1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 60
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 64
    sget-boolean v0, Lcom/android/camera/Log;->PERFORMANCE_SWITCH:Z

    if-eqz v0, :cond_0

    .line 65
    invoke-static {p0, p1, p2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 67
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 96
    invoke-static {p0, p1}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 99
    invoke-static {p0, p1, p2}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method
