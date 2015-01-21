.class public Lcom/mediatek/contacts/extension/SimPickExtensionContainer;
.super Lcom/android/contacts/ext/SimPickExtension;
.source "SimPickExtensionContainer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SimPickExtensionContainer"


# instance fields
.field private mSubExtensionList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/contacts/ext/SimPickExtension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/android/contacts/ext/SimPickExtension;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lcom/android/contacts/ext/SimPickExtension;)V
    .locals 1
    .parameter "extension"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/mediatek/contacts/extension/SimPickExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/extension/SimPickExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/extension/SimPickExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 22
    return-void
.end method

.method public remove(Lcom/android/contacts/ext/SimPickExtension;)V
    .locals 1
    .parameter "extension"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/mediatek/contacts/extension/SimPickExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 29
    :goto_0
    return-void

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/extension/SimPickExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setSimSignal(Landroid/widget/TextView;II)V
    .locals 3
    .parameter "mSimSignal"
    .parameter "mSlot"
    .parameter "m3GCapabilitySIM"

    .prologue
    .line 32
    const-string v1, "SimPickExtensionContainer"

    const-string v2, "[setSimSignal()]"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    iget-object v1, p0, Lcom/mediatek/contacts/extension/SimPickExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v1, :cond_1

    .line 40
    :cond_0
    return-void

    .line 36
    :cond_1
    iget-object v1, p0, Lcom/mediatek/contacts/extension/SimPickExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 37
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/SimPickExtension;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ext/SimPickExtension;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/contacts/ext/SimPickExtension;->setSimSignal(Landroid/widget/TextView;II)V

    goto :goto_0
.end method
