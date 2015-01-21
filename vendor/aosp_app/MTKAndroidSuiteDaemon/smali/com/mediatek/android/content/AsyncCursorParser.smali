.class public abstract Lcom/mediatek/android/content/AsyncCursorParser;
.super Ljava/lang/Object;
.source "AsyncCursorParser.java"


# instance fields
.field private mCount:I

.field private mCursor:Landroid/database/Cursor;

.field private mPosition:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/mediatek/android/content/AsyncCursorParser;->mCursor:Landroid/database/Cursor;

    .line 53
    iput v0, p0, Lcom/mediatek/android/content/AsyncCursorParser;->mPosition:I

    .line 54
    if-nez p1, :cond_0

    :goto_0
    iput v0, p0, Lcom/mediatek/android/content/AsyncCursorParser;->mCount:I

    .line 55
    return-void

    .line 54
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/mediatek/android/content/AsyncCursorParser;->mCount:I

    return v0
.end method

.method public getCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/mediatek/android/content/AsyncCursorParser;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getCursorPosition()I
    .locals 2

    .prologue
    .line 91
    iget-object v1, p0, Lcom/mediatek/android/content/AsyncCursorParser;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_0

    .line 92
    const/4 v0, -0x1

    .line 96
    .local v0, result:I
    :goto_0
    return v0

    .line 94
    .end local v0           #result:I
    :cond_0
    iget-object v1, p0, Lcom/mediatek/android/content/AsyncCursorParser;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    .restart local v0       #result:I
    goto :goto_0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/mediatek/android/content/AsyncCursorParser;->mPosition:I

    return v0
.end method

.method public abstract isBlockReady()Z
.end method

.method public moveToNext()Z
    .locals 2

    .prologue
    .line 106
    iget-object v1, p0, Lcom/mediatek/android/content/AsyncCursorParser;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_0

    .line 107
    const/4 v0, 0x0

    .line 111
    .local v0, result:Z
    :goto_0
    return v0

    .line 109
    .end local v0           #result:Z
    :cond_0
    iget-object v1, p0, Lcom/mediatek/android/content/AsyncCursorParser;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    .restart local v0       #result:Z
    goto :goto_0
.end method

.method public moveToPrevious()Z
    .locals 2

    .prologue
    .line 121
    iget-object v1, p0, Lcom/mediatek/android/content/AsyncCursorParser;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_0

    .line 122
    const/4 v0, 0x0

    .line 126
    .local v0, result:Z
    :goto_0
    return v0

    .line 124
    .end local v0           #result:Z
    :cond_0
    iget-object v1, p0, Lcom/mediatek/android/content/AsyncCursorParser;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v0

    .restart local v0       #result:Z
    goto :goto_0
.end method

.method protected abstract onBlockReady()V
.end method

.method protected abstract onBlockReadyForEx()V
.end method

.method protected abstract onNewRow(Landroid/database/Cursor;)V
.end method

.method protected abstract onParseOver()V
.end method

.method protected abstract onParseStart()V
.end method

.method public parse()V
    .locals 3

    .prologue
    .line 147
    const-string v1, "Parse begin..."

    invoke-static {v1}, Lcom/mediatek/apst/target/util/Debugger;->logI(Ljava/lang/String;)V

    .line 148
    iget-object v1, p0, Lcom/mediatek/android/content/AsyncCursorParser;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_0

    .line 149
    const-string v1, "Curosr is null."

    invoke-static {v1}, Lcom/mediatek/apst/target/util/Debugger;->logW(Ljava/lang/String;)V

    .line 171
    :goto_0
    return-void

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/android/content/AsyncCursorParser;->onParseStart()V

    .line 156
    :cond_1
    :goto_1
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/android/content/AsyncCursorParser;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 157
    iget v1, p0, Lcom/mediatek/android/content/AsyncCursorParser;->mPosition:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mediatek/android/content/AsyncCursorParser;->mPosition:I

    .line 158
    iget-object v1, p0, Lcom/mediatek/android/content/AsyncCursorParser;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v1}, Lcom/mediatek/android/content/AsyncCursorParser;->onNewRow(Landroid/database/Cursor;)V

    .line 159
    invoke-virtual {p0}, Lcom/mediatek/android/content/AsyncCursorParser;->isBlockReady()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 160
    invoke-virtual {p0}, Lcom/mediatek/android/content/AsyncCursorParser;->onBlockReady()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, e:Ljava/lang/IllegalStateException;
    const/4 v1, 0x0

    :try_start_1
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, ">>>>>>>>>>Catched IllegalStateException!"

    invoke-static {v1, v2}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0}, Lcom/mediatek/android/content/AsyncCursorParser;->onBlockReadyForEx()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    invoke-virtual {p0}, Lcom/mediatek/android/content/AsyncCursorParser;->onParseOver()V

    .line 169
    const-string v1, "Parse finished."

    invoke-static {v1}, Lcom/mediatek/apst/target/util/Debugger;->logI(Ljava/lang/String;)V

    goto :goto_0

    .line 168
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :cond_2
    invoke-virtual {p0}, Lcom/mediatek/android/content/AsyncCursorParser;->onParseOver()V

    .line 169
    const-string v1, "Parse finished."

    invoke-static {v1}, Lcom/mediatek/apst/target/util/Debugger;->logI(Ljava/lang/String;)V

    goto :goto_0

    .line 168
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/mediatek/android/content/AsyncCursorParser;->onParseOver()V

    .line 169
    const-string v2, "Parse finished."

    invoke-static {v2}, Lcom/mediatek/apst/target/util/Debugger;->logI(Ljava/lang/String;)V

    throw v1
.end method

.method public resetCursor(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    const/4 v0, 0x0

    .line 134
    iget-object v1, p0, Lcom/mediatek/android/content/AsyncCursorParser;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/android/content/AsyncCursorParser;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/mediatek/android/content/AsyncCursorParser;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 136
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    const-string v2, "Cursor Closed!"

    invoke-static {v1, v2}, Lcom/mediatek/apst/target/util/Debugger;->logD([Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    :cond_0
    iput-object p1, p0, Lcom/mediatek/android/content/AsyncCursorParser;->mCursor:Landroid/database/Cursor;

    .line 139
    iput v0, p0, Lcom/mediatek/android/content/AsyncCursorParser;->mPosition:I

    .line 140
    if-nez p1, :cond_1

    :goto_0
    iput v0, p0, Lcom/mediatek/android/content/AsyncCursorParser;->mCount:I

    .line 141
    return-void

    .line 140
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method protected setCursor(Landroid/database/Cursor;)V
    .locals 0
    .parameter "cursor"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/mediatek/android/content/AsyncCursorParser;->mCursor:Landroid/database/Cursor;

    .line 84
    return-void
.end method
