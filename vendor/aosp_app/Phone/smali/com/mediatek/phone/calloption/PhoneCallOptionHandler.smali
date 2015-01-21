.class public Lcom/mediatek/phone/calloption/PhoneCallOptionHandler;
.super Lcom/mediatek/calloption/CallOptionHandler;
.source "PhoneCallOptionHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PhoneCallOptionHandler"


# direct methods
.method public constructor <init>(Lcom/mediatek/calloption/CallOptionHandlerFactory;)V
    .locals 0
    .parameter "callOptionHandlerFactory"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/mediatek/calloption/CallOptionHandler;-><init>(Lcom/mediatek/calloption/CallOptionHandlerFactory;)V

    .line 21
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 40
    const-string v0, "PhoneCallOptionHandler"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return-void
.end method


# virtual methods
.method public doCallOptionHandle(Landroid/content/Intent;Landroid/content/Context;Lcom/mediatek/calloption/CallOptionBaseHandler$ICallOptionResultHandle;)V
    .locals 10
    .parameter "intent"
    .parameter "activityContext"
    .parameter "resultListener"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 25
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/calloption/SimAssociateHandler;->getInstance(Landroid/content/Context;)Lcom/mediatek/calloption/SimAssociateHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/calloption/SimAssociateHandler;->load()V

    .line 26
    invoke-static {}, Lcom/mediatek/phone/ext/ExtensionManager;->getInstance()Lcom/mediatek/phone/ext/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/phone/ext/ExtensionManager;->getPhoneCallOptionHandlerExtension()Lcom/mediatek/phone/ext/PhoneCallOptionHandlerExtension;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/calloption/CallOptionHandler;->mCallOptionHandlerList:Ljava/util/LinkedList;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v6, v2, Lcom/android/phone/PhoneGlobals;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v7, v2, Lcom/android/phone/PhoneGlobals;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    move-object v2, p2

    move-object v4, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v9}, Lcom/mediatek/phone/ext/PhoneCallOptionHandlerExtension;->doCallOptionHandle(Ljava/util/LinkedList;Landroid/content/Context;Landroid/content/Context;Landroid/content/Intent;Lcom/mediatek/calloption/CallOptionBaseHandler$ICallOptionResultHandle;Lcom/mediatek/CellConnService/CellConnMgr;Lcom/android/internal/telephony/ITelephony;ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    :goto_0
    return-void

    .line 33
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v6, v0, Lcom/android/phone/PhoneGlobals;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v7, v0, Lcom/android/phone/PhoneGlobals;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    move-object v1, p0

    move-object v2, p2

    move-object v4, p1

    move-object v5, p3

    invoke-super/range {v1 .. v9}, Lcom/mediatek/calloption/CallOptionHandler;->doCallOptionHandle(Landroid/content/Context;Landroid/content/Context;Landroid/content/Intent;Lcom/mediatek/calloption/CallOptionBaseHandler$ICallOptionResultHandle;Lcom/mediatek/CellConnService/CellConnMgr;Lcom/android/internal/telephony/ITelephony;ZZ)V

    goto :goto_0
.end method
