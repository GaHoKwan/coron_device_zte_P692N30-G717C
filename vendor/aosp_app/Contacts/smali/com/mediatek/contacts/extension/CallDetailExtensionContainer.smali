.class public Lcom/mediatek/contacts/extension/CallDetailExtensionContainer;
.super Lcom/android/contacts/ext/CallDetailExtension;
.source "CallDetailExtensionContainer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CallDetailExtensionContainer"


# instance fields
.field private mSubExtensionList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/contacts/ext/CallDetailExtension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/contacts/ext/CallDetailExtension;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lcom/android/contacts/ext/CallDetailExtension;)V
    .locals 1
    .parameter "extension"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/mediatek/contacts/extension/CallDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/extension/CallDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/extension/CallDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 29
    return-void
.end method

.method public doInBackgroundForUpdateData([Landroid/net/Uri;[Lcom/android/contacts/PhoneCallDetails;)[Lcom/android/contacts/PhoneCallDetails;
    .locals 6
    .parameter "callUris"
    .parameter "phoneCallDetails"

    .prologue
    .line 193
    iget-object v3, p0, Lcom/mediatek/contacts/extension/CallDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v3, :cond_0

    .line 194
    const-string v3, "CallDetailExtensionContainer"

    const-string v4, "doInBackgroundForUpdateData(), sub extension list is null, just return"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    .end local p2
    :goto_0
    return-object p2

    .line 197
    .restart local p2
    :cond_0
    const-string v3, "CallDetailExtensionContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doInBackgroundForUpdateData(), callUris = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", phoneCallDetails = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v3, p0, Lcom/mediatek/contacts/extension/CallDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 200
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/CallDetailExtension;>;"
    move-object v2, p2

    .line 201
    .local v2, resultPhoneCallDetails:[Lcom/android/contacts/PhoneCallDetails;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 202
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ext/CallDetailExtension;

    .line 203
    .local v0, extension:Lcom/android/contacts/ext/CallDetailExtension;
    invoke-virtual {v0, p1, v2}, Lcom/android/contacts/ext/CallDetailExtension;->doInBackgroundForUpdateData([Landroid/net/Uri;[Lcom/android/contacts/PhoneCallDetails;)[Lcom/android/contacts/PhoneCallDetails;

    move-result-object v2

    .line 204
    goto :goto_1

    .end local v0           #extension:Lcom/android/contacts/ext/CallDetailExtension;
    :cond_1
    move-object p2, v2

    .line 205
    goto :goto_0
.end method

.method public isNeedAutoRejectedMenu(ZLjava/lang/String;)Z
    .locals 5
    .parameter "isAutoRejectedFilterMode"
    .parameter "commd"

    .prologue
    const/4 v3, 0x0

    .line 54
    const-string v2, "CallDetailExtensionContainer"

    const-string v4, "[isNeedAutoRejectedMenu]"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object v2, p0, Lcom/mediatek/contacts/extension/CallDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v2, :cond_0

    move v2, v3

    .line 67
    :goto_0
    return v2

    .line 58
    :cond_0
    iget-object v2, p0, Lcom/mediatek/contacts/extension/CallDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 59
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/CallDetailExtension;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 60
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/ext/CallDetailExtension;

    invoke-virtual {v2, p1, p2}, Lcom/android/contacts/ext/CallDetailExtension;->isNeedAutoRejectedMenu(ZLjava/lang/String;)Z

    move-result v1

    .line 62
    .local v1, result:Z
    if-eqz v1, :cond_1

    .line 63
    const/4 v2, 0x1

    goto :goto_0

    .end local v1           #result:Z
    :cond_2
    move v2, v3

    .line 67
    goto :goto_0
.end method

.method public onCreate(Landroid/app/Activity;Lcom/android/contacts/ext/IPhoneNumberHelper;)V
    .locals 4
    .parameter "activity"
    .parameter "phoneNumberHelper"

    .prologue
    .line 121
    iget-object v1, p0, Lcom/mediatek/contacts/extension/CallDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v1, :cond_1

    .line 122
    const-string v1, "CallDetailExtensionContainer"

    const-string v2, "onCreate(), sub extension list is null, just return"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_0
    return-void

    .line 125
    :cond_1
    const-string v1, "CallDetailExtensionContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate(), activity = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", phoneNumberHelper = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v1, p0, Lcom/mediatek/contacts/extension/CallDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 127
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/CallDetailExtension;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ext/CallDetailExtension;

    invoke-virtual {v1, p1, p2}, Lcom/android/contacts/ext/CallDetailExtension;->onCreate(Landroid/app/Activity;Lcom/android/contacts/ext/IPhoneNumberHelper;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 145
    iget-object v3, p0, Lcom/mediatek/contacts/extension/CallDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v3, :cond_1

    .line 146
    const-string v3, "CallDetailExtensionContainer"

    const-string v4, "onListItemLongClick(), sub extension list is null, just return"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_0
    :goto_0
    return v2

    .line 149
    :cond_1
    const-string v3, "CallDetailExtensionContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreateContextMenu(), menu = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v3, p0, Lcom/mediatek/contacts/extension/CallDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 151
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/CallDetailExtension;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 152
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ext/CallDetailExtension;

    .line 153
    .local v0, extension:Lcom/android/contacts/ext/CallDetailExtension;
    invoke-virtual {v0, p1}, Lcom/android/contacts/ext/CallDetailExtension;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 154
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 133
    iget-object v1, p0, Lcom/mediatek/contacts/extension/CallDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v1, :cond_1

    .line 134
    const-string v1, "CallDetailExtensionContainer"

    const-string v2, "onDestroy(), sub extension list is null, just return"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_0
    return-void

    .line 137
    :cond_1
    const-string v1, "CallDetailExtensionContainer"

    const-string v2, "onDestroy()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v1, p0, Lcom/mediatek/contacts/extension/CallDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 139
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/CallDetailExtension;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ext/CallDetailExtension;

    invoke-virtual {v1}, Lcom/android/contacts/ext/CallDetailExtension;->onDestroy()V

    goto :goto_0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 6
    .parameter "featureId"
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    .line 177
    iget-object v3, p0, Lcom/mediatek/contacts/extension/CallDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v3, :cond_1

    .line 178
    const-string v3, "CallDetailExtensionContainer"

    const-string v4, "onMenuItemSelected(), sub extension list is null, just return"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_0
    :goto_0
    return v2

    .line 181
    :cond_1
    const-string v3, "CallDetailExtensionContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onMenuItemSelected(), feature id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", item = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v3, p0, Lcom/mediatek/contacts/extension/CallDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 183
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/CallDetailExtension;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 184
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ext/CallDetailExtension;

    .line 185
    .local v0, extension:Lcom/android/contacts/ext/CallDetailExtension;
    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/ext/CallDetailExtension;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 186
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 161
    iget-object v3, p0, Lcom/mediatek/contacts/extension/CallDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v3, :cond_1

    .line 162
    const-string v3, "CallDetailExtensionContainer"

    const-string v4, "onContextItemSelected(), sub extension list is null, just return"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_0
    :goto_0
    return v2

    .line 165
    :cond_1
    const-string v3, "CallDetailExtensionContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPrepareOptionsMenu(), menu = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v3, p0, Lcom/mediatek/contacts/extension/CallDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 167
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/CallDetailExtension;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 168
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ext/CallDetailExtension;

    .line 169
    .local v0, extension:Lcom/android/contacts/ext/CallDetailExtension;
    invoke-virtual {v0, p1}, Lcom/android/contacts/ext/CallDetailExtension;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 170
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public remove(Lcom/android/contacts/ext/CallDetailExtension;)V
    .locals 1
    .parameter "extension"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mediatek/contacts/extension/CallDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 36
    :goto_0
    return-void

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/extension/CallDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setChar(ZLjava/lang/String;Ljava/lang/String;IZLjava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "notSPChar"
    .parameter "str"
    .parameter "spChar"
    .parameter "charType"
    .parameter "secondSelection"
    .parameter "commd"

    .prologue
    .line 72
    const-string v0, "CallDetailExtensionContainer"

    const-string v1, "[setChar]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v0, p0, Lcom/mediatek/contacts/extension/CallDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 74
    const/4 v8, 0x0

    .line 85
    :goto_0
    return-object v8

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/extension/CallDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 77
    .local v7, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/CallDetailExtension;>;"
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 78
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ext/CallDetailExtension;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/contacts/ext/CallDetailExtension;->setChar(ZLjava/lang/String;Ljava/lang/String;IZLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 80
    .local v8, result:Ljava/lang/String;
    if-eqz v8, :cond_1

    goto :goto_0

    .line 85
    .end local v8           #result:Ljava/lang/String;
    :cond_2
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public setSimInfo(ILandroid/widget/TextView;)Z
    .locals 5
    .parameter "simId"
    .parameter "simIndicator"

    .prologue
    const/4 v2, 0x0

    .line 209
    iget-object v3, p0, Lcom/mediatek/contacts/extension/CallDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v3, :cond_1

    .line 210
    const-string v3, "CallDetailExtensionContainer"

    const-string v4, "setSimInfo(), sub extension list is null, just return"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_0
    :goto_0
    return v2

    .line 213
    :cond_1
    iget-object v3, p0, Lcom/mediatek/contacts/extension/CallDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 214
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/CallDetailExtension;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 215
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ext/CallDetailExtension;

    .line 216
    .local v0, extension:Lcom/android/contacts/ext/CallDetailExtension;
    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/ext/CallDetailExtension;->setSimInfo(ILandroid/widget/TextView;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 217
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setTextView(ILandroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "callType"
    .parameter "durationView"
    .parameter "formatDuration"
    .parameter "commd"

    .prologue
    .line 39
    const-string v2, "CallDetailExtensionContainer"

    const-string v3, "[setTextView]"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-object v2, p0, Lcom/mediatek/contacts/extension/CallDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    .line 41
    iget-object v2, p0, Lcom/mediatek/contacts/extension/CallDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 42
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/CallDetailExtension;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 43
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ext/CallDetailExtension;

    .line 44
    .local v0, extension:Lcom/android/contacts/ext/CallDetailExtension;
    invoke-virtual {v0}, Lcom/android/contacts/ext/CallDetailExtension;->getCommand()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 45
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/contacts/ext/CallDetailExtension;->setTextView(ILandroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .end local v0           #extension:Lcom/android/contacts/ext/CallDetailExtension;
    .end local v1           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/CallDetailExtension;>;"
    :goto_0
    return-void

    .line 50
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/contacts/ext/CallDetailExtension;->setTextView(ILandroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setViewVisible(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;IIIIIII)V
    .locals 12
    .parameter "view"
    .parameter "commd1"
    .parameter "commd2"
    .parameter "rse1"
    .parameter "res2"
    .parameter "res3"
    .parameter "res4"
    .parameter "res5"
    .parameter "res6"
    .parameter "res7"

    .prologue
    .line 109
    const-string v0, "CallDetailExtensionContainer"

    const-string v1, "[setViewVisible]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lcom/mediatek/contacts/extension/CallDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    .line 118
    :cond_0
    return-void

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/mediatek/contacts/extension/CallDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 114
    .local v11, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/CallDetailExtension;>;"
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ext/CallDetailExtension;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-virtual/range {v0 .. v10}, Lcom/android/contacts/ext/CallDetailExtension;->setViewVisible(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;IIIIIII)V

    goto :goto_0
.end method

.method public setViewVisibleByActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;IIIIIIILjava/lang/String;)V
    .locals 13
    .parameter "activiy"
    .parameter "commd1"
    .parameter "commd2"
    .parameter "rse1"
    .parameter "res2"
    .parameter "res3"
    .parameter "res4"
    .parameter "res5"
    .parameter "res6"
    .parameter "res7"
    .parameter "commd"

    .prologue
    .line 93
    const-string v0, "CallDetailExtensionContainer"

    const-string v1, "[setViewVisibleByActivity]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v0, p0, Lcom/mediatek/contacts/extension/CallDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    .line 102
    :cond_0
    return-void

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/mediatek/contacts/extension/CallDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 98
    .local v12, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/CallDetailExtension;>;"
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ext/CallDetailExtension;

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v11, p11

    invoke-virtual/range {v0 .. v11}, Lcom/android/contacts/ext/CallDetailExtension;->setViewVisibleByActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;IIIIIIILjava/lang/String;)V

    goto :goto_0
.end method
