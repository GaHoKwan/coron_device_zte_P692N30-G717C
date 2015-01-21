.class public Lcom/autonavi/xm/util/HttpHandler;
.super Ljava/lang/Object;


# static fields
.field private static final DEFAULT_ENCODING:Ljava/lang/String; = "UTF-8"

.field private static final DEFAULT_TIME_OUT_MILLIS:I = 0x4e20

.field public static final ERROR_ILLEGAL_URL:I = -0x1

.field public static final ERROR_NETWORK_EXCEPTION:I = -0x3

.field public static final ERROR_TIME_OUT:I = -0x2

.field private static final REQUEST_METHOD_GET:Ljava/lang/String; = "GET"

.field private static final REQUEST_METHOD_POST:Ljava/lang/String; = "POST"

.field public static final RESPONSE_TYPE_STREAM:I = 0x0

.field public static final RESPONSE_TYPE_STRING:I = 0x1

.field private static final isTest:Z


# instance fields
.field private mCallback:Lcom/autonavi/xm/util/HttpHandler$Callback;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/autonavi/xm/util/HttpHandler;-><init>(Lcom/autonavi/xm/util/HttpHandler$Callback;)V

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/xm/util/HttpHandler$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/autonavi/xm/util/HttpHandler;->setCallback(Lcom/autonavi/xm/util/HttpHandler$Callback;)V

    return-void
.end method

.method private performRequest(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 8

    new-instance v7, Ljava/lang/Thread;

    new-instance v0, Lcom/autonavi/xm/util/HttpHandler$HttpRunner;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/autonavi/xm/util/HttpHandler$HttpRunner;-><init>(Lcom/autonavi/xm/util/HttpHandler;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v7, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method protected onError(II)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/util/HttpHandler;->mCallback:Lcom/autonavi/xm/util/HttpHandler$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/util/HttpHandler;->mCallback:Lcom/autonavi/xm/util/HttpHandler$Callback;

    invoke-interface {v0, p1, p2}, Lcom/autonavi/xm/util/HttpHandler$Callback;->onError(II)V

    :cond_0
    return-void
.end method

.method protected onResponse(ILjava/io/InputStream;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/util/HttpHandler;->mCallback:Lcom/autonavi/xm/util/HttpHandler$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/util/HttpHandler;->mCallback:Lcom/autonavi/xm/util/HttpHandler$Callback;

    invoke-interface {v0, p1, p2}, Lcom/autonavi/xm/util/HttpHandler$Callback;->onResponse(ILjava/io/InputStream;)V

    :cond_0
    return-void
.end method

.method protected onResponse(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/util/HttpHandler;->mCallback:Lcom/autonavi/xm/util/HttpHandler$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/util/HttpHandler;->mCallback:Lcom/autonavi/xm/util/HttpHandler$Callback;

    invoke-interface {v0, p1, p2}, Lcom/autonavi/xm/util/HttpHandler$Callback;->onResponse(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onResponseFail(II)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/util/HttpHandler;->mCallback:Lcom/autonavi/xm/util/HttpHandler$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/util/HttpHandler;->mCallback:Lcom/autonavi/xm/util/HttpHandler$Callback;

    invoke-interface {v0, p1, p2}, Lcom/autonavi/xm/util/HttpHandler$Callback;->onResponseFailed(II)V

    :cond_0
    return-void
.end method

.method public postRequest(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 6

    const-string v1, "POST"

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/autonavi/xm/util/HttpHandler;->performRequest(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public postRequest(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    const-string v1, "POST"

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/autonavi/xm/util/HttpHandler;->performRequest(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public sendRequest(ILjava/lang/String;I)V
    .locals 6

    const-string v1, "GET"

    const/4 v4, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/autonavi/xm/util/HttpHandler;->performRequest(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public sendRequest(Ljava/lang/String;I)V
    .locals 6

    const-string v1, "GET"

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/autonavi/xm/util/HttpHandler;->performRequest(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setCallback(Lcom/autonavi/xm/util/HttpHandler$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/util/HttpHandler;->mCallback:Lcom/autonavi/xm/util/HttpHandler$Callback;

    return-void
.end method
