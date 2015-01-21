.class public Lcom/mediatek/contacts/extension/ContactsCallOptionHandlerExtensionContainer;
.super Lcom/android/contacts/ext/ContactsCallOptionHandlerExtension;
.source "ContactsCallOptionHandlerExtensionContainer.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ContactsCallOptionHandlerExtensionContainer"


# instance fields
.field private mSubExtensionList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/contacts/ext/ContactsCallOptionHandlerExtension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/contacts/ext/ContactsCallOptionHandlerExtension;-><init>()V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 107
    const-string v0, "ContactsCallOptionHandlerExtensionContainer"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return-void
.end method


# virtual methods
.method public add(Lcom/android/contacts/ext/ContactsCallOptionHandlerExtension;)V
    .locals 2
    .parameter "extension"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactsCallOptionHandlerExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 61
    const-string v0, "create sub extension list"

    invoke-static {v0}, Lcom/mediatek/contacts/extension/ContactsCallOptionHandlerExtensionContainer;->log(Ljava/lang/String;)V

    .line 62
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/extension/ContactsCallOptionHandlerExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    .line 64
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

    invoke-static {v0}, Lcom/mediatek/contacts/extension/ContactsCallOptionHandlerExtensionContainer;->log(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactsCallOptionHandlerExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 66
    return-void
.end method

.method public doCallOptionHandle(Ljava/util/LinkedList;Landroid/content/Context;Landroid/content/Context;Landroid/content/Intent;Lcom/mediatek/calloption/CallOptionBaseHandler$ICallOptionResultHandle;Lcom/mediatek/CellConnService/CellConnMgr;Lcom/android/internal/telephony/ITelephony;ZZ)Z
    .locals 11
    .parameter
    .parameter "activityContext"
    .parameter "applicationContext"
    .parameter "intent"
    .parameter "resultHandler"
    .parameter "cellConnMgr"
    .parameter "telephonyInterface"
    .parameter "isMultipleSim"
    .parameter "is3GSwitchSupport"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/mediatek/calloption/CallOptionBaseHandler;",
            ">;",
            "Landroid/content/Context;",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Lcom/mediatek/calloption/CallOptionBaseHandler$ICallOptionResultHandle;",
            "Lcom/mediatek/CellConnService/CellConnMgr;",
            "Lcom/android/internal/telephony/ITelephony;",
            "ZZ)Z"
        }
    .end annotation

    .prologue
    .line 86
    .local p1, callOptionHandlerList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/mediatek/calloption/CallOptionBaseHandler;>;"
    iget-object v1, p0, Lcom/mediatek/contacts/extension/ContactsCallOptionHandlerExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v1, :cond_0

    .line 87
    const-string v1, "updateCallInfoLayout(), sub extension list is null, just return"

    invoke-static {v1}, Lcom/mediatek/contacts/extension/ContactsCallOptionHandlerExtensionContainer;->log(Ljava/lang/String;)V

    .line 88
    const/4 v1, 0x0

    .line 99
    :goto_0
    return v1

    .line 90
    :cond_0
    const-string v1, "doCallOptionHandle()"

    invoke-static {v1}, Lcom/mediatek/contacts/extension/ContactsCallOptionHandlerExtensionContainer;->log(Ljava/lang/String;)V

    .line 91
    iget-object v1, p0, Lcom/mediatek/contacts/extension/ContactsCallOptionHandlerExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 92
    .local v10, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/ContactsCallOptionHandlerExtension;>;"
    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 93
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ext/ContactsCallOptionHandlerExtension;

    .local v0, extension:Lcom/android/contacts/ext/ContactsCallOptionHandlerExtension;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    .line 94
    invoke-virtual/range {v0 .. v9}, Lcom/android/contacts/ext/ContactsCallOptionHandlerExtension;->doCallOptionHandle(Ljava/util/LinkedList;Landroid/content/Context;Landroid/content/Context;Landroid/content/Intent;Lcom/mediatek/calloption/CallOptionBaseHandler$ICallOptionResultHandle;Lcom/mediatek/CellConnService/CellConnMgr;Lcom/android/internal/telephony/ITelephony;ZZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    const/4 v1, 0x1

    goto :goto_0

    .line 99
    .end local v0           #extension:Lcom/android/contacts/ext/ContactsCallOptionHandlerExtension;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public remove(Lcom/android/contacts/ext/ContactsCallOptionHandlerExtension;)V
    .locals 2
    .parameter "extension"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactsCallOptionHandlerExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 74
    const-string v0, "remove extension, sub extension list is null, just return"

    invoke-static {v0}, Lcom/mediatek/contacts/extension/ContactsCallOptionHandlerExtensionContainer;->log(Ljava/lang/String;)V

    .line 79
    :goto_0
    return-void

    .line 77
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

    invoke-static {v0}, Lcom/mediatek/contacts/extension/ContactsCallOptionHandlerExtensionContainer;->log(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactsCallOptionHandlerExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
