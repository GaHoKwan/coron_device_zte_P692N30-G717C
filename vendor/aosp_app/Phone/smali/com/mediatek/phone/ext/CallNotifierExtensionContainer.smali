.class public Lcom/mediatek/phone/ext/CallNotifierExtensionContainer;
.super Lcom/mediatek/phone/ext/CallNotifierExtension;
.source "CallNotifierExtensionContainer.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CallNotifierExtensionContainer"


# instance fields
.field private mSubExtensionList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/mediatek/phone/ext/CallNotifierExtension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/mediatek/phone/ext/CallNotifierExtension;-><init>()V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 93
    const-string v0, "CallNotifierExtensionContainer"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-void
.end method


# virtual methods
.method public add(Lcom/mediatek/phone/ext/CallNotifierExtension;)V
    .locals 2
    .parameter "extension"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/mediatek/phone/ext/CallNotifierExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 58
    const-string v0, "create sub extension list"

    invoke-static {v0}, Lcom/mediatek/phone/ext/CallNotifierExtensionContainer;->log(Ljava/lang/String;)V

    .line 59
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/phone/ext/CallNotifierExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    .line 61
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

    invoke-static {v0}, Lcom/mediatek/phone/ext/CallNotifierExtensionContainer;->log(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/mediatek/phone/ext/CallNotifierExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 63
    return-void
.end method

.method public onPhoneStateChanged(Lcom/android/internal/telephony/CallManager;Landroid/content/Context;)V
    .locals 2
    .parameter "cm"
    .parameter "context"

    .prologue
    .line 82
    iget-object v1, p0, Lcom/mediatek/phone/ext/CallNotifierExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v1, :cond_1

    .line 83
    const-string v1, "initialize(), sub extension list is null, just return"

    invoke-static {v1}, Lcom/mediatek/phone/ext/CallNotifierExtensionContainer;->log(Ljava/lang/String;)V

    .line 90
    :cond_0
    return-void

    .line 86
    :cond_1
    iget-object v1, p0, Lcom/mediatek/phone/ext/CallNotifierExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 87
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/mediatek/phone/ext/CallNotifierExtension;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/phone/ext/CallNotifierExtension;

    invoke-virtual {v1, p1, p2}, Lcom/mediatek/phone/ext/CallNotifierExtension;->onPhoneStateChanged(Lcom/android/internal/telephony/CallManager;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public remove(Lcom/mediatek/phone/ext/CallNotifierExtension;)V
    .locals 2
    .parameter "extension"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/mediatek/phone/ext/CallNotifierExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 71
    const-string v0, "remove extension, sub extension list is null, just return"

    invoke-static {v0}, Lcom/mediatek/phone/ext/CallNotifierExtensionContainer;->log(Ljava/lang/String;)V

    .line 76
    :goto_0
    return-void

    .line 74
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

    invoke-static {v0}, Lcom/mediatek/phone/ext/CallNotifierExtensionContainer;->log(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/mediatek/phone/ext/CallNotifierExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
