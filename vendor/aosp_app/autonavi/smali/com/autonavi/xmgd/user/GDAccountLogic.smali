.class public Lcom/autonavi/xmgd/user/GDAccountLogic;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/xmgd/c/e;


# static fields
.field private static final LISTENER_ID_USER_ACCOUNT:I = 0x4d2

.field public static final MESSAGE_ERROR:I = 0x8

.field public static final MESSAGE_GET_IDENTIFY_CODE:I = 0x6

.field public static final MESSAGE_IS_LOGIN:I = 0x5

.field public static final MESSAGE_LOGIN:I = 0x2

.field public static final MESSAGE_LOGIN_OUT:I = 0x7

.field public static final MESSAGE_REGISTER:I = 0x1

.field public static final MESSAGE_RESET_PASSWORD:I = 0x4

.field public static final REQUEST_EXCEPTION:I = 0x3

.field public static final REQUEST_FAIL:I = 0x1

.field public static final REQUEST_FINISH:I = 0x2

.field private static REQUEST_ID_CHECK_IS_LOGIN:I = 0x0

.field private static REQUEST_ID_GET_IDENTIFY_CODE:I = 0x0

.field private static REQUEST_ID_LOGIN:I = 0x0

.field private static REQUEST_ID_LOGIN_OUT:I = 0x0

.field private static REQUEST_ID_REGISTER:I = 0x0

.field private static REQUEST_ID_RESET_PASSWORD:I = 0x0

.field public static final REQUEST_TASK_CANCELED:I = 0x5

.field public static final REQUEST_TIME_OUT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "chenwei.GDAccountLogic"

.field private static instance:Lcom/autonavi/xmgd/user/GDAccountLogic;


# instance fields
.field private PROJECTION:[Ljava/lang/String;

.field private final aRequestId:[I

.field private factory:Ljavax/xml/parsers/SAXParserFactory;

.field private identifyCode:Ljava/lang/String;

.field private isloginindex:I

.field private mAccountManagerHttpHandler:Lcom/autonavi/xmgd/user/AccountManagerHttpHandler;

.field private mApplication:Landroid/app/Application;

.field private mHandler:Landroid/os/Handler;

.field private mPraseIsLogin:Lcom/autonavi/xmgd/user/AccountManagerHttpHandler$PraseResponseCheckIsLogin;

.field private mPraseLogin:Lcom/autonavi/xmgd/user/AccountManagerHttpHandler$PraseResponseUserLogin;

.field private mPraseLoginOut:Lcom/autonavi/xmgd/user/AccountManagerHttpHandler$PraseResponseLoginOut;

.field private mPraseRegister:Lcom/autonavi/xmgd/user/AccountManagerHttpHandler$PraseResponseUserRegister;

.field private mPraseResetPassword:Lcom/autonavi/xmgd/user/AccountManagerHttpHandler$PraseResponseResetPassword;

.field private mPraseResponseGetIdentifyCode:Lcom/autonavi/xmgd/user/AccountManagerHttpHandler$PraseResponseGetIdentifyCode;

.field private message:Landroid/os/Message;

.field private password:Ljava/lang/String;

.field private responseStream:Ljava/io/InputStream;

.field private saxParser:Ljavax/xml/parsers/SAXParser;

.field private sid:Ljava/lang/String;

.field private sidindex:I

.field private userid:Ljava/lang/String;

.field private useridindex:I

.field private username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/autonavi/xmgd/user/GDAccountLogic;->REQUEST_ID_REGISTER:I

    sput v0, Lcom/autonavi/xmgd/user/GDAccountLogic;->REQUEST_ID_LOGIN:I

    sput v0, Lcom/autonavi/xmgd/user/GDAccountLogic;->REQUEST_ID_CHECK_IS_LOGIN:I

    sput v0, Lcom/autonavi/xmgd/user/GDAccountLogic;->REQUEST_ID_RESET_PASSWORD:I

    sput v0, Lcom/autonavi/xmgd/user/GDAccountLogic;->REQUEST_ID_LOGIN_OUT:I

    sput v0, Lcom/autonavi/xmgd/user/GDAccountLogic;->REQUEST_ID_GET_IDENTIFY_CODE:I

    const/4 v0, 0x0

    sput-object v0, Lcom/autonavi/xmgd/user/GDAccountLogic;->instance:Lcom/autonavi/xmgd/user/GDAccountLogic;

    return-void
.end method

.method private constructor <init>(Landroid/app/Application;)V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v3, [I

    iput-object v0, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->aRequestId:[I

    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->factory:Ljavax/xml/parsers/SAXParserFactory;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const-string v1, "sid"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "userid"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "islogin"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->PROJECTION:[Ljava/lang/String;

    const-string v0, "chenwei.GDAccountLogic"

    const-string v1, "GDAccountLogic()  \u6784\u9020\u51fd\u6570"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->mApplication:Landroid/app/Application;

    new-instance v0, Lcom/autonavi/xmgd/user/AccountManagerHttpHandler;

    invoke-direct {v0}, Lcom/autonavi/xmgd/user/AccountManagerHttpHandler;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->mAccountManagerHttpHandler:Lcom/autonavi/xmgd/user/AccountManagerHttpHandler;

    invoke-direct {p0}, Lcom/autonavi/xmgd/user/GDAccountLogic;->readCache()V

    invoke-static {}, Lcom/autonavi/xmgd/c/a;->a()Lcom/autonavi/xmgd/c/a;

    move-result-object v0

    const/16 v1, 0x4d2

    invoke-virtual {v0, p0, v1}, Lcom/autonavi/xmgd/c/a;->a(Lcom/autonavi/xmgd/c/e;I)Z

    return-void
.end method

.method private checkIsLogin()Z
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/xmgd/user/GDAccountLogic;->getUserid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private doException(ILjava/lang/String;II)V
    .locals 3

    const-string v0, "chenwei.GDAccountLogic"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doException()  errorType ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "chenwei.GDAccountLogic"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "aRequestId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "chenwei.GDAccountLogic"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "listenerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x4d2

    if-ne p4, v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->message:Landroid/os/Message;

    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->message:Landroid/os/Message;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "chenwei.GDAccountLogic"

    const-string v1, "mHandler \u4e3a null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getInstance(Landroid/app/Application;)Lcom/autonavi/xmgd/user/GDAccountLogic;
    .locals 1

    sget-object v0, Lcom/autonavi/xmgd/user/GDAccountLogic;->instance:Lcom/autonavi/xmgd/user/GDAccountLogic;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/xmgd/user/GDAccountLogic;

    invoke-direct {v0, p0}, Lcom/autonavi/xmgd/user/GDAccountLogic;-><init>(Landroid/app/Application;)V

    sput-object v0, Lcom/autonavi/xmgd/user/GDAccountLogic;->instance:Lcom/autonavi/xmgd/user/GDAccountLogic;

    :cond_0
    sget-object v0, Lcom/autonavi/xmgd/user/GDAccountLogic;->instance:Lcom/autonavi/xmgd/user/GDAccountLogic;

    return-object v0
.end method

.method private isEmptyRspcode(I)Z
    .locals 2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private prase([BLcom/autonavi/xmgd/user/PraseResponse;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->factory:Ljavax/xml/parsers/SAXParserFactory;

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->saxParser:Ljavax/xml/parsers/SAXParser;

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-static {p1}, Lcom/autonavi/xmgd/utility/Tool;->getString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->responseStream:Ljava/io/InputStream;

    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->saxParser:Ljavax/xml/parsers/SAXParser;

    iget-object v1, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->responseStream:Ljava/io/InputStream;

    invoke-virtual {v0, v1, p2}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    const-string v1, "chenwei.GDAccountLogic"

    const-string v2, "ParserConfigurationException "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Lcom/autonavi/xmgd/user/PraseException;

    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/autonavi/xmgd/user/PraseException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V

    const-string v1, "chenwei.GDAccountLogic"

    const-string v2, "SAXException "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Lcom/autonavi/xmgd/user/PraseException;

    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/autonavi/xmgd/user/PraseException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string v1, "chenwei.GDAccountLogic"

    const-string v2, "IOException "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method private readCache()V
    .locals 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xmgd/user/contentprovider/User$UserColumns;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const-string v1, ""

    iput-object v1, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->userid:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->sid:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "userid"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->useridindex:I

    const-string v1, "sid"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->sidindex:I

    const-string v1, "islogin"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->isloginindex:I

    iget v1, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->useridindex:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->userid:Ljava/lang/String;

    iget v1, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->sidindex:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->sid:Ljava/lang/String;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->sid:Ljava/lang/String;

    iget-object v1, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->userid:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/autonavi/xmgd/user/GDAccountLogic;->updateGlobalVar(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateGlobalVar(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sput-object p2, Lcom/autonavi/xmgd/application/NaviApplication;->userid:Ljava/lang/String;

    sput-object p1, Lcom/autonavi/xmgd/application/NaviApplication;->sessionid:Ljava/lang/String;

    invoke-direct {p0}, Lcom/autonavi/xmgd/user/GDAccountLogic;->checkIsLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/autonavi/xmgd/user/GDAccount_Global;->isLogin:Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/autonavi/xmgd/user/GDAccount_Global;->isLogin:Z

    goto :goto_0
.end method


# virtual methods
.method public checkIdentifyCode(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/xmgd/user/GDAccountLogic;->getIdentifyCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public checkPasswordSame(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIdentifyCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->identifyCode:Ljava/lang/String;

    return-object v0
.end method

.method public getIdentifyCode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x1

    new-array v3, v0, [I

    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->mAccountManagerHttpHandler:Lcom/autonavi/xmgd/user/AccountManagerHttpHandler;

    invoke-virtual {v0, p1, p2}, Lcom/autonavi/xmgd/user/AccountManagerHttpHandler;->onRequestGetIdentifyCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "chenwei.GDAccountLogic"

    const-string v1, "url = http://us.autonavi.com/clientvalidata"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "chenwei.GDAccountLogic"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getIdentifyCode() request="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/autonavi/xmgd/c/a;->a()Lcom/autonavi/xmgd/c/a;

    move-result-object v0

    const-string v1, "http://us.autonavi.com/clientvalidata"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/16 v4, 0x4d2

    const/16 v5, 0x1e

    invoke-virtual/range {v0 .. v5}, Lcom/autonavi/xmgd/c/a;->a(Ljava/lang/String;[B[III)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    aget v0, v3, v0

    sput v0, Lcom/autonavi/xmgd/user/GDAccountLogic;->REQUEST_ID_GET_IDENTIFY_CODE:I

    goto :goto_0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getSid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->sid:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->sid:Ljava/lang/String;

    goto :goto_0
.end method

.method public getUserid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->userid:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->userid:Ljava/lang/String;

    goto :goto_0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->username:Ljava/lang/String;

    return-object v0
.end method

.method public isLogin(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->mAccountManagerHttpHandler:Lcom/autonavi/xmgd/user/AccountManagerHttpHandler;

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/user/AccountManagerHttpHandler;->onRequestIsLogin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "chenwei.GDAccountLogic"

    const-string v1, "url=http://us.autonavi.com/user"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "chenwei.GDAccountLogic"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sid ="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "chenwei.GDAccountLogic"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isLogin() request="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/autonavi/xmgd/c/a;->a()Lcom/autonavi/xmgd/c/a;

    move-result-object v0

    const-string v1, "http://us.autonavi.com/user"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    iget-object v3, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->aRequestId:[I

    const/16 v4, 0x4d2

    const/16 v5, 0x1e

    invoke-virtual/range {v0 .. v5}, Lcom/autonavi/xmgd/c/a;->a(Ljava/lang/String;[B[III)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->aRequestId:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    sput v0, Lcom/autonavi/xmgd/user/GDAccountLogic;->REQUEST_ID_CHECK_IS_LOGIN:I

    goto :goto_0
.end method

.method public isPasswordValid(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    const-string v1, "[0-9a-zA-Z]{6,12}"

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x6

    if-lt v2, v3, :cond_0

    const/16 v3, 0xc

    if-gt v2, v3, :cond_0

    invoke-static {v1, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x1

    new-array v3, v0, [I

    invoke-static {p2}, Lcom/autonavi/xmgd/user/ThreeDes;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->mAccountManagerHttpHandler:Lcom/autonavi/xmgd/user/AccountManagerHttpHandler;

    invoke-virtual {v1, p1, v0}, Lcom/autonavi/xmgd/user/AccountManagerHttpHandler;->onRequestUserLogin(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "chenwei.GDAccountLogic"

    const-string v1, "url=http://us.autonavi.com/user"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "chenwei.GDAccountLogic"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "login() request="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/autonavi/xmgd/c/a;->a()Lcom/autonavi/xmgd/c/a;

    move-result-object v0

    const-string v1, "http://us.autonavi.com/user"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/16 v4, 0x4d2

    const/16 v5, 0x1e

    invoke-virtual/range {v0 .. v5}, Lcom/autonavi/xmgd/c/a;->a(Ljava/lang/String;[B[III)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    aget v0, v3, v0

    sput v0, Lcom/autonavi/xmgd/user/GDAccountLogic;->REQUEST_ID_LOGIN:I

    goto :goto_0
.end method

.method public loginOut(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->mAccountManagerHttpHandler:Lcom/autonavi/xmgd/user/AccountManagerHttpHandler;

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/user/AccountManagerHttpHandler;->onRequestLoginOut(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "chenwei.GDAccountLogic"

    const-string v1, "url=http://us.autonavi.com/user"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "chenwei.GDAccountLogic"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "userid ="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "chenwei.GDAccountLogic"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loginOut() request="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/autonavi/xmgd/c/a;->a()Lcom/autonavi/xmgd/c/a;

    move-result-object v0

    const-string v1, "http://us.autonavi.com/user"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    iget-object v3, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->aRequestId:[I

    const/16 v4, 0x4d2

    const/16 v5, 0x1e

    invoke-virtual/range {v0 .. v5}, Lcom/autonavi/xmgd/c/a;->a(Ljava/lang/String;[B[III)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->aRequestId:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    sput v0, Lcom/autonavi/xmgd/user/GDAccountLogic;->REQUEST_ID_LOGIN_OUT:I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "chenwei.GDAccountLogic"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/autonavi/xmgd/user/GDAccountLogic;->instance:Lcom/autonavi/xmgd/user/GDAccountLogic;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/autonavi/xmgd/c/a;->a()Lcom/autonavi/xmgd/c/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/autonavi/xmgd/c/a;->a(Lcom/autonavi/xmgd/c/e;)Z

    const/4 v0, 0x0

    sput-object v0, Lcom/autonavi/xmgd/user/GDAccountLogic;->instance:Lcom/autonavi/xmgd/user/GDAccountLogic;

    :cond_0
    return-void
.end method

.method public onHttpException(Ljava/lang/Exception;IILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0, p4, p2, p3}, Lcom/autonavi/xmgd/user/GDAccountLogic;->doException(ILjava/lang/String;II)V

    return-void
.end method

.method public onHttpRequestByteReceived(III)V
    .locals 2

    const-string v0, "chenwei.GDAccountLogic"

    const-string v1, "onHttpRequestByteReceived()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onHttpRequestFinish([BIII)V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x2

    const-string v0, "chenwei.GDAccountLogic"

    const-string v1, "onHttpRequestFinish()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/autonavi/xmgd/utility/Tool;->getString([B)Ljava/lang/String;

    move-result-object v0

    const-string v1, "chenwei.GDAccountLogic"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "aRequestId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "chenwei.GDAccountLogic"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "listenerId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "chenwei.GDAccountLogic"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "response ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    const-string v0, "chenwei.GDAccountLogic"

    const-string v1, "(mHandler == null) \u4e3anull"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x4d2

    if-ne p4, v0, :cond_0

    :try_start_0
    sget v0, Lcom/autonavi/xmgd/user/GDAccountLogic;->REQUEST_ID_REGISTER:I

    if-ne p3, v0, :cond_3

    new-instance v0, Lcom/autonavi/xmgd/user/AccountManagerHttpHandler$PraseResponseUserRegister;

    invoke-direct {v0}, Lcom/autonavi/xmgd/user/AccountManagerHttpHandler$PraseResponseUserRegister;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->mPraseRegister:Lcom/autonavi/xmgd/user/AccountManagerHttpHandler$PraseResponseUserRegister;

    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->mPraseRegister:Lcom/autonavi/xmgd/user/AccountManagerHttpHandler$PraseResponseUserRegister;

    invoke-direct {p0, p1, v0}, Lcom/autonavi/xmgd/user/GDAccountLogic;->prase([BLcom/autonavi/xmgd/user/PraseResponse;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->mPraseRegister:Lcom/autonavi/xmgd/user/AccountManagerHttpHandler$PraseResponseUserRegister;

    iget-object v0, v0, Lcom/autonavi/xmgd/user/AccountManagerHttpHandler$PraseResponseUserRegister;->rsptype:Ljava/lang/String;

    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->mPraseRegister:Lcom/autonavi/xmgd/user/AccountManagerHttpHandler$PraseResponseUserRegister;

    iget-object v0, v0, Lcom/autonavi/xmgd/user/AccountManagerHttpHandler$PraseResponseUserRegister;->rspcode:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->message:Landroid/os/Message;

    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->mPraseRegister:Lcom/autonavi/xmgd/user/AccountManagerHttpHandler$PraseResponseUserRegister;

    iget-object v0, v0, Lcom/autonavi/xmgd/user/AccountManagerHttpHandler$PraseResponseUserRegister;->sid:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/user/GDAccountLogic;->setSid(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->mPraseRegister:Lcom/autonavi/xmgd/user/AccountManagerHttpHandler$PraseResponseUserRegister;

    iget-object v0, v0, Lcom/autonavi/xmgd/user/AccountManagerHttpHandler$PraseResponseUserRegister;->userid:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/user/GDAccountLogic;->setUserid(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->message:Landroid/os/Message;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Lcom/autonavi/xmgd/user/PraseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "chenwei.GDAccountLogic"

    const-string v1, "PraseException"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2329

    invoke-virtual {v0, v4, v5, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->message:Landroid/os/Message;

    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->message:Landroid/os/Message;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->message:Landroid/os/Message;
    :try_end_1
    .catch Lcom/autonavi/xmgd/user/PraseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v0, "chenwei.GDAccountLogic"

    const-string v1, "IOException"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x232a

    invoke-virtual {v0, v4, v5, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->message:Landroid/os/Message;

    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->message:Landroid/os/Message;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_3
    :try_start_2
    sget v0, Lcom/autonavi/xmgd/user/GDAccountLogic;->REQUEST_ID_LOGIN:I

    if-ne p3, v0, :cond_5

    new-instance v0, Lcom/autonavi/xmgd/user/AccountManagerHttpHandler$PraseResponseUserLogin;

    invoke-direct {v0}, Lcom/autonavi/xmgd/user/AccountManagerHttpHandler$PraseResponseUserLogin;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->mPraseLogin:Lcom/autonavi/xmgd/user/AccountManagerHttpHandler$PraseResponseUserLogin;

    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->mPraseLogin:Lcom/autonavi/xmgd/user/AccountManagerHttpHandler$PraseResponseUserLogin;

    invoke-direct {p0, p1, v0}, Lcom/autonavi/xmgd/user/GDAccountLogic;->prase([BLcom/autonavi/xmgd/user/PraseResponse;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->mPraseLogin:Lcom/autonavi/xmgd/user/AccountManagerHttpHandler$PraseResponseUserLogin;

    iget-object v0, v0, Lcom/autonavi/xmgd/user/AccountManagerHttpHandler$PraseResponseUserLogin;->rspcode:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    iget-object v1, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->mPraseLogin:Lcom/autonavi/xmgd/user/AccountManagerHttpHandler$PraseResponseUserLogin;

    iget-object v1, v1, Lcom/autonavi/xmgd/user/AccountManagerHttpHandler$PraseResponseUserLogin;->sid:Ljava/lang/String;

    iget-object v2, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->mPraseLogin:Lcom/autonavi/xmgd/user/AccountManagerHttpHandler$PraseResponseUserLogin;

    iget-object v2, v2, Lcom/autonavi/xmgd/user/AccountManagerHttpHandler$PraseResponseUserLogin;->userid:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/autonavi/xmgd/user/GDAccountLogic;->updateData(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_4
    iget-object v1, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->message:Landroid/os/Message;

    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->message:Landroid/os/Message;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catch Lcom/autonavi/xmgd/user/PraseException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    const-string v1, "chenwei.GDAccountLogic"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x232b

    invoke-virtual {v0, v4, v5, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->message:Landroid/os/Message;

    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->message:Landroid/os/Message;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_5
    :try_start_3
    sget v0, Lcom/autonavi/xmgd/user/GDAccountLogic;->REQUEST_ID_GET_IDENTIFY_CODE:I

    if-ne p3, v0, :cond_7

    new-instance v0, Lcom/autonavi/xmgd/user/AccountManagerHttpHandler$PraseResponseGetIdentifyCode;

    invoke-direct {v0}, Lcom/autonavi/xmgd/user/AccountManagerHttpHandler$PraseResponseGetIdentifyCode;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->mPraseResponseGetIdentifyCode:Lcom/autonavi/xmgd/user/AccountManagerHttpHandler$PraseResponseGetIdentifyCode;

    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->mPraseResponseGetIdentifyCode:Lcom/autonavi/xmgd/user/AccountManagerHttpHandler$PraseResponseGetIdentifyCode;

    invoke-direct {p0, p1, v0}, Lcom/autonavi/xmgd/user/GDAccountLogic;->prase([BLcom/autonavi/xmgd/user/PraseResponse;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->mPraseResponseGetIdentifyCode:Lcom/autonavi/xmgd/user/AccountManagerHttpHandler$PraseResponseGetIdentifyCode;

    iget-object v0, v0, Lcom/autonavi/xmgd/user/AccountManagerHttpHandler$PraseResponseGetIdentifyCode;->rspcode:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->mPraseResponseGetIdentifyCode:Lcom/autonavi/xmgd/user/AccountManagerHttpHandler$PraseResponseGetIdentifyCode;

    iget-object v1, v1, Lcom/autonavi/xmgd/user/AccountManagerHttpHandler$PraseResponseGetIdentifyCode;->identifyCode:Ljava/lang/String;

    if-nez v0, :cond_6

    invoke-virtual {p0, v1}, Lcom/autonavi/xmgd/user/GDAccountLogic;->setIdentifyCode(Ljava/lang/String;)V

    :goto_2
    iget-object v1, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    const/4 v3, 0x6

    invoke-virtual {v1, v2, v3, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->message:Landroid/os/Message;

    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->message:Landroid/os/Message;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_6
    const-string v1, "-1"

    invoke-virtual {p0, v1}, Lcom/autonavi/xmgd/user/GDAccountLogic;->setIdentifyCode(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    sget v0, Lcom/autonavi/xmgd/user/GDAccountLogic;->REQUEST_ID_CHECK_IS_LOGIN:I

    if-ne p3, v0, :cond_9

    new-instance v0, Lcom/autonavi/xmgd/user/AccountManagerHttpHandler$PraseResponseCheckIsLogin;

    invoke-direct {v0}, Lcom/autonavi/xmgd/user/AccountManagerHttpHandler$PraseResponseCheckIsLogin;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->mPraseIsLogin:Lcom/autonavi/xmgd/user/AccountManagerHttpHandler$PraseResponseCheckIsLogin;

    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->mPraseIsLogin:Lcom/autonavi/xmgd/user/AccountManagerHttpHandler$PraseResponseCheckIsLogin;

    invoke-direct {p0, p1, v0}, Lcom/autonavi/xmgd/user/GDAccountLogic;->prase([BLcom/autonavi/xmgd/user/PraseResponse;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->mPraseIsLogin:Lcom/autonavi/xmgd/user/AccountManagerHttpHandler$PraseResponseCheckIsLogin;

    iget-object v0, v0, Lcom/autonavi/xmgd/user/AccountManagerHttpHandler$PraseResponseCheckIsLogin;->userid:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->message:Landroid/os/Message;

    :goto_3
    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->message:Landroid/os/Message;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const/4 v2, 0x5

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->message:Landroid/os/Message;

    goto :goto_3

    :cond_9
    sget v0, Lcom/autonavi/xmgd/user/GDAccountLogic;->REQUEST_ID_RESET_PASSWORD:I

    if-ne p3, v0, :cond_a

    new-instance v0, Lcom/autonavi/xmgd/user/AccountManagerHttpHandler$PraseResponseResetPassword;

    invoke-direct {v0}, Lcom/autonavi/xmgd/user/AccountManagerHttpHandler$PraseResponseResetPassword;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->mPraseResetPassword:Lcom/autonavi/xmgd/user/AccountManagerHttpHandler$PraseResponseResetPassword;

    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->mPraseResetPassword:Lcom/autonavi/xmgd/user/AccountManagerHttpHandler$PraseResponseResetPassword;

    invoke-direct {p0, p1, v0}, Lcom/autonavi/xmgd/user/GDAccountLogic;->prase([BLcom/autonavi/xmgd/user/PraseResponse;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->mPraseResetPassword:Lcom/autonavi/xmgd/user/AccountManagerHttpHandler$PraseResponseResetPassword;

    iget-object v0, v0, Lcom/autonavi/xmgd/user/AccountManagerHttpHandler$PraseResponseResetPassword;->rspcode:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->message:Landroid/os/Message;

    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->message:Landroid/os/Message;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_a
    sget v0, Lcom/autonavi/xmgd/user/GDAccountLogic;->REQUEST_ID_LOGIN_OUT:I

    if-ne p3, v0, :cond_0

    new-instance v0, Lcom/autonavi/xmgd/user/AccountManagerHttpHandler$PraseResponseLoginOut;

    invoke-direct {v0}, Lcom/autonavi/xmgd/user/AccountManagerHttpHandler$PraseResponseLoginOut;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->mPraseLoginOut:Lcom/autonavi/xmgd/user/AccountManagerHttpHandler$PraseResponseLoginOut;

    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->mPraseLoginOut:Lcom/autonavi/xmgd/user/AccountManagerHttpHandler$PraseResponseLoginOut;

    invoke-direct {p0, p1, v0}, Lcom/autonavi/xmgd/user/GDAccountLogic;->prase([BLcom/autonavi/xmgd/user/PraseResponse;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->mPraseLoginOut:Lcom/autonavi/xmgd/user/AccountManagerHttpHandler$PraseResponseLoginOut;

    iget-object v0, v0, Lcom/autonavi/xmgd/user/AccountManagerHttpHandler$PraseResponseLoginOut;->rspcode:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    const-string v1, ""

    const-string v2, ""

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/autonavi/xmgd/user/GDAccountLogic;->updateData(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_b
    :goto_4
    iget-object v1, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    const/4 v3, 0x7

    invoke-virtual {v1, v2, v3, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->message:Landroid/os/Message;

    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->message:Landroid/os/Message;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_c
    const/16 v1, 0x405

    if-ne v0, v1, :cond_b

    const-string v1, ""

    const-string v2, ""

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/autonavi/xmgd/user/GDAccountLogic;->updateData(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_3
    .catch Lcom/autonavi/xmgd/user/PraseException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4
.end method

.method public onHttpTaskCanceled([BIII)V
    .locals 2

    const/4 v0, 0x5

    const-string v1, ""

    invoke-direct {p0, v0, v1, p3, p4}, Lcom/autonavi/xmgd/user/GDAccountLogic;->doException(ILjava/lang/String;II)V

    return-void
.end method

.method public onHttpTimeOut(Ljava/lang/String;II)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/autonavi/xmgd/user/GDAccountLogic;->doException(ILjava/lang/String;II)V

    return-void
.end method

.method public register(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v0, 0x1

    new-array v3, v0, [I

    invoke-static {p2}, Lcom/autonavi/xmgd/user/ThreeDes;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->mAccountManagerHttpHandler:Lcom/autonavi/xmgd/user/AccountManagerHttpHandler;

    invoke-virtual {v1, p1, v0}, Lcom/autonavi/xmgd/user/AccountManagerHttpHandler;->onRequestUserRegister(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "chenwei.GDAccountLogic"

    const-string v1, "url=http://us.autonavi.com/user"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "chenwei.GDAccountLogic"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "login() request="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "chenwei.GDAccountLogic"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "aRequestId[0]="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v4, v3, v6

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/autonavi/xmgd/c/a;->a()Lcom/autonavi/xmgd/c/a;

    move-result-object v0

    const-string v1, "http://us.autonavi.com/user"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/16 v4, 0x4d2

    const/16 v5, 0x1e

    invoke-virtual/range {v0 .. v5}, Lcom/autonavi/xmgd/c/a;->a(Ljava/lang/String;[B[III)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    aget v0, v3, v6

    sput v0, Lcom/autonavi/xmgd/user/GDAccountLogic;->REQUEST_ID_REGISTER:I

    goto :goto_0
.end method

.method public resetPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-static {p1}, Lcom/autonavi/xmgd/user/ThreeDes;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/autonavi/xmgd/user/ThreeDes;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->mAccountManagerHttpHandler:Lcom/autonavi/xmgd/user/AccountManagerHttpHandler;

    invoke-virtual {v2, v0, v1, p3}, Lcom/autonavi/xmgd/user/AccountManagerHttpHandler;->onRequestResetPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "chenwei.GDAccountLogic"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetPassword()   username="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "pwd="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "checkcode="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "chenwei.GDAccountLogic"

    const-string v1, "url=http://us.autonavi.com/user"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "chenwei.GDAccountLogic"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetPassword() request="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/autonavi/xmgd/c/a;->a()Lcom/autonavi/xmgd/c/a;

    move-result-object v0

    const-string v1, "http://us.autonavi.com/user"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    iget-object v3, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->aRequestId:[I

    const/16 v4, 0x4d2

    const/16 v5, 0x1e

    invoke-virtual/range {v0 .. v5}, Lcom/autonavi/xmgd/c/a;->a(Ljava/lang/String;[B[III)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->aRequestId:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    sput v0, Lcom/autonavi/xmgd/user/GDAccountLogic;->REQUEST_ID_RESET_PASSWORD:I

    goto :goto_0
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 3

    const-string v1, "chenwei.GDAccountLogic"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHandler()  (handler ==null) "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->mHandler:Landroid/os/Handler;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIdentifyCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->identifyCode:Ljava/lang/String;

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->password:Ljava/lang/String;

    return-void
.end method

.method public setSid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->sid:Ljava/lang/String;

    return-void
.end method

.method public setUserid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->userid:Ljava/lang/String;

    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->username:Ljava/lang/String;

    return-void
.end method

.method public updateData(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/xmgd/user/GDAccountLogic;->setSid(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/autonavi/xmgd/user/GDAccountLogic;->setUserid(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/autonavi/xmgd/user/GDAccountLogic;->updateGlobalVar(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/user/GDAccountLogic;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/autonavi/xmgd/user/GDAccountLogic;->updateSql(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public updateSql(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    const/4 v3, 0x0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "username"

    invoke-virtual {p0}, Lcom/autonavi/xmgd/user/GDAccountLogic;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sid"

    invoke-virtual {v1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "userid"

    invoke-virtual {v1, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "islogin"

    if-eqz p4, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDAccountLogic;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/autonavi/xmgd/user/contentprovider/User$UserColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
