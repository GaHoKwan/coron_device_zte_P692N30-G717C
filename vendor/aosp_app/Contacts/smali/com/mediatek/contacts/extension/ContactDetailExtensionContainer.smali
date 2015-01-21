.class public Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;
.super Lcom/android/contacts/ext/ContactDetailExtension;
.source "ContactDetailExtensionContainer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ContactDetailExtensionContainer"


# instance fields
.field private mSubExtensionList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/contacts/ext/ContactDetailExtension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/contacts/ext/ContactDetailExtension;-><init>()V

    return-void
.end method


# virtual methods
.method public TextChanged(ILandroid/text/Editable;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "inputType"
    .parameter "s"
    .parameter "phoneText"
    .parameter "location"
    .parameter "commd"

    .prologue
    .line 93
    const-string v1, "ContactDetailExtensionContainer"

    const-string v2, "[TextChanged()]"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v1, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v1, :cond_0

    .line 107
    .end local p3
    :goto_0
    return-object p3

    .line 97
    .restart local p3
    :cond_0
    iget-object v1, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 98
    .local v6, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/ContactDetailExtension;>;"
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 99
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ext/ContactDetailExtension;

    .line 100
    .local v0, extension:Lcom/android/contacts/ext/ContactDetailExtension;
    invoke-virtual {v0}, Lcom/android/contacts/ext/ContactDetailExtension;->getCommand()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    .line 101
    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/ext/ContactDetailExtension;->TextChanged(ILandroid/text/Editable;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, result:Ljava/lang/String;
    move-object p3, v7

    .line 103
    goto :goto_0

    .line 107
    .end local v0           #extension:Lcom/android/contacts/ext/ContactDetailExtension;
    .end local v7           #result:Ljava/lang/String;
    :cond_2
    invoke-super/range {p0 .. p5}, Lcom/android/contacts/ext/ContactDetailExtension;->TextChanged(ILandroid/text/Editable;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0
.end method

.method public add(Lcom/android/contacts/ext/ContactDetailExtension;)V
    .locals 1
    .parameter "extension"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 34
    return-void
.end method

.method public canSetExtensionIcon(JLjava/lang/String;)Z
    .locals 5
    .parameter "contactId"
    .parameter "commd"

    .prologue
    const/4 v3, 0x0

    .line 302
    const-string v2, "ContactDetailExtensionContainer"

    const-string v4, "[canSetExtensionIcon()]"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v2, :cond_0

    move v1, v3

    .line 314
    :goto_0
    return v1

    .line 306
    :cond_0
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 307
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/ContactDetailExtension;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 308
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/ext/ContactDetailExtension;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/contacts/ext/ContactDetailExtension;->canSetExtensionIcon(JLjava/lang/String;)Z

    move-result v1

    .line 309
    .local v1, result:Z
    if-eqz v1, :cond_1

    goto :goto_0

    .end local v1           #result:Z
    :cond_2
    move v1, v3

    .line 314
    goto :goto_0
.end method

.method public checkMenuItem(ZZZLjava/lang/String;)Z
    .locals 4
    .parameter "mtkGeminiSupport"
    .parameter "hasPhoneEntry"
    .parameter "notMe"
    .parameter "commd"

    .prologue
    .line 112
    const-string v2, "ContactDetailExtensionContainer"

    const-string v3, "[checkMenuItem()]"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    .line 114
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 115
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/ContactDetailExtension;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 116
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ext/ContactDetailExtension;

    .line 117
    .local v0, extension:Lcom/android/contacts/ext/ContactDetailExtension;
    invoke-virtual {v0}, Lcom/android/contacts/ext/ContactDetailExtension;->getCommand()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/contacts/ext/ContactDetailExtension;->checkMenuItem(ZZZLjava/lang/String;)Z

    move-result v2

    .line 122
    .end local v0           #extension:Lcom/android/contacts/ext/ContactDetailExtension;
    .end local v1           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/ContactDetailExtension;>;"
    :goto_0
    return v2

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/contacts/ext/ContactDetailExtension;->checkMenuItem(ZZZLjava/lang/String;)Z

    move-result v2

    goto :goto_0
.end method

.method public checkPluginSupport(Ljava/lang/String;)Z
    .locals 5
    .parameter "commd"

    .prologue
    const/4 v3, 0x0

    .line 264
    const-string v2, "ContactDetailExtensionContainer"

    const-string v4, "[checkPluginSupport()]"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v2, :cond_0

    move v1, v3

    .line 276
    :goto_0
    return v1

    .line 268
    :cond_0
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 269
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/ContactDetailExtension;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 270
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/ext/ContactDetailExtension;

    invoke-virtual {v2, p1}, Lcom/android/contacts/ext/ContactDetailExtension;->checkPluginSupport(Ljava/lang/String;)Z

    move-result v1

    .line 271
    .local v1, result:Z
    if-eqz v1, :cond_1

    goto :goto_0

    .end local v1           #result:Z
    :cond_2
    move v1, v3

    .line 276
    goto :goto_0
.end method

.method public collapsePhoneEntries(Ljava/lang/String;)Z
    .locals 5
    .parameter "commd"

    .prologue
    const/4 v3, 0x1

    .line 248
    const-string v2, "ContactDetailExtensionContainer"

    const-string v4, "[collapsePhoneEntries()]"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v2, :cond_0

    move v1, v3

    .line 260
    :goto_0
    return v1

    .line 252
    :cond_0
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 253
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/ContactDetailExtension;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 254
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/ext/ContactDetailExtension;

    invoke-virtual {v2, p1}, Lcom/android/contacts/ext/ContactDetailExtension;->collapsePhoneEntries(Ljava/lang/String;)Z

    move-result v1

    .line 255
    .local v1, result:Z
    if-nez v1, :cond_1

    goto :goto_0

    .end local v1           #result:Z
    :cond_2
    move v1, v3

    .line 260
    goto :goto_0
.end method

.method public getAdditionNumberCount(ILjava/lang/String;)I
    .locals 5
    .parameter "slotId"
    .parameter "commd"

    .prologue
    .line 386
    const-string v3, "ContactDetailExtensionContainer"

    const-string v4, "[getAdditionNumberCount()]"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-object v3, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v3, :cond_1

    .line 388
    iget-object v3, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/ext/ContactDetailExtension;

    .line 389
    .local v2, subExtension:Lcom/android/contacts/ext/ContactDetailExtension;
    invoke-virtual {v2, p1, p2}, Lcom/android/contacts/ext/ContactDetailExtension;->getAdditionNumberCount(ILjava/lang/String;)I

    move-result v1

    .line 390
    .local v1, result:I
    if-eqz v1, :cond_0

    .line 395
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #result:I
    .end local v2           #subExtension:Lcom/android/contacts/ext/ContactDetailExtension;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getExtensionTitles(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "data"
    .parameter "mimeType"
    .parameter "kind"
    .parameter
    .parameter "commd"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 281
    .local p4, mPhoneAndSubtitle:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "ContactDetailExtensionContainer"

    const-string v1, "[getExtensionTitles()]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 298
    .end local p3
    :goto_0
    return-object p3

    .line 285
    .restart local p3
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 286
    .local v6, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/ContactDetailExtension;>;"
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 287
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ext/ContactDetailExtension;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/ext/ContactDetailExtension;->getExtensionTitles(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 289
    .local v7, str:Ljava/lang/String;
    const-string v0, "ContactDetailExtensionContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "str ,data, kind: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 291
    const-string v0, "ContactDetailExtensionContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "str1 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object p3, v7

    .line 292
    goto :goto_0

    .line 297
    .end local v7           #str:Ljava/lang/String;
    :cond_2
    const-string v0, "ContactDetailExtensionContainer"

    const-string v1, "return null too"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getExtentionIntent(IILjava/lang/String;)Landroid/content/Intent;
    .locals 5
    .parameter "action01"
    .parameter "action02"
    .parameter "commd"

    .prologue
    const/4 v3, 0x0

    .line 215
    const-string v2, "ContactDetailExtensionContainer"

    const-string v4, "[getExtentionIntent()]"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v2, :cond_0

    move-object v1, v3

    .line 227
    :goto_0
    return-object v1

    .line 219
    :cond_0
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 220
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/ContactDetailExtension;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 221
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/ext/ContactDetailExtension;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/contacts/ext/ContactDetailExtension;->getExtentionIntent(IILjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 222
    .local v1, result:Landroid/content/Intent;
    if-eqz v1, :cond_1

    goto :goto_0

    .end local v1           #result:Landroid/content/Intent;
    :cond_2
    move-object v1, v3

    .line 227
    goto :goto_0
.end method

.method public getExtentionKind(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "mimeType"
    .parameter "needSetName"
    .parameter "name"
    .parameter "commd"

    .prologue
    const/4 v3, 0x0

    .line 231
    const-string v2, "ContactDetailExtensionContainer"

    const-string v4, "[getExtentionKind()]"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v2, :cond_0

    move v1, v3

    .line 244
    :goto_0
    return v1

    .line 235
    :cond_0
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 236
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/ContactDetailExtension;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 237
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/ext/ContactDetailExtension;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/contacts/ext/ContactDetailExtension;->getExtentionKind(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 239
    .local v1, result:Z
    if-eqz v1, :cond_1

    goto :goto_0

    .end local v1           #result:Z
    :cond_2
    move v1, v3

    .line 244
    goto :goto_0
.end method

.method public getExtentionMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "commd"

    .prologue
    const/4 v3, 0x0

    .line 170
    const-string v2, "ContactDetailExtensionContainer"

    const-string v4, "[getExtentionMimeType()]"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v2, :cond_0

    move-object v1, v3

    .line 182
    :goto_0
    return-object v1

    .line 174
    :cond_0
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 175
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/ContactDetailExtension;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 176
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/ext/ContactDetailExtension;

    invoke-virtual {v2, p1}, Lcom/android/contacts/ext/ContactDetailExtension;->getExtentionMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, str:Ljava/lang/String;
    if-eqz v1, :cond_1

    goto :goto_0

    .end local v1           #str:Ljava/lang/String;
    :cond_2
    move-object v1, v3

    .line 182
    goto :goto_0
.end method

.method public getMaxEmptyEditors(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .parameter "mimeType"
    .parameter "commd"

    .prologue
    const/4 v3, 0x1

    .line 373
    const-string v4, "ContactDetailExtensionContainer"

    const-string v5, "[getMaxEmptyEditors()]"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v4, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v4, :cond_1

    .line 375
    iget-object v4, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/ext/ContactDetailExtension;

    .line 376
    .local v2, subExtension:Lcom/android/contacts/ext/ContactDetailExtension;
    invoke-virtual {v2, p1, p2}, Lcom/android/contacts/ext/ContactDetailExtension;->getMaxEmptyEditors(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 377
    .local v1, result:I
    if-eq v3, v1, :cond_0

    .line 382
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #result:I
    .end local v2           #subExtension:Lcom/android/contacts/ext/ContactDetailExtension;
    :goto_0
    return v1

    :cond_1
    move v1, v3

    goto :goto_0
.end method

.method public getRCSIcon(J)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 461
    const-string v2, "ContactDetailExtensionContainer"

    const-string v4, "[updateRCSIconWithActionBar()]"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v2, :cond_0

    move-object v0, v3

    .line 472
    :goto_0
    return-object v0

    .line 465
    :cond_0
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 466
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/ContactDetailExtension;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 467
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/ext/ContactDetailExtension;

    invoke-virtual {v2, p1, p2}, Lcom/android/contacts/ext/ContactDetailExtension;->getRCSIcon(J)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 468
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    goto :goto_0

    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_2
    move-object v0, v3

    .line 472
    goto :goto_0
.end method

.method public isDoublePhoneNumber([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "buffer"
    .parameter "bufferName"
    .parameter "commd"

    .prologue
    const/4 v0, 0x1

    .line 399
    const-string v4, "ContactDetailExtensionContainer"

    const-string v5, "[isDoublePhoneNumber()]"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    aget-object v4, p1, v0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    aget-object v4, p2, v0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 401
    .local v0, def:Z
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v4, :cond_3

    .line 402
    iget-object v4, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/ext/ContactDetailExtension;

    .line 403
    .local v3, subExtension:Lcom/android/contacts/ext/ContactDetailExtension;
    invoke-virtual {v3, p1, p2, p3}, Lcom/android/contacts/ext/ContactDetailExtension;->isDoublePhoneNumber([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 404
    .local v2, result:Z
    if-eq v0, v2, :cond_1

    .line 409
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #result:Z
    .end local v3           #subExtension:Lcom/android/contacts/ext/ContactDetailExtension;
    :goto_1
    return v2

    .line 400
    .end local v0           #def:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0       #def:Z
    :cond_3
    move v2, v0

    .line 409
    goto :goto_1
.end method

.method public isMimeTypeSupported(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "mimeType"
    .parameter "plugin"
    .parameter "commd"

    .prologue
    const/4 v2, 0x0

    .line 417
    const-string v3, "ContactDetailExtensionContainer"

    const-string v4, "[isMimeTypeSupported()]"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iget-object v3, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v3, :cond_1

    .line 430
    :cond_0
    :goto_0
    return v2

    .line 421
    :cond_1
    iget-object v3, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 423
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/ContactDetailExtension;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 424
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ext/ContactDetailExtension;

    .line 425
    .local v0, cde:Lcom/android/contacts/ext/ContactDetailExtension;
    invoke-virtual {v0}, Lcom/android/contacts/ext/ContactDetailExtension;->getCommand()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 426
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/contacts/ext/ContactDetailExtension;->isMimeTypeSupported(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

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
    .line 187
    const-string v0, "ContactDetailExtensionContainer"

    const-string v1, "[layoutExtentionIcon()]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    .line 200
    .end local p4
    :cond_0
    :goto_0
    return p4

    .line 191
    .restart local p4
    :cond_1
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 192
    .local v8, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/ContactDetailExtension;>;"
    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ext/ContactDetailExtension;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/ext/ContactDetailExtension;->layoutExtentionIcon(IIIIILandroid/widget/ImageView;Ljava/lang/String;)I

    move-result v9

    .line 195
    .local v9, result:I
    if-eq v9, p4, :cond_2

    move p4, v9

    .line 196
    goto :goto_0
.end method

.method public measureExtentionIcon(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 3
    .parameter "mExtentionIcon"
    .parameter "commd"

    .prologue
    .line 204
    const-string v1, "ContactDetailExtensionContainer"

    const-string v2, "[measureExtentionIcon()]"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v1, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v1, :cond_1

    .line 212
    :cond_0
    return-void

    .line 208
    :cond_1
    iget-object v1, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 209
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/ContactDetailExtension;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ext/ContactDetailExtension;

    invoke-virtual {v1, p1, p2}, Lcom/android/contacts/ext/ContactDetailExtension;->measureExtentionIcon(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onContactDetailOpen(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 3
    .parameter "contactLookupUri"
    .parameter "commd"

    .prologue
    .line 159
    const-string v1, "ContactDetailExtensionContainer"

    const-string v2, "[onContactDetailOpen()]"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v1, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v1, :cond_1

    .line 167
    :cond_0
    return-void

    .line 163
    :cond_1
    iget-object v1, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 164
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/ContactDetailExtension;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ext/ContactDetailExtension;

    invoke-virtual {v1, p1, p2}, Lcom/android/contacts/ext/ContactDetailExtension;->onContactDetailOpen(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public remove(Lcom/android/contacts/ext/ContactDetailExtension;)V
    .locals 1
    .parameter "extension"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 41
    :goto_0
    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public repChar(Ljava/lang/String;CCCCLjava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "phoneNumber"
    .parameter "pause"
    .parameter "p"
    .parameter "wait"
    .parameter "w"
    .parameter "commd"

    .prologue
    .line 142
    const-string v0, "ContactDetailExtensionContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "phoneNumber : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    .line 155
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 146
    .restart local p1
    :cond_1
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 147
    .local v7, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/ContactDetailExtension;>;"
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ext/ContactDetailExtension;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/contacts/ext/ContactDetailExtension;->repChar(Ljava/lang/String;CCCCLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 150
    .local v8, result:Ljava/lang/String;
    if-eqz v8, :cond_2

    move-object p1, v8

    .line 151
    goto :goto_0
.end method

.method public setExtensionImageView(Landroid/widget/ImageView;JLjava/lang/String;)V
    .locals 3
    .parameter "view"
    .parameter "contactId"
    .parameter "commd"

    .prologue
    .line 318
    const-string v1, "ContactDetailExtensionContainer"

    const-string v2, "[setExtensionImageView()]"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v1, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v1, :cond_1

    .line 327
    :cond_0
    return-void

    .line 322
    :cond_1
    iget-object v1, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 323
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/ContactDetailExtension;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 324
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ext/ContactDetailExtension;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/contacts/ext/ContactDetailExtension;->setExtensionImageView(Landroid/widget/ImageView;JLjava/lang/String;)V

    goto :goto_0
.end method

.method public setMenu(Landroid/view/ContextMenu;ZIZIILandroid/app/Activity;IILjava/lang/String;)V
    .locals 13
    .parameter "menu"
    .parameter "isNotDirectoryEntry"
    .parameter "simId"
    .parameter "mOptionsMenuOptions"
    .parameter "delSim"
    .parameter "newSim"
    .parameter "activity"
    .parameter "removeAssociation"
    .parameter "menuAssociation"
    .parameter "commd"

    .prologue
    .line 46
    const-string v2, "ContactDetailExtensionContainer"

    const-string v3, "[setMenu()]"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    .line 48
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 49
    .local v12, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/ContactDetailExtension;>;"
    :cond_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 50
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ext/ContactDetailExtension;

    .line 51
    .local v1, extension:Lcom/android/contacts/ext/ContactDetailExtension;
    invoke-virtual {v1}, Lcom/android/contacts/ext/ContactDetailExtension;->getCommand()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p10

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    .line 52
    invoke-virtual/range {v1 .. v11}, Lcom/android/contacts/ext/ContactDetailExtension;->setMenu(Landroid/view/ContextMenu;ZIZIILandroid/app/Activity;IILjava/lang/String;)V

    .line 60
    .end local v1           #extension:Lcom/android/contacts/ext/ContactDetailExtension;
    .end local v12           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/ContactDetailExtension;>;"
    :goto_0
    return-void

    .line 58
    :cond_1
    invoke-super/range {p0 .. p10}, Lcom/android/contacts/ext/ContactDetailExtension;->setMenu(Landroid/view/ContextMenu;ZIZIILandroid/app/Activity;IILjava/lang/String;)V

    goto :goto_0
.end method

.method public setMenuVisible(Landroid/view/MenuItem;ZZLjava/lang/String;)V
    .locals 4
    .parameter "associationMenuItem"
    .parameter "mOptionsMenuOptions"
    .parameter "isEnabled"
    .parameter "commd"

    .prologue
    .line 127
    const-string v2, "ContactDetailExtensionContainer"

    const-string v3, "[setMenuVisible()]"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    .line 129
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 130
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/ContactDetailExtension;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 131
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ext/ContactDetailExtension;

    .line 132
    .local v0, extension:Lcom/android/contacts/ext/ContactDetailExtension;
    invoke-virtual {v0}, Lcom/android/contacts/ext/ContactDetailExtension;->getCommand()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 133
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/contacts/ext/ContactDetailExtension;->setMenuVisible(Landroid/view/MenuItem;ZZLjava/lang/String;)V

    .line 139
    .end local v0           #extension:Lcom/android/contacts/ext/ContactDetailExtension;
    .end local v1           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/ContactDetailExtension;>;"
    :goto_0
    return-void

    .line 138
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/contacts/ext/ContactDetailExtension;->setMenuVisible(Landroid/view/MenuItem;ZZLjava/lang/String;)V

    goto :goto_0
.end method

.method public setSPChar(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "string"
    .parameter "commd"

    .prologue
    .line 63
    const-string v2, "ContactDetailExtensionContainer"

    const-string v3, "[setSPChar()]"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v2, :cond_1

    .line 77
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 67
    .restart local p1
    :cond_1
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 68
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/ContactDetailExtension;>;"
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/ext/ContactDetailExtension;

    invoke-virtual {v2, p1, p2}, Lcom/android/contacts/ext/ContactDetailExtension;->setSPChar(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, str:Ljava/lang/String;
    if-eqz v1, :cond_3

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move-object p1, v1

    .line 71
    goto :goto_0

    .line 72
    :cond_3
    if-eqz p1, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object p1, v1

    .line 73
    goto :goto_0
.end method

.method public setViewKeyListener(Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 3
    .parameter "fieldView"
    .parameter "commd"

    .prologue
    .line 81
    const-string v1, "ContactDetailExtensionContainer"

    const-string v2, "[setViewKeyListener]"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v1, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v1, :cond_1

    .line 89
    :cond_0
    return-void

    .line 85
    :cond_1
    iget-object v1, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 86
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/ContactDetailExtension;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ext/ContactDetailExtension;

    invoke-virtual {v1, p1, p2}, Lcom/android/contacts/ext/ContactDetailExtension;->setViewKeyListener(Landroid/widget/EditText;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setViewVisible(Landroid/view/View;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIII)V
    .locals 14
    .parameter "view"
    .parameter "activity"
    .parameter "data1"
    .parameter "data2"
    .parameter "data3"
    .parameter "commd"
    .parameter "res1"
    .parameter "res2"
    .parameter "res3"
    .parameter "res4"
    .parameter "res5"
    .parameter "res6"

    .prologue
    .line 331
    const-string v0, "ContactDetailExtensionContainer"

    const-string v1, "[setViewVisible()]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    .line 341
    :cond_0
    return-void

    .line 335
    :cond_1
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 336
    .local v13, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/ContactDetailExtension;>;"
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ext/ContactDetailExtension;

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    invoke-virtual/range {v0 .. v12}, Lcom/android/contacts/ext/ContactDetailExtension;->setViewVisible(Landroid/view/View;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIII)V

    goto :goto_0
.end method

.method public setViewVisibleWithBundle(Landroid/view/View;Landroid/app/Activity;Landroid/os/Bundle;IIIIIIIILjava/lang/String;)V
    .locals 15
    .parameter "view"
    .parameter "activity"
    .parameter "data"
    .parameter "res1"
    .parameter "res2"
    .parameter "res3"
    .parameter "res4"
    .parameter "res5"
    .parameter "res6"
    .parameter "res7"
    .parameter "res8"
    .parameter "commd"

    .prologue
    .line 438
    const-string v2, "ContactDetailExtensionContainer"

    const-string v3, "[setViewVisibleWithBundle()]"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v2, :cond_1

    .line 452
    :cond_0
    return-void

    .line 442
    :cond_1
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 444
    .local v14, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/ContactDetailExtension;>;"
    :cond_2
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 445
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ext/ContactDetailExtension;

    .line 446
    .local v1, cde:Lcom/android/contacts/ext/ContactDetailExtension;
    invoke-virtual {v1}, Lcom/android/contacts/ext/ContactDetailExtension;->getCommand()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p12

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move-object/from16 v13, p12

    .line 447
    invoke-virtual/range {v1 .. v13}, Lcom/android/contacts/ext/ContactDetailExtension;->setViewVisibleWithBundle(Landroid/view/View;Landroid/app/Activity;Landroid/os/Bundle;IIIIIIIILjava/lang/String;)V

    goto :goto_0
.end method

.method public setViewVisibleWithCharSequence(Landroid/view/View;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;IIIIII)V
    .locals 14
    .parameter "view"
    .parameter "activity"
    .parameter "data1"
    .parameter "data2"
    .parameter "data3"
    .parameter "commd"
    .parameter "res1"
    .parameter "res2"
    .parameter "res3"
    .parameter "res4"
    .parameter "res5"
    .parameter "res6"

    .prologue
    .line 346
    const-string v0, "ContactDetailExtensionContainer"

    const-string v1, "[setViewVisibleWithCharSequence()]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    .line 356
    :cond_0
    return-void

    .line 350
    :cond_1
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 351
    .local v13, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/ContactDetailExtension;>;"
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ext/ContactDetailExtension;

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    invoke-virtual/range {v0 .. v12}, Lcom/android/contacts/ext/ContactDetailExtension;->setViewVisibleWithCharSequence(Landroid/view/View;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;IIIIII)V

    goto :goto_0
.end method

.method public updateView(Landroid/view/View;IILjava/lang/String;)Z
    .locals 4
    .parameter "view"
    .parameter "type"
    .parameter "action"
    .parameter "commd"

    .prologue
    .line 361
    const-string v2, "ContactDetailExtensionContainer"

    const-string v3, "[updateView()]"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    .line 363
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ext/ContactDetailExtension;

    .line 364
    .local v1, subExtension:Lcom/android/contacts/ext/ContactDetailExtension;
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/contacts/ext/ContactDetailExtension;->updateView(Landroid/view/View;IILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 365
    const/4 v2, 0x1

    .line 369
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #subExtension:Lcom/android/contacts/ext/ContactDetailExtension;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
