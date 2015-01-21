.class public Lcom/mediatek/phone/ext/PhoneGlobalsExtensionContainer;
.super Lcom/mediatek/phone/ext/PhoneGlobalsExtension;
.source "PhoneGlobalsExtensionContainer.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PhoneGlobalsExtensionContainer"


# instance fields
.field private mSubExtensionList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/mediatek/phone/ext/PhoneGlobalsExtension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/mediatek/phone/ext/PhoneGlobalsExtension;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lcom/mediatek/phone/ext/PhoneGlobalsExtension;)V
    .locals 3
    .parameter "extension"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/mediatek/phone/ext/PhoneGlobalsExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 57
    const-string v0, "PhoneGlobalsExtensionContainer"

    const-string v1, "create sub extension list"

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/phone/ext/PhoneGlobalsExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    .line 61
    :cond_0
    const-string v0, "PhoneGlobalsExtensionContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add extension, extension is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/mediatek/phone/ext/PhoneGlobalsExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 63
    return-void
.end method

.method public onCreate(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)V
    .locals 5
    .parameter "context"
    .parameter "phone"

    .prologue
    .line 66
    iget-object v2, p0, Lcom/mediatek/phone/ext/PhoneGlobalsExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v2, :cond_1

    .line 67
    const-string v2, "PhoneGlobalsExtensionContainer"

    const-string v3, "onCreate(), sub extension list is null, just return"

    invoke-static {v2, v3}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :cond_0
    return-void

    .line 71
    :cond_1
    const-string v2, "PhoneGlobalsExtensionContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate() context is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", phone is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v2, p0, Lcom/mediatek/phone/ext/PhoneGlobalsExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 73
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/mediatek/phone/ext/PhoneGlobalsExtension;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/phone/ext/PhoneGlobalsExtension;

    .line 75
    .local v0, extension:Lcom/mediatek/phone/ext/PhoneGlobalsExtension;
    invoke-virtual {v0, p1, p2}, Lcom/mediatek/phone/ext/PhoneGlobalsExtension;->onCreate(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)V

    goto :goto_0
.end method
