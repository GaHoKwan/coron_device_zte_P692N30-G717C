.class public Lcom/mediatek/contacts/extension/DialerSearchAdapterExtensionContainer;
.super Lcom/android/contacts/ext/DialerSearchAdapterExtension;
.source "DialerSearchAdapterExtensionContainer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DialerSearchAdapterExtensionContainer"


# instance fields
.field private mSubExtensionList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/contacts/ext/DialerSearchAdapterExtension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/android/contacts/ext/DialerSearchAdapterExtension;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lcom/android/contacts/ext/DialerSearchAdapterExtension;)V
    .locals 1
    .parameter "extension"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/mediatek/contacts/extension/DialerSearchAdapterExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/extension/DialerSearchAdapterExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/extension/DialerSearchAdapterExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 24
    return-void
.end method

.method public bindCallLogViewPost(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 3
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 34
    iget-object v1, p0, Lcom/mediatek/contacts/extension/DialerSearchAdapterExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v1, :cond_1

    .line 35
    const-string v1, "DialerSearchAdapterExtensionContainer"

    const-string v2, "bindCallLogViewPost(), sub extension list is null, just return"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :cond_0
    return-void

    .line 38
    :cond_1
    iget-object v1, p0, Lcom/mediatek/contacts/extension/DialerSearchAdapterExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 39
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/DialerSearchAdapterExtension;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ext/DialerSearchAdapterExtension;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/contacts/ext/DialerSearchAdapterExtension;->bindCallLogViewPost(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method public bindContactCallLogViewPost(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 3
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 45
    iget-object v1, p0, Lcom/mediatek/contacts/extension/DialerSearchAdapterExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v1, :cond_1

    .line 46
    const-string v1, "DialerSearchAdapterExtensionContainer"

    const-string v2, "bindContactCallLogViewPost(), sub extension list is null, just return"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_0
    return-void

    .line 49
    :cond_1
    iget-object v1, p0, Lcom/mediatek/contacts/extension/DialerSearchAdapterExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 50
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/DialerSearchAdapterExtension;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ext/DialerSearchAdapterExtension;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/contacts/ext/DialerSearchAdapterExtension;->bindContactCallLogViewPost(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method public remove(Lcom/android/contacts/ext/DialerSearchAdapterExtension;)V
    .locals 1
    .parameter "extension"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/mediatek/contacts/extension/DialerSearchAdapterExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 31
    :goto_0
    return-void

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/extension/DialerSearchAdapterExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
