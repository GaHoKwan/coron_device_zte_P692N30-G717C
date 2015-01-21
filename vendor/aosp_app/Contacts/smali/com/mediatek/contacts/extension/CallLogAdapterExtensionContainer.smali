.class public Lcom/mediatek/contacts/extension/CallLogAdapterExtensionContainer;
.super Lcom/android/contacts/ext/CallLogAdapterExtension;
.source "CallLogAdapterExtensionContainer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CallLogAdapterExtensionContainer"


# instance fields
.field private mSubExtensionList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/contacts/ext/CallLogAdapterExtension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/android/contacts/ext/CallLogAdapterExtension;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lcom/android/contacts/ext/CallLogAdapterExtension;)V
    .locals 1
    .parameter "extension"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/mediatek/contacts/extension/CallLogAdapterExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/extension/CallLogAdapterExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/extension/CallLogAdapterExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 25
    return-void
.end method

.method public bindViewPre(Landroid/view/View;Landroid/database/Cursor;ILcom/android/contacts/calllog/ContactInfo;)V
    .locals 2
    .parameter "view"
    .parameter "c"
    .parameter "count"
    .parameter "contactInfo"

    .prologue
    .line 53
    iget-object v1, p0, Lcom/mediatek/contacts/extension/CallLogAdapterExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v1, :cond_1

    .line 60
    :cond_0
    return-void

    .line 56
    :cond_1
    iget-object v1, p0, Lcom/mediatek/contacts/extension/CallLogAdapterExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 57
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/CallLogAdapterExtension;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ext/CallLogAdapterExtension;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/contacts/ext/CallLogAdapterExtension;->bindViewPre(Landroid/view/View;Landroid/database/Cursor;ILcom/android/contacts/calllog/ContactInfo;)V

    goto :goto_0
.end method

.method public remove(Lcom/android/contacts/ext/CallLogAdapterExtension;)V
    .locals 1
    .parameter "extension"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/mediatek/contacts/extension/CallLogAdapterExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 32
    :goto_0
    return-void

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/extension/CallLogAdapterExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setListItemViewTag(Landroid/view/View;Lcom/android/contacts/calllog/ContactInfo;Landroid/database/Cursor;Landroid/content/Intent;)Z
    .locals 6
    .parameter "itemView"
    .parameter "contactInfo"
    .parameter "c"
    .parameter "callDetailIntent"

    .prologue
    const/4 v2, 0x0

    .line 36
    iget-object v3, p0, Lcom/mediatek/contacts/extension/CallLogAdapterExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v3, :cond_1

    .line 37
    const-string v3, "CallLogAdapterExtensionContainer"

    const-string v4, "setListItemViewTag(), sub extension list is null, just return"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_0
    :goto_0
    return v2

    .line 40
    :cond_1
    const-string v3, "CallLogAdapterExtensionContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setListItemViewTag(), item view = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", contactInfo = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", cursor = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", callDetailIntent = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object v3, p0, Lcom/mediatek/contacts/extension/CallLogAdapterExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 43
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/CallLogAdapterExtension;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 44
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ext/CallLogAdapterExtension;

    .line 45
    .local v0, extension:Lcom/android/contacts/ext/CallLogAdapterExtension;
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/contacts/ext/CallLogAdapterExtension;->setListItemViewTag(Landroid/view/View;Lcom/android/contacts/calllog/ContactInfo;Landroid/database/Cursor;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 46
    const/4 v2, 0x1

    goto :goto_0
.end method
