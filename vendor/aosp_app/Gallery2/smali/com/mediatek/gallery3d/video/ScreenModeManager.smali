.class public Lcom/mediatek/gallery3d/video/ScreenModeManager;
.super Ljava/lang/Object;
.source "ScreenModeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/gallery3d/video/ScreenModeManager$ScreenModeListener;
    }
.end annotation


# static fields
.field private static final LOG:Z = true

.field public static final SCREENMODE_ALL:I = 0x7

.field public static final SCREENMODE_BIGSCREEN:I = 0x1

.field public static final SCREENMODE_CROPSCREEN:I = 0x4

.field public static final SCREENMODE_FULLSCREEN:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Gallery2/VideoPlayer/ScreenModeManager"


# instance fields
.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/gallery3d/video/ScreenModeManager$ScreenModeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenMode:I

.field private mScreenModes:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/gallery3d/video/ScreenModeManager;->mScreenMode:I

    .line 17
    const/4 v0, 0x7

    iput v0, p0, Lcom/mediatek/gallery3d/video/ScreenModeManager;->mScreenModes:I

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/gallery3d/video/ScreenModeManager;->mListeners:Ljava/util/ArrayList;

    .line 114
    return-void
.end method


# virtual methods
.method public addListener(Lcom/mediatek/gallery3d/video/ScreenModeManager$ScreenModeListener;)V
    .locals 3
    .parameter "l"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/ScreenModeManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/ScreenModeManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_0
    const-string v0, "Gallery2/VideoPlayer/ScreenModeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addListener("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/ScreenModeManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 112
    return-void
.end method

.method public getNextScreenMode()I
    .locals 4

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/mediatek/gallery3d/video/ScreenModeManager;->getScreenMode()I

    move-result v0

    .line 74
    .local v0, mode:I
    shl-int/lit8 v0, v0, 0x1

    .line 75
    iget v1, p0, Lcom/mediatek/gallery3d/video/ScreenModeManager;->mScreenModes:I

    and-int/2addr v1, v0

    if-nez v1, :cond_1

    .line 77
    iget v1, p0, Lcom/mediatek/gallery3d/video/ScreenModeManager;->mScreenModes:I

    if-le v0, v1, :cond_0

    .line 78
    const/4 v0, 0x1

    .line 80
    :cond_0
    iget v1, p0, Lcom/mediatek/gallery3d/video/ScreenModeManager;->mScreenModes:I

    and-int/2addr v1, v0

    if-nez v1, :cond_1

    .line 81
    shl-int/lit8 v0, v0, 0x1

    .line 82
    iget v1, p0, Lcom/mediatek/gallery3d/video/ScreenModeManager;->mScreenModes:I

    if-le v0, v1, :cond_0

    .line 83
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wrong screen mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/gallery3d/video/ScreenModeManager;->mScreenModes:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 88
    :cond_1
    const-string v1, "Gallery2/VideoPlayer/ScreenModeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNextScreenMode() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return v0
.end method

.method public getScreenMode()I
    .locals 3

    .prologue
    .line 67
    const-string v0, "Gallery2/VideoPlayer/ScreenModeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getScreenMode() return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/gallery3d/video/ScreenModeManager;->mScreenMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget v0, p0, Lcom/mediatek/gallery3d/video/ScreenModeManager;->mScreenMode:I

    return v0
.end method

.method public getScreenModes()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/mediatek/gallery3d/video/ScreenModeManager;->mScreenModes:I

    return v0
.end method

.method public removeListener(Lcom/mediatek/gallery3d/video/ScreenModeManager$ScreenModeListener;)V
    .locals 3
    .parameter "l"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/ScreenModeManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 106
    const-string v0, "Gallery2/VideoPlayer/ScreenModeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeListener("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return-void
.end method

.method public setScreenMode(I)V
    .locals 5
    .parameter "curScreenMode"

    .prologue
    .line 57
    const-string v2, "Gallery2/VideoPlayer/ScreenModeManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setScreenMode("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iput p1, p0, Lcom/mediatek/gallery3d/video/ScreenModeManager;->mScreenMode:I

    .line 60
    iget-object v2, p0, Lcom/mediatek/gallery3d/video/ScreenModeManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/gallery3d/video/ScreenModeManager$ScreenModeListener;

    .line 61
    .local v1, listener:Lcom/mediatek/gallery3d/video/ScreenModeManager$ScreenModeListener;
    invoke-interface {v1, p1}, Lcom/mediatek/gallery3d/video/ScreenModeManager$ScreenModeListener;->onScreenModeChanged(I)V

    goto :goto_0

    .line 63
    .end local v1           #listener:Lcom/mediatek/gallery3d/video/ScreenModeManager$ScreenModeListener;
    :cond_0
    return-void
.end method

.method public setScreenModes(I)V
    .locals 4
    .parameter "screenModes"

    .prologue
    const/4 v3, 0x7

    .line 34
    and-int/lit8 v0, p1, 0x1

    and-int/lit8 v1, p1, 0x2

    or-int/2addr v0, v1

    and-int/lit8 v1, p1, 0x4

    or-int/2addr v0, v1

    iput v0, p0, Lcom/mediatek/gallery3d/video/ScreenModeManager;->mScreenModes:I

    .line 37
    and-int/lit8 v0, p1, 0x7

    if-nez v0, :cond_0

    .line 38
    iput v3, p0, Lcom/mediatek/gallery3d/video/ScreenModeManager;->mScreenModes:I

    .line 39
    const-string v0, "Gallery2/VideoPlayer/ScreenModeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wrong screenModes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". use default value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :cond_0
    const-string v0, "Gallery2/VideoPlayer/ScreenModeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableScreenMode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") mScreenModes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/gallery3d/video/ScreenModeManager;->mScreenModes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    return-void
.end method
