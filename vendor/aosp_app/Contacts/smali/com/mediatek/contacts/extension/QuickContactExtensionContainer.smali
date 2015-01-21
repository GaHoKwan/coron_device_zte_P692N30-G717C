.class public Lcom/mediatek/contacts/extension/QuickContactExtensionContainer;
.super Lcom/android/contacts/ext/QuickContactExtension;
.source "QuickContactExtensionContainer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "QuickContactExtensionContainer"


# instance fields
.field private mSubExtensionList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/contacts/ext/QuickContactExtension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/android/contacts/ext/QuickContactExtension;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lcom/android/contacts/ext/QuickContactExtension;)V
    .locals 1
    .parameter "extension"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/mediatek/contacts/extension/QuickContactExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/extension/QuickContactExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/extension/QuickContactExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 20
    return-void
.end method

.method public collapseListPhone(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "mimeType"
    .parameter "commd"

    .prologue
    const/4 v3, 0x1

    .line 30
    const-string v2, "QuickContactExtensionContainer"

    const-string v4, "[collapseListPhone]"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iget-object v2, p0, Lcom/mediatek/contacts/extension/QuickContactExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v2, :cond_0

    move v1, v3

    .line 42
    :goto_0
    return v1

    .line 34
    :cond_0
    iget-object v2, p0, Lcom/mediatek/contacts/extension/QuickContactExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 35
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/QuickContactExtension;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 36
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/ext/QuickContactExtension;

    invoke-virtual {v2, p1, p2}, Lcom/android/contacts/ext/QuickContactExtension;->collapseListPhone(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 37
    .local v1, result:Z
    if-nez v1, :cond_1

    goto :goto_0

    .end local v1           #result:Z
    :cond_2
    move v1, v3

    .line 42
    goto :goto_0
.end method

.method public remove(Lcom/android/contacts/ext/QuickContactExtension;)V
    .locals 1
    .parameter "extension"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/mediatek/contacts/extension/QuickContactExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 27
    :goto_0
    return-void

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/extension/QuickContactExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
