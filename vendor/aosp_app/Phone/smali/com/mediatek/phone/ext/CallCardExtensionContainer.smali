.class public Lcom/mediatek/phone/ext/CallCardExtensionContainer;
.super Lcom/mediatek/phone/ext/CallCardExtension;
.source "CallCardExtensionContainer.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CallCardExtensionContainer"


# instance fields
.field private mSubExtensionList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/mediatek/phone/ext/CallCardExtension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/mediatek/phone/ext/CallCardExtension;-><init>()V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 150
    const-string v0, "CallCardExtensionContainer"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    return-void
.end method


# virtual methods
.method public add(Lcom/mediatek/phone/ext/CallCardExtension;)V
    .locals 2
    .parameter "extension"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mediatek/phone/ext/CallCardExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 60
    const-string v0, "create sub extension list"

    invoke-static {v0}, Lcom/mediatek/phone/ext/CallCardExtensionContainer;->log(Ljava/lang/String;)V

    .line 61
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/phone/ext/CallCardExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    .line 63
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

    invoke-static {v0}, Lcom/mediatek/phone/ext/CallCardExtensionContainer;->log(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/mediatek/phone/ext/CallCardExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 65
    return-void
.end method

.method public displayMainCallStatus(Lcom/android/internal/telephony/Call;Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)V
    .locals 3
    .parameter "call"
    .parameter "simInfo"

    .prologue
    .line 134
    iget-object v1, p0, Lcom/mediatek/phone/ext/CallCardExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v1, :cond_1

    .line 135
    const-string v1, "displayMainCallStatus(), sub extension list is null, just return"

    invoke-static {v1}, Lcom/mediatek/phone/ext/CallCardExtensionContainer;->log(Ljava/lang/String;)V

    .line 143
    :cond_0
    return-void

    .line 138
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayMainCallStatus(), call ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/phone/ext/CallCardExtensionContainer;->log(Ljava/lang/String;)V

    .line 139
    iget-object v1, p0, Lcom/mediatek/phone/ext/CallCardExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 140
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/mediatek/phone/ext/CallCardExtension;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/phone/ext/CallCardExtension;

    invoke-virtual {v1, p1, p2}, Lcom/mediatek/phone/ext/CallCardExtension;->displayMainCallStatus(Lcom/android/internal/telephony/Call;Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)V

    goto :goto_0
.end method

.method public onFinishInflate(Landroid/view/View;)V
    .locals 3
    .parameter "callCard"

    .prologue
    .line 85
    iget-object v1, p0, Lcom/mediatek/phone/ext/CallCardExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v1, :cond_1

    .line 86
    const-string v1, "onFinishInflate(), sub extension list is null, just return"

    invoke-static {v1}, Lcom/mediatek/phone/ext/CallCardExtensionContainer;->log(Ljava/lang/String;)V

    .line 94
    :cond_0
    return-void

    .line 89
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFinishInflate(), callCard is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/phone/ext/CallCardExtensionContainer;->log(Ljava/lang/String;)V

    .line 90
    iget-object v1, p0, Lcom/mediatek/phone/ext/CallCardExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 91
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/mediatek/phone/ext/CallCardExtension;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/phone/ext/CallCardExtension;

    invoke-virtual {v1, p1}, Lcom/mediatek/phone/ext/CallCardExtension;->onFinishInflate(Landroid/view/View;)V

    goto :goto_0
.end method

.method public remove(Lcom/mediatek/phone/ext/CallCardExtension;)V
    .locals 2
    .parameter "extension"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/mediatek/phone/ext/CallCardExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 73
    const-string v0, "remove extension, sub extension list is null, just return"

    invoke-static {v0}, Lcom/mediatek/phone/ext/CallCardExtensionContainer;->log(Ljava/lang/String;)V

    .line 78
    :goto_0
    return-void

    .line 76
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

    invoke-static {v0}, Lcom/mediatek/phone/ext/CallCardExtensionContainer;->log(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/mediatek/phone/ext/CallCardExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public updateCallInfoLayout(Lcom/android/internal/telephony/PhoneConstants$State;)Z
    .locals 5
    .parameter "state"

    .prologue
    const/4 v2, 0x0

    .line 102
    iget-object v3, p0, Lcom/mediatek/phone/ext/CallCardExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v3, :cond_1

    .line 103
    const-string v3, "updateCallInfoLayout(), sub extension list is null, just return"

    invoke-static {v3}, Lcom/mediatek/phone/ext/CallCardExtensionContainer;->log(Ljava/lang/String;)V

    .line 114
    :cond_0
    :goto_0
    return v2

    .line 106
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCallInfoLayout(), phone state is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/phone/ext/CallCardExtensionContainer;->log(Ljava/lang/String;)V

    .line 107
    iget-object v3, p0, Lcom/mediatek/phone/ext/CallCardExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 108
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/mediatek/phone/ext/CallCardExtension;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 109
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/phone/ext/CallCardExtension;

    .line 110
    .local v0, extension:Lcom/mediatek/phone/ext/CallCardExtension;
    invoke-virtual {v0, p1}, Lcom/mediatek/phone/ext/CallCardExtension;->updateCallInfoLayout(Lcom/android/internal/telephony/PhoneConstants$State;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 111
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public updateState(Lcom/android/internal/telephony/CallManager;)V
    .locals 3
    .parameter "cm"

    .prologue
    .line 122
    iget-object v1, p0, Lcom/mediatek/phone/ext/CallCardExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v1, :cond_1

    .line 123
    const-string v1, "updateState(), sub extension list is null, just return"

    invoke-static {v1}, Lcom/mediatek/phone/ext/CallCardExtensionContainer;->log(Ljava/lang/String;)V

    .line 131
    :cond_0
    return-void

    .line 126
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateState(), call manager is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/phone/ext/CallCardExtensionContainer;->log(Ljava/lang/String;)V

    .line 127
    iget-object v1, p0, Lcom/mediatek/phone/ext/CallCardExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 128
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/mediatek/phone/ext/CallCardExtension;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/phone/ext/CallCardExtension;

    invoke-virtual {v1, p1}, Lcom/mediatek/phone/ext/CallCardExtension;->updateState(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_0
.end method
