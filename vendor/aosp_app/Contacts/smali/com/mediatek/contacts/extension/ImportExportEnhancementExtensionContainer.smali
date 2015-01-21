.class public Lcom/mediatek/contacts/extension/ImportExportEnhancementExtensionContainer;
.super Lcom/android/contacts/ext/ImportExportEnhancementExtension;
.source "ImportExportEnhancementExtensionContainer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SimServiceExtensionContainer"


# instance fields
.field private mSubExtensionList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/contacts/ext/ImportExportEnhancementExtension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/contacts/ext/ImportExportEnhancementExtension;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lcom/android/contacts/ext/ImportExportEnhancementExtension;)V
    .locals 1
    .parameter "extension"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ImportExportEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/extension/ImportExportEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ImportExportEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 28
    return-void
.end method

.method public getVCardComposerExt(Landroid/content/Context;IZLjava/lang/String;)Lcom/android/vcard/VCardComposer;
    .locals 5
    .parameter "context"
    .parameter "vcardType"
    .parameter "careHandlerErrors"
    .parameter "commond"

    .prologue
    .line 59
    const-string v2, "SimServiceExtensionContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[exportVCardExtension] commond : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ImportExportEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    .line 61
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ImportExportEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 62
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/ImportExportEnhancementExtension;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 63
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ext/ImportExportEnhancementExtension;

    .line 64
    .local v0, extension:Lcom/android/contacts/ext/ImportExportEnhancementExtension;
    invoke-virtual {v0}, Lcom/android/contacts/ext/ImportExportEnhancementExtension;->getCommond()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/contacts/ext/ImportExportEnhancementExtension;->getVCardComposerExt(Landroid/content/Context;IZLjava/lang/String;)Lcom/android/vcard/VCardComposer;

    move-result-object v2

    .line 71
    .end local v0           #extension:Lcom/android/contacts/ext/ImportExportEnhancementExtension;
    .end local v1           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/ImportExportEnhancementExtension;>;"
    :goto_0
    return-object v2

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/contacts/ext/ImportExportEnhancementExtension;->getVCardComposerExt(Landroid/content/Context;IZLjava/lang/String;)Lcom/android/vcard/VCardComposer;

    move-result-object v2

    goto :goto_0
.end method

.method public getVCardEntryConstructorExt(ILandroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Lcom/android/vcard/VCardEntryConstructor;
    .locals 5
    .parameter "estimatedVCardType"
    .parameter "account"
    .parameter "estimatedCharset"
    .parameter "commond"

    .prologue
    .line 40
    const-string v2, "SimServiceExtensionContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[importVCardExtension] commond : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ImportExportEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    .line 42
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ImportExportEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 43
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/ImportExportEnhancementExtension;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 44
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ext/ImportExportEnhancementExtension;

    .line 45
    .local v0, extension:Lcom/android/contacts/ext/ImportExportEnhancementExtension;
    invoke-virtual {v0}, Lcom/android/contacts/ext/ImportExportEnhancementExtension;->getCommond()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 46
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/contacts/ext/ImportExportEnhancementExtension;->getVCardEntryConstructorExt(ILandroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Lcom/android/vcard/VCardEntryConstructor;

    move-result-object v2

    .line 52
    .end local v0           #extension:Lcom/android/contacts/ext/ImportExportEnhancementExtension;
    .end local v1           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/ImportExportEnhancementExtension;>;"
    :goto_0
    return-object v2

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/contacts/ext/ImportExportEnhancementExtension;->getVCardEntryConstructorExt(ILandroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Lcom/android/vcard/VCardEntryConstructor;

    move-result-object v2

    goto :goto_0
.end method

.method public remove(Lcom/android/contacts/ext/ImportExportEnhancementExtension;)V
    .locals 1
    .parameter "extension"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ImportExportEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 35
    :goto_0
    return-void

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ImportExportEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
