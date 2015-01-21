.class public Lcom/mediatek/voicecommand/voicesettings/VoiceUiResUtil;
.super Ljava/lang/Object;
.source "VoiceUiResUtil.java"


# static fields
.field private static final APP_DESKCLOCK:I = 0x3

.field private static final APP_GALLERY3D:I = 0x2

.field private static final APP_MUSIC:I = 0x4

.field private static final APP_PHONE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "VoiceUiResUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCommandTitleResourceId(I)I
    .locals 3
    .parameter "processID"

    .prologue
    .line 69
    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    .line 70
    const v0, 0x7f060002

    .line 77
    :goto_0
    return v0

    .line 71
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 72
    const v0, 0x7f060001

    goto :goto_0

    .line 73
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 74
    const/high16 v0, 0x7f06

    goto :goto_0

    .line 76
    :cond_2
    const-string v0, "VoiceUiResUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "voice ui not support processID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getIconId(I)I
    .locals 3
    .parameter "processID"

    .prologue
    .line 29
    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    .line 30
    const v0, 0x7f020005

    .line 37
    :goto_0
    return v0

    .line 31
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 32
    const v0, 0x7f020006

    goto :goto_0

    .line 33
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 34
    const v0, 0x7f020007

    goto :goto_0

    .line 36
    :cond_2
    const-string v0, "VoiceUiResUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "voice ui not support processID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getProcessTitleResourceId(I)I
    .locals 3
    .parameter "processID"

    .prologue
    .line 48
    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    .line 49
    const v0, 0x7f060009

    .line 58
    :goto_0
    return v0

    .line 50
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 51
    const v0, 0x7f060008

    goto :goto_0

    .line 52
    :cond_1
    const/4 v0, 0x4

    if-ne p0, v0, :cond_2

    .line 53
    const v0, 0x7f06000b

    goto :goto_0

    .line 54
    :cond_2
    const/4 v0, 0x2

    if-ne p0, v0, :cond_3

    .line 55
    const v0, 0x7f06000a

    goto :goto_0

    .line 57
    :cond_3
    const-string v0, "VoiceUiResUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "voice ui not support processID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSummaryResourceId(I)I
    .locals 3
    .parameter "processID"

    .prologue
    .line 14
    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    .line 15
    const v0, 0x7f06000d

    .line 24
    :goto_0
    return v0

    .line 16
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 17
    const v0, 0x7f06000c

    goto :goto_0

    .line 18
    :cond_1
    const/4 v0, 0x4

    if-ne p0, v0, :cond_2

    .line 19
    const v0, 0x7f06000f

    goto :goto_0

    .line 20
    :cond_2
    const/4 v0, 0x2

    if-ne p0, v0, :cond_3

    .line 21
    const v0, 0x7f06000e

    goto :goto_0

    .line 23
    :cond_3
    const-string v0, "VoiceUiResUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "voice ui not support processID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    const/4 v0, 0x0

    goto :goto_0
.end method
