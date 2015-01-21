.class public Lcom/mediatek/contacts/extension/CallLogSimInfoHelperExtensionContainer;
.super Lcom/android/contacts/ext/CallLogSimInfoHelperExtension;
.source "CallLogSimInfoHelperExtensionContainer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CallLogSimInfoHelperExtensionContainer"


# instance fields
.field private mSubExtensionList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/contacts/ext/CallLogSimInfoHelperExtension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/android/contacts/ext/CallLogSimInfoHelperExtension;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lcom/android/contacts/ext/CallLogSimInfoHelperExtension;)V
    .locals 1
    .parameter "extension"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/mediatek/contacts/extension/CallLogSimInfoHelperExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/extension/CallLogSimInfoHelperExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/extension/CallLogSimInfoHelperExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 22
    return-void
.end method

.method public getSimBackgroundDarkResByColorId(I[I)Z
    .locals 6
    .parameter "colorId"
    .parameter "simBackgroundDarkRes"

    .prologue
    const/4 v2, 0x0

    .line 83
    const-string v3, "CallLogSimInfoHelperExtensionContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSimBackgroundDarkResByColorId(), mSubExtensionList = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/contacts/extension/CallLogSimInfoHelperExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v3, p0, Lcom/mediatek/contacts/extension/CallLogSimInfoHelperExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v3, :cond_1

    .line 94
    :cond_0
    :goto_0
    return v2

    .line 87
    :cond_1
    iget-object v3, p0, Lcom/mediatek/contacts/extension/CallLogSimInfoHelperExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 88
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/CallLogSimInfoHelperExtension;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 89
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ext/CallLogSimInfoHelperExtension;

    .line 90
    .local v0, extension:Lcom/android/contacts/ext/CallLogSimInfoHelperExtension;
    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/ext/CallLogSimInfoHelperExtension;->getSimBackgroundDarkResByColorId(I[I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 91
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getSimColorDrawableById(ILandroid/graphics/drawable/Drawable;)Z
    .locals 6
    .parameter "simId"
    .parameter "simColorDrawable"

    .prologue
    const/4 v2, 0x0

    .line 61
    const-string v3, "CallLogSimInfoHelperExtensionContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSimColorDrawableById(), simId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v3, p0, Lcom/mediatek/contacts/extension/CallLogSimInfoHelperExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v3, :cond_1

    .line 72
    :cond_0
    :goto_0
    return v2

    .line 65
    :cond_1
    iget-object v3, p0, Lcom/mediatek/contacts/extension/CallLogSimInfoHelperExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 66
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/CallLogSimInfoHelperExtension;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 67
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ext/CallLogSimInfoHelperExtension;

    .line 68
    .local v0, extension:Lcom/android/contacts/ext/CallLogSimInfoHelperExtension;
    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/ext/CallLogSimInfoHelperExtension;->getSimColorDrawableById(ILandroid/graphics/drawable/Drawable;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 69
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getSimDisplayNameById(ILjava/lang/StringBuffer;)Z
    .locals 6
    .parameter "simId"
    .parameter "callDisplayName"

    .prologue
    const/4 v2, 0x0

    .line 39
    iget-object v3, p0, Lcom/mediatek/contacts/extension/CallLogSimInfoHelperExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v3, :cond_1

    .line 50
    :cond_0
    :goto_0
    return v2

    .line 42
    :cond_1
    const-string v3, "CallLogSimInfoHelperExtensionContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSimDisplayNameById(), simId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-object v3, p0, Lcom/mediatek/contacts/extension/CallLogSimInfoHelperExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 44
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/CallLogSimInfoHelperExtension;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 45
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ext/CallLogSimInfoHelperExtension;

    .line 46
    .local v0, extension:Lcom/android/contacts/ext/CallLogSimInfoHelperExtension;
    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/ext/CallLogSimInfoHelperExtension;->getSimDisplayNameById(ILjava/lang/StringBuffer;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 47
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public remove(Lcom/android/contacts/ext/CallLogSimInfoHelperExtension;)V
    .locals 1
    .parameter "extension"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/mediatek/contacts/extension/CallLogSimInfoHelperExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 29
    :goto_0
    return-void

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/extension/CallLogSimInfoHelperExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
