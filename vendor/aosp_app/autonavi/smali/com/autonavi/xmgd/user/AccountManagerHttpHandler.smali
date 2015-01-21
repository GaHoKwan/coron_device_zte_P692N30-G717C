.class public Lcom/autonavi/xmgd/user/AccountManagerHttpHandler;
.super Ljava/lang/Object;


# static fields
.field public static final ACCOUNT_MANAGER_CHANGE_PASSWORD:Ljava/lang/String; = "0004"

.field public static final ACCOUNT_MANAGER_CHECK_WHETHER_LOGIN:Ljava/lang/String; = "0007"

.field public static final ACCOUNT_MANAGER_RESET_PASSWORD:Ljava/lang/String; = "0008"

.field public static final ACCOUNT_MANAGER_USERNAME_ONLY:Ljava/lang/String; = "0006"

.field public static final ACCOUNT_MANAGER_USER_LOGIN:Ljava/lang/String; = "0002"

.field public static final ACCOUNT_MANAGER_USER_LOGIN_OUT:Ljava/lang/String; = "0009"

.field public static final ACCOUNT_MANAGER_USER_REGISTER:Ljava/lang/String; = "0001"

.field public static final ACTIONTYPE_CLIENTPAY:Ljava/lang/String; = "clientpay"

.field public static final ACTIONTYPE_REGISTER:Ljava/lang/String; = "register"

.field public static final ACTIONTYPE_RESETPWD:Ljava/lang/String; = "resetpwd"

.field public static final RSPCODE_ADD_NEW_ACCOUNT_ERROR:I = 0x3f2

.field public static final RSPCODE_DEVICE_NOT_LOGIN:I = 0x405

.field public static final RSPCODE_EXCEPTION:I = 0x232b

.field public static final RSPCODE_GEtIDENTIFYCODE_PHONENUMBER_ERROR:I = 0x3f1

.field public static final RSPCODE_GEtIDENTIFYCODE_USER_EXIST:I = 0x4c5

.field public static final RSPCODE_GEtIDENTIFYCODE_USER_NOT_EXIST:I = 0x4c2

.field public static final RSPCODE_IDENTIFYCODE_INVALID:I = 0x40b

.field public static final RSPCODE_INTERNAL_SERVER_ERROR:I = 0x3ea

.field public static final RSPCODE_IOEXCEPTION:I = 0x232a

.field public static final RSPCODE_LOGIN_FAIL:I = 0x3f3

.field public static final RSPCODE_PRASE_FAIL:I = 0x2329

.field public static final RSPCODE_SUCCESS:I = 0x0

.field public static final RSPCODE_TIME_OUT:I = 0x3e9

.field public static final RSPCODE_USERNAME_EXIST:I = 0x3f1

.field public static final RSPTYPE_FAIL:Ljava/lang/String; = "FAIL"

.field public static final RSPTYPE_OK:Ljava/lang/String; = "OK"


# instance fields
.field private final ACTIONCODE_REQUEST:Ljava/lang/String;

.field private final ACTIONCODE_RESPONSE:Ljava/lang/String;

.field private mDateFormat:Ljava/text/SimpleDateFormat;

.field mHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "0"

    iput-object v0, p0, Lcom/autonavi/xmgd/user/AccountManagerHttpHandler;->ACTIONCODE_REQUEST:Ljava/lang/String;

    const-string v0, "1"

    iput-object v0, p0, Lcom/autonavi/xmgd/user/AccountManagerHttpHandler;->ACTIONCODE_RESPONSE:Ljava/lang/String;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/user/AccountManagerHttpHandler;->mDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/user/AccountManagerHttpHandler;->mHashMap:Ljava/util/HashMap;

    return-void
.end method

.method private addTag(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_0
    const-string v3, ""

    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, ""

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private getCurrentTime()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/autonavi/xmgd/user/AccountManagerHttpHandler;->mDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private onRequest(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    :try_start_0
    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    const-string v2, "UTF-8"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v2, ""

    const-string v3, "opg"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, ""

    const-string v3, "activitycode"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, ""

    const-string v3, "activitycode"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, ""

    const-string v3, "processtime"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-direct {p0}, Lcom/autonavi/xmgd/user/AccountManagerHttpHandler;->getCurrentTime()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, ""

    const-string v3, "processtime"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, ""

    const-string v3, "actioncode"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "0"

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, ""

    const-string v3, "actioncode"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, ""

    const-string v3, "svccont"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, ""

    const-string v3, "info"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, ""

    const-string v3, "syscode"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v2, 0x4c3c

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, ""

    const-string v3, "syscode"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, ""

    const-string v3, "imei"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/xmgd/utility/Tool;->getImei()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, ""

    const-string v3, "imei"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-direct {p0, v0, p2}, Lcom/autonavi/xmgd/user/AccountManagerHttpHandler;->addTag(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/HashMap;)V

    const-string v2, ""

    const-string v3, "info"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, ""

    const-string v3, "svccont"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, ""

    const-string v3, "opg"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public onRequestGetIdentifyCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/user/AccountManagerHttpHandler;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/autonavi/xmgd/user/AccountManagerHttpHandler;->mHashMap:Ljava/util/HashMap;

    const-string v1, "phonenum"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/autonavi/xmgd/user/AccountManagerHttpHandler;->mHashMap:Ljava/util/HashMap;

    const-string v1, "actiontype"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "0002"

    iget-object v1, p0, Lcom/autonavi/xmgd/user/AccountManagerHttpHandler;->mHashMap:Ljava/util/HashMap;

    invoke-direct {p0, v0, v1}, Lcom/autonavi/xmgd/user/AccountManagerHttpHandler;->onRequest(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onRequestIsLogin(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/user/AccountManagerHttpHandler;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/autonavi/xmgd/user/AccountManagerHttpHandler;->mHashMap:Ljava/util/HashMap;

    const-string v1, "sid"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "0007"

    iget-object v1, p0, Lcom/autonavi/xmgd/user/AccountManagerHttpHandler;->mHashMap:Ljava/util/HashMap;

    invoke-direct {p0, v0, v1}, Lcom/autonavi/xmgd/user/AccountManagerHttpHandler;->onRequest(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onRequestLoginOut(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/user/AccountManagerHttpHandler;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/autonavi/xmgd/user/AccountManagerHttpHandler;->mHashMap:Ljava/util/HashMap;

    const-string v1, "userid"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "0009"

    iget-object v1, p0, Lcom/autonavi/xmgd/user/AccountManagerHttpHandler;->mHashMap:Ljava/util/HashMap;

    invoke-direct {p0, v0, v1}, Lcom/autonavi/xmgd/user/AccountManagerHttpHandler;->onRequest(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onRequestResetPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/user/AccountManagerHttpHandler;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/autonavi/xmgd/user/AccountManagerHttpHandler;->mHashMap:Ljava/util/HashMap;

    const-string v1, "username"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/autonavi/xmgd/user/AccountManagerHttpHandler;->mHashMap:Ljava/util/HashMap;

    const-string v1, "pwd"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/autonavi/xmgd/user/AccountManagerHttpHandler;->mHashMap:Ljava/util/HashMap;

    const-string v1, "checkcode"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "0008"

    iget-object v1, p0, Lcom/autonavi/xmgd/user/AccountManagerHttpHandler;->mHashMap:Ljava/util/HashMap;

    invoke-direct {p0, v0, v1}, Lcom/autonavi/xmgd/user/AccountManagerHttpHandler;->onRequest(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onRequestUserLogin(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/user/AccountManagerHttpHandler;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/autonavi/xmgd/user/AccountManagerHttpHandler;->mHashMap:Ljava/util/HashMap;

    const-string v1, "username"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/autonavi/xmgd/user/AccountManagerHttpHandler;->mHashMap:Ljava/util/HashMap;

    const-string v1, "pwd"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "0002"

    iget-object v1, p0, Lcom/autonavi/xmgd/user/AccountManagerHttpHandler;->mHashMap:Ljava/util/HashMap;

    invoke-direct {p0, v0, v1}, Lcom/autonavi/xmgd/user/AccountManagerHttpHandler;->onRequest(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onRequestUserRegister(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/user/AccountManagerHttpHandler;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/autonavi/xmgd/user/AccountManagerHttpHandler;->mHashMap:Ljava/util/HashMap;

    const-string v1, "username"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/autonavi/xmgd/user/AccountManagerHttpHandler;->mHashMap:Ljava/util/HashMap;

    const-string v1, "pwd"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "0001"

    iget-object v1, p0, Lcom/autonavi/xmgd/user/AccountManagerHttpHandler;->mHashMap:Ljava/util/HashMap;

    invoke-direct {p0, v0, v1}, Lcom/autonavi/xmgd/user/AccountManagerHttpHandler;->onRequest(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
