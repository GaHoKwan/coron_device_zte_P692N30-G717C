.class public Landroid/content/SmartShowContextWrapper;
.super Landroid/content/SmartShowContext;
.source "SmartShowContextWrapper.java"


# static fields
.field static mGContext:Landroid/content/SmartShowContextWrapper;


# instance fields
.field mBase:Landroid/content/SmartShowContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-object v0, Landroid/content/SmartShowContextWrapper;->mGContext:Landroid/content/SmartShowContextWrapper;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/content/SmartShowContext;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/SmartShowContextWrapper;->mBase:Landroid/content/SmartShowContext;

    return-void
.end method

.method public static getDefaultContext()Landroid/content/SmartShowContextWrapper;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Landroid/content/SmartShowContextWrapper;->mGContext:Landroid/content/SmartShowContextWrapper;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Landroid/content/SmartShowContextWrapper;

    invoke-direct {v0}, Landroid/content/SmartShowContextWrapper;-><init>()V

    sput-object v0, Landroid/content/SmartShowContextWrapper;->mGContext:Landroid/content/SmartShowContextWrapper;

    .line 39
    :cond_0
    sget-object v0, Landroid/content/SmartShowContextWrapper;->mGContext:Landroid/content/SmartShowContextWrapper;

    return-object v0
.end method


# virtual methods
.method public SmartShowContextWrapper()V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method public SmartShowContextWrapper(Landroid/content/SmartShowContext;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 54
    iput-object p1, p0, Landroid/content/SmartShowContextWrapper;->mBase:Landroid/content/SmartShowContext;

    .line 55
    return-void
.end method

.method public allowIMEFullscreen()Z
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Landroid/content/SmartShowContextWrapper;->mBase:Landroid/content/SmartShowContext;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 179
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/content/SmartShowContextWrapper;->mBase:Landroid/content/SmartShowContext;

    invoke-virtual {v0}, Landroid/content/SmartShowContext;->allowIMEFullscreen()Z

    move-result v0

    goto :goto_0
.end method

.method public attach(Landroid/content/SmartShowContext;)V
    .locals 0
    .parameter "funs"

    .prologue
    .line 47
    iput-object p1, p0, Landroid/content/SmartShowContextWrapper;->mBase:Landroid/content/SmartShowContext;

    .line 48
    return-void
.end method

.method public bindAudio(Ljava/lang/String;II)I
    .locals 1
    .parameter "ids"
    .parameter "srcScreen"
    .parameter "dstScreen"

    .prologue
    .line 65
    iget-object v0, p0, Landroid/content/SmartShowContextWrapper;->mBase:Landroid/content/SmartShowContext;

    if-nez v0, :cond_0

    .line 66
    const/4 v0, 0x0

    .line 68
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/content/SmartShowContextWrapper;->mBase:Landroid/content/SmartShowContext;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/SmartShowContext;->bindAudio(Ljava/lang/String;II)I

    move-result v0

    goto :goto_0
.end method

.method public getBaseContext()Landroid/content/SmartShowContext;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Landroid/content/SmartShowContextWrapper;->mBase:Landroid/content/SmartShowContext;

    return-object v0
.end method

.method public getContextId()I
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Landroid/content/SmartShowContextWrapper;->mBase:Landroid/content/SmartShowContext;

    if-nez v0, :cond_0

    .line 94
    invoke-super {p0}, Landroid/content/SmartShowContext;->getContextId()I

    move-result v0

    .line 96
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/content/SmartShowContextWrapper;->mBase:Landroid/content/SmartShowContext;

    invoke-virtual {v0}, Landroid/content/SmartShowContext;->getContextId()I

    move-result v0

    goto :goto_0
.end method

.method public getContextId(Landroid/os/IBinder;)I
    .locals 1
    .parameter "binder"

    .prologue
    .line 79
    iget-object v0, p0, Landroid/content/SmartShowContextWrapper;->mBase:Landroid/content/SmartShowContext;

    if-nez v0, :cond_0

    .line 80
    const/4 v0, 0x0

    .line 82
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/content/SmartShowContextWrapper;->mBase:Landroid/content/SmartShowContext;

    invoke-virtual {v0, p1}, Landroid/content/SmartShowContext;->getContextId(Landroid/os/IBinder;)I

    move-result v0

    goto :goto_0
.end method

.method public getDisplayId(I)I
    .locals 1
    .parameter "contextId"

    .prologue
    .line 72
    iget-object v0, p0, Landroid/content/SmartShowContextWrapper;->mBase:Landroid/content/SmartShowContext;

    if-nez v0, :cond_0

    .line 73
    const/4 v0, 0x0

    .line 75
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/content/SmartShowContextWrapper;->mBase:Landroid/content/SmartShowContext;

    invoke-virtual {v0, p1}, Landroid/content/SmartShowContext;->getDisplayId(I)I

    move-result v0

    goto :goto_0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Landroid/content/SmartShowContextWrapper;->mBase:Landroid/content/SmartShowContext;

    if-nez v0, :cond_0

    .line 146
    const/4 v0, 0x0

    .line 148
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/content/SmartShowContextWrapper;->mBase:Landroid/content/SmartShowContext;

    invoke-virtual {v0}, Landroid/content/SmartShowContext;->getMode()I

    move-result v0

    goto :goto_0
.end method

.method public getParameters(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    .line 165
    iget-object v0, p0, Landroid/content/SmartShowContextWrapper;->mBase:Landroid/content/SmartShowContext;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 167
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/content/SmartShowContextWrapper;->mBase:Landroid/content/SmartShowContext;

    invoke-virtual {v0, p1}, Landroid/content/SmartShowContext;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getScreen(I)I
    .locals 1
    .parameter "displayId"

    .prologue
    .line 58
    iget-object v0, p0, Landroid/content/SmartShowContextWrapper;->mBase:Landroid/content/SmartShowContext;

    if-nez v0, :cond_0

    .line 59
    const/4 v0, 0x0

    .line 61
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/content/SmartShowContextWrapper;->mBase:Landroid/content/SmartShowContext;

    invoke-virtual {v0, p1}, Landroid/content/SmartShowContext;->getScreen(I)I

    move-result v0

    goto :goto_0
.end method

.method public getTaskId()I
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Landroid/content/SmartShowContextWrapper;->mBase:Landroid/content/SmartShowContext;

    if-nez v0, :cond_0

    .line 101
    invoke-super {p0}, Landroid/content/SmartShowContext;->getTaskId()I

    move-result v0

    .line 103
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/content/SmartShowContextWrapper;->mBase:Landroid/content/SmartShowContext;

    invoke-virtual {v0}, Landroid/content/SmartShowContext;->getTaskId()I

    move-result v0

    goto :goto_0
.end method

.method public getTaskId(I)I
    .locals 1
    .parameter "contextId"

    .prologue
    .line 86
    iget-object v0, p0, Landroid/content/SmartShowContextWrapper;->mBase:Landroid/content/SmartShowContext;

    if-nez v0, :cond_0

    .line 87
    const/4 v0, -0x1

    .line 89
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/content/SmartShowContextWrapper;->mBase:Landroid/content/SmartShowContext;

    invoke-virtual {v0, p1}, Landroid/content/SmartShowContext;->getTaskId(I)I

    move-result v0

    goto :goto_0
.end method

.method public perform(IILjava/lang/Object;)I
    .locals 1
    .parameter "type"
    .parameter "value"
    .parameter "value2"

    .prologue
    .line 152
    iget-object v0, p0, Landroid/content/SmartShowContextWrapper;->mBase:Landroid/content/SmartShowContext;

    if-nez v0, :cond_0

    .line 153
    const/4 v0, 0x0

    .line 155
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/content/SmartShowContextWrapper;->mBase:Landroid/content/SmartShowContext;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/SmartShowContext;->perform(IILjava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public popContextAndTaskId()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Landroid/content/SmartShowContextWrapper;->mBase:Landroid/content/SmartShowContext;

    if-nez v0, :cond_0

    .line 123
    invoke-super {p0}, Landroid/content/SmartShowContext;->popContextAndTaskId()V

    .line 127
    :goto_0
    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Landroid/content/SmartShowContextWrapper;->mBase:Landroid/content/SmartShowContext;

    invoke-virtual {v0}, Landroid/content/SmartShowContext;->popContextAndTaskId()V

    goto :goto_0
.end method

.method public pushContextAndTaskId(II)V
    .locals 1
    .parameter "contextId"
    .parameter "taskId"

    .prologue
    .line 114
    iget-object v0, p0, Landroid/content/SmartShowContextWrapper;->mBase:Landroid/content/SmartShowContext;

    if-nez v0, :cond_0

    .line 115
    invoke-super {p0, p1, p2}, Landroid/content/SmartShowContext;->pushContextAndTaskId(II)V

    .line 119
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Landroid/content/SmartShowContextWrapper;->mBase:Landroid/content/SmartShowContext;

    invoke-virtual {v0, p1, p2}, Landroid/content/SmartShowContext;->pushContextAndTaskId(II)V

    goto :goto_0
.end method

.method public setAudioForceLocal(Z)I
    .locals 1
    .parameter "set"

    .prologue
    .line 107
    iget-object v0, p0, Landroid/content/SmartShowContextWrapper;->mBase:Landroid/content/SmartShowContext;

    if-nez v0, :cond_0

    .line 108
    const/4 v0, -0x1

    .line 110
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/content/SmartShowContextWrapper;->mBase:Landroid/content/SmartShowContext;

    invoke-virtual {v0, p1}, Landroid/content/SmartShowContext;->setAudioForceLocal(Z)I

    move-result v0

    goto :goto_0
.end method

.method public setContextAndTaskId(II)V
    .locals 1
    .parameter "contextId"
    .parameter "taskId"

    .prologue
    .line 130
    iget-object v0, p0, Landroid/content/SmartShowContextWrapper;->mBase:Landroid/content/SmartShowContext;

    if-nez v0, :cond_0

    .line 131
    invoke-super {p0, p1, p2}, Landroid/content/SmartShowContext;->setContextAndTaskId(II)V

    .line 135
    :goto_0
    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Landroid/content/SmartShowContextWrapper;->mBase:Landroid/content/SmartShowContext;

    invoke-virtual {v0, p1, p2}, Landroid/content/SmartShowContext;->setContextAndTaskId(II)V

    goto :goto_0
.end method

.method public setParameters(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 159
    iget-object v0, p0, Landroid/content/SmartShowContextWrapper;->mBase:Landroid/content/SmartShowContext;

    if-nez v0, :cond_0

    .line 162
    :goto_0
    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Landroid/content/SmartShowContextWrapper;->mBase:Landroid/content/SmartShowContext;

    invoke-virtual {v0, p1, p2}, Landroid/content/SmartShowContext;->setParameters(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public symlink(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "oldPath"
    .parameter "newPath"

    .prologue
    .line 138
    iget-object v0, p0, Landroid/content/SmartShowContextWrapper;->mBase:Landroid/content/SmartShowContext;

    if-nez v0, :cond_0

    .line 142
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Landroid/content/SmartShowContextWrapper;->mBase:Landroid/content/SmartShowContext;

    invoke-virtual {v0, p1, p2}, Landroid/content/SmartShowContext;->symlink(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateData([B)V
    .locals 1
    .parameter "data"

    .prologue
    .line 171
    iget-object v0, p0, Landroid/content/SmartShowContextWrapper;->mBase:Landroid/content/SmartShowContext;

    if-nez v0, :cond_0

    .line 174
    :goto_0
    return-void

    .line 173
    :cond_0
    iget-object v0, p0, Landroid/content/SmartShowContextWrapper;->mBase:Landroid/content/SmartShowContext;

    invoke-virtual {v0, p1}, Landroid/content/SmartShowContext;->updateData([B)V

    goto :goto_0
.end method
