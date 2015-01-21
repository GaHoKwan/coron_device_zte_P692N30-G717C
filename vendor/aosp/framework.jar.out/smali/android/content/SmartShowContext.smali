.class public abstract Landroid/content/SmartShowContext;
.super Ljava/lang/Object;
.source "SmartShowContext.java"


# static fields
.field public static final DEFAULT_DISPLAY_ID:I = 0x0

.field public static final INVALID_DISPLAY_ID:I = -0x1

.field public static final MODE_DUAL:I = 0x4

.field public static final MODE_EXTEND:I = 0x3

.field public static final MODE_MIRROR:I = 0x2

.field public static final MODE_MULTIWINDOW:I = 0x6

.field public static final MODE_NORMAL:I = 0x1

.field public static final MODE_VIDEO:I = 0x5

.field public static final PARAM_KEY_GUARD:Ljava/lang/String; = "keyguard"

.field public static final PERFORM_AUDIO_FORCE_LOCAL:I = 0x7

.field public static final PERFORM_CHECK_DISPLAY_WITH_CONTEXT_ID:I = 0xf

.field public static final PERFORM_ENABLE_DUAL_SCREEN:I = 0x8

.field public static final PERFORM_EXCHANGE_TASK:I = 0x9

.field public static final PERFORM_GENERATE_CONTEXT_ID:I = 0xa

.field public static final PERFORM_GET_DISPLAY_ID:I = 0x3

.field public static final PERFORM_GET_DISPLAY_WITH_PROCESSID:I = 0xb

.field public static final PERFORM_GET_FORCE_LANDSCAPE_DISPLAY_ID:I = 0xe

.field public static final PERFORM_GET_FORCE_PORTRAIT_DISPLAY_ID:I = 0xd

.field public static final PERFORM_GET_SCREEN:I = 0x6

.field public static final PERFORM_GET_SCREEN_WITH_PROCESSID:I = 0x10

.field public static final PERFORM_GET_STATUSBAR_HEIGHT:I = 0x3e9

.field public static final PERFORM_GET_TASK_ID:I = 0x4

.field public static final PERFORM_MODE_CHANGE:I = 0x1

.field public static final PERFORM_MOVE_TASK:I = 0x5

.field public static final PERFORM_SHOULD_UPDATE_APP_CONFIGURATION:I = 0xc

.field public static final PERFORM_TYPE_END:I = 0x64

.field public static final PERFORM_VIDEO_PLAYING:I = 0x2

.field public static final VIRTUAL_DISPLAY_ID:I = -0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract allowIMEFullscreen()Z
.end method

.method public abstract bindAudio(Ljava/lang/String;II)I
.end method

.method public getContextId()I
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public abstract getContextId(Landroid/os/IBinder;)I
.end method

.method public abstract getDisplayId(I)I
.end method

.method public abstract getMode()I
.end method

.method public abstract getParameters(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getScreen(I)I
.end method

.method public getTaskId()I
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public getTaskId(I)I
    .locals 1
    .parameter "contextId"

    .prologue
    .line 70
    const/4 v0, -0x1

    return v0
.end method

.method public abstract perform(IILjava/lang/Object;)I
.end method

.method public popContextAndTaskId()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method public pushContextAndTaskId(II)V
    .locals 0
    .parameter "contextId"
    .parameter "taskId"

    .prologue
    .line 73
    return-void
.end method

.method public abstract setAudioForceLocal(Z)I
.end method

.method public setContextAndTaskId(II)V
    .locals 0
    .parameter "contextId"
    .parameter "taskId"

    .prologue
    .line 74
    return-void
.end method

.method public abstract setParameters(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract symlink(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract updateData([B)V
.end method
