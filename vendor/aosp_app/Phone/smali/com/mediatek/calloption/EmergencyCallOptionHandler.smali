.class public Lcom/mediatek/calloption/EmergencyCallOptionHandler;
.super Lcom/mediatek/calloption/CallOptionBaseHandler;
.source "EmergencyCallOptionHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EmergencyCallOptionHandler"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/mediatek/calloption/CallOptionBaseHandler;-><init>()V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 74
    const-string v0, "EmergencyCallOptionHandler"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return-void
.end method


# virtual methods
.method public handleRequest(Lcom/mediatek/calloption/Request;)V
    .locals 5
    .parameter "request"

    .prologue
    const/4 v0, 0x1

    .line 51
    const-string v3, "handleRequest()"

    invoke-static {v3}, Lcom/mediatek/calloption/EmergencyCallOptionHandler;->log(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/calloption/CallOptionUtils;->getInitialNumber(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, number:Ljava/lang/String;
    const-string v3, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 55
    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->getResultHandler()Lcom/mediatek/calloption/CallOptionBaseHandler$ICallOptionResultHandle;

    move-result-object v3

    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/mediatek/calloption/CallOptionBaseHandler$ICallOptionResultHandle;->onPlaceCallDirectly(Landroid/content/Intent;)V

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberExt(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v2, v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberExt(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 62
    .local v0, isEmergencyNumber:Z
    :cond_2
    :goto_1
    const-string v3, "voicemail:"

    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 63
    .local v1, isVoiceMail:Z
    if-eqz v0, :cond_4

    if-nez v1, :cond_4

    .line 64
    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->getResultHandler()Lcom/mediatek/calloption/CallOptionBaseHandler$ICallOptionResultHandle;

    move-result-object v3

    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/mediatek/calloption/CallOptionBaseHandler$ICallOptionResultHandle;->onPlaceCallDirectly(Landroid/content/Intent;)V

    goto :goto_0

    .line 58
    .end local v0           #isEmergencyNumber:Z
    .end local v1           #isVoiceMail:Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 68
    .restart local v0       #isEmergencyNumber:Z
    .restart local v1       #isVoiceMail:Z
    :cond_4
    iget-object v3, p0, Lcom/mediatek/calloption/CallOptionBaseHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    if-eqz v3, :cond_0

    .line 69
    iget-object v3, p0, Lcom/mediatek/calloption/CallOptionBaseHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    invoke-virtual {v3, p1}, Lcom/mediatek/calloption/CallOptionBaseHandler;->handleRequest(Lcom/mediatek/calloption/Request;)V

    goto :goto_0
.end method
