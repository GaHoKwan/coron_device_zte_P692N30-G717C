.class public Lcom/zte/retrieve/http/HttpResult;
.super Ljava/lang/Object;
.source "HttpResult.java"


# static fields
.field public static final HTTP_ACCEPTED:I = 0xca

.field public static final HTTP_ACTIVE_SUCCESS:I = 0x1c4

.field public static final HTTP_BAD_GETEWAY:I = 0x1f6

.field public static final HTTP_BAD_REQUEST:I = 0x190

.field public static final HTTP_BANDWIDTH_LIMIT_EXCEEDED:I = 0x1fd

.field public static final HTTP_BINDING_DISABLE:I = 0x1ca

.field public static final HTTP_BINDING_ENABLE:I = 0x1c9

.field public static final HTTP_CONFLICT:I = 0x199

.field public static final HTTP_CONTINUE:I = 0x64

.field public static final HTTP_CREATED:I = 0xc9

.field public static final HTTP_DB_INTERNAL_ERROR:I = 0x1c2

.field public static final HTTP_DEACTIVE_FAIL:I = 0x1c3

.field public static final HTTP_EXPECTATION_FAILED:I = 0x1a1

.field public static final HTTP_FAILED_DEPENDENCY:I = 0x1a8

.field public static final HTTP_FORBIDDEN:I = 0x193

.field public static final HTTP_GATEWAY_TIMEOUT:I = 0x1f8

.field public static final HTTP_GONE:I = 0x19a

.field public static final HTTP_INSUFFICIENT_STORAGE:I = 0x1fb

.field public static final HTTP_INTERNAL_SERVER_ERROR:I = 0x1f4

.field public static final HTTP_LEN_REQUIRED:I = 0x19b

.field public static final HTTP_LOCKED:I = 0x1a7

.field public static final HTTP_METHOD_NOT_ALLOWED:I = 0x195

.field public static final HTTP_MULTI_STATUS:I = 0xcf

.field public static final HTTP_NOT_ACCEPTABLE:I = 0x196

.field public static final HTTP_NOT_EXTENDED:I = 0x1fe

.field public static final HTTP_NOT_FOUND:I = 0x194

.field public static final HTTP_NOT_IMPLEMENTED:I = 0x1f5

.field public static final HTTP_NO_AUTHORITATIVE:I = 0xcb

.field public static final HTTP_NO_CONTENT:I = 0xcc

.field public static final HTTP_OK:I = 0xc8

.field public static final HTTP_PARTIAL_CONTENT:I = 0xce

.field public static final HTTP_PAYMENT_REQUIRED:I = 0x192

.field public static final HTTP_PROCESSING:I = 0x66

.field public static final HTTP_PROCONDITON_FAILED:I = 0x19c

.field public static final HTTP_PROXY_AUTH_REQUIRED:I = 0x197

.field public static final HTTP_REPEAT_OPERATE:I = 0x1ff

.field public static final HTTP_REQUESTED_RANGE_NOT_SATISFIABLE:I = 0x1a0

.field public static final HTTP_REQUEST_ENTITY_TOO_LARGE:I = 0x19d

.field public static final HTTP_REQUEST_TIMEOUT:I = 0x198

.field public static final HTTP_REQUEST_URI_TOO_LONG:I = 0x19e

.field public static final HTTP_RESET_CONTENT:I = 0xcd

.field public static final HTTP_RETRY_WITH:I = 0x1c1

.field public static final HTTP_SERVICE_UNAVAILABVLE:I = 0x1f7

.field public static final HTTP_SWITCHING_PROTOCOLS:I = 0x65

.field public static final HTTP_UNAUTHORIZED:I = 0x191

.field public static final HTTP_UNORDERD_COLLECTION:I = 0x1a9

.field public static final HTTP_UNSUPPORTED_MEDIA_TYPE:I = 0x19f

.field public static final HTTP_UPGRADE_REQUIRED:I = 0x1aa

.field public static final HTTP_USER_AND_IMEI_EXIST_BUT_UNMATCHED:I = 0x1c8

.field public static final HTTP_USER_AND_IMEI_NOEXIST:I = 0x1c5

.field public static final HTTP_USER_BINDED_AND_IMEI_NOEXIST:I = 0x1c7

.field public static final HTTP_USER_NOEXITST_AND_IMEI_BINDED:I = 0x1c6

.field public static final HTTP_VERSION_NOT_SUPPORTED:I = 0x1f9

.field public static final UNPROCESSABLE_ENTITY:I = 0x1a6


# instance fields
.field private resData:Ljava/lang/String;

.field private statusCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/16 v0, 0xc8

    iput v0, p0, Lcom/zte/retrieve/http/HttpResult;->statusCode:I

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/retrieve/http/HttpResult;->resData:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public getResData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/zte/retrieve/http/HttpResult;->resData:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/zte/retrieve/http/HttpResult;->statusCode:I

    return v0
.end method

.method public setResData(Ljava/lang/String;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/zte/retrieve/http/HttpResult;->resData:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setStatusCode(I)V
    .locals 0
    .parameter "status"

    .prologue
    .line 24
    iput p1, p0, Lcom/zte/retrieve/http/HttpResult;->statusCode:I

    .line 25
    return-void
.end method
