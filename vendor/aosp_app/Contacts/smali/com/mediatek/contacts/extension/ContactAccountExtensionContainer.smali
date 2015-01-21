.class public Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;
.super Lcom/android/contacts/ext/ContactAccountExtension;
.source "ContactAccountExtensionContainer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ContactAccountExtensionContainer"


# instance fields
.field private mSubExtensionList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/contacts/ext/ContactAccountExtension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/contacts/ext/ContactAccountExtension;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lcom/android/contacts/ext/ContactAccountExtension;)V
    .locals 1
    .parameter "extension"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 31
    return-void
.end method

.method public buildOperation(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;IILjava/lang/String;)Z
    .locals 9
    .parameter "accountType"
    .parameter
    .parameter "anrList"
    .parameter "text"
    .parameter "backRef"
    .parameter "type"
    .parameter "commd"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Ljava/util/ArrayList;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 212
    .local p2, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-string v1, "ContactAccountExtensionContainer"

    const-string v2, "[buildOperation()]"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v1, p0, Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v1, :cond_1

    .line 214
    iget-object v1, p0, Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ext/ContactAccountExtension;

    .local v0, subExtension:Lcom/android/contacts/ext/ContactAccountExtension;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v7, p7

    .line 215
    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/ext/ContactAccountExtension;->buildOperation(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;IILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    const/4 v1, 0x1

    .line 221
    .end local v0           #subExtension:Lcom/android/contacts/ext/ContactAccountExtension;
    .end local v8           #i$:Ljava/util/Iterator;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public buildOperationFromCursor(Ljava/lang/String;Ljava/util/ArrayList;Landroid/database/Cursor;ILjava/lang/String;)Z
    .locals 7
    .parameter "accountType"
    .parameter
    .parameter "cursor"
    .parameter "index"
    .parameter "cmd"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Landroid/database/Cursor;",
            "I",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 256
    .local p2, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v1, p0, Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v1, :cond_1

    .line 257
    iget-object v1, p0, Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ext/ContactAccountExtension;

    .local v0, subExtension:Lcom/android/contacts/ext/ContactAccountExtension;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    .line 258
    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/ext/ContactAccountExtension;->buildOperationFromCursor(Ljava/lang/String;Ljava/util/ArrayList;Landroid/database/Cursor;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 260
    const/4 v1, 0x1

    .line 264
    .end local v0           #subExtension:Lcom/android/contacts/ext/ContactAccountExtension;
    .end local v6           #i$:Ljava/util/Iterator;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public buildValuesForSim(Ljava/lang/String;Landroid/content/Context;Landroid/content/ContentValues;Ljava/util/ArrayList;Ljava/util/ArrayList;IILjava/util/ArrayList;Ljava/lang/String;)Z
    .locals 11
    .parameter "accountType"
    .parameter "context"
    .parameter "values"
    .parameter
    .parameter
    .parameter "maxAnrCount"
    .parameter "dstSlotId"
    .parameter "anrsList"
    .parameter "commd"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Landroid/content/ContentValues;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;II",
            "Ljava/util/ArrayList;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 240
    .local p4, additionalNumberArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p5, phoneTypeArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v1, "ContactAccountExtensionContainer"

    const-string v2, "[buildValuesForSim()]"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v1, p0, Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v1, :cond_1

    .line 242
    iget-object v1, p0, Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ext/ContactAccountExtension;

    .local v0, subExtension:Lcom/android/contacts/ext/ContactAccountExtension;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    .line 243
    invoke-virtual/range {v0 .. v9}, Lcom/android/contacts/ext/ContactAccountExtension;->buildValuesForSim(Ljava/lang/String;Landroid/content/Context;Landroid/content/ContentValues;Ljava/util/ArrayList;Ljava/util/ArrayList;IILjava/util/ArrayList;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    const/4 v1, 0x1

    .line 250
    .end local v0           #subExtension:Lcom/android/contacts/ext/ContactAccountExtension;
    .end local v10           #i$:Ljava/util/Iterator;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public checkOperationBuilder(Ljava/lang/String;Landroid/content/ContentProviderOperation$Builder;Landroid/database/Cursor;ILjava/lang/String;)Z
    .locals 7
    .parameter "accountType"
    .parameter "builder"
    .parameter "cursor"
    .parameter "type"
    .parameter "commd"

    .prologue
    .line 226
    const-string v1, "ContactAccountExtensionContainer"

    const-string v2, "[checkOperationBuilder()]"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v1, p0, Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v1, :cond_1

    .line 228
    iget-object v1, p0, Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ext/ContactAccountExtension;

    .local v0, subExtension:Lcom/android/contacts/ext/ContactAccountExtension;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    .line 229
    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/ext/ContactAccountExtension;->checkOperationBuilder(Ljava/lang/String;Landroid/content/ContentProviderOperation$Builder;Landroid/database/Cursor;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 230
    const/4 v1, 0x1

    .line 234
    .end local v0           #subExtension:Lcom/android/contacts/ext/ContactAccountExtension;
    .end local v6           #i$:Ljava/util/Iterator;
    :goto_0
    return v1

    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/android/contacts/ext/ContactAccountExtension;->checkOperationBuilder(Ljava/lang/String;Landroid/content/ContentProviderOperation$Builder;Landroid/database/Cursor;ILjava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public getCurrentSlot(Ljava/lang/String;)I
    .locals 6
    .parameter "commd"

    .prologue
    const/4 v3, -0x1

    .line 93
    const-string v4, "ContactAccountExtensionContainer"

    const-string v5, "[getCurrentSlot()]"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v4, p0, Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v4, :cond_1

    .line 95
    iget-object v4, p0, Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/ext/ContactAccountExtension;

    .line 96
    .local v2, subExtension:Lcom/android/contacts/ext/ContactAccountExtension;
    invoke-virtual {v2, p1}, Lcom/android/contacts/ext/ContactAccountExtension;->getCurrentSlot(Ljava/lang/String;)I

    move-result v1

    .line 97
    .local v1, result:I
    if-eq v3, v1, :cond_0

    .line 102
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #result:I
    .end local v2           #subExtension:Lcom/android/contacts/ext/ContactAccountExtension;
    :goto_0
    return v1

    :cond_1
    move v1, v3

    goto :goto_0
.end method

.method public getCustomTypeLabel(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "type"
    .parameter "customColumn"
    .parameter "commd"

    .prologue
    .line 158
    const-string v3, "ContactAccountExtensionContainer"

    const-string v4, "[getCustomTypeLabel()]"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v3, p0, Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v3, :cond_1

    .line 160
    iget-object v3, p0, Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/ext/ContactAccountExtension;

    .line 161
    .local v2, subExtension:Lcom/android/contacts/ext/ContactAccountExtension;
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/contacts/ext/ContactAccountExtension;->getCustomTypeLabel(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, result:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 167
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #result:Ljava/lang/String;
    .end local v2           #subExtension:Lcom/android/contacts/ext/ContactAccountExtension;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getProjection(I[Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .parameter "type"
    .parameter "defaultProjection"
    .parameter "commd"

    .prologue
    .line 118
    const-string v3, "ContactAccountExtensionContainer"

    const-string v4, "[getProjection()]"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v3, p0, Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v3, :cond_1

    .line 120
    iget-object v3, p0, Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/ext/ContactAccountExtension;

    .line 121
    .local v2, subExtension:Lcom/android/contacts/ext/ContactAccountExtension;
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/contacts/ext/ContactAccountExtension;->getProjection(I[Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, result:[Ljava/lang/String;
    invoke-static {p2, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 127
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #result:[Ljava/lang/String;
    .end local v2           #subExtension:Lcom/android/contacts/ext/ContactAccountExtension;
    :goto_0
    return-object v1

    :cond_1
    move-object v1, p2

    goto :goto_0
.end method

.method public getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;ILjava/lang/String;)Ljava/lang/CharSequence;
    .locals 9
    .parameter "res"
    .parameter "type"
    .parameter "label"
    .parameter "slotId"
    .parameter "commd"

    .prologue
    .line 144
    const-string v1, "ContactAccountExtensionContainer"

    const-string v2, "[getTypeLabel()]"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-static {p1, p2, p3}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 146
    .local v6, def:Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v1, :cond_1

    .line 147
    iget-object v1, p0, Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ext/ContactAccountExtension;

    .local v0, subExtension:Lcom/android/contacts/ext/ContactAccountExtension;
    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    .line 148
    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/ext/ContactAccountExtension;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 149
    .local v8, result:Ljava/lang/CharSequence;
    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 154
    .end local v0           #subExtension:Lcom/android/contacts/ext/ContactAccountExtension;
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #result:Ljava/lang/CharSequence;
    :goto_0
    return-object v8

    :cond_1
    move-object v8, v6

    goto :goto_0
.end method

.method public hidePhoneLabel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "accountType"
    .parameter "mimeType"
    .parameter "value"
    .parameter "commd"

    .prologue
    .line 106
    const-string v2, "ContactAccountExtensionContainer"

    const-string v3, "[hidePhoneLabel()]"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    .line 108
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ext/ContactAccountExtension;

    .line 109
    .local v1, subExtension:Lcom/android/contacts/ext/ContactAccountExtension;
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/contacts/ext/ContactAccountExtension;->hidePhoneLabel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    const/4 v2, 0x1

    .line 114
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #subExtension:Lcom/android/contacts/ext/ContactAccountExtension;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isFeatureAccount(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "accountType"
    .parameter "cmd"

    .prologue
    .line 72
    const-string v2, "ContactAccountExtensionContainer"

    const-string v3, "[isFeatureAccount()]"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    .line 74
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ext/ContactAccountExtension;

    .line 75
    .local v1, subExtension:Lcom/android/contacts/ext/ContactAccountExtension;
    invoke-virtual {v1, p1, p2}, Lcom/android/contacts/ext/ContactAccountExtension;->isFeatureAccount(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    const/4 v2, 0x1

    .line 80
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #subExtension:Lcom/android/contacts/ext/ContactAccountExtension;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isFeatureEnabled(Ljava/lang/String;)Z
    .locals 4
    .parameter "cmd"

    .prologue
    .line 60
    const-string v2, "ContactAccountExtensionContainer"

    const-string v3, "[isFeatureEnabled()]"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    .line 62
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ext/ContactAccountExtension;

    .line 63
    .local v1, subExtension:Lcom/android/contacts/ext/ContactAccountExtension;
    invoke-virtual {v1, p1}, Lcom/android/contacts/ext/ContactAccountExtension;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    const/4 v2, 0x1

    .line 68
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #subExtension:Lcom/android/contacts/ext/ContactAccountExtension;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isPhone(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "mimeType"
    .parameter "commd"

    .prologue
    .line 131
    const-string v2, "ContactAccountExtensionContainer"

    const-string v3, "[isPhone()]"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    .line 133
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ext/ContactAccountExtension;

    .line 134
    .local v1, subExtension:Lcom/android/contacts/ext/ContactAccountExtension;
    invoke-virtual {v1, p1, p2}, Lcom/android/contacts/ext/ContactAccountExtension;->isPhone(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 135
    const/4 v2, 0x1

    .line 139
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #subExtension:Lcom/android/contacts/ext/ContactAccountExtension;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isTextValid(Ljava/lang/String;IILjava/lang/String;)Z
    .locals 3
    .parameter "text"
    .parameter "slotId"
    .parameter "feature"
    .parameter "cmd"

    .prologue
    .line 199
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    .line 200
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ext/ContactAccountExtension;

    .line 201
    .local v1, subExtension:Lcom/android/contacts/ext/ContactAccountExtension;
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/contacts/ext/ContactAccountExtension;->isTextValid(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 202
    const/4 v2, 0x0

    .line 206
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #subExtension:Lcom/android/contacts/ext/ContactAccountExtension;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public needNewDataKind(Ljava/lang/String;)Z
    .locals 6
    .parameter "commd"

    .prologue
    const/4 v4, 0x0

    .line 41
    const/4 v0, 0x0

    .line 42
    .local v0, i:I
    const-string v3, "ContactAccountExtensionContainer"

    const-string v5, "[needNewDataKind()]"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-object v3, p0, Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v3, :cond_0

    move v2, v4

    .line 54
    :goto_0
    return v2

    .line 46
    :cond_0
    iget-object v3, p0, Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 47
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/ContactAccountExtension;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 48
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/ext/ContactAccountExtension;

    invoke-virtual {v3, p1}, Lcom/android/contacts/ext/ContactAccountExtension;->needNewDataKind(Ljava/lang/String;)Z

    move-result v2

    .line 49
    .local v2, result:Z
    if-eqz v2, :cond_1

    goto :goto_0

    .end local v2           #result:Z
    :cond_2
    move v2, v4

    .line 54
    goto :goto_0
.end method

.method public remove(Lcom/android/contacts/ext/ContactAccountExtension;)V
    .locals 1
    .parameter "extension"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 38
    :goto_0
    return-void

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setCurrentSlot(ILjava/lang/String;)V
    .locals 4
    .parameter "slotId"
    .parameter "commd"

    .prologue
    .line 84
    const-string v2, "ContactAccountExtensionContainer"

    const-string v3, "[setCurrentSlot()]"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v2, :cond_0

    .line 86
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ext/ContactAccountExtension;

    .line 87
    .local v1, subExtension:Lcom/android/contacts/ext/ContactAccountExtension;
    invoke-virtual {v1, p1, p2}, Lcom/android/contacts/ext/ContactAccountExtension;->setCurrentSlot(ILjava/lang/String;)V

    goto :goto_0

    .line 90
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #subExtension:Lcom/android/contacts/ext/ContactAccountExtension;
    :cond_0
    return-void
.end method

.method public switchSimGuide(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "activity"
    .parameter "type"
    .parameter "commd"

    .prologue
    .line 275
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v2, :cond_0

    .line 276
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ext/ContactAccountExtension;

    .line 277
    .local v1, subExtension:Lcom/android/contacts/ext/ContactAccountExtension;
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/contacts/ext/ContactAccountExtension;->switchSimGuide(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 280
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #subExtension:Lcom/android/contacts/ext/ContactAccountExtension;
    :cond_0
    return-void
.end method

.method public updateContentValues(Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/ArrayList;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 8
    .parameter "accountType"
    .parameter "updatevalues"
    .parameter "anrsList"
    .parameter "text"
    .parameter "type"
    .parameter "commd"

    .prologue
    .line 172
    const-string v1, "ContactAccountExtensionContainer"

    const-string v2, "[updateContentValues()]"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v1, p0, Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v1, :cond_1

    .line 174
    iget-object v1, p0, Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ext/ContactAccountExtension;

    .local v0, subExtension:Lcom/android/contacts/ext/ContactAccountExtension;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    .line 175
    invoke-virtual/range {v0 .. v6}, Lcom/android/contacts/ext/ContactAccountExtension;->updateContentValues(Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/ArrayList;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    const/4 v1, 0x1

    .line 181
    .end local v0           #subExtension:Lcom/android/contacts/ext/ContactAccountExtension;
    .end local v7           #i$:Ljava/util/Iterator;
    :goto_0
    return v1

    :cond_1
    invoke-super/range {p0 .. p6}, Lcom/android/contacts/ext/ContactAccountExtension;->updateContentValues(Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/ArrayList;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public updateDataToDb(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/util/ArrayList;JILjava/lang/String;)Z
    .locals 10
    .parameter "accountType"
    .parameter "resolver"
    .parameter "newArr"
    .parameter "oldArr"
    .parameter "rawId"
    .parameter "type"
    .parameter "commd"

    .prologue
    .line 186
    const-string v1, "ContactAccountExtensionContainer"

    const-string v2, "[updateDataToDb()]"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v1, p0, Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v1, :cond_1

    .line 188
    iget-object v1, p0, Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ext/ContactAccountExtension;

    .local v0, subExtension:Lcom/android/contacts/ext/ContactAccountExtension;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    move/from16 v7, p7

    move-object/from16 v8, p8

    .line 189
    invoke-virtual/range {v0 .. v8}, Lcom/android/contacts/ext/ContactAccountExtension;->updateDataToDb(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/util/ArrayList;JILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    const/4 v1, 0x1

    .line 195
    .end local v0           #subExtension:Lcom/android/contacts/ext/ContactAccountExtension;
    .end local v9           #i$:Ljava/util/Iterator;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
