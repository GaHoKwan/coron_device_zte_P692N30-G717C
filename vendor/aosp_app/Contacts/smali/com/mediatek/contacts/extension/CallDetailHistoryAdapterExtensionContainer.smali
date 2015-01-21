.class public Lcom/mediatek/contacts/extension/CallDetailHistoryAdapterExtensionContainer;
.super Lcom/android/contacts/ext/CallDetailHistoryAdapterExtension;
.source "CallDetailHistoryAdapterExtensionContainer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CallDetailExtensionContainer"


# instance fields
.field private mSubExtensionList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/contacts/ext/CallDetailHistoryAdapterExtension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/contacts/ext/CallDetailHistoryAdapterExtension;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lcom/android/contacts/ext/CallDetailHistoryAdapterExtension;)V
    .locals 1
    .parameter "extension"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/mediatek/contacts/extension/CallDetailHistoryAdapterExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/extension/CallDetailHistoryAdapterExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/extension/CallDetailHistoryAdapterExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 40
    return-void
.end method

.method public getItemViewType(I)I
    .locals 7
    .parameter "position"

    .prologue
    const/4 v3, -0x1

    .line 124
    iget-object v4, p0, Lcom/mediatek/contacts/extension/CallDetailHistoryAdapterExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v4, :cond_0

    .line 125
    const-string v4, "CallDetailExtensionContainer"

    const-string v5, "getItemViewType(), sub extension list is null, just return"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 137
    :goto_0
    return v2

    .line 128
    :cond_0
    const-string v4, "CallDetailExtensionContainer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getItemViewType(), position = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v4, p0, Lcom/mediatek/contacts/extension/CallDetailHistoryAdapterExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 130
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/CallDetailHistoryAdapterExtension;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 131
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ext/CallDetailHistoryAdapterExtension;

    .line 132
    .local v0, extension:Lcom/android/contacts/ext/CallDetailHistoryAdapterExtension;
    invoke-virtual {v0, p1}, Lcom/android/contacts/ext/CallDetailHistoryAdapterExtension;->getItemViewType(I)I

    move-result v2

    .line 133
    .local v2, result:I
    if-eq v3, v2, :cond_1

    goto :goto_0

    .end local v0           #extension:Lcom/android/contacts/ext/CallDetailHistoryAdapterExtension;
    .end local v2           #result:I
    :cond_2
    move v2, v3

    .line 137
    goto :goto_0
.end method

.method public getViewPost(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 158
    iget-object v3, p0, Lcom/mediatek/contacts/extension/CallDetailHistoryAdapterExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v3, :cond_0

    move-object v0, p2

    .line 166
    .end local p2
    .local v0, convertView:Landroid/view/View;
    :goto_0
    return-object v0

    .line 161
    .end local v0           #convertView:Landroid/view/View;
    .restart local p2
    :cond_0
    iget-object v3, p0, Lcom/mediatek/contacts/extension/CallDetailHistoryAdapterExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 162
    .local v2, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/CallDetailHistoryAdapterExtension;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 163
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ext/CallDetailHistoryAdapterExtension;

    .line 164
    .local v1, extension:Lcom/android/contacts/ext/CallDetailHistoryAdapterExtension;
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/contacts/ext/CallDetailHistoryAdapterExtension;->getViewPost(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 165
    goto :goto_1

    .end local v1           #extension:Lcom/android/contacts/ext/CallDetailHistoryAdapterExtension;
    :cond_1
    move-object v0, p2

    .line 166
    .end local p2
    .restart local v0       #convertView:Landroid/view/View;
    goto :goto_0
.end method

.method public getViewPre(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v3, 0x0

    .line 142
    iget-object v4, p0, Lcom/mediatek/contacts/extension/CallDetailHistoryAdapterExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v4, :cond_0

    move-object v2, v3

    .line 153
    :goto_0
    return-object v2

    .line 145
    :cond_0
    iget-object v4, p0, Lcom/mediatek/contacts/extension/CallDetailHistoryAdapterExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 146
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/CallDetailHistoryAdapterExtension;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 147
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ext/CallDetailHistoryAdapterExtension;

    .line 148
    .local v0, extension:Lcom/android/contacts/ext/CallDetailHistoryAdapterExtension;
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/contacts/ext/CallDetailHistoryAdapterExtension;->getViewPre(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 149
    .local v2, resultView:Landroid/view/View;
    if-eqz v2, :cond_1

    goto :goto_0

    .end local v0           #extension:Lcom/android/contacts/ext/CallDetailHistoryAdapterExtension;
    .end local v2           #resultView:Landroid/view/View;
    :cond_2
    move-object v2, v3

    .line 153
    goto :goto_0
.end method

.method public getViewTypeCount(I)I
    .locals 6
    .parameter "currentViewTypeCount"

    .prologue
    .line 109
    iget-object v3, p0, Lcom/mediatek/contacts/extension/CallDetailHistoryAdapterExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v3, :cond_0

    .line 110
    const-string v3, "CallDetailExtensionContainer"

    const-string v4, "getViewTypeCount(), sub extension list is null, just return"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    .end local p1
    :goto_0
    return p1

    .line 113
    .restart local p1
    :cond_0
    const-string v3, "CallDetailExtensionContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getViewTypeCount(), currentViewTypeCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v3, p0, Lcom/mediatek/contacts/extension/CallDetailHistoryAdapterExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 115
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/CallDetailHistoryAdapterExtension;>;"
    move v2, p1

    .line 116
    .local v2, resultViewTypeCount:I
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 117
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ext/CallDetailHistoryAdapterExtension;

    .line 118
    .local v0, extension:Lcom/android/contacts/ext/CallDetailHistoryAdapterExtension;
    invoke-virtual {v0, v2}, Lcom/android/contacts/ext/CallDetailHistoryAdapterExtension;->getViewTypeCount(I)I

    move-result v2

    .line 119
    goto :goto_1

    .end local v0           #extension:Lcom/android/contacts/ext/CallDetailHistoryAdapterExtension;
    :cond_1
    move p1, v2

    .line 120
    goto :goto_0
.end method

.method public init(Landroid/content/Context;[Lcom/android/contacts/PhoneCallDetails;)V
    .locals 4
    .parameter "context"
    .parameter "phoneCallDetails"

    .prologue
    .line 50
    iget-object v1, p0, Lcom/mediatek/contacts/extension/CallDetailHistoryAdapterExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v1, :cond_1

    .line 51
    const-string v1, "CallDetailExtensionContainer"

    const-string v2, "init(), sub extension list is null, just return"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_0
    return-void

    .line 54
    :cond_1
    const-string v1, "CallDetailExtensionContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init(), context = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", phoneCallDetails = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object v1, p0, Lcom/mediatek/contacts/extension/CallDetailHistoryAdapterExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 56
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/CallDetailHistoryAdapterExtension;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ext/CallDetailHistoryAdapterExtension;

    invoke-virtual {v1, p1, p2}, Lcom/android/contacts/ext/CallDetailHistoryAdapterExtension;->init(Landroid/content/Context;[Lcom/android/contacts/PhoneCallDetails;)V

    goto :goto_0
.end method

.method public remove(Lcom/android/contacts/ext/CallDetailHistoryAdapterExtension;)V
    .locals 1
    .parameter "extension"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/mediatek/contacts/extension/CallDetailHistoryAdapterExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 47
    :goto_0
    return-void

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/extension/CallDetailHistoryAdapterExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
