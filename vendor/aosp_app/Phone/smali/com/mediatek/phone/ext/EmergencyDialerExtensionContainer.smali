.class public Lcom/mediatek/phone/ext/EmergencyDialerExtensionContainer;
.super Lcom/mediatek/phone/ext/EmergencyDialerExtension;
.source "EmergencyDialerExtensionContainer.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "EmergencyDialerExtensionContainer"


# instance fields
.field private mSubExtensionList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/mediatek/phone/ext/EmergencyDialerExtension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/mediatek/phone/ext/EmergencyDialerExtension;-><init>()V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 136
    const-string v0, "EmergencyDialerExtensionContainer"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return-void
.end method


# virtual methods
.method public add(Lcom/mediatek/phone/ext/EmergencyDialerExtension;)V
    .locals 2
    .parameter "extension"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/mediatek/phone/ext/EmergencyDialerExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 55
    const-string v0, "create sub extension list"

    invoke-static {v0}, Lcom/mediatek/phone/ext/EmergencyDialerExtensionContainer;->log(Ljava/lang/String;)V

    .line 56
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/phone/ext/EmergencyDialerExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    .line 58
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

    invoke-static {v0}, Lcom/mediatek/phone/ext/EmergencyDialerExtensionContainer;->log(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/mediatek/phone/ext/EmergencyDialerExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 60
    return-void
.end method

.method public onCreate(Landroid/app/Activity;Lcom/mediatek/phone/ext/IEmergencyDialer;)V
    .locals 3
    .parameter "activity"
    .parameter "emergencyDialer"

    .prologue
    .line 76
    iget-object v1, p0, Lcom/mediatek/phone/ext/EmergencyDialerExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v1, :cond_1

    .line 77
    const-string v1, "onCreate(), sub extension list is null, just return"

    invoke-static {v1}, Lcom/mediatek/phone/ext/EmergencyDialerExtensionContainer;->log(Ljava/lang/String;)V

    .line 85
    :cond_0
    return-void

    .line 80
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate(), activity is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", emergencyDialer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/phone/ext/EmergencyDialerExtensionContainer;->log(Ljava/lang/String;)V

    .line 81
    iget-object v1, p0, Lcom/mediatek/phone/ext/EmergencyDialerExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 82
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/mediatek/phone/ext/EmergencyDialerExtension;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/phone/ext/EmergencyDialerExtension;

    invoke-virtual {v1, p1, p2}, Lcom/mediatek/phone/ext/EmergencyDialerExtension;->onCreate(Landroid/app/Activity;Lcom/mediatek/phone/ext/IEmergencyDialer;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 120
    iget-object v1, p0, Lcom/mediatek/phone/ext/EmergencyDialerExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v1, :cond_1

    .line 121
    const-string v1, "onDestroy(), sub extension list is null, just return"

    invoke-static {v1}, Lcom/mediatek/phone/ext/EmergencyDialerExtensionContainer;->log(Ljava/lang/String;)V

    .line 129
    :cond_0
    return-void

    .line 124
    :cond_1
    const-string v1, "onDestroy()"

    invoke-static {v1}, Lcom/mediatek/phone/ext/EmergencyDialerExtensionContainer;->log(Ljava/lang/String;)V

    .line 125
    iget-object v1, p0, Lcom/mediatek/phone/ext/EmergencyDialerExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 126
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/mediatek/phone/ext/EmergencyDialerExtension;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/phone/ext/EmergencyDialerExtension;

    invoke-virtual {v1}, Lcom/mediatek/phone/ext/EmergencyDialerExtension;->onDestroy()V

    goto :goto_0
.end method

.method public placeCall(Ljava/lang/String;)Z
    .locals 5
    .parameter "lastNumber"

    .prologue
    const/4 v2, 0x0

    .line 104
    iget-object v3, p0, Lcom/mediatek/phone/ext/EmergencyDialerExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v3, :cond_1

    .line 105
    const-string v3, "placeCall(), sub extension list is null, just return"

    invoke-static {v3}, Lcom/mediatek/phone/ext/EmergencyDialerExtensionContainer;->log(Ljava/lang/String;)V

    .line 116
    :cond_0
    :goto_0
    return v2

    .line 108
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "placeCall(), lastNumber = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/phone/ext/EmergencyDialerExtensionContainer;->log(Ljava/lang/String;)V

    .line 109
    iget-object v3, p0, Lcom/mediatek/phone/ext/EmergencyDialerExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 110
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/mediatek/phone/ext/EmergencyDialerExtension;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 111
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/phone/ext/EmergencyDialerExtension;

    .line 112
    .local v0, extension:Lcom/mediatek/phone/ext/EmergencyDialerExtension;
    invoke-virtual {v0, p1}, Lcom/mediatek/phone/ext/EmergencyDialerExtension;->placeCall(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 113
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public remove(Lcom/mediatek/phone/ext/EmergencyDialerExtension;)V
    .locals 2
    .parameter "extension"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mediatek/phone/ext/EmergencyDialerExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 68
    const-string v0, "remove extension, sub extension list is null, just return"

    invoke-static {v0}, Lcom/mediatek/phone/ext/EmergencyDialerExtensionContainer;->log(Ljava/lang/String;)V

    .line 73
    :goto_0
    return-void

    .line 71
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

    invoke-static {v0}, Lcom/mediatek/phone/ext/EmergencyDialerExtensionContainer;->log(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/mediatek/phone/ext/EmergencyDialerExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public updateDialAndDeleteButtonStateEnabledAttr()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 88
    iget-object v3, p0, Lcom/mediatek/phone/ext/EmergencyDialerExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v3, :cond_1

    .line 89
    const-string v3, "updateDialAndDeleteButtonStateEnabledAttr(), sub extension list is null, just return"

    invoke-static {v3}, Lcom/mediatek/phone/ext/EmergencyDialerExtensionContainer;->log(Ljava/lang/String;)V

    .line 100
    :cond_0
    :goto_0
    return v2

    .line 92
    :cond_1
    const-string v3, "updateDialAndDeleteButtonStateEnabledAttr()"

    invoke-static {v3}, Lcom/mediatek/phone/ext/EmergencyDialerExtensionContainer;->log(Ljava/lang/String;)V

    .line 93
    iget-object v3, p0, Lcom/mediatek/phone/ext/EmergencyDialerExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 94
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/mediatek/phone/ext/EmergencyDialerExtension;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 95
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/phone/ext/EmergencyDialerExtension;

    .line 96
    .local v0, extension:Lcom/mediatek/phone/ext/EmergencyDialerExtension;
    invoke-virtual {v0}, Lcom/mediatek/phone/ext/EmergencyDialerExtension;->updateDialAndDeleteButtonStateEnabledAttr()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 97
    const/4 v2, 0x1

    goto :goto_0
.end method
