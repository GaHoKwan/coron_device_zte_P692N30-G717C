.class public Lcom/mediatek/phone/ext/NotificationExtensionContainer;
.super Lcom/mediatek/phone/ext/NotificationExtension;
.source "NotificationExtensionContainer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NotificationExtensionContainer"


# instance fields
.field private mSubExtensionList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/mediatek/phone/ext/NotificationExtension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/mediatek/phone/ext/NotificationExtension;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lcom/mediatek/phone/ext/NotificationExtension;)V
    .locals 3
    .parameter "extension"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/mediatek/phone/ext/NotificationExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 22
    const-string v0, "NotificationExtensionContainer"

    const-string v1, "create sub extension list"

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/phone/ext/NotificationExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    .line 26
    :cond_0
    const-string v0, "NotificationExtensionContainer"

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

    .line 27
    iget-object v0, p0, Lcom/mediatek/phone/ext/NotificationExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 28
    return-void
.end method

.method public getInCallResId(Lcom/android/internal/telephony/CallManager;ZI[[I)I
    .locals 6
    .parameter "cm"
    .parameter "voicePrivacy"
    .parameter "defResId"
    .parameter "pluginResIds"

    .prologue
    .line 71
    iget-object v3, p0, Lcom/mediatek/phone/ext/NotificationExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v3, :cond_0

    .line 72
    const-string v3, "NotificationExtensionContainer"

    const-string v4, "getInCallResId(), sub extension list is null"

    invoke-static {v3, v4}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .end local p3
    :goto_0
    return p3

    .line 76
    .restart local p3
    :cond_0
    iget-object v3, p0, Lcom/mediatek/phone/ext/NotificationExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 77
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/mediatek/phone/ext/NotificationExtension;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 78
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/phone/ext/NotificationExtension;

    .line 79
    .local v0, extension:Lcom/mediatek/phone/ext/NotificationExtension;
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/mediatek/phone/ext/NotificationExtension;->getInCallResId(Lcom/android/internal/telephony/CallManager;ZI[[I)I

    move-result v2

    .line 80
    .local v2, pluginResId:I
    if-eq v2, p3, :cond_1

    .line 81
    const-string v3, "NotificationExtensionContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getInCallResId(), plug-in:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move p3, v2

    .line 82
    goto :goto_0

    .line 85
    .end local v0           #extension:Lcom/mediatek/phone/ext/NotificationExtension;
    .end local v2           #pluginResId:I
    :cond_2
    const-string v3, "NotificationExtensionContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getInCallResId(), default:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public remove(Lcom/mediatek/phone/ext/NotificationExtension;)V
    .locals 3
    .parameter "extension"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/mediatek/phone/ext/NotificationExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 35
    const-string v0, "NotificationExtensionContainer"

    const-string v1, "remove extension, sub extension list is null, just return"

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :goto_0
    return-void

    .line 39
    :cond_0
    const-string v0, "NotificationExtensionContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove extension, extension is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/mediatek/phone/ext/NotificationExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public shouldSuppressNotification(Z)Z
    .locals 6
    .parameter "hostDefaultValue"

    .prologue
    .line 44
    iget-object v3, p0, Lcom/mediatek/phone/ext/NotificationExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v3, :cond_0

    .line 45
    const-string v3, "NotificationExtensionContainer"

    const-string v4, "shouldSuppressNotification(), sub extension list is null"

    invoke-static {v3, v4}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .end local p1
    :goto_0
    return p1

    .line 49
    .restart local p1
    :cond_0
    iget-object v3, p0, Lcom/mediatek/phone/ext/NotificationExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 50
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/mediatek/phone/ext/NotificationExtension;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 51
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/phone/ext/NotificationExtension;

    .line 52
    .local v0, extension:Lcom/mediatek/phone/ext/NotificationExtension;
    invoke-virtual {v0, p1}, Lcom/mediatek/phone/ext/NotificationExtension;->shouldSuppressNotification(Z)Z

    move-result v2

    .line 54
    .local v2, suppressNotification:Z
    if-eq v2, p1, :cond_1

    .line 55
    const-string v3, "NotificationExtensionContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "shouldSuppressNotification(), plug-in:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move p1, v2

    .line 56
    goto :goto_0

    .line 59
    .end local v0           #extension:Lcom/mediatek/phone/ext/NotificationExtension;
    .end local v2           #suppressNotification:Z
    :cond_2
    const-string v3, "NotificationExtensionContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "shouldSuppressNotification(), default:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
