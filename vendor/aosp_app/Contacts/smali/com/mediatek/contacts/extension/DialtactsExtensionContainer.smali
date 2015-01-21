.class public Lcom/mediatek/contacts/extension/DialtactsExtensionContainer;
.super Lcom/android/contacts/ext/DialtactsExtension;
.source "DialtactsExtensionContainer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DialtactsExtensionContainer"


# instance fields
.field private mSubExtensionList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/contacts/ext/DialtactsExtension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/android/contacts/ext/DialtactsExtension;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lcom/android/contacts/ext/DialtactsExtension;)V
    .locals 1
    .parameter "extension"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/mediatek/contacts/extension/DialtactsExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/extension/DialtactsExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/extension/DialtactsExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 22
    return-void
.end method

.method public checkComponentName(Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 5
    .parameter "intent"
    .parameter "commd"

    .prologue
    const/4 v3, 0x0

    .line 32
    const-string v2, "DialtactsExtensionContainer"

    const-string v4, "[checkComponentName()]"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    iget-object v2, p0, Lcom/mediatek/contacts/extension/DialtactsExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v2, :cond_0

    move v1, v3

    .line 44
    :goto_0
    return v1

    .line 36
    :cond_0
    iget-object v2, p0, Lcom/mediatek/contacts/extension/DialtactsExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 37
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/DialtactsExtension;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 38
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/ext/DialtactsExtension;

    invoke-virtual {v2, p1, p2}, Lcom/android/contacts/ext/DialtactsExtension;->checkComponentName(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v1

    .line 39
    .local v1, result:Z
    if-eqz v1, :cond_1

    goto :goto_0

    .end local v1           #result:Z
    :cond_2
    move v1, v3

    .line 44
    goto :goto_0
.end method

.method public remove(Lcom/android/contacts/ext/DialtactsExtension;)V
    .locals 1
    .parameter "extension"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/mediatek/contacts/extension/DialtactsExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 29
    :goto_0
    return-void

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/extension/DialtactsExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public startActivity(Ljava/lang/String;)Z
    .locals 5
    .parameter "commd"

    .prologue
    const/4 v3, 0x0

    .line 48
    const-string v2, "DialtactsExtensionContainer"

    const-string v4, "startActivity DialerSearchAdapter: [startActivity()]"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v2, p0, Lcom/mediatek/contacts/extension/DialtactsExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v2, :cond_0

    move v1, v3

    .line 60
    :goto_0
    return v1

    .line 52
    :cond_0
    iget-object v2, p0, Lcom/mediatek/contacts/extension/DialtactsExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 53
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/DialtactsExtension;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 54
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/ext/DialtactsExtension;

    invoke-virtual {v2, p1}, Lcom/android/contacts/ext/DialtactsExtension;->startActivity(Ljava/lang/String;)Z

    move-result v1

    .line 55
    .local v1, result:Z
    if-eqz v1, :cond_1

    goto :goto_0

    .end local v1           #result:Z
    :cond_2
    move v1, v3

    .line 60
    goto :goto_0
.end method
