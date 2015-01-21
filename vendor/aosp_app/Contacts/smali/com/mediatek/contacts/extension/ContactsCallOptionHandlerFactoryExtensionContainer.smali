.class public Lcom/mediatek/contacts/extension/ContactsCallOptionHandlerFactoryExtensionContainer;
.super Lcom/android/contacts/ext/ContactsCallOptionHandlerFactoryExtension;
.source "ContactsCallOptionHandlerFactoryExtensionContainer.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ContactsCallOptionHandlerFactoryExtensionContainer"


# instance fields
.field private mSubExtensionList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/contacts/ext/ContactsCallOptionHandlerFactoryExtension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/contacts/ext/ContactsCallOptionHandlerFactoryExtension;-><init>()V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 94
    const-string v0, "ContactsCallOptionHandlerFactoryExtensionContainer"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return-void
.end method


# virtual methods
.method public add(Lcom/android/contacts/ext/ContactsCallOptionHandlerFactoryExtension;)V
    .locals 2
    .parameter "extension"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactsCallOptionHandlerFactoryExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 57
    const-string v0, "create sub extension list"

    invoke-static {v0}, Lcom/mediatek/contacts/extension/ContactsCallOptionHandlerFactoryExtensionContainer;->log(Ljava/lang/String;)V

    .line 58
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/extension/ContactsCallOptionHandlerFactoryExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add extension, extension is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/contacts/extension/ContactsCallOptionHandlerFactoryExtensionContainer;->log(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactsCallOptionHandlerFactoryExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 62
    return-void
.end method

.method public createHandlerPrototype(Lcom/mediatek/calloption/CallOptionHandlerFactory;)V
    .locals 3
    .parameter "callOptionHandlerFactory"

    .prologue
    .line 78
    iget-object v1, p0, Lcom/mediatek/contacts/extension/ContactsCallOptionHandlerFactoryExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v1, :cond_1

    .line 79
    const-string v1, "createHandlerPrototype(), sub extension list is null, just return"

    invoke-static {v1}, Lcom/mediatek/contacts/extension/ContactsCallOptionHandlerFactoryExtensionContainer;->log(Ljava/lang/String;)V

    .line 87
    :cond_0
    return-void

    .line 82
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createHandlerPrototype(), callOptionHandlerFactory is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/contacts/extension/ContactsCallOptionHandlerFactoryExtensionContainer;->log(Ljava/lang/String;)V

    .line 83
    iget-object v1, p0, Lcom/mediatek/contacts/extension/ContactsCallOptionHandlerFactoryExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 84
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/ContactsCallOptionHandlerFactoryExtension;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ext/ContactsCallOptionHandlerFactoryExtension;

    invoke-virtual {v1, p1}, Lcom/android/contacts/ext/ContactsCallOptionHandlerFactoryExtension;->createHandlerPrototype(Lcom/mediatek/calloption/CallOptionHandlerFactory;)V

    goto :goto_0
.end method

.method public remove(Lcom/android/contacts/ext/ContactsCallOptionHandlerFactoryExtension;)V
    .locals 2
    .parameter "extension"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactsCallOptionHandlerFactoryExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 70
    const-string v0, "remove extension, sub extension list is null, just return"

    invoke-static {v0}, Lcom/mediatek/contacts/extension/ContactsCallOptionHandlerFactoryExtensionContainer;->log(Ljava/lang/String;)V

    .line 75
    :goto_0
    return-void

    .line 73
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remove extension, extension is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/contacts/extension/ContactsCallOptionHandlerFactoryExtensionContainer;->log(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactsCallOptionHandlerFactoryExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
