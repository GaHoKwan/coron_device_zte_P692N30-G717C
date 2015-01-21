.class public Lcom/mediatek/contacts/extension/CallListExtensionContainer;
.super Lcom/android/contacts/ext/CallListExtension;
.source "CallListExtensionContainer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CallListExtensionContainer"


# instance fields
.field private mSubExtensionList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/contacts/ext/CallListExtension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/contacts/ext/CallListExtension;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lcom/android/contacts/ext/CallListExtension;)V
    .locals 1
    .parameter "extension"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/mediatek/contacts/extension/CallListExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/extension/CallListExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/extension/CallListExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 29
    return-void
.end method

.method public checkPluginSupport(Ljava/lang/String;)Z
    .locals 5
    .parameter "commd"

    .prologue
    const/4 v3, 0x0

    .line 94
    const-string v2, "CallListExtensionContainer"

    const-string v4, "[checkPluginSupport]"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v2, p0, Lcom/mediatek/contacts/extension/CallListExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v2, :cond_0

    move v1, v3

    .line 106
    :goto_0
    return v1

    .line 98
    :cond_0
    iget-object v2, p0, Lcom/mediatek/contacts/extension/CallListExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 99
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/CallListExtension;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 100
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/ext/CallListExtension;

    invoke-virtual {v2, p1}, Lcom/android/contacts/ext/CallListExtension;->checkPluginSupport(Ljava/lang/String;)Z

    move-result v1

    .line 101
    .local v1, result:Z
    if-eqz v1, :cond_1

    goto :goto_0

    .end local v1           #result:Z
    :cond_2
    move v1, v3

    .line 106
    goto :goto_0
.end method

.method public layoutExtentionIcon(IIIIILandroid/widget/ImageView;Ljava/lang/String;)I
    .locals 10
    .parameter "leftBound"
    .parameter "topBound"
    .parameter "bottomBound"
    .parameter "rightBound"
    .parameter "mGapBetweenImageAndText"
    .parameter "mExtentionIcon"
    .parameter "commd"

    .prologue
    .line 40
    const-string v0, "CallListExtensionContainer"

    const-string v1, "[layoutExtentionIcon]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iget-object v0, p0, Lcom/mediatek/contacts/extension/CallListExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    .line 53
    .end local p4
    :cond_0
    :goto_0
    return p4

    .line 44
    .restart local p4
    :cond_1
    iget-object v0, p0, Lcom/mediatek/contacts/extension/CallListExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 45
    .local v8, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/CallListExtension;>;"
    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ext/CallListExtension;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/ext/CallListExtension;->layoutExtentionIcon(IIIIILandroid/widget/ImageView;Ljava/lang/String;)I

    move-result v9

    .line 48
    .local v9, result:I
    if-eq v9, p4, :cond_2

    move p4, v9

    .line 49
    goto :goto_0
.end method

.method public measureExtention(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2
    .parameter "mExtentionIcon"
    .parameter "commd"

    .prologue
    .line 57
    iget-object v1, p0, Lcom/mediatek/contacts/extension/CallListExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v1, :cond_1

    .line 64
    :cond_0
    return-void

    .line 60
    :cond_1
    iget-object v1, p0, Lcom/mediatek/contacts/extension/CallListExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 61
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/CallListExtension;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ext/CallListExtension;

    invoke-virtual {v1, p1, p2}, Lcom/android/contacts/ext/CallListExtension;->measureExtention(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    .line 196
    iget-object v3, p0, Lcom/mediatek/contacts/extension/CallListExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v3, :cond_1

    .line 197
    const-string v3, "CallListExtensionContainer"

    const-string v4, "onContextItemSelected(), sub extension list is null, just return"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_0
    :goto_0
    return v2

    .line 200
    :cond_1
    const-string v3, "CallListExtensionContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onContextItemSelected(), item = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v3, p0, Lcom/mediatek/contacts/extension/CallListExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 202
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/CallListExtension;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 203
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ext/CallListExtension;

    .line 204
    .local v0, extension:Lcom/android/contacts/ext/CallListExtension;
    invoke-virtual {v0, p1}, Lcom/android/contacts/ext/CallListExtension;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 205
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onCreate(Landroid/app/ListFragment;)V
    .locals 4
    .parameter "fragment"

    .prologue
    .line 110
    iget-object v1, p0, Lcom/mediatek/contacts/extension/CallListExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v1, :cond_1

    .line 111
    const-string v1, "CallListExtensionContainer"

    const-string v2, "onCreate(), sub extension list is null, just return"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_0
    return-void

    .line 114
    :cond_1
    const-string v1, "CallListExtensionContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate(), fragment is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v1, p0, Lcom/mediatek/contacts/extension/CallListExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 116
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/CallListExtension;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ext/CallListExtension;

    invoke-virtual {v1, p1}, Lcom/android/contacts/ext/CallListExtension;->onCreate(Landroid/app/ListFragment;)V

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)Z
    .locals 6
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfo"

    .prologue
    const/4 v2, 0x0

    .line 180
    iget-object v3, p0, Lcom/mediatek/contacts/extension/CallListExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v3, :cond_1

    .line 181
    const-string v3, "CallListExtensionContainer"

    const-string v4, "onListItemLongClick(), sub extension list is null, just return"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_0
    :goto_0
    return v2

    .line 184
    :cond_1
    const-string v3, "CallListExtensionContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreateContextMenu(), menu = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", view = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", menuInfo = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v3, p0, Lcom/mediatek/contacts/extension/CallListExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 186
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/CallListExtension;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 187
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ext/CallListExtension;

    .line 188
    .local v0, extension:Lcom/android/contacts/ext/CallListExtension;
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/contacts/ext/CallListExtension;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 189
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 134
    iget-object v1, p0, Lcom/mediatek/contacts/extension/CallListExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v1, :cond_1

    .line 135
    const-string v1, "CallListExtensionContainer"

    const-string v2, "onDestroy(), sub extension list is null, just return"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_0
    return-void

    .line 138
    :cond_1
    const-string v1, "CallListExtensionContainer"

    const-string v2, "onDestroy()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v1, p0, Lcom/mediatek/contacts/extension/CallListExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 140
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/CallListExtension;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ext/CallListExtension;

    invoke-virtual {v1}, Lcom/android/contacts/ext/CallListExtension;->onDestroy()V

    goto :goto_0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)Z
    .locals 8
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v7, 0x0

    .line 146
    iget-object v1, p0, Lcom/mediatek/contacts/extension/CallListExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v1, :cond_0

    .line 147
    const-string v1, "CallListExtensionContainer"

    const-string v2, "onListItemClick(), sub extension list is null, just return"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v7

    .line 159
    :goto_0
    return v1

    .line 150
    :cond_0
    const-string v1, "CallListExtensionContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onListItemClick(), list view = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", view = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", position = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v1, p0, Lcom/mediatek/contacts/extension/CallListExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 153
    .local v6, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/CallListExtension;>;"
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 154
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ext/CallListExtension;

    .local v0, extension:Lcom/android/contacts/ext/CallListExtension;
    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    .line 155
    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/ext/CallListExtension;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 156
    const/4 v1, 0x1

    goto :goto_0

    .end local v0           #extension:Lcom/android/contacts/ext/CallListExtension;
    :cond_2
    move v1, v7

    .line 159
    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 122
    iget-object v1, p0, Lcom/mediatek/contacts/extension/CallListExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v1, :cond_1

    .line 123
    const-string v1, "CallListExtensionContainer"

    const-string v2, "onViewCreated(), sub extension list is null, just return"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_0
    return-void

    .line 126
    :cond_1
    const-string v1, "CallListExtensionContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onViewCreated(), view = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", savedInstanceState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v1, p0, Lcom/mediatek/contacts/extension/CallListExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 128
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/CallListExtension;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ext/CallListExtension;

    invoke-virtual {v1, p1, p2}, Lcom/android/contacts/ext/CallListExtension;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public remove(Lcom/android/contacts/ext/CallListExtension;)V
    .locals 1
    .parameter "extension"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mediatek/contacts/extension/CallListExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 36
    :goto_0
    return-void

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/extension/CallListExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setExtentionIcon(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "number"
    .parameter "commd"

    .prologue
    const/4 v3, 0x0

    .line 67
    const-string v2, "CallListExtensionContainer"

    const-string v4, "[setExtentionIcon]"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v2, p0, Lcom/mediatek/contacts/extension/CallListExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v2, :cond_0

    move v1, v3

    .line 79
    :goto_0
    return v1

    .line 71
    :cond_0
    iget-object v2, p0, Lcom/mediatek/contacts/extension/CallListExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 72
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/CallListExtension;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 73
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/ext/CallListExtension;

    invoke-virtual {v2, p1, p2}, Lcom/android/contacts/ext/CallListExtension;->setExtentionIcon(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 74
    .local v1, result:Z
    if-eqz v1, :cond_1

    goto :goto_0

    .end local v1           #result:Z
    :cond_2
    move v1, v3

    .line 79
    goto :goto_0
.end method

.method public setExtentionImageView(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 3
    .parameter "view"
    .parameter "commd"

    .prologue
    .line 83
    const-string v1, "CallListExtensionContainer"

    const-string v2, "[setExtentionIcon]"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v1, p0, Lcom/mediatek/contacts/extension/CallListExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v1, :cond_1

    .line 91
    :cond_0
    return-void

    .line 87
    :cond_1
    iget-object v1, p0, Lcom/mediatek/contacts/extension/CallListExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 88
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/CallListExtension;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ext/CallListExtension;

    invoke-virtual {v1, p1, p2}, Lcom/android/contacts/ext/CallListExtension;->setExtentionImageView(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_0
.end method
