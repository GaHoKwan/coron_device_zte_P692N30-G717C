.class public Lcom/mediatek/contacts/extension/SpeedDialExtensionContainer;
.super Lcom/android/contacts/ext/SpeedDialExtension;
.source "SpeedDialExtensionContainer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SpeedDialExtensionContainer"


# instance fields
.field private mSubExtensionList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/contacts/ext/SpeedDialExtension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/android/contacts/ext/SpeedDialExtension;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lcom/android/contacts/ext/SpeedDialExtension;)V
    .locals 1
    .parameter "extension"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/mediatek/contacts/extension/SpeedDialExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/extension/SpeedDialExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/extension/SpeedDialExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 22
    return-void
.end method

.method public clearPrefStateIfNecessary(Ljava/lang/String;)Z
    .locals 5
    .parameter "commd"

    .prologue
    const/4 v3, 0x1

    .line 112
    const-string v2, "SpeedDialExtensionContainer"

    const-string v4, "SpeedDialManageActivity: [clearPrefStateIfNecessary]"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v2, p0, Lcom/mediatek/contacts/extension/SpeedDialExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v2, :cond_0

    move v1, v3

    .line 124
    :goto_0
    return v1

    .line 116
    :cond_0
    iget-object v2, p0, Lcom/mediatek/contacts/extension/SpeedDialExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 117
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/SpeedDialExtension;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 118
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/ext/SpeedDialExtension;

    invoke-virtual {v2, p1}, Lcom/android/contacts/ext/SpeedDialExtension;->clearPrefStateIfNecessary(Ljava/lang/String;)Z

    move-result v1

    .line 119
    .local v1, result:Z
    if-nez v1, :cond_1

    goto :goto_0

    .end local v1           #result:Z
    :cond_2
    move v1, v3

    .line 124
    goto :goto_0
.end method

.method public needCheckContacts(Ljava/lang/String;)Z
    .locals 5
    .parameter "commd"

    .prologue
    const/4 v3, 0x1

    .line 128
    const-string v2, "SpeedDialExtensionContainer"

    const-string v4, "SpeedDialManageActivity: [needCheckContacts]"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v2, p0, Lcom/mediatek/contacts/extension/SpeedDialExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v2, :cond_0

    move v1, v3

    .line 140
    :goto_0
    return v1

    .line 132
    :cond_0
    iget-object v2, p0, Lcom/mediatek/contacts/extension/SpeedDialExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 133
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/SpeedDialExtension;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 134
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/ext/SpeedDialExtension;

    invoke-virtual {v2, p1}, Lcom/android/contacts/ext/SpeedDialExtension;->needCheckContacts(Ljava/lang/String;)Z

    move-result v1

    .line 135
    .local v1, result:Z
    if-nez v1, :cond_1

    goto :goto_0

    .end local v1           #result:Z
    :cond_2
    move v1, v3

    .line 140
    goto :goto_0
.end method

.method public needClearPreState(Ljava/lang/String;)Z
    .locals 5
    .parameter "commd"

    .prologue
    const/4 v3, 0x1

    .line 61
    const-string v2, "SpeedDialExtensionContainer"

    const-string v4, "[needClearPreState()]"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v2, p0, Lcom/mediatek/contacts/extension/SpeedDialExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v2, :cond_0

    move v1, v3

    .line 73
    :goto_0
    return v1

    .line 65
    :cond_0
    iget-object v2, p0, Lcom/mediatek/contacts/extension/SpeedDialExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 66
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/SpeedDialExtension;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 67
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/ext/SpeedDialExtension;

    invoke-virtual {v2, p1}, Lcom/android/contacts/ext/SpeedDialExtension;->needClearPreState(Ljava/lang/String;)Z

    move-result v1

    .line 68
    .local v1, result:Z
    if-nez v1, :cond_1

    goto :goto_0

    .end local v1           #result:Z
    :cond_2
    move v1, v3

    .line 73
    goto :goto_0
.end method

.method public needClearSharedPreferences(Ljava/lang/String;)Z
    .locals 5
    .parameter "commd"

    .prologue
    const/4 v3, 0x1

    .line 93
    const-string v2, "SpeedDialExtensionContainer"

    const-string v4, "needClearSharedPreferences()"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v2, p0, Lcom/mediatek/contacts/extension/SpeedDialExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v2, :cond_0

    .line 95
    const-string v2, "SpeedDialExtensionContainer"

    const-string v4, "[needClearSharedPreferences()"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 108
    :goto_0
    return v1

    .line 98
    :cond_0
    iget-object v2, p0, Lcom/mediatek/contacts/extension/SpeedDialExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 99
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/SpeedDialExtension;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 100
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/ext/SpeedDialExtension;

    invoke-virtual {v2, p1}, Lcom/android/contacts/ext/SpeedDialExtension;->needClearSharedPreferences(Ljava/lang/String;)Z

    move-result v1

    .line 101
    .local v1, result:Z
    if-nez v1, :cond_1

    .line 102
    const-string v2, "SpeedDialExtensionContainer"

    const-string v3, "needClearSharedPreferences()]"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 107
    .end local v1           #result:Z
    :cond_2
    const-string v2, "SpeedDialExtensionContainer"

    const-string v4, "[needClearSharedPreferences()]"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 108
    goto :goto_0
.end method

.method public remove(Lcom/android/contacts/ext/SpeedDialExtension;)V
    .locals 1
    .parameter "extension"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/mediatek/contacts/extension/SpeedDialExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 29
    :goto_0
    return-void

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/extension/SpeedDialExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setAddPosition(IZLjava/lang/String;)I
    .locals 4
    .parameter "mAddPosition"
    .parameter "mNeedRemovePosition"
    .parameter "commd"

    .prologue
    .line 44
    const-string v2, "SpeedDialExtensionContainer"

    const-string v3, "[setAddPosition()]"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object v2, p0, Lcom/mediatek/contacts/extension/SpeedDialExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v2, :cond_1

    .line 57
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 48
    .restart local p1
    :cond_1
    iget-object v2, p0, Lcom/mediatek/contacts/extension/SpeedDialExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 49
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/SpeedDialExtension;>;"
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 50
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/ext/SpeedDialExtension;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/contacts/ext/SpeedDialExtension;->setAddPosition(IZLjava/lang/String;)I

    move-result v1

    .line 52
    .local v1, result:I
    if-eq v1, p1, :cond_2

    move p1, v1

    .line 53
    goto :goto_0
.end method

.method public setView(Landroid/view/View;IZILjava/lang/String;)V
    .locals 7
    .parameter "view"
    .parameter "viewId"
    .parameter "mPrefNumContactState"
    .parameter "sdNumber"
    .parameter "commd"

    .prologue
    .line 33
    const-string v0, "SpeedDialExtensionContainer"

    const-string v1, "[setView()]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iget-object v0, p0, Lcom/mediatek/contacts/extension/SpeedDialExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    .line 41
    :cond_0
    return-void

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/mediatek/contacts/extension/SpeedDialExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 38
    .local v6, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/SpeedDialExtension;>;"
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ext/SpeedDialExtension;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/ext/SpeedDialExtension;->setView(Landroid/view/View;IZILjava/lang/String;)V

    goto :goto_0
.end method

.method public showSpeedInputDialog(Ljava/lang/String;)Z
    .locals 5
    .parameter "commd"

    .prologue
    const/4 v3, 0x0

    .line 77
    const-string v2, "SpeedDialExtensionContainer"

    const-string v4, "[showSpeedInputDialog()]"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v2, p0, Lcom/mediatek/contacts/extension/SpeedDialExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v2, :cond_0

    move v1, v3

    .line 89
    :goto_0
    return v1

    .line 81
    :cond_0
    iget-object v2, p0, Lcom/mediatek/contacts/extension/SpeedDialExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 82
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/SpeedDialExtension;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 83
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/ext/SpeedDialExtension;

    invoke-virtual {v2, p1}, Lcom/android/contacts/ext/SpeedDialExtension;->showSpeedInputDialog(Ljava/lang/String;)Z

    move-result v1

    .line 84
    .local v1, result:Z
    if-eqz v1, :cond_1

    goto :goto_0

    .end local v1           #result:Z
    :cond_2
    move v1, v3

    .line 89
    goto :goto_0
.end method
