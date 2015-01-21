.class public Lcom/mediatek/contacts/calloption/ContactsFirstCallOptionHandler;
.super Lcom/mediatek/calloption/FirstCallOptionHandler;
.source "ContactsFirstCallOptionHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ContactsFirstCallOptionHandler"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/mediatek/calloption/FirstCallOptionHandler;-><init>()V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 63
    const-string v0, "ContactsFirstCallOptionHandler"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return-void
.end method


# virtual methods
.method public handleRequest(Lcom/mediatek/calloption/Request;)V
    .locals 4
    .parameter "request"

    .prologue
    .line 51
    const-string v2, "handleRequest()"

    invoke-static {v2}, Lcom/mediatek/contacts/calloption/ContactsFirstCallOptionHandler;->log(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/calloption/CallOptionUtils;->getInitialNumber(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, number:Ljava/lang/String;
    const-string v2, "voicemail:"

    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 55
    .local v0, isVoiceMail:Z
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    .line 56
    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->getResultHandler()Lcom/mediatek/calloption/CallOptionBaseHandler$ICallOptionResultHandle;

    move-result-object v2

    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/mediatek/calloption/CallOptionBaseHandler$ICallOptionResultHandle;->onContinueCallProcess(Landroid/content/Intent;)V

    .line 60
    :goto_0
    return-void

    .line 58
    :cond_0
    invoke-super {p0, p1}, Lcom/mediatek/calloption/FirstCallOptionHandler;->handleRequest(Lcom/mediatek/calloption/Request;)V

    goto :goto_0
.end method
