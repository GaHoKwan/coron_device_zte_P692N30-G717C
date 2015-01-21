.class public Lcom/mediatek/contacts/extension/SimServiceExtensionContainer;
.super Lcom/android/contacts/ext/SimServiceExtension;
.source "SimServiceExtensionContainer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SimServiceExtensionContainer"


# instance fields
.field private mSubExtensionList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/contacts/ext/SimServiceExtension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/android/contacts/ext/SimServiceExtension;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lcom/android/contacts/ext/SimServiceExtension;)V
    .locals 1
    .parameter "extension"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/mediatek/contacts/extension/SimServiceExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/extension/SimServiceExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/extension/SimServiceExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 23
    return-void
.end method

.method public importViaReadonlyContact(Landroid/os/Bundle;Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 5
    .parameter "bundle"
    .parameter "cr"
    .parameter "commond"

    .prologue
    .line 34
    const-string v2, "SimServiceExtensionContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[importViaReadonlyContact] commond : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iget-object v2, p0, Lcom/mediatek/contacts/extension/SimServiceExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    .line 36
    iget-object v2, p0, Lcom/mediatek/contacts/extension/SimServiceExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 37
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/SimServiceExtension;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 38
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ext/SimServiceExtension;

    .line 39
    .local v0, extension:Lcom/android/contacts/ext/SimServiceExtension;
    invoke-virtual {v0}, Lcom/android/contacts/ext/SimServiceExtension;->getCommond()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 40
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/contacts/ext/SimServiceExtension;->importViaReadonlyContact(Landroid/os/Bundle;Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    .line 45
    .end local v0           #extension:Lcom/android/contacts/ext/SimServiceExtension;
    .end local v1           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/SimServiceExtension;>;"
    :goto_0
    return v2

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/contacts/ext/SimServiceExtension;->importViaReadonlyContact(Landroid/os/Bundle;Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    goto :goto_0
.end method

.method public remove(Lcom/android/contacts/ext/SimServiceExtension;)V
    .locals 1
    .parameter "extension"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/mediatek/contacts/extension/SimServiceExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 30
    :goto_0
    return-void

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/extension/SimServiceExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
