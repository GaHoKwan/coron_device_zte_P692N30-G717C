.class public Lcom/mediatek/contacts/extension/ContactListExtensionContainer;
.super Lcom/android/contacts/ext/ContactListExtension;
.source "ContactListExtensionContainer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ContactListExtensionContainer"


# instance fields
.field private mSubExtensionList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/contacts/ext/ContactListExtension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/contacts/ext/ContactListExtension;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lcom/android/contacts/ext/ContactListExtension;)V
    .locals 1
    .parameter "extension"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactListExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/extension/ContactListExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactListExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 34
    return-void
.end method

.method public addOptionsMenu(Landroid/view/Menu;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 3
    .parameter "menu"
    .parameter "args"
    .parameter "commd"

    .prologue
    .line 200
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactListExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    .line 201
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactListExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ext/ContactListExtension;

    .line 202
    .local v1, subExtension:Lcom/android/contacts/ext/ContactListExtension;
    invoke-virtual {v1}, Lcom/android/contacts/ext/ContactListExtension;->getCommand()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 203
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/contacts/ext/ContactListExtension;->addOptionsMenu(Landroid/view/Menu;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 208
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #subExtension:Lcom/android/contacts/ext/ContactListExtension;
    :cond_1
    return-void
.end method

.method public buildSimNickname(Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/ArrayList;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "accountType"
    .parameter "values"
    .parameter
    .parameter "slotId"
    .parameter "defSimNickname"
    .parameter "cmd"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 143
    .local p3, nicknameArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/mediatek/contacts/extension/ContactListExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v1, :cond_1

    .line 144
    iget-object v1, p0, Lcom/mediatek/contacts/extension/ContactListExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ext/ContactListExtension;

    .local v0, subExtension:Lcom/android/contacts/ext/ContactListExtension;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 145
    invoke-virtual/range {v0 .. v6}, Lcom/android/contacts/ext/ContactListExtension;->buildSimNickname(Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/ArrayList;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 147
    .local v8, nickName:Ljava/lang/String;
    invoke-static {v8, p5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 152
    .end local v0           #subExtension:Lcom/android/contacts/ext/ContactListExtension;
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #nickName:Ljava/lang/String;
    :goto_0
    return-object v8

    :cond_1
    move-object v8, p5

    goto :goto_0
.end method

.method public checkPhoneTypeArray(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 3
    .parameter "accountType"
    .parameter
    .parameter "commd"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 116
    .local p2, phoneTypeArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v1, "ContactListExtensionContainer"

    const-string v2, "[checkPhoneTypeArray]"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v1, p0, Lcom/mediatek/contacts/extension/ContactListExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v1, :cond_1

    .line 124
    :cond_0
    return-void

    .line 120
    :cond_1
    iget-object v1, p0, Lcom/mediatek/contacts/extension/ContactListExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 121
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/ContactListExtension;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ext/ContactListExtension;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/contacts/ext/ContactListExtension;->checkPhoneTypeArray(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public generateDataBuilder(Landroid/content/Context;Landroid/database/Cursor;Landroid/content/ContentProviderOperation$Builder;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Z
    .locals 11
    .parameter "context"
    .parameter "dataCursor"
    .parameter "builder"
    .parameter "columnNames"
    .parameter "accountType"
    .parameter "mimeType"
    .parameter "slotId"
    .parameter "index"
    .parameter "commd"

    .prologue
    .line 129
    const-string v1, "ContactListExtensionContainer"

    const-string v2, "[generateDataBuilder()]"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v1, p0, Lcom/mediatek/contacts/extension/ContactListExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v1, :cond_1

    .line 131
    iget-object v1, p0, Lcom/mediatek/contacts/extension/ContactListExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ext/ContactListExtension;

    .local v0, subExtension:Lcom/android/contacts/ext/ContactListExtension;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    .line 132
    invoke-virtual/range {v0 .. v9}, Lcom/android/contacts/ext/ContactListExtension;->generateDataBuilder(Landroid/content/Context;Landroid/database/Cursor;Landroid/content/ContentProviderOperation$Builder;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    const/4 v1, 0x1

    .line 138
    .end local v0           #subExtension:Lcom/android/contacts/ext/ContactListExtension;
    .end local v10           #i$:Ljava/util/Iterator;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMultiChoiceLimitCount(Ljava/lang/String;)I
    .locals 6
    .parameter "commd"

    .prologue
    .line 224
    const-string v3, "ContactListExtensionContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getMultiChoiceLimitCount] commd: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v3, p0, Lcom/mediatek/contacts/extension/ContactListExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v3, :cond_1

    .line 226
    iget-object v3, p0, Lcom/mediatek/contacts/extension/ContactListExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/ext/ContactListExtension;

    .line 227
    .local v2, subExtension:Lcom/android/contacts/ext/ContactListExtension;
    invoke-virtual {v2}, Lcom/android/contacts/ext/ContactListExtension;->getCommand()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 228
    invoke-virtual {v2, p1}, Lcom/android/contacts/ext/ContactListExtension;->getMultiChoiceLimitCount(Ljava/lang/String;)I

    move-result v1

    .line 233
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #subExtension:Lcom/android/contacts/ext/ContactListExtension;
    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1}, Lcom/android/contacts/ext/ContactListExtension;->getMultiChoiceLimitCount(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public getPresenceIcon(Landroid/database/Cursor;IILjava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "cursor"
    .parameter "statusResPackageColumn"
    .parameter "statusIconColumn"
    .parameter "commd"

    .prologue
    const/4 v2, 0x0

    .line 160
    const-string v3, "ContactListExtensionContainer"

    const-string v4, "[getPresenceIcon]"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v3, p0, Lcom/mediatek/contacts/extension/ContactListExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v3, :cond_1

    .line 174
    :cond_0
    :goto_0
    return-object v2

    .line 165
    :cond_1
    iget-object v3, p0, Lcom/mediatek/contacts/extension/ContactListExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 166
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/ContactListExtension;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 167
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ext/ContactListExtension;

    .line 168
    .local v0, cle:Lcom/android/contacts/ext/ContactListExtension;
    invoke-virtual {v0}, Lcom/android/contacts/ext/ContactListExtension;->getCommand()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 169
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/contacts/ext/ContactListExtension;->getPresenceIcon(Landroid/database/Cursor;IILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0
.end method

.method public getReplaceString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "src"
    .parameter "commd"

    .prologue
    const/16 v8, 0x77

    const/16 v7, 0x70

    const/16 v6, 0x3b

    const/16 v5, 0x2c

    .line 87
    const-string v2, "ContactListExtensionContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getReplaceString] src : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactListExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v2, :cond_0

    .line 89
    invoke-virtual {p1, v7, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v8, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 99
    :goto_0
    return-object v1

    .line 91
    :cond_0
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactListExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 92
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/ContactListExtension;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 93
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/ext/ContactListExtension;

    invoke-virtual {v2, p1, p2}, Lcom/android/contacts/ext/ContactListExtension;->getReplaceString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, result:Ljava/lang/String;
    if-eqz v1, :cond_1

    goto :goto_0

    .line 99
    .end local v1           #result:Ljava/lang/String;
    :cond_2
    invoke-virtual {p1, v7, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v8, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getStatusString(Landroid/database/Cursor;IILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "cursor"
    .parameter "statusResPackageColumn"
    .parameter "contactsStatusColumn"
    .parameter "commd"

    .prologue
    const/4 v2, 0x0

    .line 180
    const-string v3, "ContactListExtensionContainer"

    const-string v4, "[getStatusString]"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v3, p0, Lcom/mediatek/contacts/extension/ContactListExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v3, :cond_1

    .line 194
    :cond_0
    :goto_0
    return-object v2

    .line 185
    :cond_1
    iget-object v3, p0, Lcom/mediatek/contacts/extension/ContactListExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 186
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/ContactListExtension;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 187
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ext/ContactListExtension;

    .line 188
    .local v0, cle:Lcom/android/contacts/ext/ContactListExtension;
    invoke-virtual {v0}, Lcom/android/contacts/ext/ContactListExtension;->getCommand()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 189
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/contacts/ext/ContactListExtension;->getStatusString(Landroid/database/Cursor;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public registerHostContext(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "args"
    .parameter "commd"

    .prologue
    .line 212
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactListExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    .line 213
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactListExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ext/ContactListExtension;

    .line 214
    .local v1, subExtension:Lcom/android/contacts/ext/ContactListExtension;
    invoke-virtual {v1}, Lcom/android/contacts/ext/ContactListExtension;->getCommand()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 215
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/contacts/ext/ContactListExtension;->registerHostContext(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 220
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #subExtension:Lcom/android/contacts/ext/ContactListExtension;
    :cond_1
    return-void
.end method

.method public remove(Lcom/android/contacts/ext/ContactListExtension;)V
    .locals 1
    .parameter "extension"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactListExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 41
    :goto_0
    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactListExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setExtentionImageView(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 3
    .parameter "view"
    .parameter "commd"

    .prologue
    .line 103
    const-string v1, "ContactListExtensionContainer"

    const-string v2, "[setExtentionIcon]"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v1, p0, Lcom/mediatek/contacts/extension/ContactListExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v1, :cond_1

    .line 111
    :cond_0
    return-void

    .line 107
    :cond_1
    iget-object v1, p0, Lcom/mediatek/contacts/extension/ContactListExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 108
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/ContactListExtension;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ext/ContactListExtension;

    invoke-virtual {v1, p1, p2}, Lcom/android/contacts/ext/ContactListExtension;->setExtentionImageView(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setLookSimStorageMenuVisible(Landroid/view/MenuItem;ZLjava/lang/String;)V
    .locals 5
    .parameter "lookSimStorageMenu"
    .parameter "flag"
    .parameter "commd"

    .prologue
    .line 72
    const-string v2, "ContactListExtensionContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setLookSimStorageMenuVisible] flag : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactListExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    .line 74
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactListExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 75
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/ContactListExtension;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 76
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ext/ContactListExtension;

    .line 77
    .local v0, extension:Lcom/android/contacts/ext/ContactListExtension;
    invoke-virtual {v0}, Lcom/android/contacts/ext/ContactListExtension;->getCommand()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/contacts/ext/ContactListExtension;->setLookSimStorageMenuVisible(Landroid/view/MenuItem;ZLjava/lang/String;)V

    .line 84
    .end local v0           #extension:Lcom/android/contacts/ext/ContactListExtension;
    .end local v1           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/ContactListExtension;>;"
    :goto_0
    return-void

    .line 83
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/contacts/ext/ContactListExtension;->setLookSimStorageMenuVisible(Landroid/view/MenuItem;ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public setMenuItem(Landroid/view/MenuItem;ZLjava/lang/String;)V
    .locals 5
    .parameter "blockVoiceCallmenu"
    .parameter "mOptionsMenuOptions"
    .parameter "commd"

    .prologue
    .line 44
    const-string v2, "ContactListExtensionContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setMenuItem] mOptionsMenuOptions : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactListExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    .line 46
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactListExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 47
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/ContactListExtension;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 48
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ext/ContactListExtension;

    .line 49
    .local v0, extension:Lcom/android/contacts/ext/ContactListExtension;
    invoke-virtual {v0}, Lcom/android/contacts/ext/ContactListExtension;->getCommand()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 50
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/contacts/ext/ContactListExtension;->setMenuItem(Landroid/view/MenuItem;ZLjava/lang/String;)V

    .line 56
    .end local v0           #extension:Lcom/android/contacts/ext/ContactListExtension;
    .end local v1           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/ContactListExtension;>;"
    :goto_0
    return-void

    .line 55
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/contacts/ext/ContactListExtension;->setMenuItem(Landroid/view/MenuItem;ZLjava/lang/String;)V

    goto :goto_0
.end method
