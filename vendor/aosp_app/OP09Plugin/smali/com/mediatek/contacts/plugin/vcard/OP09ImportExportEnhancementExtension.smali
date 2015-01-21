.class public Lcom/mediatek/contacts/plugin/vcard/OP09ImportExportEnhancementExtension;
.super Lcom/android/contacts/ext/ImportExportEnhancementExtension;
.source "OP09ImportExportEnhancementExtension.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OP09ImportExportEnhancementExtension"


# instance fields
.field private mPluginContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/contacts/ext/ImportExportEnhancementExtension;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/mediatek/contacts/plugin/vcard/OP09ImportExportEnhancementExtension;->mPluginContext:Landroid/content/Context;

    .line 19
    return-void
.end method


# virtual methods
.method public getCommond()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    const-string v0, "ExtensionForOP09"

    return-object v0
.end method

.method public getVCardComposerExt(Landroid/content/Context;IZLjava/lang/String;)Lcom/android/vcard/VCardComposer;
    .locals 3
    .parameter "context"
    .parameter "vcardType"
    .parameter "careHandlerErrors"
    .parameter "commond"

    .prologue
    .line 42
    const-string v0, "OP09ImportExportEnhancementExtension"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OP09ImportExportEnhancementExtension exportVCardExtension "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    const-string v0, "ExtensionForOP09"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/contacts/ext/ImportExportEnhancementExtension;->getVCardComposerExt(Landroid/content/Context;IZLjava/lang/String;)Lcom/android/vcard/VCardComposer;

    move-result-object v0

    .line 47
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/mediatek/contacts/plugin/vcard/OP09VCardComposer;

    invoke-direct {v0, p1, p2, p3}, Lcom/mediatek/contacts/plugin/vcard/OP09VCardComposer;-><init>(Landroid/content/Context;IZ)V

    goto :goto_0
.end method

.method public getVCardEntryConstructorExt(ILandroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Lcom/android/vcard/VCardEntryConstructor;
    .locals 3
    .parameter "estimatedVCardType"
    .parameter "account"
    .parameter "estimatedCharset"
    .parameter "commond"

    .prologue
    .line 30
    const-string v0, "OP09ImportExportEnhancementExtension"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OP09ImportExportEnhancementExtension importVCardExtension "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    const-string v0, "ExtensionForOP09"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/contacts/ext/ImportExportEnhancementExtension;->getVCardEntryConstructorExt(ILandroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Lcom/android/vcard/VCardEntryConstructor;

    move-result-object v0

    .line 36
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/mediatek/contacts/plugin/vcard/OP09VCardEntryConstructor;

    invoke-direct {v0, p1, p2, p3}, Lcom/mediatek/contacts/plugin/vcard/OP09VCardEntryConstructor;-><init>(ILandroid/accounts/Account;Ljava/lang/String;)V

    goto :goto_0
.end method
