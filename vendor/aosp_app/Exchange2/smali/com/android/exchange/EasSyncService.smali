.class public Lcom/android/exchange/EasSyncService;
.super Lcom/android/exchange/AbstractSyncService;
.source "EasSyncService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/EasSyncService$1;,
        Lcom/android/exchange/EasSyncService$TrustAllCertsTrustManager;
    }
.end annotation


# static fields
.field private static final AUTO_DISCOVER_PAGE:Ljava/lang/String; = "/autodiscover/autodiscover.xml"

.field private static final AUTO_DISCOVER_SCHEMA_PREFIX:Ljava/lang/String; = "http://schemas.microsoft.com/exchange/autodiscover/mobilesync/"

.field public static final CANCEL_REQUEST_MSG:Ljava/lang/String; = "part_request_canceled"

.field public static final COMMAND_TIMEOUT:I = 0x7530

.field private static final CONNECTION_TIMEOUT:I = 0xea60

.field public static final DEBUG_GAL_SERVICE:Z = false

.field static final DEVICE_TYPE:Ljava/lang/String; = "Android"

.field public static final EAS_12_POLICY_TYPE:Ljava/lang/String; = "MS-EAS-Provisioning-WBXML"

.field public static final EAS_2_POLICY_TYPE:Ljava/lang/String; = "MS-WAP-Provisioning-XML"

.field protected static final EAS_REDIRECT_CODE:I = 0x1c3

.field protected static final FORCEPING_WATCHDOG_TIMEOUT_ALLOWANCE:I = 0x2710

.field private static final GAL_SEARCH_LIMIT:I = 0xa

.field private static final GAL_TIMEOUT:I = 0x2710

.field public static final INTERNAL_SERVER_ERROR_CODE:I = 0x1f4

.field private static final MAX_LOOPING_COUNT:I = 0x64

.field private static final MAX_REDIRECTS:I = 0x3

.field public static final MESSAGE_FLAG_MOVED_MESSAGE:I = 0x200

.field protected static final PING_COMMAND:Ljava/lang/String; = "Ping"

.field private static final POST_LOCK_CHECK_TIMEOUT:I = 0x7d0

.field private static final POST_LOCK_TIMEOUT:I = 0x2710

.field private static final PROVISION_STATUS_OK:Ljava/lang/String; = "1"

.field private static final PROVISION_STATUS_PARTIAL:Ljava/lang/String; = "2"

.field static final USER_AGENT:Ljava/lang/String; = null

.field protected static final WATCHDOG_TIMEOUT_ALLOWANCE:I = 0x7530

.field private static volatile sGalServiceList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/exchange/EasSyncService;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAuthString:Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field mBaseUriString:Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mClientCertAlias:Ljava/lang/String;

.field public mContentResolver:Landroid/content/ContentResolver;

.field protected mDeviceId:Ljava/lang/String;

.field public mHostAddress:Ljava/lang/String;

.field protected mHttpConn:Ljava/net/HttpURLConnection;

.field public mHttpPostForAttachment:Lorg/apache/http/client/methods/HttpPost;

.field public mIsForAttachment:Z

.field private mIsForcePing:Z

.field public mIsValid:Z

.field private mMockConnection:Ljava/net/HttpURLConnection;

.field public mPassword:Ljava/lang/String;

.field private volatile mPendingOptions:Lorg/apache/http/client/methods/HttpOptions;

.field private volatile mPendingPost:Lorg/apache/http/client/methods/HttpPost;

.field private mPort:I

.field protected mPostAborted:Z

.field protected mPostReset:Z

.field public mProtocolVersion:Ljava/lang/String;

.field public mProtocolVersionDouble:Ljava/lang/Double;

.field private mRedirectCount:I

.field private mSendStatus:I

.field private mSsl:Z

.field private mSyncStatus:I

.field protected mTrustSsl:Z

.field public mUpsyncFailed:Z

.field public mUserName:Ljava/lang/String;

.field mUserString:Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mWindowCount:I

.field private mWindowSyncAsNormal:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Android/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "EAS-1.3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/exchange/EasSyncService;->USER_AGENT:Ljava/lang/String;

    .line 217
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/android/exchange/EasSyncService;->sGalServiceList:Ljava/util/LinkedList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 261
    const-string v0, "EAS Validation"

    invoke-direct {p0, v0}, Lcom/android/exchange/EasSyncService;-><init>(Ljava/lang/String;)V

    .line 262
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Mailbox;)V
    .locals 6
    .parameter "context"
    .parameter "mailbox"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 241
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/AbstractSyncService;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Mailbox;)V

    .line 158
    iput v3, p0, Lcom/android/exchange/EasSyncService;->mSyncStatus:I

    .line 170
    const-string v1, "2.5"

    iput-object v1, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    .line 172
    iput-object v4, p0, Lcom/android/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;

    .line 173
    iput-object v4, p0, Lcom/android/exchange/EasSyncService;->mAuthString:Ljava/lang/String;

    .line 175
    iput-object v4, p0, Lcom/android/exchange/EasSyncService;->mUserString:Ljava/lang/String;

    .line 177
    iput-object v4, p0, Lcom/android/exchange/EasSyncService;->mBaseUriString:Ljava/lang/String;

    .line 184
    iput-object v4, p0, Lcom/android/exchange/EasSyncService;->mPendingOptions:Lorg/apache/http/client/methods/HttpOptions;

    .line 186
    iput-object v4, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 188
    iput-boolean v3, p0, Lcom/android/exchange/EasSyncService;->mPostAborted:Z

    .line 190
    iput-boolean v3, p0, Lcom/android/exchange/EasSyncService;->mPostReset:Z

    .line 193
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mSsl:Z

    .line 194
    iput-boolean v3, p0, Lcom/android/exchange/EasSyncService;->mTrustSsl:Z

    .line 195
    iput-object v4, p0, Lcom/android/exchange/EasSyncService;->mClientCertAlias:Ljava/lang/String;

    .line 200
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mIsValid:Z

    .line 203
    iput-boolean v3, p0, Lcom/android/exchange/EasSyncService;->mUpsyncFailed:Z

    .line 206
    iput-object v4, p0, Lcom/android/exchange/EasSyncService;->mHttpConn:Ljava/net/HttpURLConnection;

    .line 208
    iput-boolean v3, p0, Lcom/android/exchange/EasSyncService;->mIsForcePing:Z

    .line 211
    iput v3, p0, Lcom/android/exchange/EasSyncService;->mSendStatus:I

    .line 213
    iput-object v4, p0, Lcom/android/exchange/EasSyncService;->mHttpPostForAttachment:Lorg/apache/http/client/methods/HttpPost;

    .line 214
    iput-boolean v3, p0, Lcom/android/exchange/EasSyncService;->mIsForAttachment:Z

    .line 222
    iput v3, p0, Lcom/android/exchange/EasSyncService;->mWindowCount:I

    .line 223
    iput v3, p0, Lcom/android/exchange/EasSyncService;->mWindowSyncAsNormal:I

    .line 227
    iput-object v4, p0, Lcom/android/exchange/EasSyncService;->mMockConnection:Ljava/net/HttpURLConnection;

    .line 541
    iput v3, p0, Lcom/android/exchange/EasSyncService;->mRedirectCount:I

    .line 242
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    .line 243
    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    if-nez v1, :cond_0

    .line 244
    iput-boolean v3, p0, Lcom/android/exchange/EasSyncService;->mIsValid:Z

    .line 254
    :goto_0
    return-void

    .line 247
    :cond_0
    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v4, v1, Lcom/android/emailcommon/provider/Account;->mHostAuthKeyRecv:J

    invoke-static {p1, v4, v5}, Lcom/android/emailcommon/provider/HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v0

    .line 248
    .local v0, ha:Lcom/android/emailcommon/provider/HostAuth;
    if-nez v0, :cond_1

    .line 249
    iput-boolean v3, p0, Lcom/android/exchange/EasSyncService;->mIsValid:Z

    goto :goto_0

    .line 252
    :cond_1
    iget v1, v0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/exchange/EasSyncService;->mSsl:Z

    .line 253
    iget v1, v0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    :goto_2
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mTrustSsl:Z

    goto :goto_0

    :cond_2
    move v1, v3

    .line 252
    goto :goto_1

    :cond_3
    move v2, v3

    .line 253
    goto :goto_2
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 4
    .parameter "prefix"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 257
    invoke-direct {p0, p1}, Lcom/android/exchange/AbstractSyncService;-><init>(Ljava/lang/String;)V

    .line 158
    iput v1, p0, Lcom/android/exchange/EasSyncService;->mSyncStatus:I

    .line 170
    const-string v0, "2.5"

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    .line 172
    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;

    .line 173
    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mAuthString:Ljava/lang/String;

    .line 175
    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mUserString:Ljava/lang/String;

    .line 177
    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mBaseUriString:Ljava/lang/String;

    .line 184
    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mPendingOptions:Lorg/apache/http/client/methods/HttpOptions;

    .line 186
    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 188
    iput-boolean v1, p0, Lcom/android/exchange/EasSyncService;->mPostAborted:Z

    .line 190
    iput-boolean v1, p0, Lcom/android/exchange/EasSyncService;->mPostReset:Z

    .line 193
    iput-boolean v3, p0, Lcom/android/exchange/EasSyncService;->mSsl:Z

    .line 194
    iput-boolean v1, p0, Lcom/android/exchange/EasSyncService;->mTrustSsl:Z

    .line 195
    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mClientCertAlias:Ljava/lang/String;

    .line 200
    iput-boolean v3, p0, Lcom/android/exchange/EasSyncService;->mIsValid:Z

    .line 203
    iput-boolean v1, p0, Lcom/android/exchange/EasSyncService;->mUpsyncFailed:Z

    .line 206
    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mHttpConn:Ljava/net/HttpURLConnection;

    .line 208
    iput-boolean v1, p0, Lcom/android/exchange/EasSyncService;->mIsForcePing:Z

    .line 211
    iput v1, p0, Lcom/android/exchange/EasSyncService;->mSendStatus:I

    .line 213
    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mHttpPostForAttachment:Lorg/apache/http/client/methods/HttpPost;

    .line 214
    iput-boolean v1, p0, Lcom/android/exchange/EasSyncService;->mIsForAttachment:Z

    .line 222
    iput v1, p0, Lcom/android/exchange/EasSyncService;->mWindowCount:I

    .line 223
    iput v1, p0, Lcom/android/exchange/EasSyncService;->mWindowSyncAsNormal:I

    .line 227
    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mMockConnection:Ljava/net/HttpURLConnection;

    .line 541
    iput v1, p0, Lcom/android/exchange/EasSyncService;->mRedirectCount:I

    .line 258
    return-void
.end method

.method private static acknowledgeProvision(Lcom/android/exchange/EasSyncService;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "svc"
    .parameter "tempKey"
    .parameter "result"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1838
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/exchange/EasSyncService;->acknowledgeProvisionImpl(Lcom/android/exchange/EasSyncService;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static acknowledgeProvisionImpl(Lcom/android/exchange/EasSyncService;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 9
    .parameter "svc"
    .parameter "tempKey"
    .parameter "status"
    .parameter "remoteWipe"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x38b

    .line 1843
    new-instance v5, Lcom/android/exchange/adapter/Serializer;

    invoke-direct {v5}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 1844
    .local v5, s:Lcom/android/exchange/adapter/Serializer;
    const/16 v6, 0x385

    invoke-virtual {v5, v6}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v6

    const/16 v7, 0x386

    invoke-virtual {v6, v7}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1845
    const/16 v6, 0x387

    invoke-virtual {v5, v6}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1848
    const/16 v6, 0x388

    iget-object v7, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-static {v7}, Lcom/android/exchange/EasSyncService;->getPolicyType(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1850
    const/16 v6, 0x389

    invoke-virtual {v5, v6, p1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1851
    invoke-virtual {v5, v8, p2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1852
    invoke-virtual {v5}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 1853
    if-eqz p3, :cond_0

    .line 1854
    const/16 v6, 0x38c

    invoke-virtual {v5, v6}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1855
    const-string v6, "1"

    invoke-virtual {v5, v8, v6}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1856
    invoke-virtual {v5}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 1858
    :cond_0
    invoke-virtual {v5}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 1859
    const-string v6, "Provision"

    invoke-virtual {v5}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;[B)Lcom/android/exchange/EasResponse;

    move-result-object v3

    .line 1861
    .local v3, resp:Lcom/android/exchange/EasResponse;
    :try_start_0
    invoke-virtual {v3}, Lcom/android/exchange/EasResponse;->getStatus()I

    move-result v0

    .line 1862
    .local v0, code:I
    const/16 v6, 0xc8

    if-ne v0, v6, :cond_3

    .line 1863
    invoke-virtual {v3}, Lcom/android/exchange/EasResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 1864
    .local v1, is:Ljava/io/InputStream;
    new-instance v2, Lcom/android/exchange/adapter/ProvisionParser;

    invoke-direct {v2, v1, p0}, Lcom/android/exchange/adapter/ProvisionParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/EasSyncService;)V

    .line 1865
    .local v2, pp:Lcom/android/exchange/adapter/ProvisionParser;
    invoke-virtual {v2}, Lcom/android/exchange/adapter/ProvisionParser;->parse()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1867
    invoke-virtual {v2}, Lcom/android/exchange/adapter/ProvisionParser;->getSecuritySyncKey()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    const-string v4, "failed"

    .line 1868
    .local v4, result:Ljava/lang/String;
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Provision "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v6, "2"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "PART"

    :goto_1
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " set"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 1870
    invoke-virtual {v2}, Lcom/android/exchange/adapter/ProvisionParser;->getSecuritySyncKey()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 1874
    invoke-virtual {v3}, Lcom/android/exchange/EasResponse;->close()V

    .line 1879
    .end local v1           #is:Ljava/io/InputStream;
    .end local v2           #pp:Lcom/android/exchange/adapter/ProvisionParser;
    .end local v4           #result:Ljava/lang/String;
    :goto_2
    return-object v6

    .line 1867
    .restart local v1       #is:Ljava/io/InputStream;
    .restart local v2       #pp:Lcom/android/exchange/adapter/ProvisionParser;
    :cond_1
    :try_start_1
    const-string v4, "confirmed"

    goto :goto_0

    .line 1868
    .restart local v4       #result:Ljava/lang/String;
    :cond_2
    const-string v6, "FULL"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1874
    .end local v1           #is:Ljava/io/InputStream;
    .end local v2           #pp:Lcom/android/exchange/adapter/ProvisionParser;
    .end local v4           #result:Ljava/lang/String;
    :cond_3
    invoke-virtual {v3}, Lcom/android/exchange/EasResponse;->close()V

    .line 1877
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Provisioning failed for"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v6, "2"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "PART"

    :goto_3
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " set"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 1879
    const/4 v6, 0x0

    goto :goto_2

    .line 1874
    .end local v0           #code:I
    :catchall_0
    move-exception v6

    invoke-virtual {v3}, Lcom/android/exchange/EasResponse;->close()V

    throw v6

    .line 1877
    .restart local v0       #code:I
    :cond_4
    const-string v6, "FULL"

    goto :goto_3
.end method

.method private static acknowledgeRemoteWipe(Lcom/android/exchange/EasSyncService;Ljava/lang/String;)V
    .locals 2
    .parameter "svc"
    .parameter "tempKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1833
    const-string v0, "1"

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/android/exchange/EasSyncService;->acknowledgeProvisionImpl(Lcom/android/exchange/EasSyncService;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 1834
    return-void
.end method

.method private cacheAuthUserAndBaseUriStrings()V
    .locals 6

    .prologue
    .line 1421
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mAuthString:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mUserString:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mBaseUriString:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 1422
    :cond_0
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1423
    .local v1, safeUserName:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/exchange/EasSyncService;->mPassword:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1424
    .local v0, cs:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Basic "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exchange/EasSyncService;->mAuthString:Ljava/lang/String;

    .line 1425
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "&User="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&DeviceId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&DeviceType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Android"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exchange/EasSyncService;->mUserString:Ljava/lang/String;

    .line 1427
    iget-boolean v3, p0, Lcom/android/exchange/EasSyncService;->mSsl:Z

    iget-boolean v4, p0, Lcom/android/exchange/EasSyncService;->mTrustSsl:Z

    iget-object v5, p0, Lcom/android/exchange/EasSyncService;->mClientCertAlias:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/android/emailcommon/utility/EmailClientConnectionManager;->makeScheme(ZZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1429
    .local v2, scheme:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/exchange/EasSyncService;->mHostAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/Microsoft-Server-ActiveSync"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exchange/EasSyncService;->mBaseUriString:Ljava/lang/String;

    .line 1431
    .end local v0           #cs:Ljava/lang/String;
    .end local v1           #safeUserName:Ljava/lang/String;
    .end local v2           #scheme:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private fetchMessage(Lcom/android/exchange/Request;)I
    .locals 18
    .parameter "req"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1313
    const/4 v3, 0x0

    .line 1314
    .local v3, exitResult:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-wide v15, v0, Lcom/android/exchange/Request;->mMessageId:J

    invoke-static/range {v14 .. v16}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v6

    .line 1315
    .local v6, msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-nez v6, :cond_0

    .line 1316
    const/4 v14, 0x3

    .line 1412
    :goto_0
    return v14

    .line 1319
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    iget-wide v15, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static/range {v14 .. v16}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v5

    .line 1320
    .local v5, mailbox:Lcom/android/emailcommon/provider/Mailbox;
    if-nez v5, :cond_1

    .line 1321
    const/4 v14, 0x3

    goto :goto_0

    .line 1324
    :cond_1
    new-instance v12, Lcom/android/exchange/adapter/EmailSyncAdapter;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/exchange/adapter/EmailSyncAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V

    .line 1325
    .local v12, target:Lcom/android/exchange/adapter/EmailSyncAdapter;
    invoke-virtual {v12}, Lcom/android/exchange/adapter/EmailSyncAdapter;->getCollectionName()Ljava/lang/String;

    move-result-object v1

    .line 1326
    .local v1, className:Ljava/lang/String;
    invoke-virtual {v12}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->getSyncKey()Ljava/lang/String;

    move-result-object v11

    .line 1327
    .local v11, syncKey:Ljava/lang/String;
    sget-boolean v14, Lcom/android/emailcommon/Logging;->DEBUG:Z

    if-eqz v14, :cond_2

    .line 1328
    const-string v14, "Email"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "+++ sync, sending "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " syncKey: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1331
    :cond_2
    new-instance v8, Lcom/android/exchange/adapter/Serializer;

    invoke-direct {v8}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 1332
    .local v8, s:Lcom/android/exchange/adapter/Serializer;
    const/4 v14, 0x5

    invoke-virtual {v8, v14}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v14

    const/16 v15, 0x1c

    invoke-virtual {v14, v15}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v14

    const/16 v15, 0xf

    invoke-virtual {v14, v15}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1336
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    const-wide v16, 0x4028333333333333L

    cmpg-double v14, v14, v16

    if-gez v14, :cond_3

    .line 1337
    const/16 v14, 0x10

    invoke-virtual {v8, v14, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1339
    :cond_3
    const/16 v14, 0xb

    invoke-virtual {v8, v14, v11}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v14

    const/16 v15, 0x12

    iget-object v0, v5, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1342
    const/16 v14, 0x17

    invoke-virtual {v8, v14}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1343
    const/16 v14, 0x18

    sget-object v15, Lcom/android/exchange/Eas;->FILTER_3_DAYS:Ljava/lang/String;

    invoke-virtual {v8, v14, v15}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1344
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    const-wide/high16 v16, 0x4028

    cmpl-double v14, v14, v16

    if-ltz v14, :cond_8

    .line 1345
    const/16 v14, 0x445

    invoke-virtual {v8, v14}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v15

    const/16 v16, 0x446

    const-string v14, "Email"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    const-string v14, "2"

    :goto_1
    move/from16 v0, v16

    invoke-virtual {v15, v0, v14}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 1349
    const-string v14, "Email"

    const-string v15, "+++ Add Sync commands options for EX2007"

    invoke-static {v14, v15}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1353
    :goto_2
    invoke-virtual {v8}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 1355
    const/16 v14, 0x16

    invoke-virtual {v8, v14}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v14

    const/16 v15, 0xa

    invoke-virtual {v14, v15}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v14

    const/16 v15, 0xd

    iget-object v0, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1358
    invoke-virtual {v8}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 1359
    invoke-virtual {v8}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 1361
    const/16 v13, 0x7530

    .line 1362
    .local v13, timeout:I
    sget-boolean v14, Lcom/android/emailcommon/Logging;->DEBUG:Z

    if-eqz v14, :cond_4

    .line 1363
    const-string v14, "Email"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "+++ send sync command: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v8}, Lcom/android/exchange/adapter/Serializer;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1365
    :cond_4
    const-string v14, "Sync"

    new-instance v15, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual {v8}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15, v13}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;I)Lcom/android/exchange/EasResponse;

    move-result-object v7

    .line 1368
    .local v7, resp:Lcom/android/exchange/EasResponse;
    :try_start_0
    invoke-virtual {v7}, Lcom/android/exchange/EasResponse;->getStatus()I

    move-result v9

    .line 1369
    .local v9, status:I
    const/16 v14, 0xc8

    if-ne v9, v14, :cond_9

    const/4 v10, 0x1

    .line 1370
    .local v10, success:Z
    :goto_3
    const/16 v14, 0xc8

    if-ne v9, v14, :cond_b

    .line 1371
    sget-boolean v14, Lcom/android/emailcommon/Logging;->DEBUG:Z

    if-eqz v14, :cond_5

    .line 1372
    const-string v14, "Email"

    const-string v15, "+++ Sync response ok"

    invoke-static {v14, v15}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1374
    :cond_5
    invoke-virtual {v7}, Lcom/android/exchange/EasResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 1375
    .local v4, is:Ljava/io/InputStream;
    if-eqz v4, :cond_a

    .line 1376
    invoke-virtual {v12, v4}, Lcom/android/exchange/adapter/EmailSyncAdapter;->parse(Ljava/io/InputStream;)Z

    .line 1377
    invoke-virtual {v12}, Lcom/android/exchange/adapter/EmailSyncAdapter;->cleanup()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1410
    .end local v4           #is:Ljava/io/InputStream;
    :cond_6
    :goto_4
    invoke-virtual {v7}, Lcom/android/exchange/EasResponse;->close()V

    .end local v10           #success:Z
    :goto_5
    move v14, v3

    .line 1412
    goto/16 :goto_0

    .line 1345
    .end local v7           #resp:Lcom/android/exchange/EasResponse;
    .end local v9           #status:I
    .end local v13           #timeout:I
    :cond_7
    const-string v14, "1"

    goto/16 :goto_1

    .line 1351
    :cond_8
    const/16 v14, 0x19

    const-string v15, "7"

    invoke-virtual {v8, v14, v15}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto/16 :goto_2

    .line 1369
    .restart local v7       #resp:Lcom/android/exchange/EasResponse;
    .restart local v9       #status:I
    .restart local v13       #timeout:I
    :cond_9
    const/4 v10, 0x0

    goto :goto_3

    .line 1379
    .restart local v4       #is:Ljava/io/InputStream;
    .restart local v10       #success:Z
    :cond_a
    :try_start_1
    sget-boolean v14, Lcom/android/emailcommon/Logging;->DEBUG:Z

    if-eqz v14, :cond_6

    .line 1380
    const-string v14, "Email"

    const-string v15, "+++ Empty input stream in sync command response"

    invoke-static {v14, v15}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 1397
    .end local v4           #is:Ljava/io/InputStream;
    .end local v9           #status:I
    .end local v10           #success:Z
    :catch_0
    move-exception v2

    .line 1399
    .local v2, e:Lcom/android/exchange/CommandStatusException;
    :try_start_2
    iget v9, v2, Lcom/android/exchange/CommandStatusException;->mStatus:I

    .line 1400
    .restart local v9       #status:I
    invoke-static {v9}, Lcom/android/exchange/CommandStatusException$CommandStatus;->isNeedsProvisioning(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v14

    if-eqz v14, :cond_f

    .line 1401
    const/4 v3, 0x4

    .line 1410
    :goto_6
    invoke-virtual {v7}, Lcom/android/exchange/EasResponse;->close()V

    goto :goto_5

    .line 1385
    .end local v2           #e:Lcom/android/exchange/CommandStatusException;
    .restart local v10       #success:Z
    :cond_b
    :try_start_3
    sget-boolean v14, Lcom/android/emailcommon/Logging;->DEBUG:Z

    if-eqz v14, :cond_c

    .line 1386
    const-string v14, "Email"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "+++ Sync response error: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1388
    :cond_c
    invoke-static {v9}, Lcom/android/exchange/EasResponse;->isProvisionError(I)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 1389
    const/4 v3, 0x4

    goto :goto_4

    .line 1390
    :cond_d
    invoke-static {v9}, Lcom/android/exchange/EasResponse;->isAuthError(I)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 1391
    const/4 v3, 0x2

    .line 1392
    new-instance v14, Lcom/android/exchange/EasAuthenticationException;

    invoke-direct {v14}, Lcom/android/exchange/EasAuthenticationException;-><init>()V

    throw v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1410
    .end local v9           #status:I
    .end local v10           #success:Z
    :catchall_0
    move-exception v14

    invoke-virtual {v7}, Lcom/android/exchange/EasResponse;->close()V

    throw v14

    .line 1394
    .restart local v9       #status:I
    .restart local v10       #success:Z
    :cond_e
    const/4 v3, 0x1

    goto :goto_4

    .line 1402
    .end local v10           #success:Z
    .restart local v2       #e:Lcom/android/exchange/CommandStatusException;
    :cond_f
    :try_start_4
    invoke-static {v9}, Lcom/android/exchange/CommandStatusException$CommandStatus;->isDeniedAccess(I)Z

    move-result v14

    if-eqz v14, :cond_10

    .line 1403
    const/4 v3, 0x5

    goto :goto_6

    .line 1404
    :cond_10
    invoke-static {v9}, Lcom/android/exchange/CommandStatusException$CommandStatus;->isTransientError(I)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v14

    if-eqz v14, :cond_11

    .line 1405
    const/4 v3, 0x1

    goto :goto_6

    .line 1407
    :cond_11
    const/4 v3, 0x3

    goto :goto_6
.end method

.method private getClientConnectionManager()Lcom/android/emailcommon/utility/EmailClientConnectionManager;
    .locals 2

    .prologue
    .line 1487
    iget-boolean v0, p0, Lcom/android/exchange/EasSyncService;->mSsl:Z

    iget v1, p0, Lcom/android/exchange/EasSyncService;->mPort:I

    invoke-static {v0, v1}, Lcom/android/exchange/ExchangeService;->getClientConnectionManager(ZI)Lcom/android/emailcommon/utility/EmailClientConnectionManager;

    move-result-object v0

    return-object v0
.end method

.method private getHttpClient(I)Lorg/apache/http/client/HttpClient;
    .locals 1
    .parameter "timeout"

    .prologue
    .line 1491
    const v0, 0xea60

    invoke-direct {p0, p1, v0}, Lcom/android/exchange/EasSyncService;->getHttpClient(II)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    return-object v0
.end method

.method private getHttpClient(II)Lorg/apache/http/client/HttpClient;
    .locals 4
    .parameter "socketTimeout"
    .parameter "connectTimeout"

    .prologue
    .line 1495
    const/16 v0, 0x2000

    .line 1496
    .local v0, bufferSize:I
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 1497
    .local v2, params:Lorg/apache/http/params/HttpParams;
    invoke-static {v2, p2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 1498
    invoke-static {v2, p1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 1499
    const/16 v3, 0x2000

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 1500
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->getClientConnectionManager()Lcom/android/emailcommon/utility/EmailClientConnectionManager;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 1501
    .local v1, client:Lorg/apache/http/client/HttpClient;
    return-object v1
.end method

.method private static getPolicyType(Ljava/lang/Double;)Ljava/lang/String;
    .locals 4
    .parameter "protocolVersion"

    .prologue
    .line 1746
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x4028

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    const-string v0, "MS-EAS-Provisioning-WBXML"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "MS-WAP-Provisioning-XML"

    goto :goto_0
.end method

.method private getRedirect(Lorg/apache/http/HttpResponse;Lorg/apache/http/client/methods/HttpPost;)Lorg/apache/http/client/methods/HttpPost;
    .locals 3
    .parameter "resp"
    .parameter "post"

    .prologue
    .line 715
    const-string v2, "X-MS-Location"

    invoke-interface {p1, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    .line 716
    .local v1, locHeader:Lorg/apache/http/Header;
    if-eqz v1, :cond_0

    .line 717
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 720
    .local v0, loc:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "http"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 721
    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->setURI(Ljava/net/URI;)V

    .line 725
    .end local v0           #loc:Ljava/lang/String;
    .end local p2
    :goto_0
    return-object p2

    .restart local p2
    :cond_0
    const/4 p2, 0x0

    goto :goto_0
.end method

.method public static getServiceForMailbox(Landroid/content/Context;Lcom/android/emailcommon/provider/Mailbox;)Lcom/android/exchange/EasSyncService;
    .locals 1
    .parameter "context"
    .parameter "m"

    .prologue
    .line 275
    iget v0, p1, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    sparse-switch v0, :sswitch_data_0

    .line 281
    new-instance v0, Lcom/android/exchange/EasSyncService;

    invoke-direct {v0, p0, p1}, Lcom/android/exchange/EasSyncService;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Mailbox;)V

    :goto_0
    return-object v0

    .line 277
    :sswitch_0
    new-instance v0, Lcom/android/exchange/EasAccountService;

    invoke-direct {v0, p0, p1}, Lcom/android/exchange/EasAccountService;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Mailbox;)V

    goto :goto_0

    .line 279
    :sswitch_1
    new-instance v0, Lcom/android/exchange/EasOutboxService;

    invoke-direct {v0, p0, p1}, Lcom/android/exchange/EasOutboxService;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Mailbox;)V

    goto :goto_0

    .line 275
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x44 -> :sswitch_0
    .end sparse-switch
.end method

.method private hasMoreLocalChanges(Lcom/android/exchange/adapter/AbstractSyncAdapter;)Z
    .locals 1
    .parameter "target"

    .prologue
    .line 2535
    invoke-virtual {p1}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->moreLocalChanges()Z

    move-result v0

    return v0
.end method

.method private postAutodiscover(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpPost;Z)Lcom/android/exchange/EasResponse;
    .locals 9
    .parameter "client"
    .parameter "post"
    .parameter "canRetry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x7530

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 742
    new-array v3, v7, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Posting autodiscover to: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0, v3}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 743
    invoke-virtual {p0, p1, p2, v8}, Lcom/android/exchange/EasSyncService;->executePostWithTimeout(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpPost;I)Lcom/android/exchange/EasResponse;

    move-result-object v2

    .line 744
    .local v2, resp:Lcom/android/exchange/EasResponse;
    invoke-virtual {v2}, Lcom/android/exchange/EasResponse;->getStatus()I

    move-result v1

    .line 746
    .local v1, code:I
    const/16 v3, 0x1c3

    if-ne v1, v3, :cond_1

    .line 747
    iget-object v3, v2, Lcom/android/exchange/EasResponse;->mResponse:Lorg/apache/http/HttpResponse;

    invoke-direct {p0, v3, p2}, Lcom/android/exchange/EasSyncService;->getRedirect(Lorg/apache/http/HttpResponse;Lorg/apache/http/client/methods/HttpPost;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object p2

    .line 748
    if-eqz p2, :cond_0

    .line 749
    new-array v3, v7, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Posting autodiscover to redirect: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0, v3}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 750
    invoke-virtual {p0, p1, p2, v8}, Lcom/android/exchange/EasSyncService;->executePostWithTimeout(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpPost;I)Lcom/android/exchange/EasResponse;

    move-result-object v2

    .line 772
    .end local v2           #resp:Lcom/android/exchange/EasResponse;
    :cond_0
    :goto_0
    return-object v2

    .line 753
    .restart local v2       #resp:Lcom/android/exchange/EasResponse;
    :cond_1
    const/16 v3, 0x191

    if-ne v1, v3, :cond_3

    .line 754
    if-eqz p3, :cond_2

    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 756
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    const/16 v4, 0x40

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 757
    .local v0, atSignIndex:I
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    invoke-virtual {v3, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    .line 758
    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->cacheAuthUserAndBaseUriStrings()V

    .line 759
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "401 received; trying username: "

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-virtual {p0, v3}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 761
    const-string v3, "Authorization"

    invoke-virtual {p2, v3}, Lorg/apache/http/message/AbstractHttpMessage;->removeHeaders(Ljava/lang/String;)V

    .line 762
    const-string v3, "Authorization"

    iget-object v4, p0, Lcom/android/exchange/EasSyncService;->mAuthString:Ljava/lang/String;

    invoke-virtual {p2, v3, v4}, Lorg/apache/http/message/AbstractHttpMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    invoke-direct {p0, p1, p2, v6}, Lcom/android/exchange/EasSyncService;->postAutodiscover(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpPost;Z)Lcom/android/exchange/EasResponse;

    move-result-object v2

    goto :goto_0

    .line 765
    .end local v0           #atSignIndex:I
    :cond_2
    new-instance v3, Lcom/android/emailcommon/mail/MessagingException;

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    throw v3

    .line 767
    :cond_3
    const/16 v3, 0xc8

    if-eq v1, v3, :cond_0

    .line 769
    new-array v3, v7, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", throwing IOException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0, v3}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 770
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3
.end method

.method public static searchGal(Landroid/content/Context;JLjava/lang/String;I)Lcom/android/exchange/provider/GalResult;
    .locals 15
    .parameter "context"
    .parameter "accountId"
    .parameter "filter"
    .parameter "limit"

    .prologue
    .line 1045
    invoke-static/range {p0 .. p2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v1

    .line 1046
    .local v1, acct:Lcom/android/emailcommon/provider/Account;
    if-eqz v1, :cond_5

    .line 1047
    invoke-static {p0, v1}, Lcom/android/exchange/EasSyncService;->setupServiceForAccount(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)Lcom/android/exchange/EasSyncService;

    move-result-object v10

    .line 1048
    .local v10, svc:Lcom/android/exchange/EasSyncService;
    if-nez v10, :cond_0

    .line 1049
    const-string v11, "searchGal return null because EasSyncService is null"

    invoke-static {v11}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;)V

    .line 1050
    const/4 v11, 0x0

    .line 1107
    .end local v10           #svc:Lcom/android/exchange/EasSyncService;
    :goto_0
    return-object v11

    .line 1055
    .restart local v10       #svc:Lcom/android/exchange/EasSyncService;
    :cond_0
    const/4 v6, 0x0

    .line 1056
    .local v6, needStopGalService:Lcom/android/exchange/EasSyncService;
    sget-object v12, Lcom/android/exchange/EasSyncService;->sGalServiceList:Ljava/util/LinkedList;

    monitor-enter v12

    .line 1057
    :try_start_0
    sget-object v11, Lcom/android/exchange/EasSyncService;->sGalServiceList:Ljava/util/LinkedList;

    invoke-virtual {v11}, Ljava/util/LinkedList;->size()I

    move-result v9

    .line 1058
    .local v9, size:I
    const/16 v11, 0xa

    if-le v9, v11, :cond_1

    .line 1059
    sget-object v11, Lcom/android/exchange/EasSyncService;->sGalServiceList:Ljava/util/LinkedList;

    invoke-virtual {v11}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Lcom/android/exchange/EasSyncService;

    move-object v6, v0

    .line 1061
    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Running GalService count "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;)V

    .line 1062
    sget-object v11, Lcom/android/exchange/EasSyncService;->sGalServiceList:Ljava/util/LinkedList;

    invoke-virtual {v11, v10}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1063
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1064
    if-eqz v6, :cond_2

    .line 1065
    const-string v11, "Cancel the oldest GalService"

    invoke-static {v11}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;)V

    .line 1066
    invoke-virtual {v6}, Lcom/android/exchange/EasSyncService;->stop()V

    .line 1070
    :cond_2
    :try_start_1
    new-instance v8, Lcom/android/exchange/adapter/Serializer;

    invoke-direct {v8}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 1071
    .local v8, s:Lcom/android/exchange/adapter/Serializer;
    const/16 v11, 0x3c5

    invoke-virtual {v8, v11}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v11

    const/16 v12, 0x3c7

    invoke-virtual {v11, v12}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1072
    const/16 v11, 0x3c8

    const-string v12, "GAL"

    invoke-virtual {v8, v11, v12}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v11

    const/16 v12, 0x3c9

    move-object/from16 v0, p3

    invoke-virtual {v11, v12, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1073
    const/16 v11, 0x3ca

    invoke-virtual {v8, v11}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1074
    const/16 v11, 0x3cb

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "0-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    add-int/lit8 v13, p4, -0x1

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v11, v12}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1075
    invoke-virtual {v8}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 1076
    const-string v11, "Search"

    new-instance v12, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual {v8}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v13

    invoke-direct {v12, v13}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v10, v11, v12}, Lcom/android/exchange/EasSyncService;->sendHttpClientPostForGal(Ljava/lang/String;Lorg/apache/http/HttpEntity;)Lcom/android/exchange/EasResponse;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    .line 1079
    .local v7, resp:Lcom/android/exchange/EasResponse;
    :try_start_2
    invoke-virtual {v7}, Lcom/android/exchange/EasResponse;->getStatus()I

    move-result v2

    .line 1080
    .local v2, code:I
    const/16 v11, 0xc8

    if-ne v2, v11, :cond_4

    .line 1081
    invoke-virtual {v7}, Lcom/android/exchange/EasResponse;->getInputStream()Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result-object v5

    .line 1083
    .local v5, is:Ljava/io/InputStream;
    :try_start_3
    new-instance v4, Lcom/android/exchange/adapter/GalParser;

    invoke-direct {v4, v5, v10}, Lcom/android/exchange/adapter/GalParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/EasSyncService;)V

    .line 1084
    .local v4, gp:Lcom/android/exchange/adapter/GalParser;
    invoke-virtual {v4}, Lcom/android/exchange/adapter/GalParser;->parse()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1085
    invoke-virtual {v4}, Lcom/android/exchange/adapter/GalParser;->getGalResult()Lcom/android/exchange/provider/GalResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v11

    .line 1088
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 1094
    :try_start_5
    invoke-virtual {v7}, Lcom/android/exchange/EasResponse;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 1100
    sget-object v12, Lcom/android/exchange/EasSyncService;->sGalServiceList:Ljava/util/LinkedList;

    monitor-enter v12

    .line 1101
    :try_start_6
    sget-object v13, Lcom/android/exchange/EasSyncService;->sGalServiceList:Ljava/util/LinkedList;

    invoke-virtual {v13, v10}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 1102
    monitor-exit v12

    goto/16 :goto_0

    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v11

    .line 1063
    .end local v2           #code:I
    .end local v4           #gp:Lcom/android/exchange/adapter/GalParser;
    .end local v5           #is:Ljava/io/InputStream;
    .end local v7           #resp:Lcom/android/exchange/EasResponse;
    .end local v8           #s:Lcom/android/exchange/adapter/Serializer;
    .end local v9           #size:I
    :catchall_1
    move-exception v11

    :try_start_7
    monitor-exit v12
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v11

    .line 1088
    .restart local v2       #code:I
    .restart local v4       #gp:Lcom/android/exchange/adapter/GalParser;
    .restart local v5       #is:Ljava/io/InputStream;
    .restart local v7       #resp:Lcom/android/exchange/EasResponse;
    .restart local v8       #s:Lcom/android/exchange/adapter/Serializer;
    .restart local v9       #size:I
    :cond_3
    :try_start_8
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 1094
    .end local v4           #gp:Lcom/android/exchange/adapter/GalParser;
    .end local v5           #is:Ljava/io/InputStream;
    :goto_1
    :try_start_9
    invoke-virtual {v7}, Lcom/android/exchange/EasResponse;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 1100
    sget-object v12, Lcom/android/exchange/EasSyncService;->sGalServiceList:Ljava/util/LinkedList;

    monitor-enter v12

    .line 1101
    :try_start_a
    sget-object v11, Lcom/android/exchange/EasSyncService;->sGalServiceList:Ljava/util/LinkedList;

    invoke-virtual {v11, v10}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 1102
    monitor-exit v12
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 1107
    .end local v2           #code:I
    .end local v6           #needStopGalService:Lcom/android/exchange/EasSyncService;
    .end local v7           #resp:Lcom/android/exchange/EasResponse;
    .end local v8           #s:Lcom/android/exchange/adapter/Serializer;
    .end local v9           #size:I
    .end local v10           #svc:Lcom/android/exchange/EasSyncService;
    :goto_2
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 1088
    .restart local v2       #code:I
    .restart local v5       #is:Ljava/io/InputStream;
    .restart local v6       #needStopGalService:Lcom/android/exchange/EasSyncService;
    .restart local v7       #resp:Lcom/android/exchange/EasResponse;
    .restart local v8       #s:Lcom/android/exchange/adapter/Serializer;
    .restart local v9       #size:I
    .restart local v10       #svc:Lcom/android/exchange/EasSyncService;
    :catchall_2
    move-exception v11

    :try_start_b
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    throw v11
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 1094
    .end local v2           #code:I
    .end local v5           #is:Ljava/io/InputStream;
    :catchall_3
    move-exception v11

    :try_start_c
    invoke-virtual {v7}, Lcom/android/exchange/EasResponse;->close()V

    throw v11
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    .line 1096
    .end local v7           #resp:Lcom/android/exchange/EasResponse;
    .end local v8           #s:Lcom/android/exchange/adapter/Serializer;
    :catch_0
    move-exception v3

    .line 1098
    .local v3, e:Ljava/lang/Exception;
    const/4 v11, 0x1

    :try_start_d
    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "GAL lookup exception "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v10, v11}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 1100
    sget-object v12, Lcom/android/exchange/EasSyncService;->sGalServiceList:Ljava/util/LinkedList;

    monitor-enter v12

    .line 1101
    :try_start_e
    sget-object v11, Lcom/android/exchange/EasSyncService;->sGalServiceList:Ljava/util/LinkedList;

    invoke-virtual {v11, v10}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 1102
    monitor-exit v12

    goto :goto_2

    :catchall_4
    move-exception v11

    monitor-exit v12
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    throw v11

    .line 1091
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v2       #code:I
    .restart local v7       #resp:Lcom/android/exchange/EasResponse;
    .restart local v8       #s:Lcom/android/exchange/adapter/Serializer;
    :cond_4
    const/4 v11, 0x1

    :try_start_f
    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "GAL lookup returned "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v10, v11}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    goto :goto_1

    .line 1102
    :catchall_5
    move-exception v11

    :try_start_10
    monitor-exit v12
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    throw v11

    .line 1100
    .end local v2           #code:I
    .end local v7           #resp:Lcom/android/exchange/EasResponse;
    .end local v8           #s:Lcom/android/exchange/adapter/Serializer;
    :catchall_6
    move-exception v11

    sget-object v12, Lcom/android/exchange/EasSyncService;->sGalServiceList:Ljava/util/LinkedList;

    monitor-enter v12

    .line 1101
    :try_start_11
    sget-object v13, Lcom/android/exchange/EasSyncService;->sGalServiceList:Ljava/util/LinkedList;

    invoke-virtual {v13, v10}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 1102
    monitor-exit v12
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    throw v11

    :catchall_7
    move-exception v11

    :try_start_12
    monitor-exit v12
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    throw v11

    .line 1105
    .end local v6           #needStopGalService:Lcom/android/exchange/EasSyncService;
    .end local v9           #size:I
    .end local v10           #svc:Lcom/android/exchange/EasSyncService;
    :cond_5
    const-string v11, "GAL lookup not search form network because account is null"

    invoke-static {v11}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private sendCallback(Z)V
    .locals 8
    .parameter "success"

    .prologue
    .line 2544
    sget-object v7, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 2545
    .local v7, instance:Lcom/android/exchange/ExchangeService;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lcom/android/exchange/ExchangeService;->getExternalCallback()Lcom/android/emailcommon/service/EmailExternalCalls;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2547
    :try_start_0
    invoke-virtual {v7}, Lcom/android/exchange/ExchangeService;->getExternalCallback()Lcom/android/emailcommon/service/EmailExternalCalls;

    move-result-object v0

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    iget-object v4, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-interface/range {v0 .. v5}, Lcom/android/emailcommon/service/EmailExternalCalls;->updateCallback(IJJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2556
    :goto_1
    invoke-virtual {v7}, Lcom/android/exchange/ExchangeService;->cleanExternalCallback()Lcom/android/emailcommon/service/EmailExternalCalls;

    .line 2558
    :cond_0
    return-void

    .line 2547
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 2551
    :catch_0
    move-exception v6

    .line 2553
    .local v6, e:Landroid/os/RemoteException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteException catched: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private sendMeetingResponseMail(Lcom/android/emailcommon/provider/EmailContent$Message;I)V
    .locals 16
    .parameter "msg"
    .parameter "response"

    .prologue
    .line 1117
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMeetingInfo:Ljava/lang/String;

    if-nez v13, :cond_1

    .line 1182
    :cond_0
    :goto_0
    return-void

    .line 1118
    :cond_1
    new-instance v9, Lcom/android/emailcommon/mail/PackedString;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMeetingInfo:Ljava/lang/String;

    invoke-direct {v9, v13}, Lcom/android/emailcommon/mail/PackedString;-><init>(Ljava/lang/String;)V

    .line 1122
    .local v9, meetingInfo:Lcom/android/emailcommon/mail/PackedString;
    const-string v13, "ORGMAIL"

    invoke-virtual {v9, v13}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/emailcommon/mail/Address;->parse(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v1

    .line 1124
    .local v1, addrs:[Lcom/android/emailcommon/mail/Address;
    array-length v13, v1

    const/4 v14, 0x1

    if-ne v13, v14, :cond_0

    .line 1125
    const/4 v13, 0x0

    aget-object v13, v1, v13

    invoke-virtual {v13}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v10

    .line 1127
    .local v10, organizerEmail:Ljava/lang/String;
    const-string v13, "DTSTAMP"

    invoke-virtual {v9, v13}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1128
    .local v4, dtStamp:Ljava/lang/String;
    const-string v13, "DTSTART"

    invoke-virtual {v9, v13}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1129
    .local v5, dtStart:Ljava/lang/String;
    const-string v13, "DTEND"

    invoke-virtual {v9, v13}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1133
    .local v3, dtEnd:Ljava/lang/String;
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 1134
    .local v7, entityValues:Landroid/content/ContentValues;
    new-instance v6, Landroid/content/Entity;

    invoke-direct {v6, v7}, Landroid/content/Entity;-><init>(Landroid/content/ContentValues;)V

    .line 1137
    .local v6, entity:Landroid/content/Entity;
    const-string v13, "DTSTAMP"

    invoke-static {v4}, Lcom/android/exchange/utility/CalendarUtilities;->convertEmailDateTimeToCalendarDateTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    const-string v13, "dtstart"

    invoke-static {v5}, Lcom/android/emailcommon/utility/Utility;->parseEmailDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v7, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1140
    const-string v13, "dtend"

    invoke-static {v3}, Lcom/android/emailcommon/utility/Utility;->parseEmailDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v7, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1141
    const-string v13, "eventLocation"

    const-string v14, "LOC"

    invoke-virtual {v9, v14}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    const-string v13, "title"

    const-string v14, "TITLE"

    invoke-virtual {v9, v14}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1143
    const-string v13, "organizer"

    invoke-virtual {v7, v13, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1146
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1147
    .local v2, attendeeValues:Landroid/content/ContentValues;
    const-string v13, "attendeeRelationship"

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1149
    const-string v13, "attendeeEmail"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v14, v14, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v2, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    sget-object v13, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v13, v2}, Landroid/content/Entity;->addSubValue(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 1153
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 1154
    .local v11, organizerValues:Landroid/content/ContentValues;
    const-string v13, "attendeeRelationship"

    const/4 v14, 0x2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1156
    const-string v13, "attendeeEmail"

    invoke-virtual {v11, v13, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1157
    sget-object v13, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v13, v11}, Landroid/content/Entity;->addSubValue(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 1163
    packed-switch p2, :pswitch_data_0

    .line 1172
    :pswitch_0
    const/16 v8, 0x100

    .line 1175
    .local v8, flag:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    const-string v14, "UID"

    invoke-virtual {v9, v14}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-static {v13, v6, v8, v14, v15}, Lcom/android/exchange/utility/CalendarUtilities;->createMessageForEntity(Landroid/content/Context;Landroid/content/Entity;ILjava/lang/String;Lcom/android/emailcommon/provider/Account;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v12

    .line 1179
    .local v12, outgoingMsg:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-eqz v12, :cond_0

    .line 1180
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v14, v14, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v13, v14, v15, v12}, Lcom/android/exchange/EasOutboxService;->sendMessage(Landroid/content/Context;JLcom/android/emailcommon/provider/EmailContent$Message;)V

    goto/16 :goto_0

    .line 1165
    .end local v8           #flag:I
    .end local v12           #outgoingMsg:Lcom/android/emailcommon/provider/EmailContent$Message;
    :pswitch_1
    const/16 v8, 0x40

    .line 1166
    .restart local v8       #flag:I
    goto :goto_1

    .line 1168
    .end local v8           #flag:I
    :pswitch_2
    const/16 v8, 0x80

    .line 1169
    .restart local v8       #flag:I
    goto :goto_1

    .line 1163
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private sendSettings()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1883
    new-instance v3, Lcom/android/exchange/adapter/Serializer;

    invoke-direct {v3}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 1884
    .local v3, s:Lcom/android/exchange/adapter/Serializer;
    const/16 v5, 0x485

    invoke-virtual {v3, v5}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1885
    const/16 v5, 0x496

    invoke-virtual {v3, v5}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    const/16 v6, 0x488

    invoke-virtual {v5, v6}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1886
    const/16 v5, 0x497

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1887
    const/16 v5, 0x49a

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Android "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1888
    const/16 v5, 0x4a0

    sget-object v6, Lcom/android/exchange/EasSyncService;->USER_AGENT:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1889
    invoke-virtual {v3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 1890
    const-string v5, "Settings"

    invoke-virtual {v3}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;[B)Lcom/android/exchange/EasResponse;

    move-result-object v2

    .line 1892
    .local v2, resp:Lcom/android/exchange/EasResponse;
    :try_start_0
    invoke-virtual {v2}, Lcom/android/exchange/EasResponse;->getStatus()I

    move-result v0

    .line 1893
    .local v0, code:I
    const/16 v5, 0xc8

    if-ne v0, v5, :cond_0

    .line 1894
    invoke-virtual {v2}, Lcom/android/exchange/EasResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 1895
    .local v1, is:Ljava/io/InputStream;
    new-instance v4, Lcom/android/exchange/adapter/SettingsParser;

    invoke-direct {v4, v1, p0}, Lcom/android/exchange/adapter/SettingsParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/EasSyncService;)V

    .line 1896
    .local v4, sp:Lcom/android/exchange/adapter/SettingsParser;
    invoke-virtual {v4}, Lcom/android/exchange/adapter/SettingsParser;->parse()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    .line 1899
    invoke-virtual {v2}, Lcom/android/exchange/EasResponse;->close()V

    .line 1902
    .end local v1           #is:Ljava/io/InputStream;
    .end local v4           #sp:Lcom/android/exchange/adapter/SettingsParser;
    :goto_0
    return v5

    .line 1899
    :cond_0
    invoke-virtual {v2}, Lcom/android/exchange/EasResponse;->close()V

    .line 1902
    const/4 v5, 0x0

    goto :goto_0

    .line 1899
    .end local v0           #code:I
    :catchall_0
    move-exception v5

    invoke-virtual {v2}, Lcom/android/exchange/EasResponse;->close()V

    throw v5
.end method

.method public static setupServiceForAccount(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)Lcom/android/exchange/EasSyncService;
    .locals 7
    .parameter "context"
    .parameter "account"

    .prologue
    const/4 v4, 0x0

    .line 482
    iget v5, p1, Lcom/android/emailcommon/provider/Account;->mFlags:I

    and-int/lit8 v5, v5, 0x20

    if-eqz v5, :cond_0

    .line 483
    const-string v5, "setupServiceForAccount return null because we\'re on security hold"

    invoke-static {v5}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;)V

    move-object v3, v4

    .line 512
    :goto_0
    return-object v3

    .line 487
    :cond_0
    iget-object v2, p1, Lcom/android/emailcommon/provider/Account;->mProtocolVersion:Ljava/lang/String;

    .line 488
    .local v2, protocolVersion:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 489
    const-string v5, "setupServiceForAccount return null because protocolVersion is null"

    invoke-static {v5}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;)V

    move-object v3, v4

    .line 490
    goto :goto_0

    .line 492
    :cond_1
    new-instance v3, Lcom/android/exchange/EasSyncService;

    const-string v5, "OutOfBand"

    invoke-direct {v3, v5}, Lcom/android/exchange/EasSyncService;-><init>(Ljava/lang/String;)V

    .line 493
    .local v3, svc:Lcom/android/exchange/EasSyncService;
    iget-wide v5, p1, Lcom/android/emailcommon/provider/Account;->mHostAuthKeyRecv:J

    invoke-static {p0, v5, v6}, Lcom/android/emailcommon/provider/HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v1

    .line 494
    .local v1, ha:Lcom/android/emailcommon/provider/HostAuth;
    iput-object v2, v3, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    .line 495
    invoke-static {v2}, Lcom/android/exchange/Eas;->getProtocolVersionDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    iput-object v5, v3, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    .line 496
    iput-object p0, v3, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    .line 497
    iget-object v5, v1, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    iput-object v5, v3, Lcom/android/exchange/EasSyncService;->mHostAddress:Ljava/lang/String;

    .line 498
    iget-object v5, v1, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    iput-object v5, v3, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    .line 499
    iget-object v5, v1, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    iput-object v5, v3, Lcom/android/exchange/EasSyncService;->mPassword:Ljava/lang/String;

    .line 501
    :try_start_0
    invoke-virtual {v3, v1}, Lcom/android/exchange/EasSyncService;->setConnectionParameters(Lcom/android/emailcommon/provider/HostAuth;)V

    .line 502
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 511
    iput-object p1, v3, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    goto :goto_0

    .line 503
    :catch_0
    move-exception v0

    .line 504
    .local v0, e:Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setupServiceForAccount return null because IOException:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;)V

    move-object v3, v4

    .line 505
    goto :goto_0

    .line 506
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 507
    .local v0, e:Ljava/security/cert/CertificateException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setupServiceForAccount return null because CertificateException:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;)V

    move-object v3, v4

    .line 509
    goto :goto_0
.end method

.method private sleep(JZ)V
    .locals 5
    .parameter "ms"
    .parameter "asleep"

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 1947
    if-eqz p3, :cond_0

    .line 1948
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "use the alarm sleep mode"

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 1949
    iget-wide v1, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    invoke-static {v1, v2, p1, p2}, Lcom/android/exchange/ExchangeService;->setEasSyncAlarm(JJ)V

    .line 1950
    iget-wide v1, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    invoke-static {v1, v2}, Lcom/android/exchange/ExchangeService;->releaseEasWakeLock(J)V

    .line 1951
    monitor-enter p0

    .line 1953
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1957
    const/4 v1, 0x1

    :try_start_1
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "EasSyncService-sleep-ok"

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 1958
    iget-wide v1, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    invoke-static {v1, v2}, Lcom/android/exchange/ExchangeService;->acquireEasWakeLock(J)V

    .line 1959
    iget-wide v1, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    invoke-static {v1, v2}, Lcom/android/exchange/ExchangeService;->clearEasSyncAlarm(J)V

    .line 1961
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1970
    :goto_1
    return-void

    .line 1954
    :catch_0
    move-exception v0

    .line 1955
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InterruptedException catched: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1957
    const/4 v1, 0x1

    :try_start_3
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "EasSyncService-sleep-ok"

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 1958
    iget-wide v1, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    invoke-static {v1, v2}, Lcom/android/exchange/ExchangeService;->acquireEasWakeLock(J)V

    .line 1959
    iget-wide v1, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    invoke-static {v1, v2}, Lcom/android/exchange/ExchangeService;->clearEasSyncAlarm(J)V

    goto :goto_0

    .line 1961
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 1957
    :catchall_1
    move-exception v1

    const/4 v2, 0x1

    :try_start_4
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "EasSyncService-sleep-ok"

    aput-object v4, v2, v3

    invoke-virtual {p0, v2}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 1958
    iget-wide v2, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    invoke-static {v2, v3}, Lcom/android/exchange/ExchangeService;->acquireEasWakeLock(J)V

    .line 1959
    iget-wide v2, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    invoke-static {v2, v3}, Lcom/android/exchange/ExchangeService;->clearEasSyncAlarm(J)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1964
    :cond_0
    :try_start_5
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 1965
    :catch_1
    move-exception v0

    .line 1967
    .restart local v0       #e:Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InterruptedException catched: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static trustAllHttpsCertificates()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2508
    const/4 v3, 0x1

    new-array v2, v3, [Ljavax/net/ssl/TrustManager;

    .line 2509
    .local v2, trustAllCerts:[Ljavax/net/ssl/TrustManager;
    new-instance v1, Lcom/android/exchange/EasSyncService$TrustAllCertsTrustManager;

    invoke-direct {v1, v4}, Lcom/android/exchange/EasSyncService$TrustAllCertsTrustManager;-><init>(Lcom/android/exchange/EasSyncService$1;)V

    .line 2510
    .local v1, tm:Ljavax/net/ssl/TrustManager;
    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 2511
    const-string v3, "SSL"

    invoke-static {v3}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 2513
    .local v0, sc:Ljavax/net/ssl/SSLContext;
    invoke-virtual {v0, v4, v2, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 2514
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    invoke-static {v3}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 2515
    return-void
.end method


# virtual methods
.method public addRequest(Lcom/android/exchange/Request;)V
    .locals 1
    .parameter "request"

    .prologue
    .line 417
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    :goto_0
    return-void

    .line 419
    :cond_0
    invoke-super {p0, p1}, Lcom/android/exchange/AbstractSyncService;->addRequest(Lcom/android/exchange/Request;)V

    goto :goto_0
.end method

.method public alarm()Z
    .locals 13

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 295
    iget-object v9, p0, Lcom/android/exchange/EasSyncService;->mThread:Ljava/lang/Thread;

    if-nez v9, :cond_1

    .line 370
    :cond_0
    :goto_0
    return v7

    .line 296
    :cond_1
    iget-object v9, p0, Lcom/android/exchange/EasSyncService;->mThread:Ljava/lang/Thread;

    invoke-virtual {v9}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    .line 300
    .local v5, threadName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/exchange/AbstractSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 301
    :try_start_0
    iget-object v10, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v10, v10, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/16 v11, 0x44

    if-ne v10, v11, :cond_3

    .line 302
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "ping is alarmed"

    aput-object v11, v8, v10

    invoke-virtual {p0, v8}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 303
    iget-object v8, p0, Lcom/android/exchange/EasSyncService;->mHttpConn:Ljava/net/HttpURLConnection;

    if-eqz v8, :cond_2

    .line 304
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/exchange/EasSyncService;->mPostAborted:Z

    .line 305
    iget-object v8, p0, Lcom/android/exchange/EasSyncService;->mHttpConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 307
    :cond_2
    monitor-exit v9

    goto :goto_0

    .line 333
    :catchall_0
    move-exception v7

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 311
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 312
    .local v2, post:Lorg/apache/http/client/methods/HttpPost;
    if-eqz v2, :cond_8

    .line 313
    sget-boolean v10, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v10, :cond_5

    .line 314
    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v6

    .line 315
    .local v6, uri:Ljava/net/URI;
    if-eqz v6, :cond_7

    .line 316
    invoke-virtual {v6}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v3

    .line 317
    .local v3, query:Ljava/lang/String;
    if-nez v3, :cond_4

    .line 318
    const-string v3, "POST"

    .line 320
    :cond_4
    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v5, v10, v11

    const/4 v11, 0x1

    const-string v12, ": Alert, aborting "

    aput-object v12, v10, v11

    const/4 v11, 0x2

    aput-object v3, v10, v11

    invoke-virtual {p0, v10}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 326
    .end local v3           #query:Ljava/lang/String;
    .end local v6           #uri:Ljava/net/URI;
    :cond_5
    :goto_1
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/exchange/EasSyncService;->mPostAborted:Z

    .line 327
    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 333
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 337
    const/4 v0, 0x0

    .line 339
    .local v0, checkTime:I
    :goto_2
    const/16 v9, 0x2710

    if-ge v0, v9, :cond_9

    .line 340
    iget-object v9, p0, Lcom/android/exchange/EasSyncService;->mThread:Ljava/lang/Thread;

    invoke-virtual {v9}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v4

    .line 341
    .local v4, s:Ljava/lang/Thread$State;
    sget-object v9, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-ne v4, v9, :cond_6

    iget-object v9, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    if-ne v9, v2, :cond_0

    .line 343
    :cond_6
    const-wide/16 v9, 0x7d0

    :try_start_2
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 350
    :goto_3
    add-int/lit16 v0, v0, 0x7d0

    goto :goto_2

    .line 322
    .end local v0           #checkTime:I
    .end local v4           #s:Ljava/lang/Thread$State;
    .restart local v6       #uri:Ljava/net/URI;
    :cond_7
    const/4 v10, 0x2

    :try_start_3
    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v5, v10, v11

    const/4 v11, 0x1

    const-string v12, ": Alert, no URI?"

    aput-object v12, v10, v11

    invoke-virtual {p0, v10}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    goto :goto_1

    .line 330
    .end local v6           #uri:Ljava/net/URI;
    :cond_8
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "Alert, no pending POST"

    aput-object v11, v8, v10

    invoke-virtual {p0, v8}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 331
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 344
    .restart local v0       #checkTime:I
    .restart local v4       #s:Ljava/lang/Thread$State;
    :catch_0
    move-exception v1

    .line 345
    .local v1, e:Ljava/lang/InterruptedException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "InterruptedException catched: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;)V

    goto :goto_3

    .line 353
    .end local v1           #e:Ljava/lang/InterruptedException;
    .end local v4           #s:Ljava/lang/Thread$State;
    :cond_9
    iget-object v9, p0, Lcom/android/exchange/EasSyncService;->mThread:Ljava/lang/Thread;

    invoke-virtual {v9}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v4

    .line 354
    .restart local v4       #s:Ljava/lang/Thread$State;
    sget-boolean v9, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v9, :cond_a

    .line 355
    new-array v9, v7, [Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": State = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v8

    invoke-virtual {p0, v9}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 358
    :cond_a
    invoke-virtual {p0}, Lcom/android/exchange/AbstractSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 361
    :try_start_4
    sget-object v10, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-eq v4, v10, :cond_b

    iget-object v10, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v10, :cond_b

    iget-object v10, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    if-ne v10, v2, :cond_b

    .line 362
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/exchange/EasSyncService;->mStop:Z

    .line 363
    iget-object v7, p0, Lcom/android/exchange/EasSyncService;->mThread:Ljava/lang/Thread;

    invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V

    .line 364
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "Interrupting..."

    aput-object v11, v7, v10

    invoke-virtual {p0, v7}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 366
    monitor-exit v9

    move v7, v8

    goto/16 :goto_0

    .line 368
    :cond_b
    monitor-exit v9

    goto/16 :goto_0

    :catchall_1
    move-exception v7

    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v7
.end method

.method protected autodiscoverUrlToHostAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "url"

    .prologue
    .line 781
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 783
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected canHandleAccountMailboxRedirect(Lcom/android/exchange/EasResponse;)Z
    .locals 7
    .parameter "resp"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2591
    new-array v4, v2, [Ljava/lang/String;

    const-string v5, "AccountMailbox redirect error"

    aput-object v5, v4, v3

    invoke-virtual {p0, v4}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 2592
    const-string v4, "QQQ canHandleAccountMailboxRedirect "

    invoke-static {v4}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;)V

    .line 2593
    iget-object v4, p0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v5, v5, Lcom/android/emailcommon/provider/Account;->mHostAuthKeyRecv:J

    invoke-static {v4, v5, v6}, Lcom/android/emailcommon/provider/HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v0

    .line 2595
    .local v0, ha:Lcom/android/emailcommon/provider/HostAuth;
    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/android/exchange/EasSyncService;->getValidateRedirect(Lcom/android/exchange/EasResponse;Lcom/android/emailcommon/provider/HostAuth;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2597
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2598
    .local v1, haValues:Landroid/content/ContentValues;
    const-string v3, "address"

    iget-object v4, v0, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2599
    iget-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3, v1}, Lcom/android/emailcommon/provider/EmailContent;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 2602
    .end local v1           #haValues:Landroid/content/ContentValues;
    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public canProvision(Lcom/android/exchange/EasSyncService;)Lcom/android/exchange/adapter/ProvisionParser;
    .locals 11
    .parameter "svc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1757
    new-instance v6, Lcom/android/exchange/adapter/Serializer;

    invoke-direct {v6}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 1758
    .local v6, s:Lcom/android/exchange/adapter/Serializer;
    iget-object v4, p1, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    .line 1759
    .local v4, protocolVersion:Ljava/lang/Double;
    const/16 v7, 0x385

    invoke-virtual {v6, v7}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1760
    iget-object v7, p1, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    const-wide v9, 0x402c333333333333L

    cmpl-double v7, v7, v9

    if-ltz v7, :cond_0

    .line 1762
    const/16 v7, 0x496

    invoke-virtual {v6, v7}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v7

    const/16 v8, 0x488

    invoke-virtual {v7, v8}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1763
    const/16 v7, 0x497

    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1766
    const/16 v7, 0x49a

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Android "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1770
    const/16 v7, 0x4a0

    sget-object v8, Lcom/android/exchange/EasSyncService;->USER_AGENT:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1771
    invoke-virtual {v6}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 1773
    :cond_0
    const/16 v7, 0x386

    invoke-virtual {v6, v7}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1774
    const/16 v7, 0x387

    invoke-virtual {v6, v7}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1775
    const/16 v7, 0x388

    invoke-static {v4}, Lcom/android/exchange/EasSyncService;->getPolicyType(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1776
    invoke-virtual {v6}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 1777
    const-string v7, "Provision"

    invoke-virtual {v6}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;[B)Lcom/android/exchange/EasResponse;

    move-result-object v5

    .line 1779
    .local v5, resp:Lcom/android/exchange/EasResponse;
    :try_start_0
    invoke-virtual {v5}, Lcom/android/exchange/EasResponse;->getStatus()I

    move-result v0

    .line 1780
    .local v0, code:I
    const/16 v7, 0xc8

    if-ne v0, v7, :cond_3

    .line 1781
    invoke-virtual {v5}, Lcom/android/exchange/EasResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 1782
    .local v1, is:Ljava/io/InputStream;
    new-instance v3, Lcom/android/exchange/adapter/ProvisionParser;

    invoke-direct {v3, v1, p1}, Lcom/android/exchange/adapter/ProvisionParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/EasSyncService;)V

    .line 1783
    .local v3, pp:Lcom/android/exchange/adapter/ProvisionParser;
    invoke-virtual {v3}, Lcom/android/exchange/adapter/ProvisionParser;->parse()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1786
    invoke-virtual {v3}, Lcom/android/exchange/adapter/ProvisionParser;->hasSupportablePolicySet()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p1, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    const-wide/high16 v9, 0x402c

    cmpl-double v7, v7, v9

    if-nez v7, :cond_2

    .line 1790
    invoke-virtual {v3}, Lcom/android/exchange/adapter/ProvisionParser;->getSecuritySyncKey()Ljava/lang/String;

    move-result-object v7

    const-string v8, "1"

    invoke-static {p1, v7, v8}, Lcom/android/exchange/EasSyncService;->acknowledgeProvision(Lcom/android/exchange/EasSyncService;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1792
    .local v2, policyKey:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 1793
    invoke-virtual {v3, v2}, Lcom/android/exchange/adapter/ProvisionParser;->setSecuritySyncKey(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1817
    .end local v2           #policyKey:Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-virtual {v5}, Lcom/android/exchange/EasResponse;->close()V

    .line 1821
    .end local v1           #is:Ljava/io/InputStream;
    .end local v3           #pp:Lcom/android/exchange/adapter/ProvisionParser;
    :goto_1
    return-object v3

    .line 1795
    .restart local v1       #is:Ljava/io/InputStream;
    .restart local v3       #pp:Lcom/android/exchange/adapter/ProvisionParser;
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Lcom/android/exchange/adapter/ProvisionParser;->hasSupportablePolicySet()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1799
    const-string v7, "PolicySet is NOT fully supportable"

    invoke-static {v7}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 1800
    invoke-virtual {v3}, Lcom/android/exchange/adapter/ProvisionParser;->getSecuritySyncKey()Ljava/lang/String;

    move-result-object v7

    const-string v8, "2"

    invoke-static {p1, v7, v8}, Lcom/android/exchange/EasSyncService;->acknowledgeProvision(Lcom/android/exchange/EasSyncService;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 1804
    invoke-virtual {v3}, Lcom/android/exchange/adapter/ProvisionParser;->clearUnsupportablePolicies()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1817
    .end local v0           #code:I
    .end local v1           #is:Ljava/io/InputStream;
    .end local v3           #pp:Lcom/android/exchange/adapter/ProvisionParser;
    :catchall_0
    move-exception v7

    invoke-virtual {v5}, Lcom/android/exchange/EasResponse;->close()V

    throw v7

    .line 1810
    .restart local v0       #code:I
    :cond_3
    const/16 v7, 0x1c3

    if-ne v0, v7, :cond_4

    :try_start_2
    invoke-virtual {p0, v5}, Lcom/android/exchange/EasSyncService;->canHandleAccountMailboxRedirect(Lcom/android/exchange/EasResponse;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1813
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Result code 451, redirect for get Provision and retry after a brief hold."

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1817
    :cond_4
    invoke-virtual {v5}, Lcom/android/exchange/EasResponse;->close()V

    .line 1821
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public cancelPartRequest(J)V
    .locals 4
    .parameter "attachmentId"

    .prologue
    .line 2565
    iget-object v2, p0, Lcom/android/exchange/AbstractSyncService;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2566
    .local v0, itor:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/exchange/Request;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2567
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/exchange/Request;

    .line 2568
    .local v1, req:Lcom/android/exchange/Request;
    instance-of v2, v1, Lcom/android/exchange/PartRequest;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/android/exchange/PartRequest;

    iget-object v2, v2, Lcom/android/exchange/PartRequest;->mAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 2570
    iget-object v2, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    const-string v3, "cancel the part request"

    invoke-static {v2, v3}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2571
    check-cast v1, Lcom/android/exchange/PartRequest;

    .end local v1           #req:Lcom/android/exchange/Request;
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/exchange/PartRequest;->mCancelled:Z

    .line 2575
    :cond_1
    return-void
.end method

.method protected executePostWithTimeout(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpPost;I)Lcom/android/exchange/EasResponse;
    .locals 1
    .parameter "client"
    .parameter "method"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1517
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/exchange/EasSyncService;->executePostWithTimeout(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpPost;IZ)Lcom/android/exchange/EasResponse;

    move-result-object v0

    return-object v0
.end method

.method protected executePostWithTimeout(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpPost;IZ)Lcom/android/exchange/EasResponse;
    .locals 6
    .parameter "client"
    .parameter "method"
    .parameter "timeout"
    .parameter "isPingCommand"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1531
    invoke-virtual {p0}, Lcom/android/exchange/AbstractSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1533
    :try_start_0
    iget-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mStop:Z

    if-eqz v2, :cond_0

    .line 1534
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 1546
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1536
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mPostAborted:Z

    .line 1537
    iput-object p2, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 1539
    iget-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mIsForAttachment:Z

    if-eqz v2, :cond_1

    .line 1540
    iput-object p2, p0, Lcom/android/exchange/EasSyncService;->mHttpPostForAttachment:Lorg/apache/http/client/methods/HttpPost;

    .line 1541
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mIsForAttachment:Z

    .line 1544
    :cond_1
    add-int/lit16 v2, p3, 0x7530

    int-to-long v0, v2

    .line 1545
    .local v0, alarmTime:J
    iget-wide v4, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    invoke-static {v4, v5, v0, v1}, Lcom/android/exchange/ExchangeService;->setWatchdogAlarm(JJ)V

    .line 1546
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1548
    :try_start_2
    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->getClientConnectionManager()Lcom/android/emailcommon/utility/EmailClientConnectionManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, p2, v3}, Lcom/android/exchange/EasResponse;->fromHttpRequest(Lcom/android/emailcommon/utility/EmailClientConnectionManager;Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Landroid/content/Context;)Lcom/android/exchange/EasResponse;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v2

    .line 1551
    invoke-virtual {p0}, Lcom/android/exchange/AbstractSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1552
    :try_start_3
    iget-object v4, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    const-string v5, "Command execution finished or aborted"

    invoke-static {v4, v5}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1553
    iget-wide v4, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    invoke-static {v4, v5}, Lcom/android/exchange/ExchangeService;->clearWatchdogAlarm(J)V

    .line 1554
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 1555
    monitor-exit v3

    return-object v2

    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 1551
    :catchall_2
    move-exception v2

    invoke-virtual {p0}, Lcom/android/exchange/AbstractSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1552
    :try_start_4
    iget-object v4, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    const-string v5, "Command execution finished or aborted"

    invoke-static {v4, v5}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1553
    iget-wide v4, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    invoke-static {v4, v5}, Lcom/android/exchange/ExchangeService;->clearWatchdogAlarm(J)V

    .line 1554
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 1555
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v2

    :catchall_3
    move-exception v2

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v2
.end method

.method public getMockConnection()Ljava/net/HttpURLConnection;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mMockConnection:Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method public getSendStatus()I
    .locals 1

    .prologue
    .line 266
    iget v0, p0, Lcom/android/exchange/EasSyncService;->mSendStatus:I

    return v0
.end method

.method public getSendingStatus()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2581
    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->sendSettings()Z

    move-result v0

    .line 2582
    .local v0, status:Z
    return v0
.end method

.method public getSnycStatus()I
    .locals 1

    .prologue
    .line 271
    iget v0, p0, Lcom/android/exchange/EasSyncService;->mSyncStatus:I

    return v0
.end method

.method getTargetCollectionClassFromCursor(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2
    .parameter "c"

    .prologue
    .line 1641
    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1642
    .local v0, type:I
    const/16 v1, 0x42

    if-ne v0, v1, :cond_0

    .line 1643
    const-string v1, "Contacts"

    .line 1647
    :goto_0
    return-object v1

    .line 1644
    :cond_0
    const/16 v1, 0x41

    if-ne v0, v1, :cond_1

    .line 1645
    const-string v1, "Calendar"

    goto :goto_0

    .line 1647
    :cond_1
    const-string v1, "Email"

    goto :goto_0
.end method

.method protected getValidateRedirect(Lcom/android/exchange/EasResponse;Lcom/android/emailcommon/provider/HostAuth;)Z
    .locals 8
    .parameter "resp"
    .parameter "hostAuth"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 522
    const-string v4, "X-MS-Location"

    invoke-virtual {p1, v4}, Lcom/android/exchange/EasResponse;->getHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    .line 523
    .local v1, locHeader:Lorg/apache/http/Header;
    if-eqz v1, :cond_0

    .line 526
    :try_start_0
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 528
    .local v0, loc:Ljava/lang/String;
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/exchange/EasSyncService;->mHostAddress:Ljava/lang/String;

    .line 529
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/exchange/EasSyncService;->mBaseUriString:Ljava/lang/String;

    .line 530
    iget-object v4, p0, Lcom/android/exchange/EasSyncService;->mHostAddress:Ljava/lang/String;

    iput-object v4, p2, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    .line 531
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Redirecting to: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v4}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 537
    .end local v0           #loc:Ljava/lang/String;
    :goto_0
    return v2

    .line 533
    :catch_0
    move-exception v2

    :cond_0
    move v2, v3

    .line 537
    goto :goto_0
.end method

.method protected isMailboxSyncable(J)Z
    .locals 7
    .parameter "mailboxId"

    .prologue
    const/16 v5, 0x42

    const/16 v4, 0x41

    .line 1907
    sget-boolean v3, Lcom/android/emailcommon/Configuration;->IS_TEST:Z

    if-eqz v3, :cond_1

    .line 1908
    iget-object v3, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not check mailbox "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " when running testcase"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1910
    const/4 v1, 0x1

    .line 1943
    :cond_0
    :goto_0
    return v1

    .line 1914
    :cond_1
    const/4 v1, 0x0

    .line 1916
    .local v1, isMailboxSyncable:Z
    iget-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    invoke-static {v3, p1, p2}, Lcom/android/emailcommon/provider/Mailbox;->getMailboxType(Landroid/content/Context;J)I

    move-result v2

    .line 1917
    .local v2, mailboxType:I
    if-eq v2, v4, :cond_2

    if-eq v2, v5, :cond_2

    if-nez v2, :cond_0

    .line 1921
    :cond_2
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1924
    if-ne v2, v5, :cond_4

    .line 1925
    const-string v0, "com.android.contacts"

    .line 1932
    .local v0, authority:Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v3, v3, Lcom/android/emailcommon/provider/Account;->mAmAccount:Landroid/accounts/Account;

    if-nez v3, :cond_3

    .line 1933
    iget-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    new-instance v4, Landroid/accounts/Account;

    iget-object v5, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v5, v5, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    const-string v6, "com.android.exchange"

    invoke-direct {v4, v5, v6}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, v3, Lcom/android/emailcommon/provider/Account;->mAmAccount:Landroid/accounts/Account;

    .line 1938
    :cond_3
    iget-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v3, v3, Lcom/android/emailcommon/provider/Account;->mAmAccount:Landroid/accounts/Account;

    invoke-static {v3, v0}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1939
    const/4 v1, 0x1

    goto :goto_0

    .line 1926
    .end local v0           #authority:Ljava/lang/String;
    :cond_4
    if-ne v2, v4, :cond_5

    .line 1927
    const-string v0, "com.android.calendar"

    .restart local v0       #authority:Ljava/lang/String;
    goto :goto_1

    .line 1929
    .end local v0           #authority:Ljava/lang/String;
    :cond_5
    const-string v0, "com.android.email.provider"

    .restart local v0       #authority:Ljava/lang/String;
    goto :goto_1
.end method

.method makeUriString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "cmd"
    .parameter "extra"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1435
    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->cacheAuthUserAndBaseUriStrings()V

    .line 1436
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mBaseUriString:Ljava/lang/String;

    .line 1437
    .local v0, uriString:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 1438
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?Cmd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mUserString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1440
    :cond_0
    if-eqz p2, :cond_1

    .line 1441
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1443
    :cond_1
    return-object v0
.end method

.method protected messageMoveRequest(Lcom/android/exchange/MessageMoveRequest;)V
    .locals 18
    .parameter "req"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1192
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/android/exchange/Request;->mMessageId:J

    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v11

    .line 1193
    .local v11, msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-nez v11, :cond_1

    .line 1257
    :cond_0
    :goto_0
    return-void

    .line 1194
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, v11, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "mailboxKey"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1196
    .local v7, c:Landroid/database/Cursor;
    if-nez v7, :cond_2

    new-instance v1, Lcom/android/emailcommon/provider/ProviderUnavailableException;

    invoke-direct {v1}, Lcom/android/emailcommon/provider/ProviderUnavailableException;-><init>()V

    throw v1

    .line 1197
    :cond_2
    const/4 v15, 0x0

    .line 1199
    .local v15, srcMailbox:Lcom/android/emailcommon/provider/Mailbox;
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_3

    .line 1202
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1200
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v15

    .line 1202
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1204
    if-eqz v15, :cond_0

    .line 1205
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/android/exchange/MessageMoveRequest;->mMailboxId:J

    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v9

    .line 1206
    .local v9, dstMailbox:Lcom/android/emailcommon/provider/Mailbox;
    if-eqz v9, :cond_0

    .line 1207
    new-instance v14, Lcom/android/exchange/adapter/Serializer;

    invoke-direct {v14}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 1208
    .local v14, s:Lcom/android/exchange/adapter/Serializer;
    const/16 v1, 0x145

    invoke-virtual {v14, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0x146

    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1209
    const/16 v1, 0x147

    iget-object v2, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v14, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1210
    const/16 v1, 0x148

    iget-object v2, v15, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {v14, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1211
    const/16 v1, 0x149

    iget-object v2, v9, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {v14, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1212
    invoke-virtual {v14}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 1213
    const-string v1, "MoveItems"

    invoke-virtual {v14}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;[B)Lcom/android/exchange/EasResponse;

    move-result-object v13

    .line 1215
    .local v13, resp:Lcom/android/exchange/EasResponse;
    :try_start_2
    invoke-virtual {v13}, Lcom/android/exchange/EasResponse;->getStatus()I

    move-result v16

    .line 1216
    .local v16, status:I
    const/16 v1, 0xc8

    move/from16 v0, v16

    if-ne v0, v1, :cond_8

    .line 1217
    invoke-virtual {v13}, Lcom/android/exchange/EasResponse;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1218
    invoke-virtual {v13}, Lcom/android/exchange/EasResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    .line 1219
    .local v10, is:Ljava/io/InputStream;
    new-instance v12, Lcom/android/exchange/adapter/MoveItemsParser;

    move-object/from16 v0, p0

    invoke-direct {v12, v10, v0}, Lcom/android/exchange/adapter/MoveItemsParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/EasSyncService;)V

    .line 1220
    .local v12, p:Lcom/android/exchange/adapter/MoveItemsParser;
    invoke-virtual {v12}, Lcom/android/exchange/adapter/MoveItemsParser;->parse()Z

    .line 1221
    invoke-virtual {v12}, Lcom/android/exchange/adapter/MoveItemsParser;->getStatusCode()I

    move-result v17

    .line 1222
    .local v17, statusCode:I
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 1223
    .local v8, cv:Landroid/content/ContentValues;
    const/4 v1, 0x2

    move/from16 v0, v17

    if-ne v0, v1, :cond_7

    .line 1225
    const-string v1, "mailboxKey"

    iget-object v2, v15, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1226
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/exchange/Request;->mMessageId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v8, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1237
    :cond_4
    :goto_1
    const/4 v1, 0x1

    move/from16 v0, v17

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    move/from16 v0, v17

    if-ne v0, v1, :cond_6

    .line 1241
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/exchange/Request;->mMessageId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1255
    .end local v8           #cv:Landroid/content/ContentValues;
    .end local v10           #is:Ljava/io/InputStream;
    .end local v12           #p:Lcom/android/exchange/adapter/MoveItemsParser;
    .end local v17           #statusCode:I
    :cond_6
    invoke-virtual {v13}, Lcom/android/exchange/EasResponse;->close()V

    goto/16 :goto_0

    .line 1202
    .end local v9           #dstMailbox:Lcom/android/emailcommon/provider/Mailbox;
    .end local v13           #resp:Lcom/android/exchange/EasResponse;
    .end local v14           #s:Lcom/android/exchange/adapter/Serializer;
    .end local v16           #status:I
    :catchall_0
    move-exception v1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v1

    .line 1229
    .restart local v8       #cv:Landroid/content/ContentValues;
    .restart local v9       #dstMailbox:Lcom/android/emailcommon/provider/Mailbox;
    .restart local v10       #is:Ljava/io/InputStream;
    .restart local v12       #p:Lcom/android/exchange/adapter/MoveItemsParser;
    .restart local v13       #resp:Lcom/android/exchange/EasResponse;
    .restart local v14       #s:Lcom/android/exchange/adapter/Serializer;
    .restart local v16       #status:I
    .restart local v17       #statusCode:I
    :cond_7
    const/4 v1, 0x1

    move/from16 v0, v17

    if-ne v0, v1, :cond_4

    .line 1231
    :try_start_3
    const-string v1, "syncServerId"

    invoke-virtual {v12}, Lcom/android/exchange/adapter/MoveItemsParser;->getNewServerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1232
    const-string v1, "flags"

    iget v2, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    or-int/lit16 v2, v2, 0x200

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1233
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/exchange/Request;->mMessageId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v8, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 1255
    .end local v8           #cv:Landroid/content/ContentValues;
    .end local v10           #is:Ljava/io/InputStream;
    .end local v12           #p:Lcom/android/exchange/adapter/MoveItemsParser;
    .end local v16           #status:I
    .end local v17           #statusCode:I
    :catchall_1
    move-exception v1

    invoke-virtual {v13}, Lcom/android/exchange/EasResponse;->close()V

    throw v1

    .line 1248
    .restart local v16       #status:I
    :cond_8
    :try_start_4
    invoke-static/range {v16 .. v16}, Lcom/android/exchange/EasResponse;->isAuthError(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1249
    new-instance v1, Lcom/android/exchange/EasAuthenticationException;

    invoke-direct {v1}, Lcom/android/exchange/EasAuthenticationException;-><init>()V

    throw v1

    .line 1251
    :cond_9
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Move items request failed, code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 1252
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
.end method

.method parseAction(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/HostAuth;)V
    .locals 5
    .parameter "parser"
    .parameter "hostAuth"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 969
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 970
    .local v1, type:I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Action"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 983
    return-void

    .line 972
    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 973
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 974
    .local v0, name:Ljava/lang/String;
    const-string v2, "Error"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 976
    const-string v2, "Redirect"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 977
    iget-object v2, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Redirect: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 978
    :cond_2
    const-string v2, "Settings"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 979
    invoke-virtual {p0, p1, p2}, Lcom/android/exchange/EasSyncService;->parseSettings(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/HostAuth;)V

    goto :goto_0
.end method

.method parseAutodiscover(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/HostAuth;)V
    .locals 3
    .parameter "parser"
    .parameter "hostAuth"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1024
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v0

    .line 1025
    .local v0, type:I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Autodiscover"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1031
    return-void

    .line 1027
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Response"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1028
    invoke-virtual {p0, p1, p2}, Lcom/android/exchange/EasSyncService;->parseResponse(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/HostAuth;)V

    goto :goto_0
.end method

.method parseResponse(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/HostAuth;)V
    .locals 4
    .parameter "parser"
    .parameter "hostAuth"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1007
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 1008
    .local v1, type:I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Response"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1019
    return-void

    .line 1010
    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1011
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1012
    .local v0, name:Ljava/lang/String;
    const-string v2, "User"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1013
    invoke-virtual {p0, p1, p2}, Lcom/android/exchange/EasSyncService;->parseUser(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/HostAuth;)V

    goto :goto_0

    .line 1014
    :cond_2
    const-string v2, "Action"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1015
    invoke-virtual {p0, p1, p2}, Lcom/android/exchange/EasSyncService;->parseAction(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/HostAuth;)V

    goto :goto_0
.end method

.method parseServer(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/HostAuth;)V
    .locals 8
    .parameter "parser"
    .parameter "hostAuth"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 928
    const/4 v1, 0x0

    .line 930
    .local v1, mobileSync:Z
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 931
    .local v3, type:I
    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Server"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 949
    return-void

    .line 933
    :cond_1
    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 934
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 935
    .local v2, name:Ljava/lang/String;
    const-string v4, "Type"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 936
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MobileSync"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 937
    const/4 v1, 0x1

    goto :goto_0

    .line 939
    :cond_2
    if-eqz v1, :cond_0

    const-string v4, "Url"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 940
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/exchange/EasSyncService;->autodiscoverUrlToHostAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 942
    .local v0, hostAddress:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 943
    iput-object v0, p2, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    .line 944
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Autodiscover, server: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v4}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    goto :goto_0
.end method

.method parseSettings(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/HostAuth;)V
    .locals 4
    .parameter "parser"
    .parameter "hostAuth"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 954
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 955
    .local v1, type:I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Settings"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 964
    return-void

    .line 957
    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 958
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 959
    .local v0, name:Ljava/lang/String;
    const-string v2, "Server"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 960
    invoke-virtual {p0, p1, p2}, Lcom/android/exchange/EasSyncService;->parseServer(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/HostAuth;)V

    goto :goto_0
.end method

.method parseUser(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/HostAuth;)V
    .locals 9
    .parameter "parser"
    .parameter "hostAuth"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 988
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 989
    .local v3, type:I
    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "User"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1002
    return-void

    .line 991
    :cond_1
    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 992
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 993
    .local v2, name:Ljava/lang/String;
    const-string v4, "EMailAddress"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 994
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 995
    .local v0, addr:Ljava/lang/String;
    new-array v4, v8, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Autodiscover, email: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p0, v4}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    goto :goto_0

    .line 996
    .end local v0           #addr:Ljava/lang/String;
    :cond_2
    const-string v4, "DisplayName"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 997
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    .line 998
    .local v1, dn:Ljava/lang/String;
    new-array v4, v8, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Autodiscover, user: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p0, v4}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    goto :goto_0
.end method

.method public reset()V
    .locals 4

    .prologue
    .line 375
    invoke-virtual {p0}, Lcom/android/exchange/AbstractSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 376
    :try_start_0
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v0, v0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/16 v2, 0x44

    if-ne v0, v2, :cond_0

    .line 377
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exchange/EasSyncService;->mPostReset:Z

    .line 378
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Reset, aborting Ping"

    aput-object v3, v0, v2

    invoke-virtual {p0, v0}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 379
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mHttpConn:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mHttpConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 383
    :cond_0
    monitor-exit v1

    .line 384
    return-void

    .line 383
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method resetSecurityPolicies()V
    .locals 6
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 2341
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2342
    .local v2, cv:Landroid/content/ContentValues;
    const-string v3, "securityFlags"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2343
    const-string v3, "securitySyncKey"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 2344
    iget-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v0, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    .line 2345
    .local v0, accountId:J
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v2, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2347
    return-void
.end method

.method public run()V
    .locals 23

    .prologue
    .line 2353
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/EasSyncService;->setupService()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2354
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/exchange/EasSyncService;->sendCallback(Z)V

    .line 2355
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    const-string v3, "setupService failed"

    invoke-static {v2, v3}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2501
    :cond_0
    :goto_0
    return-void

    .line 2359
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/exchange/EasSyncService;->mStop:Z

    if-eqz v2, :cond_2

    .line 2360
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    const-string v3, "setupService Service stopped"

    invoke-static {v2, v3}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2498
    :catch_0
    move-exception v12

    .line 2499
    .local v12, e:Lcom/android/emailcommon/provider/ProviderUnavailableException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    const-string v3, "EmailProvider unavailable; sync ended prematurely"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2366
    .end local v12           #e:Lcom/android/emailcommon/provider/ProviderUnavailableException;
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/exchange/ExchangeService;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;

    .line 2367
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-static {v2, v3}, Lcom/android/emailcommon/TrafficFlags;->getSyncFlags(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)I

    move-result v21

    .line 2368
    .local v21, trafficFlags:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    if-nez v2, :cond_a

    .line 2369
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setupService account: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mailbox: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/android/exchange/EasAuthenticationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    .line 2414
    :try_start_2
    invoke-static/range {p0 .. p0}, Lcom/android/exchange/ExchangeService;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 2415
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/exchange/EasSyncService;->mStop:Z

    if-nez v2, :cond_35

    .line 2416
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Sync finished"

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 2417
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    packed-switch v2, :pswitch_data_0

    .line 2443
    :pswitch_0
    const/16 v18, 0x15

    .line 2444
    .local v18, status:I
    const-string v2, "Sync ended due to an exception."

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/exchange/AbstractSyncService;->errorLog(Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2458
    :goto_1
    :try_start_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    const/16 v3, 0x8

    if-eq v2, v3, :cond_4

    const/16 v2, 0x20

    move/from16 v0, v18

    if-eq v0, v2, :cond_5

    :cond_4
    const/16 v2, 0x17

    move/from16 v0, v18

    if-ne v0, v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v2, v2, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/16 v3, 0x44

    if-eq v2, v3, :cond_6

    .line 2462
    :cond_5
    const/16 v18, 0x0

    .line 2464
    :cond_6
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    const/4 v5, 0x0

    move/from16 v0, v18

    invoke-interface {v2, v3, v4, v0, v5}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxStatus(JII)V

    .line 2466
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 2467
    .local v10, callbackAttIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_7
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/AbstractSyncService;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 2468
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/AbstractSyncService;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/AbstractQueue;->remove()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/exchange/Request;

    .line 2469
    .local v16, req:Lcom/android/exchange/Request;
    move-object/from16 v0, v16

    instance-of v2, v0, Lcom/android/exchange/PartRequest;

    if-eqz v2, :cond_7

    .line 2470
    check-cast v16, Lcom/android/exchange/PartRequest;

    .end local v16           #req:Lcom/android/exchange/Request;
    move-object/from16 v0, v16

    iget-object v9, v0, Lcom/android/exchange/PartRequest;->mAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 2471
    .local v9, att:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    if-eqz v9, :cond_7

    iget-wide v2, v9, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 2472
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Callback for canceling PartRequest messageId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v9, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " attachmentId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v9, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 2474
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v2

    iget-wide v3, v9, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    iget-wide v5, v9, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/16 v7, 0x20

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Lcom/android/emailcommon/service/IEmailServiceCallback;->loadAttachmentStatus(JJII)V

    .line 2476
    iget-wide v2, v9, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 2480
    .end local v9           #att:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v10           #callbackAttIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :catch_1
    move-exception v13

    .line 2482
    .local v13, e1:Landroid/os/RemoteException;
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException catched: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v13}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;)V

    .line 2486
    .end local v13           #e1:Landroid/os/RemoteException;
    :cond_8
    const-string v2, "sync finished"

    invoke-static {v2}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    .line 2487
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sync finished with reason: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 2488
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_9

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 2490
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/16 v5, 0x44

    invoke-static {v2, v3, v4, v5}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v14

    .line 2492
    .local v14, m:Lcom/android/emailcommon/provider/Mailbox;
    if-eqz v14, :cond_0

    .line 2493
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sync finished and notify ping thread: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v14, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 2494
    iget-wide v2, v14, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3}, Lcom/android/exchange/ExchangeService;->notifyEasSyncService(J)V
    :try_end_4
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 2373
    .end local v14           #m:Lcom/android/emailcommon/provider/Mailbox;
    .end local v18           #status:I
    :cond_a
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v2, v2, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/16 v3, 0x42

    if-ne v2, v3, :cond_15

    .line 2374
    const/high16 v2, 0x4

    or-int v2, v2, v21

    invoke-static {v2}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 2375
    new-instance v20, Lcom/android/exchange/adapter/ContactsSyncAdapter;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V

    .line 2386
    .local v20, target:Lcom/android/exchange/adapter/AbstractSyncAdapter;
    :cond_b
    :goto_3
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/exchange/EasSyncService;->mRequestTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_c

    .line 2387
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Looping for user request..."

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 2388
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/exchange/EasSyncService;->mRequestTime:J

    .line 2390
    :cond_c
    invoke-virtual/range {v20 .. v20}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->getSyncKey()Ljava/lang/String;

    move-result-object v19

    .line 2391
    .local v19, syncKey:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    const/4 v3, 0x7

    if-ge v2, v3, :cond_d

    const-string v2, "0"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lcom/android/exchange/EasAuthenticationException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    move-result v2

    if-eqz v2, :cond_e

    .line 2394
    :cond_d
    :try_start_6
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_a
    .catch Lcom/android/exchange/EasAuthenticationException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    .line 2400
    :cond_e
    :goto_4
    :try_start_7
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->sync(Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    .line 2401
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/exchange/EasSyncService;->mRequestTime:J
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Lcom/android/exchange/EasAuthenticationException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_b

    .line 2414
    :try_start_8
    invoke-static/range {p0 .. p0}, Lcom/android/exchange/ExchangeService;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 2415
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/exchange/EasSyncService;->mStop:Z

    if-nez v2, :cond_36

    .line 2416
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Sync finished"

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 2417
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    packed-switch v2, :pswitch_data_1

    .line 2443
    :pswitch_1
    const/16 v18, 0x15

    .line 2444
    .restart local v18       #status:I
    const-string v2, "Sync ended due to an exception."

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/exchange/AbstractSyncService;->errorLog(Ljava/lang/String;)V
    :try_end_8
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_8 .. :try_end_8} :catch_0

    .line 2458
    :goto_5
    :try_start_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    const/16 v3, 0x8

    if-eq v2, v3, :cond_f

    const/16 v2, 0x20

    move/from16 v0, v18

    if-eq v0, v2, :cond_10

    :cond_f
    const/16 v2, 0x17

    move/from16 v0, v18

    if-ne v0, v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v2, v2, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/16 v3, 0x44

    if-eq v2, v3, :cond_11

    .line 2462
    :cond_10
    const/16 v18, 0x0

    .line 2464
    :cond_11
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    const/4 v5, 0x0

    move/from16 v0, v18

    invoke-interface {v2, v3, v4, v0, v5}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxStatus(JII)V

    .line 2466
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 2467
    .restart local v10       #callbackAttIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_12
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/AbstractSyncService;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_13

    .line 2468
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/AbstractSyncService;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/AbstractQueue;->remove()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/exchange/Request;

    .line 2469
    .restart local v16       #req:Lcom/android/exchange/Request;
    move-object/from16 v0, v16

    instance-of v2, v0, Lcom/android/exchange/PartRequest;

    if-eqz v2, :cond_12

    .line 2470
    check-cast v16, Lcom/android/exchange/PartRequest;

    .end local v16           #req:Lcom/android/exchange/Request;
    move-object/from16 v0, v16

    iget-object v9, v0, Lcom/android/exchange/PartRequest;->mAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 2471
    .restart local v9       #att:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    if-eqz v9, :cond_12

    iget-wide v2, v9, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 2472
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Callback for canceling PartRequest messageId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v9, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " attachmentId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v9, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 2474
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v2

    iget-wide v3, v9, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    iget-wide v5, v9, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/16 v7, 0x20

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Lcom/android/emailcommon/service/IEmailServiceCallback;->loadAttachmentStatus(JJII)V

    .line 2476
    iget-wide v2, v9, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_9 .. :try_end_9} :catch_0

    goto :goto_6

    .line 2480
    .end local v9           #att:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v10           #callbackAttIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :catch_2
    move-exception v13

    .line 2482
    .restart local v13       #e1:Landroid/os/RemoteException;
    :try_start_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException catched: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v13}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;)V

    .line 2486
    .end local v13           #e1:Landroid/os/RemoteException;
    :cond_13
    const-string v2, "sync finished"

    invoke-static {v2}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    .line 2487
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sync finished with reason: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 2488
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_14

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 2490
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/16 v5, 0x44

    invoke-static {v2, v3, v4, v5}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v14

    .line 2492
    .restart local v14       #m:Lcom/android/emailcommon/provider/Mailbox;
    if-eqz v14, :cond_0

    .line 2493
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sync finished and notify ping thread: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v14, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 2494
    iget-wide v2, v14, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3}, Lcom/android/exchange/ExchangeService;->notifyEasSyncService(J)V
    :try_end_a
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_0

    .line 2376
    .end local v14           #m:Lcom/android/emailcommon/provider/Mailbox;
    .end local v18           #status:I
    .end local v19           #syncKey:Ljava/lang/String;
    .end local v20           #target:Lcom/android/exchange/adapter/AbstractSyncAdapter;
    :cond_15
    :try_start_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v2, v2, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/16 v3, 0x41

    if-ne v2, v3, :cond_16

    .line 2377
    const/high16 v2, 0x8

    or-int v2, v2, v21

    invoke-static {v2}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 2378
    new-instance v20, Lcom/android/exchange/adapter/CalendarSyncAdapter;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V

    .restart local v20       #target:Lcom/android/exchange/adapter/AbstractSyncAdapter;
    goto/16 :goto_3

    .line 2380
    .end local v20           #target:Lcom/android/exchange/adapter/AbstractSyncAdapter;
    :cond_16
    or-int/lit8 v2, v21, 0x0

    invoke-static {v2}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 2381
    new-instance v20, Lcom/android/exchange/adapter/EmailSyncAdapter;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/exchange/adapter/EmailSyncAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Lcom/android/exchange/EasAuthenticationException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    .restart local v20       #target:Lcom/android/exchange/adapter/AbstractSyncAdapter;
    goto/16 :goto_3

    .line 2403
    .end local v20           #target:Lcom/android/exchange/adapter/AbstractSyncAdapter;
    .end local v21           #trafficFlags:I
    :catch_3
    move-exception v12

    .line 2404
    .local v12, e:Lcom/android/exchange/EasAuthenticationException;
    const/4 v2, 0x1

    :try_start_c
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Caught authentication error"

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 2405
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 2414
    :try_start_d
    invoke-static/range {p0 .. p0}, Lcom/android/exchange/ExchangeService;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 2415
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/exchange/EasSyncService;->mStop:Z

    if-nez v2, :cond_32

    .line 2416
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Sync finished"

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 2417
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    packed-switch v2, :pswitch_data_2

    .line 2443
    :pswitch_2
    const/16 v18, 0x15

    .line 2444
    .restart local v18       #status:I
    const-string v2, "Sync ended due to an exception."

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/exchange/AbstractSyncService;->errorLog(Ljava/lang/String;)V
    :try_end_d
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_d .. :try_end_d} :catch_0

    .line 2458
    :goto_7
    :try_start_e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    const/16 v3, 0x8

    if-eq v2, v3, :cond_17

    const/16 v2, 0x20

    move/from16 v0, v18

    if-eq v0, v2, :cond_18

    :cond_17
    const/16 v2, 0x17

    move/from16 v0, v18

    if-ne v0, v2, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v2, v2, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/16 v3, 0x44

    if-eq v2, v3, :cond_19

    .line 2462
    :cond_18
    const/16 v18, 0x0

    .line 2464
    :cond_19
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    const/4 v5, 0x0

    move/from16 v0, v18

    invoke-interface {v2, v3, v4, v0, v5}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxStatus(JII)V

    .line 2466
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 2467
    .restart local v10       #callbackAttIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_1a
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/AbstractSyncService;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1b

    .line 2468
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/AbstractSyncService;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/AbstractQueue;->remove()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/exchange/Request;

    .line 2469
    .restart local v16       #req:Lcom/android/exchange/Request;
    move-object/from16 v0, v16

    instance-of v2, v0, Lcom/android/exchange/PartRequest;

    if-eqz v2, :cond_1a

    .line 2470
    check-cast v16, Lcom/android/exchange/PartRequest;

    .end local v16           #req:Lcom/android/exchange/Request;
    move-object/from16 v0, v16

    iget-object v9, v0, Lcom/android/exchange/PartRequest;->mAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 2471
    .restart local v9       #att:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    if-eqz v9, :cond_1a

    iget-wide v2, v9, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 2472
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Callback for canceling PartRequest messageId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v9, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " attachmentId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v9, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 2474
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v2

    iget-wide v3, v9, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    iget-wide v5, v9, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/16 v7, 0x20

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Lcom/android/emailcommon/service/IEmailServiceCallback;->loadAttachmentStatus(JJII)V

    .line 2476
    iget-wide v2, v9, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_4
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_e .. :try_end_e} :catch_0

    goto :goto_8

    .line 2480
    .end local v9           #att:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v10           #callbackAttIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :catch_4
    move-exception v13

    .line 2482
    .restart local v13       #e1:Landroid/os/RemoteException;
    :try_start_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException catched: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v13}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;)V

    .line 2486
    .end local v13           #e1:Landroid/os/RemoteException;
    :cond_1b
    const-string v2, "sync finished"

    invoke-static {v2}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    .line 2487
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sync finished with reason: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 2488
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 2490
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/16 v5, 0x44

    invoke-static {v2, v3, v4, v5}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v14

    .line 2492
    .restart local v14       #m:Lcom/android/emailcommon/provider/Mailbox;
    if-eqz v14, :cond_0

    .line 2493
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sync finished and notify ping thread: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v14, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 2494
    iget-wide v2, v14, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3}, Lcom/android/exchange/ExchangeService;->notifyEasSyncService(J)V
    :try_end_f
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_f .. :try_end_f} :catch_0

    goto/16 :goto_0

    .line 2406
    .end local v12           #e:Lcom/android/exchange/EasAuthenticationException;
    .end local v14           #m:Lcom/android/emailcommon/provider/Mailbox;
    .end local v18           #status:I
    :catch_5
    move-exception v12

    .line 2407
    .local v12, e:Ljava/io/IOException;
    :try_start_10
    invoke-virtual {v12}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v15

    .line 2408
    .local v15, message:Ljava/lang/String;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Caught IOException: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    if-nez v15, :cond_1d

    const-string v15, "No message"

    .end local v15           #message:Ljava/lang/String;
    :cond_1d
    aput-object v15, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 2409
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 2414
    :try_start_11
    invoke-static/range {p0 .. p0}, Lcom/android/exchange/ExchangeService;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 2415
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/exchange/EasSyncService;->mStop:Z

    if-nez v2, :cond_33

    .line 2416
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Sync finished"

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 2417
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    packed-switch v2, :pswitch_data_3

    .line 2443
    :pswitch_3
    const/16 v18, 0x15

    .line 2444
    .restart local v18       #status:I
    const-string v2, "Sync ended due to an exception."

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/exchange/AbstractSyncService;->errorLog(Ljava/lang/String;)V
    :try_end_11
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_11 .. :try_end_11} :catch_0

    .line 2458
    :goto_9
    :try_start_12
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    const/16 v3, 0x8

    if-eq v2, v3, :cond_1e

    const/16 v2, 0x20

    move/from16 v0, v18

    if-eq v0, v2, :cond_1f

    :cond_1e
    const/16 v2, 0x17

    move/from16 v0, v18

    if-ne v0, v2, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v2, v2, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/16 v3, 0x44

    if-eq v2, v3, :cond_20

    .line 2462
    :cond_1f
    const/16 v18, 0x0

    .line 2464
    :cond_20
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    const/4 v5, 0x0

    move/from16 v0, v18

    invoke-interface {v2, v3, v4, v0, v5}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxStatus(JII)V

    .line 2466
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 2467
    .restart local v10       #callbackAttIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_21
    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/AbstractSyncService;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_22

    .line 2468
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/AbstractSyncService;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/AbstractQueue;->remove()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/exchange/Request;

    .line 2469
    .restart local v16       #req:Lcom/android/exchange/Request;
    move-object/from16 v0, v16

    instance-of v2, v0, Lcom/android/exchange/PartRequest;

    if-eqz v2, :cond_21

    .line 2470
    check-cast v16, Lcom/android/exchange/PartRequest;

    .end local v16           #req:Lcom/android/exchange/Request;
    move-object/from16 v0, v16

    iget-object v9, v0, Lcom/android/exchange/PartRequest;->mAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 2471
    .restart local v9       #att:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    if-eqz v9, :cond_21

    iget-wide v2, v9, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 2472
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Callback for canceling PartRequest messageId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v9, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " attachmentId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v9, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 2474
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v2

    iget-wide v3, v9, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    iget-wide v5, v9, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/16 v7, 0x20

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Lcom/android/emailcommon/service/IEmailServiceCallback;->loadAttachmentStatus(JJII)V

    .line 2476
    iget-wide v2, v9, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_6
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_12 .. :try_end_12} :catch_0

    goto :goto_a

    .line 2480
    .end local v9           #att:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v10           #callbackAttIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :catch_6
    move-exception v13

    .line 2482
    .restart local v13       #e1:Landroid/os/RemoteException;
    :try_start_13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException catched: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v13}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;)V

    .line 2486
    .end local v13           #e1:Landroid/os/RemoteException;
    :cond_22
    const-string v2, "sync finished"

    invoke-static {v2}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    .line 2487
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sync finished with reason: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 2488
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_23

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 2490
    :cond_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/16 v5, 0x44

    invoke-static {v2, v3, v4, v5}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v14

    .line 2492
    .restart local v14       #m:Lcom/android/emailcommon/provider/Mailbox;
    if-eqz v14, :cond_0

    .line 2493
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sync finished and notify ping thread: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v14, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 2494
    iget-wide v2, v14, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3}, Lcom/android/exchange/ExchangeService;->notifyEasSyncService(J)V
    :try_end_13
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_13 .. :try_end_13} :catch_0

    goto/16 :goto_0

    .line 2410
    .end local v12           #e:Ljava/io/IOException;
    .end local v14           #m:Lcom/android/emailcommon/provider/Mailbox;
    .end local v18           #status:I
    :catch_7
    move-exception v12

    .line 2411
    .local v12, e:Ljava/lang/Exception;
    :try_start_14
    const-string v2, "Uncaught exception in EasSyncService"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v12}, Lcom/android/exchange/AbstractSyncService;->userLog(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 2414
    :try_start_15
    invoke-static/range {p0 .. p0}, Lcom/android/exchange/ExchangeService;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 2415
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/exchange/EasSyncService;->mStop:Z

    if-nez v2, :cond_34

    .line 2416
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Sync finished"

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 2417
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    packed-switch v2, :pswitch_data_4

    .line 2443
    :pswitch_4
    const/16 v18, 0x15

    .line 2444
    .restart local v18       #status:I
    const-string v2, "Sync ended due to an exception."

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/exchange/AbstractSyncService;->errorLog(Ljava/lang/String;)V
    :try_end_15
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_15 .. :try_end_15} :catch_0

    .line 2458
    :goto_b
    :try_start_16
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    const/16 v3, 0x8

    if-eq v2, v3, :cond_24

    const/16 v2, 0x20

    move/from16 v0, v18

    if-eq v0, v2, :cond_25

    :cond_24
    const/16 v2, 0x17

    move/from16 v0, v18

    if-ne v0, v2, :cond_26

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v2, v2, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/16 v3, 0x44

    if-eq v2, v3, :cond_26

    .line 2462
    :cond_25
    const/16 v18, 0x0

    .line 2464
    :cond_26
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    const/4 v5, 0x0

    move/from16 v0, v18

    invoke-interface {v2, v3, v4, v0, v5}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxStatus(JII)V

    .line 2466
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 2467
    .restart local v10       #callbackAttIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_27
    :goto_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/AbstractSyncService;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_28

    .line 2468
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/AbstractSyncService;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/AbstractQueue;->remove()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/exchange/Request;

    .line 2469
    .restart local v16       #req:Lcom/android/exchange/Request;
    move-object/from16 v0, v16

    instance-of v2, v0, Lcom/android/exchange/PartRequest;

    if-eqz v2, :cond_27

    .line 2470
    check-cast v16, Lcom/android/exchange/PartRequest;

    .end local v16           #req:Lcom/android/exchange/Request;
    move-object/from16 v0, v16

    iget-object v9, v0, Lcom/android/exchange/PartRequest;->mAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 2471
    .restart local v9       #att:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    if-eqz v9, :cond_27

    iget-wide v2, v9, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 2472
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Callback for canceling PartRequest messageId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v9, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " attachmentId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v9, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 2474
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v2

    iget-wide v3, v9, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    iget-wide v5, v9, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/16 v7, 0x20

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Lcom/android/emailcommon/service/IEmailServiceCallback;->loadAttachmentStatus(JJII)V

    .line 2476
    iget-wide v2, v9, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_16} :catch_8
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_16 .. :try_end_16} :catch_0

    goto :goto_c

    .line 2480
    .end local v9           #att:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v10           #callbackAttIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :catch_8
    move-exception v13

    .line 2482
    .restart local v13       #e1:Landroid/os/RemoteException;
    :try_start_17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException catched: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v13}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;)V

    .line 2486
    .end local v13           #e1:Landroid/os/RemoteException;
    :cond_28
    const-string v2, "sync finished"

    invoke-static {v2}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    .line 2487
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sync finished with reason: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 2488
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_29

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 2490
    :cond_29
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/16 v5, 0x44

    invoke-static {v2, v3, v4, v5}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v14

    .line 2492
    .restart local v14       #m:Lcom/android/emailcommon/provider/Mailbox;
    if-eqz v14, :cond_0

    .line 2493
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sync finished and notify ping thread: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v14, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 2494
    iget-wide v2, v14, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3}, Lcom/android/exchange/ExchangeService;->notifyEasSyncService(J)V

    goto/16 :goto_0

    .line 2480
    .end local v12           #e:Ljava/lang/Exception;
    .end local v14           #m:Lcom/android/emailcommon/provider/Mailbox;
    :catch_9
    move-exception v13

    .line 2482
    .restart local v13       #e1:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException catched: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v13}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;)V

    .line 2486
    .end local v13           #e1:Landroid/os/RemoteException;
    :cond_2a
    const-string v2, "sync finished"

    invoke-static {v2}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    .line 2487
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sync finished with reason: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 2488
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2c

    .line 2490
    :cond_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/16 v5, 0x44

    invoke-static {v2, v3, v4, v5}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v14

    .line 2492
    .restart local v14       #m:Lcom/android/emailcommon/provider/Mailbox;
    if-eqz v14, :cond_2c

    .line 2493
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sync finished and notify ping thread: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v14, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 2494
    iget-wide v2, v14, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3}, Lcom/android/exchange/ExchangeService;->notifyEasSyncService(J)V

    .line 2413
    .end local v14           #m:Lcom/android/emailcommon/provider/Mailbox;
    :cond_2c
    throw v22

    .end local v18           #status:I
    :catchall_0
    move-exception v2

    move-object/from16 v22, v2

    .line 2414
    invoke-static/range {p0 .. p0}, Lcom/android/exchange/ExchangeService;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 2415
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/exchange/EasSyncService;->mStop:Z

    if-nez v2, :cond_31

    .line 2416
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Sync finished"

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 2417
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    packed-switch v2, :pswitch_data_5

    .line 2443
    :pswitch_5
    const/16 v18, 0x15

    .line 2444
    .restart local v18       #status:I
    const-string v2, "Sync ended due to an exception."

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/exchange/AbstractSyncService;->errorLog(Ljava/lang/String;)V
    :try_end_17
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_17 .. :try_end_17} :catch_0

    .line 2458
    :goto_d
    :try_start_18
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    const/16 v3, 0x8

    if-eq v2, v3, :cond_2d

    const/16 v2, 0x20

    move/from16 v0, v18

    if-eq v0, v2, :cond_2e

    :cond_2d
    const/16 v2, 0x17

    move/from16 v0, v18

    if-ne v0, v2, :cond_2f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v2, v2, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/16 v3, 0x44

    if-eq v2, v3, :cond_2f

    .line 2462
    :cond_2e
    const/16 v18, 0x0

    .line 2464
    :cond_2f
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    const/4 v5, 0x0

    move/from16 v0, v18

    invoke-interface {v2, v3, v4, v0, v5}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxStatus(JII)V

    .line 2466
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 2467
    .restart local v10       #callbackAttIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_30
    :goto_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/AbstractSyncService;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2a

    .line 2468
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/AbstractSyncService;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/AbstractQueue;->remove()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/exchange/Request;

    .line 2469
    .restart local v16       #req:Lcom/android/exchange/Request;
    move-object/from16 v0, v16

    instance-of v2, v0, Lcom/android/exchange/PartRequest;

    if-eqz v2, :cond_30

    .line 2470
    check-cast v16, Lcom/android/exchange/PartRequest;

    .end local v16           #req:Lcom/android/exchange/Request;
    move-object/from16 v0, v16

    iget-object v9, v0, Lcom/android/exchange/PartRequest;->mAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 2471
    .restart local v9       #att:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    if-eqz v9, :cond_30

    iget-wide v2, v9, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    .line 2472
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Callback for canceling PartRequest messageId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v9, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " attachmentId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v9, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 2474
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v2

    iget-wide v3, v9, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    iget-wide v5, v9, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/16 v7, 0x20

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Lcom/android/emailcommon/service/IEmailServiceCallback;->loadAttachmentStatus(JJII)V

    .line 2476
    iget-wide v2, v9, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_18} :catch_9
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_18 .. :try_end_18} :catch_0

    goto :goto_e

    .line 2448
    .end local v9           #att:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v10           #callbackAttIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v18           #status:I
    :cond_31
    const/4 v2, 0x1

    :try_start_19
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Stopped sync finished."

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 2449
    const/16 v18, 0x0

    .restart local v18       #status:I
    goto/16 :goto_d

    .line 2422
    .end local v18           #status:I
    :pswitch_6
    const/16 v18, 0x0

    .line 2423
    .restart local v18       #status:I
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 2424
    .local v11, cv:Landroid/content/ContentValues;
    const-string v2, "syncTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2425
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "S"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/exchange/AbstractSyncService;->mChangeCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 2426
    .local v17, s:Ljava/lang/String;
    const-string v2, "syncStatus"

    move-object/from16 v0, v17

    invoke-virtual {v11, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2427
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v11, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_d

    .line 2419
    .end local v11           #cv:Landroid/content/ContentValues;
    .end local v17           #s:Ljava/lang/String;
    .end local v18           #status:I
    :pswitch_7
    const/16 v18, 0x20

    .line 2420
    .restart local v18       #status:I
    goto/16 :goto_d

    .line 2431
    .end local v18           #status:I
    :pswitch_8
    const/16 v18, 0x16

    .line 2432
    .restart local v18       #status:I
    goto/16 :goto_d

    .line 2434
    .end local v18           #status:I
    :pswitch_9
    const/16 v18, 0x17

    .line 2437
    .restart local v18       #status:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Lcom/android/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    goto/16 :goto_d

    .line 2440
    .end local v18           #status:I
    :pswitch_a
    const/16 v18, 0x19

    .line 2441
    .restart local v18       #status:I
    goto/16 :goto_d

    .line 2448
    .end local v18           #status:I
    .local v12, e:Lcom/android/exchange/EasAuthenticationException;
    :cond_32
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Stopped sync finished."

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 2449
    const/16 v18, 0x0

    .restart local v18       #status:I
    goto/16 :goto_7

    .line 2422
    .end local v18           #status:I
    :pswitch_b
    const/16 v18, 0x0

    .line 2423
    .restart local v18       #status:I
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 2424
    .restart local v11       #cv:Landroid/content/ContentValues;
    const-string v2, "syncTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2425
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "S"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/exchange/AbstractSyncService;->mChangeCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 2426
    .restart local v17       #s:Ljava/lang/String;
    const-string v2, "syncStatus"

    move-object/from16 v0, v17

    invoke-virtual {v11, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2427
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v11, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_7

    .line 2419
    .end local v11           #cv:Landroid/content/ContentValues;
    .end local v17           #s:Ljava/lang/String;
    .end local v18           #status:I
    :pswitch_c
    const/16 v18, 0x20

    .line 2420
    .restart local v18       #status:I
    goto/16 :goto_7

    .line 2431
    .end local v18           #status:I
    :pswitch_d
    const/16 v18, 0x16

    .line 2432
    .restart local v18       #status:I
    goto/16 :goto_7

    .line 2434
    .end local v18           #status:I
    :pswitch_e
    const/16 v18, 0x17

    .line 2437
    .restart local v18       #status:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Lcom/android/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    goto/16 :goto_7

    .line 2440
    .end local v18           #status:I
    :pswitch_f
    const/16 v18, 0x19

    .line 2441
    .restart local v18       #status:I
    goto/16 :goto_7

    .line 2448
    .end local v18           #status:I
    .local v12, e:Ljava/io/IOException;
    :cond_33
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Stopped sync finished."

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 2449
    const/16 v18, 0x0

    .restart local v18       #status:I
    goto/16 :goto_9

    .line 2422
    .end local v18           #status:I
    :pswitch_10
    const/16 v18, 0x0

    .line 2423
    .restart local v18       #status:I
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 2424
    .restart local v11       #cv:Landroid/content/ContentValues;
    const-string v2, "syncTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2425
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "S"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/exchange/AbstractSyncService;->mChangeCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 2426
    .restart local v17       #s:Ljava/lang/String;
    const-string v2, "syncStatus"

    move-object/from16 v0, v17

    invoke-virtual {v11, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2427
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v11, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_9

    .line 2419
    .end local v11           #cv:Landroid/content/ContentValues;
    .end local v17           #s:Ljava/lang/String;
    .end local v18           #status:I
    :pswitch_11
    const/16 v18, 0x20

    .line 2420
    .restart local v18       #status:I
    goto/16 :goto_9

    .line 2431
    .end local v18           #status:I
    :pswitch_12
    const/16 v18, 0x16

    .line 2432
    .restart local v18       #status:I
    goto/16 :goto_9

    .line 2434
    .end local v18           #status:I
    :pswitch_13
    const/16 v18, 0x17

    .line 2437
    .restart local v18       #status:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Lcom/android/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    goto/16 :goto_9

    .line 2440
    .end local v18           #status:I
    :pswitch_14
    const/16 v18, 0x19

    .line 2441
    .restart local v18       #status:I
    goto/16 :goto_9

    .line 2448
    .end local v18           #status:I
    .local v12, e:Ljava/lang/Exception;
    :cond_34
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Stopped sync finished."

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 2449
    const/16 v18, 0x0

    .restart local v18       #status:I
    goto/16 :goto_b

    .line 2422
    .end local v18           #status:I
    :pswitch_15
    const/16 v18, 0x0

    .line 2423
    .restart local v18       #status:I
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 2424
    .restart local v11       #cv:Landroid/content/ContentValues;
    const-string v2, "syncTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2425
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "S"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/exchange/AbstractSyncService;->mChangeCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 2426
    .restart local v17       #s:Ljava/lang/String;
    const-string v2, "syncStatus"

    move-object/from16 v0, v17

    invoke-virtual {v11, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2427
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v11, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_b

    .line 2419
    .end local v11           #cv:Landroid/content/ContentValues;
    .end local v17           #s:Ljava/lang/String;
    .end local v18           #status:I
    :pswitch_16
    const/16 v18, 0x20

    .line 2420
    .restart local v18       #status:I
    goto/16 :goto_b

    .line 2431
    .end local v18           #status:I
    :pswitch_17
    const/16 v18, 0x16

    .line 2432
    .restart local v18       #status:I
    goto/16 :goto_b

    .line 2434
    .end local v18           #status:I
    :pswitch_18
    const/16 v18, 0x17

    .line 2437
    .restart local v18       #status:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Lcom/android/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    goto/16 :goto_b

    .line 2440
    .end local v18           #status:I
    :pswitch_19
    const/16 v18, 0x19

    .line 2441
    .restart local v18       #status:I
    goto/16 :goto_b

    .line 2448
    .end local v12           #e:Ljava/lang/Exception;
    .end local v18           #status:I
    .restart local v21       #trafficFlags:I
    :cond_35
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Stopped sync finished."

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 2449
    const/16 v18, 0x0

    .restart local v18       #status:I
    goto/16 :goto_1

    .line 2422
    .end local v18           #status:I
    :pswitch_1a
    const/16 v18, 0x0

    .line 2423
    .restart local v18       #status:I
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 2424
    .restart local v11       #cv:Landroid/content/ContentValues;
    const-string v2, "syncTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2425
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "S"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/exchange/AbstractSyncService;->mChangeCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 2426
    .restart local v17       #s:Ljava/lang/String;
    const-string v2, "syncStatus"

    move-object/from16 v0, v17

    invoke-virtual {v11, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2427
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v11, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2419
    .end local v11           #cv:Landroid/content/ContentValues;
    .end local v17           #s:Ljava/lang/String;
    .end local v18           #status:I
    :pswitch_1b
    const/16 v18, 0x20

    .line 2420
    .restart local v18       #status:I
    goto/16 :goto_1

    .line 2431
    .end local v18           #status:I
    :pswitch_1c
    const/16 v18, 0x16

    .line 2432
    .restart local v18       #status:I
    goto/16 :goto_1

    .line 2434
    .end local v18           #status:I
    :pswitch_1d
    const/16 v18, 0x17

    .line 2437
    .restart local v18       #status:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Lcom/android/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    goto/16 :goto_1

    .line 2440
    .end local v18           #status:I
    :pswitch_1e
    const/16 v18, 0x19

    .line 2441
    .restart local v18       #status:I
    goto/16 :goto_1

    .line 2448
    .end local v18           #status:I
    .restart local v19       #syncKey:Ljava/lang/String;
    .restart local v20       #target:Lcom/android/exchange/adapter/AbstractSyncAdapter;
    :cond_36
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Stopped sync finished."

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 2449
    const/16 v18, 0x0

    .restart local v18       #status:I
    goto/16 :goto_5

    .line 2422
    .end local v18           #status:I
    :pswitch_1f
    const/16 v18, 0x0

    .line 2423
    .restart local v18       #status:I
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 2424
    .restart local v11       #cv:Landroid/content/ContentValues;
    const-string v2, "syncTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2425
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "S"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/exchange/AbstractSyncService;->mChangeCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 2426
    .restart local v17       #s:Ljava/lang/String;
    const-string v2, "syncStatus"

    move-object/from16 v0, v17

    invoke-virtual {v11, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2427
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v11, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_5

    .line 2419
    .end local v11           #cv:Landroid/content/ContentValues;
    .end local v17           #s:Ljava/lang/String;
    .end local v18           #status:I
    :pswitch_20
    const/16 v18, 0x20

    .line 2420
    .restart local v18       #status:I
    goto/16 :goto_5

    .line 2431
    .end local v18           #status:I
    :pswitch_21
    const/16 v18, 0x16

    .line 2432
    .restart local v18       #status:I
    goto/16 :goto_5

    .line 2434
    .end local v18           #status:I
    :pswitch_22
    const/16 v18, 0x17

    .line 2437
    .restart local v18       #status:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Lcom/android/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V
    :try_end_19
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_19 .. :try_end_19} :catch_0

    goto/16 :goto_5

    .line 2440
    .end local v18           #status:I
    :pswitch_23
    const/16 v18, 0x19

    .line 2441
    .restart local v18       #status:I
    goto/16 :goto_5

    .line 2396
    .end local v18           #status:I
    :catch_a
    move-exception v2

    goto/16 :goto_4

    .line 2417
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_0
        :pswitch_1d
        :pswitch_1e
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_1
        :pswitch_22
        :pswitch_23
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_2
        :pswitch_e
        :pswitch_f
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_3
        :pswitch_13
        :pswitch_14
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_4
        :pswitch_18
        :pswitch_19
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_5
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method protected sendHttpClientOptions()Lcom/android/exchange/EasResponse;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1615
    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->cacheAuthUserAndBaseUriStrings()V

    .line 1617
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mBaseUriString:Ljava/lang/String;

    .line 1618
    .local v2, uriString:Ljava/lang/String;
    new-instance v1, Lorg/apache/http/client/methods/HttpOptions;

    invoke-static {v2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/apache/http/client/methods/HttpOptions;-><init>(Ljava/net/URI;)V

    .line 1619
    .local v1, method:Lorg/apache/http/client/methods/HttpOptions;
    const-string v3, "Authorization"

    iget-object v4, p0, Lcom/android/exchange/EasSyncService;->mAuthString:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/apache/http/message/AbstractHttpMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1620
    const-string v3, "User-Agent"

    sget-object v4, Lcom/android/exchange/EasSyncService;->USER_AGENT:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/apache/http/message/AbstractHttpMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1621
    const/16 v3, 0x7530

    invoke-direct {p0, v3}, Lcom/android/exchange/EasSyncService;->getHttpClient(I)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    .line 1623
    .local v0, client:Lorg/apache/http/client/HttpClient;
    invoke-virtual {p0}, Lcom/android/exchange/AbstractSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 1625
    :try_start_0
    iget-boolean v3, p0, Lcom/android/exchange/EasSyncService;->mStop:Z

    if-eqz v3, :cond_0

    .line 1626
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3

    .line 1629
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1628
    :cond_0
    :try_start_1
    iput-object v1, p0, Lcom/android/exchange/EasSyncService;->mPendingOptions:Lorg/apache/http/client/methods/HttpOptions;

    .line 1629
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1632
    :try_start_2
    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->getClientConnectionManager()Lcom/android/emailcommon/utility/EmailClientConnectionManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, v1, v4}, Lcom/android/exchange/EasResponse;->fromHttpRequest(Lcom/android/emailcommon/utility/EmailClientConnectionManager;Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Landroid/content/Context;)Lcom/android/exchange/EasResponse;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v3

    .line 1634
    invoke-virtual {p0}, Lcom/android/exchange/AbstractSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 1635
    const/4 v5, 0x0

    :try_start_3
    iput-object v5, p0, Lcom/android/exchange/EasSyncService;->mPendingOptions:Lorg/apache/http/client/methods/HttpOptions;

    .line 1636
    monitor-exit v4

    return-object v3

    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    .line 1634
    :catchall_2
    move-exception v3

    invoke-virtual {p0}, Lcom/android/exchange/AbstractSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 1635
    const/4 v5, 0x0

    :try_start_4
    iput-object v5, p0, Lcom/android/exchange/EasSyncService;->mPendingOptions:Lorg/apache/http/client/methods/HttpOptions;

    .line 1636
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v3

    :catchall_3
    move-exception v3

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v3
.end method

.method protected sendHttpClientPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;)Lcom/android/exchange/EasResponse;
    .locals 1
    .parameter "cmd"
    .parameter "entity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1509
    const/16 v0, 0x7530

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;I)Lcom/android/exchange/EasResponse;

    move-result-object v0

    return-object v0
.end method

.method public sendHttpClientPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;I)Lcom/android/exchange/EasResponse;
    .locals 12
    .parameter "cmd"
    .parameter "entity"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1576
    iget-object v8, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Post:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1577
    invoke-direct {p0, p3}, Lcom/android/exchange/EasSyncService;->getHttpClient(I)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    .line 1578
    .local v0, client:Lorg/apache/http/client/HttpClient;
    const-string v8, "Ping"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1581
    .local v3, isPingCommand:Z
    const/4 v2, 0x0

    .line 1582
    .local v2, extra:Ljava/lang/String;
    const/4 v5, 0x0

    .line 1583
    .local v5, msg:Z
    const-string v8, "SmartForward&"

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "SmartReply&"

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1584
    :cond_0
    const/16 v8, 0x26

    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1585
    .local v1, cmdLength:I
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1586
    invoke-virtual {p1, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1587
    const/4 v5, 0x1

    .line 1592
    .end local v1           #cmdLength:I
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, v2}, Lcom/android/exchange/EasSyncService;->makeUriString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1593
    .local v6, us:Ljava/lang/String;
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    invoke-static {v6}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v8

    invoke-direct {v4, v8}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    .line 1597
    .local v4, method:Lorg/apache/http/client/methods/HttpPost;
    if-eqz v5, :cond_6

    iget-object v8, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    const-wide/high16 v10, 0x402c

    cmpg-double v8, v8, v10

    if-gez v8, :cond_6

    .line 1598
    const-string v8, "Content-Type"

    const-string v9, "message/rfc822"

    invoke-virtual {v4, v8, v9}, Lorg/apache/http/message/AbstractHttpMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1602
    :cond_2
    :goto_1
    if-nez v3, :cond_3

    const/4 v7, 0x1

    :cond_3
    invoke-virtual {p0, v4, v7}, Lcom/android/exchange/EasSyncService;->setHeaders(Lorg/apache/http/client/methods/HttpRequestBase;Z)V

    .line 1607
    if-eqz v3, :cond_4

    .line 1608
    const-string v7, "Connection"

    const-string v8, "close"

    invoke-virtual {v4, v7, v8}, Lorg/apache/http/message/AbstractHttpMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1610
    :cond_4
    invoke-virtual {v4, p2}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 1611
    invoke-virtual {p0, v0, v4, p3, v3}, Lcom/android/exchange/EasSyncService;->executePostWithTimeout(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpPost;IZ)Lcom/android/exchange/EasResponse;

    move-result-object v7

    return-object v7

    .line 1588
    .end local v4           #method:Lorg/apache/http/client/methods/HttpPost;
    .end local v6           #us:Ljava/lang/String;
    :cond_5
    const-string v8, "SendMail&"

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1589
    const/4 v5, 0x1

    goto :goto_0

    .line 1599
    .restart local v4       #method:Lorg/apache/http/client/methods/HttpPost;
    .restart local v6       #us:Ljava/lang/String;
    :cond_6
    if-eqz p2, :cond_2

    .line 1600
    const-string v8, "Content-Type"

    const-string v9, "application/vnd.ms-sync.wbxml"

    invoke-virtual {v4, v8, v9}, Lorg/apache/http/message/AbstractHttpMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public sendHttpClientPost(Ljava/lang/String;[B)Lcom/android/exchange/EasResponse;
    .locals 2
    .parameter "cmd"
    .parameter "bytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1505
    new-instance v0, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v0, p2}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    const/16 v1, 0x7530

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;I)Lcom/android/exchange/EasResponse;

    move-result-object v0

    return-object v0
.end method

.method public sendHttpClientPostForGal(Ljava/lang/String;Lorg/apache/http/HttpEntity;)Lcom/android/exchange/EasResponse;
    .locals 7
    .parameter "cmd"
    .parameter "entity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x2710

    .line 1561
    iget-object v3, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Post:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1562
    invoke-direct {p0, v6, v6}, Lcom/android/exchange/EasSyncService;->getHttpClient(II)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    .line 1564
    .local v0, client:Lorg/apache/http/client/HttpClient;
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Lcom/android/exchange/EasSyncService;->makeUriString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1565
    .local v2, us:Ljava/lang/String;
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-static {v2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    .line 1566
    .local v1, method:Lorg/apache/http/client/methods/HttpPost;
    if-eqz p2, :cond_0

    .line 1567
    const-string v3, "Content-Type"

    const-string v4, "application/vnd.ms-sync.wbxml"

    invoke-virtual {v1, v3, v4}, Lorg/apache/http/message/AbstractHttpMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1569
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3}, Lcom/android/exchange/EasSyncService;->setHeaders(Lorg/apache/http/client/methods/HttpRequestBase;Z)V

    .line 1570
    invoke-virtual {v1, p2}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 1571
    invoke-virtual {p0, v0, v1, v6}, Lcom/android/exchange/EasSyncService;->executePostWithTimeout(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpPost;I)Lcom/android/exchange/EasResponse;

    move-result-object v3

    return-object v3
.end method

.method protected sendMeetingResponse(Lcom/android/exchange/MeetingResponseRequest;)V
    .locals 12
    .parameter "req"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1267
    iget-object v8, p0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    iget-wide v9, p1, Lcom/android/exchange/Request;->mMessageId:J

    invoke-static {v8, v9, v10}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v3

    .line 1268
    .local v3, msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-nez v3, :cond_1

    .line 1304
    :cond_0
    :goto_0
    return-void

    .line 1269
    :cond_1
    iget-object v8, p0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    iget-wide v9, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {v8, v9, v10}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v1

    .line 1270
    .local v1, mailbox:Lcom/android/emailcommon/provider/Mailbox;
    if-eqz v1, :cond_0

    .line 1271
    new-instance v6, Lcom/android/exchange/adapter/Serializer;

    invoke-direct {v6}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 1272
    .local v6, s:Lcom/android/exchange/adapter/Serializer;
    const/16 v8, 0x207

    invoke-virtual {v6, v8}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v8

    const/16 v9, 0x209

    invoke-virtual {v8, v9}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1273
    const/16 v8, 0x20c

    iget v9, p1, Lcom/android/exchange/MeetingResponseRequest;->mResponse:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1274
    const/16 v8, 0x206

    iget-object v9, v1, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1275
    const/16 v8, 0x208

    iget-object v9, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1276
    invoke-virtual {v6}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 1277
    const-string v8, "MeetingResponse"

    invoke-virtual {v6}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;[B)Lcom/android/exchange/EasResponse;

    move-result-object v4

    .line 1279
    .local v4, resp:Lcom/android/exchange/EasResponse;
    :try_start_0
    invoke-virtual {v4}, Lcom/android/exchange/EasResponse;->getStatus()I

    move-result v7

    .line 1280
    .local v7, status:I
    const/16 v8, 0xc8

    if-ne v7, v8, :cond_4

    .line 1281
    invoke-virtual {v4}, Lcom/android/exchange/EasResponse;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 1282
    invoke-virtual {v4}, Lcom/android/exchange/EasResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 1283
    .local v0, is:Ljava/io/InputStream;
    new-instance v8, Lcom/android/exchange/adapter/MeetingResponseParser;

    invoke-direct {v8, v0, p0}, Lcom/android/exchange/adapter/MeetingResponseParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/EasSyncService;)V

    invoke-virtual {v8}, Lcom/android/exchange/adapter/MeetingResponseParser;->parse()Z

    .line 1284
    iget-object v2, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mMeetingInfo:Ljava/lang/String;

    .line 1285
    .local v2, meetingInfo:Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 1286
    new-instance v8, Lcom/android/emailcommon/mail/PackedString;

    invoke-direct {v8, v2}, Lcom/android/emailcommon/mail/PackedString;-><init>(Ljava/lang/String;)V

    const-string v9, "RESPONSE"

    invoke-virtual {v8, v9}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1289
    .local v5, responseRequested:Ljava/lang/String;
    const-string v8, "0"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-eqz v8, :cond_2

    .line 1302
    invoke-virtual {v4}, Lcom/android/exchange/EasResponse;->close()V

    goto :goto_0

    .line 1293
    .end local v5           #responseRequested:Ljava/lang/String;
    :cond_2
    :try_start_1
    iget v8, p1, Lcom/android/exchange/MeetingResponseRequest;->mResponse:I

    invoke-direct {p0, v3, v8}, Lcom/android/exchange/EasSyncService;->sendMeetingResponseMail(Lcom/android/emailcommon/provider/EmailContent$Message;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1302
    .end local v0           #is:Ljava/io/InputStream;
    .end local v2           #meetingInfo:Ljava/lang/String;
    :cond_3
    invoke-virtual {v4}, Lcom/android/exchange/EasResponse;->close()V

    goto/16 :goto_0

    .line 1295
    :cond_4
    :try_start_2
    invoke-static {v7}, Lcom/android/exchange/EasResponse;->isAuthError(I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1296
    new-instance v8, Lcom/android/exchange/EasAuthenticationException;

    invoke-direct {v8}, Lcom/android/exchange/EasAuthenticationException;-><init>()V

    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1302
    .end local v7           #status:I
    :catchall_0
    move-exception v8

    invoke-virtual {v4}, Lcom/android/exchange/EasResponse;->close()V

    throw v8

    .line 1298
    .restart local v7       #status:I
    :cond_5
    const/4 v8, 0x1

    :try_start_3
    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Meeting response request failed, code: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {p0, v8}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 1299
    new-instance v8, Ljava/io/IOException;

    invoke-direct {v8}, Ljava/io/IOException;-><init>()V

    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method protected setConnectionParameters(Lcom/android/emailcommon/provider/HostAuth;)V
    .locals 2
    .parameter "hostAuth"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 1472
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/HostAuth;->shouldUseSsl()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/exchange/EasSyncService;->mSsl:Z

    .line 1473
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/HostAuth;->shouldTrustAllServerCerts()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/exchange/EasSyncService;->mTrustSsl:Z

    .line 1474
    iget-object v1, p1, Lcom/android/emailcommon/provider/HostAuth;->mClientCertAlias:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/exchange/EasSyncService;->mClientCertAlias:Ljava/lang/String;

    .line 1475
    iget v1, p1, Lcom/android/emailcommon/provider/HostAuth;->mPort:I

    iput v1, p0, Lcom/android/exchange/EasSyncService;->mPort:I

    .line 1478
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mClientCertAlias:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1481
    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->getClientConnectionManager()Lcom/android/emailcommon/utility/EmailClientConnectionManager;

    move-result-object v0

    .line 1482
    .local v0, connManager:Lcom/android/emailcommon/utility/EmailClientConnectionManager;
    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/emailcommon/utility/EmailClientConnectionManager;->registerClientCert(Landroid/content/Context;Lcom/android/emailcommon/provider/HostAuth;)V

    .line 1484
    .end local v0           #connManager:Lcom/android/emailcommon/utility/EmailClientConnectionManager;
    :cond_0
    return-void
.end method

.method setHeaders(Lorg/apache/http/client/methods/HttpRequestBase;Z)V
    .locals 4
    .parameter "method"
    .parameter "usePolicyKey"

    .prologue
    .line 1452
    const-string v2, "Authorization"

    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mAuthString:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lorg/apache/http/message/AbstractHttpMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1453
    const-string v2, "MS-ASProtocolVersion"

    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lorg/apache/http/message/AbstractHttpMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1454
    const-string v2, "User-Agent"

    sget-object v3, Lcom/android/exchange/EasSyncService;->USER_AGENT:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lorg/apache/http/message/AbstractHttpMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1455
    const-string v2, "Accept-Encoding"

    const-string v3, "gzip"

    invoke-virtual {p1, v2, v3}, Lorg/apache/http/message/AbstractHttpMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1456
    if-eqz p2, :cond_1

    .line 1460
    const-string v1, "0"

    .line 1461
    .local v1, key:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    if-eqz v2, :cond_0

    .line 1462
    iget-object v2, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v0, v2, Lcom/android/emailcommon/provider/Account;->mSecuritySyncKey:Ljava/lang/String;

    .line 1463
    .local v0, accountKey:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1464
    move-object v1, v0

    .line 1467
    .end local v0           #accountKey:Ljava/lang/String;
    :cond_0
    const-string v2, "X-MS-PolicyKey"

    invoke-virtual {p1, v2, v1}, Lorg/apache/http/message/AbstractHttpMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1469
    .end local v1           #key:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public setMockConnection(Ljava/net/HttpURLConnection;)V
    .locals 1
    .parameter "mockConnection"

    .prologue
    .line 229
    sget-boolean v0, Lcom/android/emailcommon/Configuration;->IS_TEST:Z

    if-eqz v0, :cond_0

    .line 230
    iput-object p1, p0, Lcom/android/exchange/EasSyncService;->mMockConnection:Ljava/net/HttpURLConnection;

    .line 234
    :goto_0
    return-void

    .line 232
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mMockConnection:Ljava/net/HttpURLConnection;

    goto :goto_0
.end method

.method setupProtocolVersion(Lcom/android/exchange/EasSyncService;Lorg/apache/http/Header;)V
    .locals 13
    .parameter "service"
    .parameter "versionHeader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x2

    .line 426
    invoke-interface {p2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 427
    .local v6, supportedVersions:Ljava/lang/String;
    new-array v9, v12, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "Server supports versions: "

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v6, v9, v10

    invoke-virtual {p0, v9}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 428
    const-string v9, ","

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 429
    .local v7, supportedVersionsArray:[Ljava/lang/String;
    const/4 v5, 0x0

    .line 431
    .local v5, ourVersion:Ljava/lang/String;
    move-object v1, v7

    .local v1, arr$:[Ljava/lang/String;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v8, v1, v3

    .line 432
    .local v8, version:Ljava/lang/String;
    const-string v9, "2.5"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "12.0"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "12.1"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "14.0"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "14.1"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 437
    :cond_0
    move-object v5, v8

    .line 431
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 442
    .end local v8           #version:Ljava/lang/String;
    :cond_2
    if-nez v5, :cond_3

    .line 443
    iget-object v9, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No supported EAS versions: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    new-instance v9, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v10, 0x9

    invoke-direct {v9, v10}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    throw v9

    .line 448
    :cond_3
    const-string v9, "14.1"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const-string v9, "Exchange14"

    invoke-static {v9, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 450
    const-string v5, "14.0"

    .line 452
    :cond_4
    iput-object v5, p1, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    .line 453
    invoke-static {v5}, Lcom/android/exchange/Eas;->getProtocolVersionDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v9

    iput-object v9, p1, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    .line 454
    iget-object v0, p1, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    .line 455
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    if-eqz v0, :cond_5

    .line 456
    iput-object v5, v0, Lcom/android/emailcommon/provider/Account;->mProtocolVersion:Ljava/lang/String;

    .line 458
    iget-object v9, p1, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    const-wide/high16 v11, 0x4028

    cmpl-double v9, v9, v11

    if-ltz v9, :cond_5

    iget v9, v0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    and-int/lit16 v9, v9, 0x800

    if-nez v9, :cond_5

    .line 460
    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent;->isSaved()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 461
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 462
    .local v2, cv:Landroid/content/ContentValues;
    iget v9, v0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    or-int/lit16 v9, v9, 0x1880

    iput v9, v0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    .line 465
    const-string v9, "flags"

    iget v10, v0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 466
    iget-object v9, p1, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v9, v2}, Lcom/android/emailcommon/provider/Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 471
    .end local v2           #cv:Landroid/content/ContentValues;
    :cond_5
    return-void
.end method

.method protected setupService()Z
    .locals 9
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2282
    iget-object v5, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    const-string v6, "setupService start"

    invoke-static {v5, v6}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2283
    invoke-virtual {p0}, Lcom/android/exchange/AbstractSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 2284
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    iput-object v6, p0, Lcom/android/exchange/EasSyncService;->mThread:Ljava/lang/Thread;

    .line 2285
    const/16 v6, 0xa

    invoke-static {v6}, Landroid/os/Process;->setThreadPriority(I)V

    .line 2286
    iget-object v6, p0, Lcom/android/exchange/EasSyncService;->mThread:Ljava/lang/Thread;

    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    .line 2287
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2288
    iget-object v5, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setupService TAG: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2290
    iget-object v5, p0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v6, v6, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v5, v6, v7}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v5

    iput-object v5, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    .line 2291
    iget-object v5, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    if-nez v5, :cond_1

    .line 2331
    :cond_0
    :goto_0
    return v3

    .line 2287
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 2292
    :cond_1
    iget-object v5, p0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v6, v6, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v5, v6, v7}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v5

    iput-object v5, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    .line 2293
    iget-object v5, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    if-eqz v5, :cond_0

    .line 2294
    iget-object v5, p0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v6, v6, Lcom/android/emailcommon/provider/Account;->mHostAuthKeyRecv:J

    invoke-static {v5, v6, v7}, Lcom/android/emailcommon/provider/HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v1

    .line 2295
    .local v1, ha:Lcom/android/emailcommon/provider/HostAuth;
    if-eqz v1, :cond_0

    .line 2296
    iget-object v5, v1, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/exchange/EasSyncService;->mHostAddress:Ljava/lang/String;

    .line 2297
    iget-object v5, v1, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    .line 2298
    iget-object v5, v1, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/exchange/EasSyncService;->mPassword:Ljava/lang/String;

    .line 2301
    :try_start_2
    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->setConnectionParameters(Lcom/android/emailcommon/provider/HostAuth;)V
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2314
    iget-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v3, v3, Lcom/android/emailcommon/provider/Account;->mProtocolVersion:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    .line 2316
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 2317
    const-string v3, "2.5"

    iput-object v3, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    .line 2319
    :cond_2
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/exchange/Eas;->getProtocolVersionDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    .line 2322
    iget-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v5, v5, Lcom/android/emailcommon/provider/Account;->mPolicyKey:J

    invoke-static {v3, v5, v6}, Lcom/android/emailcommon/provider/Policy;->restorePolicyWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Policy;

    move-result-object v2

    .line 2323
    .local v2, policy:Lcom/android/emailcommon/provider/Policy;
    if-eqz v2, :cond_3

    iget-boolean v3, v2, Lcom/android/emailcommon/provider/Policy;->mRequireEncryptionExternal:Z

    if-eqz v3, :cond_3

    .line 2329
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->resetSecurityPolicies()V

    :cond_3
    move v3, v4

    .line 2331
    goto :goto_0

    .line 2302
    .end local v2           #policy:Lcom/android/emailcommon/provider/Policy;
    :catch_0
    move-exception v0

    .line 2303
    .local v0, e:Ljava/security/cert/CertificateException;
    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "Couldn\'t retrieve certificate for connection"

    aput-object v5, v4, v3

    invoke-virtual {p0, v4}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 2305
    :try_start_3
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    const/16 v7, 0x21

    const/4 v8, 0x0

    invoke-interface {v4, v5, v6, v7, v8}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 2307
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method public stop()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 388
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    const-string v1, "Syncing thread is about to stop"

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mStop:Z

    .line 390
    invoke-virtual {p0}, Lcom/android/exchange/AbstractSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 391
    :try_start_0
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    const-string v2, "Syncing thread stopping"

    invoke-static {v0, v2}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v0, v0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/16 v2, 0x44

    if-ne v0, v2, :cond_1

    .line 393
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mHttpConn:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 394
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exchange/EasSyncService;->mPostAborted:Z

    .line 395
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mHttpConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    const-string v2, "____Eas Syncing thread stopped"

    invoke-static {v0, v2}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    monitor-exit v1

    .line 412
    :goto_0
    return-void

    .line 401
    :cond_1
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v0, :cond_2

    .line 402
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exchange/EasSyncService;->mPostAborted:Z

    .line 403
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 407
    :cond_2
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mPendingOptions:Lorg/apache/http/client/methods/HttpOptions;

    if-eqz v0, :cond_3

    .line 408
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mPendingOptions:Lorg/apache/http/client/methods/HttpOptions;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 410
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    const-string v1, "Syncing thread stopped"

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 410
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public sync(Lcom/android/exchange/adapter/AbstractSyncAdapter;)V
    .locals 29
    .parameter "target"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1978
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    .line 1980
    .local v13, mailbox:Lcom/android/emailcommon/provider/Mailbox;
    const/4 v14, 0x1

    .line 1981
    .local v14, moreAvailable:Z
    const/4 v12, 0x0

    .line 1982
    .local v12, loopingCount:I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exchange/EasSyncService;->mStop:Z

    move/from16 v25, v0

    if-nez v25, :cond_2c

    if-nez v14, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/AbstractSyncService;->hasPendingRequests()Z

    move-result v25

    if-nez v25, :cond_1

    invoke-direct/range {p0 .. p1}, Lcom/android/exchange/EasSyncService;->hasMoreLocalChanges(Lcom/android/exchange/adapter/AbstractSyncAdapter;)Z

    move-result v25

    if-eqz v25, :cond_2c

    .line 1986
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/AbstractSyncService;->hasConnectivity()Z

    move-result v25

    if-nez v25, :cond_2

    sget-boolean v25, Lcom/android/emailcommon/Configuration;->IS_TEST:Z

    if-nez v25, :cond_2

    .line 1987
    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const-string v27, "No connectivity in sync; finishing sync"

    aput-object v27, v25, v26

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 1988
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    .line 2278
    :goto_1
    return-void

    .line 1994
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    move/from16 v25, v0

    const/16 v26, 0x6

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->isSyncable()Z

    move-result v25

    if-nez v25, :cond_5

    .line 1995
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    goto :goto_1

    .line 2006
    .local v16, req:Lcom/android/exchange/Request;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/concurrent/LinkedBlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v16

    .end local v16           #req:Lcom/android/exchange/Request;
    check-cast v16, Lcom/android/exchange/Request;

    .line 2011
    .restart local v16       #req:Lcom/android/exchange/Request;
    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/android/exchange/PartRequest;

    move/from16 v25, v0

    if-eqz v25, :cond_15

    move-object/from16 v25, v16

    .line 2012
    check-cast v25, Lcom/android/exchange/PartRequest;

    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/android/exchange/PartRequest;->mCancelled:Z

    move/from16 v25, v0

    if-nez v25, :cond_4

    .line 2014
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v26, v0

    invoke-static/range {v25 .. v26}, Lcom/android/emailcommon/TrafficFlags;->getAttachmentFlags(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)I

    move-result v25

    invoke-static/range {v25 .. v25}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 2016
    new-instance v25, Lcom/android/exchange/adapter/AttachmentLoader;

    check-cast v16, Lcom/android/exchange/PartRequest;

    .end local v16           #req:Lcom/android/exchange/Request;
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/AttachmentLoader;-><init>(Lcom/android/exchange/EasSyncService;Lcom/android/exchange/PartRequest;)V

    invoke-virtual/range {v25 .. v25}, Lcom/android/exchange/adapter/AttachmentLoader;->loadAttachment()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2024
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v26, v0

    invoke-static/range {v25 .. v26}, Lcom/android/emailcommon/TrafficFlags;->getSyncFlags(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)I

    move-result v25

    invoke-static/range {v25 .. v25}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 2039
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/AbstractQueue;->remove()Ljava/lang/Object;

    .line 2001
    :cond_5
    const/16 v16, 0x0

    .line 2003
    .restart local v16       #req:Lcom/android/exchange/Request;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v25

    if-eqz v25, :cond_3

    .line 2043
    if-nez v14, :cond_6

    invoke-direct/range {p0 .. p1}, Lcom/android/exchange/EasSyncService;->hasMoreLocalChanges(Lcom/android/exchange/adapter/AbstractSyncAdapter;)Z

    move-result v25

    if-eqz v25, :cond_0

    .line 2047
    :cond_6
    new-instance v19, Lcom/android/exchange/adapter/Serializer;

    invoke-direct/range {v19 .. v19}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 2049
    .local v19, s:Lcom/android/exchange/adapter/Serializer;
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->getCollectionName()Ljava/lang/String;

    move-result-object v6

    .line 2050
    .local v6, className:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->getSyncKey()Ljava/lang/String;

    move-result-object v23

    .line 2052
    .local v23, syncKey:Ljava/lang/String;
    const/16 v25, 0x4

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const-string v27, "sync, sending "

    aput-object v27, v25, v26

    const/16 v26, 0x1

    aput-object v6, v25, v26

    const/16 v26, 0x2

    const-string v27, " syncKey: "

    aput-object v27, v25, v26

    const/16 v26, 0x3

    aput-object v23, v25, v26

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 2053
    const/16 v25, 0x5

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v25

    const/16 v26, 0x1c

    invoke-virtual/range {v25 .. v26}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v25

    const/16 v26, 0xf

    invoke-virtual/range {v25 .. v26}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 2057
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v25

    const-wide v27, 0x4028333333333333L

    cmpg-double v25, v25, v27

    if-gez v25, :cond_7

    .line 2058
    const/16 v25, 0x10

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1, v6}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 2060
    :cond_7
    const/16 v25, 0xb

    move-object/from16 v0, v19

    move/from16 v1, v25

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v25

    const/16 v26, 0x12

    iget-object v0, v13, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v25 .. v27}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 2064
    const/16 v24, 0x7530

    .line 2066
    .local v24, timeout:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/EasSyncService;->mSyncStatus:I

    move/from16 v25, v0

    if-nez v25, :cond_18

    const-string v25, "0"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_18

    .line 2068
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exchange/EasSyncService;->mSyncStatus:I

    .line 2070
    const/16 v25, 0x2

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "EasSyncService:FirstSync "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/android/emailcommon/Logging;->performance(ILjava/lang/String;)V

    .line 2083
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v25, v0

    sget-wide v27, Lcom/android/exchange/Exchange;->sBadSyncKeyMailboxId:J

    cmp-long v25, v25, v27

    if-nez v25, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/EasSyncService;->mSyncStatus:I

    move/from16 v25, v0

    if-eqz v25, :cond_9

    .line 2085
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/EasSyncService;->mSyncStatus:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_1b

    move-object/from16 v25, p1

    .line 2086
    check-cast v25, Lcom/android/exchange/adapter/EmailSyncAdapter;

    invoke-virtual/range {v25 .. v25}, Lcom/android/exchange/adapter/EmailSyncAdapter;->getWindowCount()I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exchange/EasSyncService;->mWindowCount:I

    .line 2087
    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "[BSK recovery] window count: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/EasSyncService;->mWindowCount:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 2090
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/EasSyncService;->mWindowCount:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-gt v0, v1, :cond_1a

    .line 2091
    const/16 v25, 0x2

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exchange/EasSyncService;->mSyncStatus:I

    .line 2095
    :goto_4
    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "[BSK recovery] About to sync window: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/EasSyncService;->mWindowCount:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 2096
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/EasSyncService;->mWindowCount:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exchange/EasSyncService;->mWindowCount:I

    .line 2106
    :cond_9
    :goto_5
    if-eqz v14, :cond_a

    .line 2112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/EasSyncService;->mSyncStatus:I

    move/from16 v26, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v19

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->sendSyncOptions(Ljava/lang/Double;Lcom/android/exchange/adapter/Serializer;I)V

    .line 2114
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/EasSyncService;->mSyncStatus:I

    move/from16 v25, v0

    if-nez v25, :cond_b

    .line 2116
    const v24, 0x1d4c0

    .line 2119
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exchange/EasSyncService;->mUpsyncFailed:Z

    move/from16 v25, v0

    if-eqz v25, :cond_1d

    .line 2120
    sget-boolean v25, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v25, :cond_c

    .line 2121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string v26, "Inhibiting upsync this cycle"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2130
    :cond_c
    invoke-virtual/range {v19 .. v19}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 2131
    const-string v25, "Email"

    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->getCollectionName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_d

    .line 2132
    const/16 v25, 0x2

    const-string v26, "EasSyncService:SendSyncMessages"

    invoke-static/range {v25 .. v26}, Lcom/android/emailcommon/Logging;->performance(ILjava/lang/String;)V

    .line 2135
    :cond_d
    const-string v25, "Sync"

    new-instance v26, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual/range {v19 .. v19}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;I)Lcom/android/exchange/EasResponse;

    move-result-object v17

    .line 2137
    .local v17, resp:Lcom/android/exchange/EasResponse;
    const-string v25, "Email"

    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->getCollectionName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_e

    .line 2138
    const/16 v25, 0x2

    const-string v26, "EasSyncService:ReceiveSyncMessages"

    invoke-static/range {v25 .. v26}, Lcom/android/emailcommon/Logging;->performance(ILjava/lang/String;)V

    .line 2142
    :cond_e
    :try_start_1
    invoke-virtual/range {v17 .. v17}, Lcom/android/exchange/EasResponse;->getStatus()I

    move-result v7

    .line 2144
    .local v7, code:I
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exchange/EasSyncService;->mSendStatus:I

    .line 2145
    const/16 v25, 0xc8

    move/from16 v0, v25

    if-ne v7, v0, :cond_1e

    const/16 v22, 0x1

    .line 2146
    .local v22, success:Z
    :goto_6
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/exchange/EasSyncService;->sendCallback(Z)V

    .line 2148
    const/16 v25, 0xc8

    move/from16 v0, v25

    if-ne v7, v0, :cond_28

    .line 2154
    const/4 v10, 0x0

    .line 2155
    .local v10, emptyStream:Z
    invoke-virtual/range {v17 .. v17}, Lcom/android/exchange/EasResponse;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_26

    .line 2156
    invoke-virtual/range {v17 .. v17}, Lcom/android/exchange/EasResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    .line 2157
    .local v11, is:Ljava/io/InputStream;
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-direct {v4, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2159
    .local v4, bis:Ljava/io/BufferedInputStream;
    :try_start_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->parse(Ljava/io/InputStream;)Z

    move-result v14

    .line 2163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v25, v0

    sget-wide v27, Lcom/android/exchange/Exchange;->sBadSyncKeyMailboxId:J

    cmp-long v25, v25, v27

    if-nez v25, :cond_f

    if-nez v14, :cond_f

    .line 2166
    const-string v20, "dirty = 1 "

    .line 2167
    .local v20, selection:Ljava/lang/String;
    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const-string v27, "[BSK recovery] Selection clause: dirty = 1 "

    aput-object v27, v25, v26

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 2168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v25, v0

    sget-object v26, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const-string v27, "dirty = 1 "

    const/16 v28, 0x0

    invoke-virtual/range {v25 .. v28}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v18

    .line 2169
    .local v18, rowDeleted:I
    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "[BSK recovery] "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " local dirty mails were deleted"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 2172
    const-wide/16 v25, -0x1

    sput-wide v25, Lcom/android/exchange/Exchange;->sBadSyncKeyMailboxId:J

    .line 2173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/exchange/ExchangePreferences;->getPreferences(Landroid/content/Context;)Lcom/android/exchange/ExchangePreferences;

    move-result-object v15

    .line 2174
    .local v15, pref:Lcom/android/exchange/ExchangePreferences;
    const-wide/16 v25, -0x1

    move-wide/from16 v0, v25

    invoke-virtual {v15, v0, v1}, Lcom/android/exchange/ExchangePreferences;->setBadSyncKeyMailboxId(J)V

    .line 2175
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v15, v0}, Lcom/android/exchange/ExchangePreferences;->setRemovedStaleMails(Z)V

    .line 2176
    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const-string v27, "[BSK recovery] Bad sync key recovery process is finished"

    aput-object v27, v25, v26

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 2181
    .end local v15           #pref:Lcom/android/exchange/ExchangePreferences;
    .end local v18           #rowDeleted:I
    .end local v20           #selection:Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exchange/EasSyncService;->mUpsyncFailed:Z

    move/from16 v25, v0

    if-eqz v25, :cond_10

    .line 2182
    const/4 v14, 0x1

    .line 2185
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->isLooping()Z

    move-result v25

    if-eqz v25, :cond_1f

    .line 2186
    add-int/lit8 v12, v12, 0x1

    .line 2187
    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "** Looping: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 2190
    if-eqz v14, :cond_11

    const/16 v25, 0x64

    move/from16 v0, v25

    if-le v12, v0, :cond_11

    .line 2191
    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const-string v27, "** Looping force stopped"

    aput-object v27, v25, v26

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 2192
    const/4 v14, 0x0

    .line 2200
    :cond_11
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exchange/EasSyncService;->mUpsyncFailed:Z

    move/from16 v25, v0

    if-nez v25, :cond_20

    .line 2201
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->cleanup()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Lcom/android/exchange/adapter/Parser$EmptyStreamException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2222
    :goto_8
    if-eqz v4, :cond_12

    .line 2223
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    .line 2230
    .end local v4           #bis:Ljava/io/BufferedInputStream;
    .end local v11           #is:Ljava/io/InputStream;
    :cond_12
    :goto_9
    if-eqz v10, :cond_2b

    .line 2232
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->cleanup()V

    .line 2235
    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const-string v27, "Empty sync response; finishing"

    aput-object v27, v25, v26

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 2236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/emailcommon/provider/Mailbox;->mSyncInterval:I

    move/from16 v25, v0

    const/16 v26, -0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_13

    .line 2237
    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const-string v27, "Changing mailbox from push to ping"

    aput-object v27, v25, v26

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 2238
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 2239
    .local v8, cv:Landroid/content/ContentValues;
    const-string v25, "syncInterval"

    const/16 v26, -0x3

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v25, v0

    sget-object v26, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v27, v0

    invoke-static/range {v26 .. v28}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v26

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v8, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2244
    .end local v8           #cv:Landroid/content/ContentValues;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v25

    if-eqz v25, :cond_27

    invoke-direct/range {p0 .. p1}, Lcom/android/exchange/EasSyncService;->hasMoreLocalChanges(Lcom/android/exchange/adapter/AbstractSyncAdapter;)Z

    move-result v25

    if-nez v25, :cond_27

    .line 2245
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2263
    invoke-virtual/range {v17 .. v17}, Lcom/android/exchange/EasResponse;->close()V

    goto/16 :goto_1

    .line 2017
    .end local v6           #className:Ljava/lang/String;
    .end local v7           #code:I
    .end local v10           #emptyStream:Z
    .end local v16           #req:Lcom/android/exchange/Request;
    .end local v17           #resp:Lcom/android/exchange/EasResponse;
    .end local v19           #s:Lcom/android/exchange/adapter/Serializer;
    .end local v22           #success:Z
    .end local v23           #syncKey:Ljava/lang/String;
    .end local v24           #timeout:I
    :catch_0
    move-exception v9

    .line 2018
    .local v9, e:Ljava/io/IOException;
    :try_start_4
    const-string v25, "part_request_canceled"

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_14

    .line 2019
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string v26, "part request canceled"

    invoke-static/range {v25 .. v26}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2024
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v26, v0

    invoke-static/range {v25 .. v26}, Lcom/android/emailcommon/TrafficFlags;->getSyncFlags(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)I

    move-result v25

    invoke-static/range {v25 .. v25}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    goto/16 :goto_2

    .line 2021
    :cond_14
    :try_start_5
    throw v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2024
    .end local v9           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v27, v0

    invoke-static/range {v26 .. v27}, Lcom/android/emailcommon/TrafficFlags;->getSyncFlags(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)I

    move-result v26

    invoke-static/range {v26 .. v26}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    throw v25

    .line 2028
    .restart local v16       #req:Lcom/android/exchange/Request;
    :cond_15
    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/android/exchange/MeetingResponseRequest;

    move/from16 v25, v0

    if-eqz v25, :cond_16

    .line 2029
    check-cast v16, Lcom/android/exchange/MeetingResponseRequest;

    .end local v16           #req:Lcom/android/exchange/Request;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->sendMeetingResponse(Lcom/android/exchange/MeetingResponseRequest;)V

    goto/16 :goto_2

    .line 2030
    .restart local v16       #req:Lcom/android/exchange/Request;
    :cond_16
    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/android/exchange/MessageMoveRequest;

    move/from16 v25, v0

    if-eqz v25, :cond_17

    .line 2031
    check-cast v16, Lcom/android/exchange/MessageMoveRequest;

    .end local v16           #req:Lcom/android/exchange/Request;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->messageMoveRequest(Lcom/android/exchange/MessageMoveRequest;)V

    goto/16 :goto_2

    .line 2032
    .restart local v16       #req:Lcom/android/exchange/Request;
    :cond_17
    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/android/exchange/FetchMailRequest;

    move/from16 v25, v0

    if-eqz v25, :cond_4

    .line 2033
    const-string v25, "Email"

    const-string v26, "+++ Get Fetch mail request"

    invoke-static/range {v25 .. v26}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2034
    check-cast v16, Lcom/android/exchange/FetchMailRequest;

    .end local v16           #req:Lcom/android/exchange/Request;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/exchange/EasSyncService;->fetchMessage(Lcom/android/exchange/Request;)I

    goto/16 :goto_2

    .line 2073
    .restart local v6       #className:Ljava/lang/String;
    .restart local v16       #req:Lcom/android/exchange/Request;
    .restart local v19       #s:Lcom/android/exchange/adapter/Serializer;
    .restart local v23       #syncKey:Ljava/lang/String;
    .restart local v24       #timeout:I
    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/EasSyncService;->mSyncStatus:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_19

    const-string v25, "0"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_19

    .line 2074
    const/16 v25, 0x2

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exchange/EasSyncService;->mSyncStatus:I

    goto/16 :goto_3

    .line 2075
    :cond_19
    const-string v25, "0"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_8

    .line 2076
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exchange/EasSyncService;->mSyncStatus:I

    goto/16 :goto_3

    .line 2093
    :cond_1a
    const/16 v25, 0x3

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exchange/EasSyncService;->mSyncStatus:I

    goto/16 :goto_4

    .line 2097
    :cond_1b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/EasSyncService;->mSyncStatus:I

    move/from16 v25, v0

    const/16 v26, 0x3

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_1c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/EasSyncService;->mWindowCount:I

    move/from16 v25, v0

    add-int/lit8 v26, v25, -0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exchange/EasSyncService;->mWindowCount:I

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_1c

    .line 2098
    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "[BSK recovery] About to sync window: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/EasSyncService;->mWindowCount:I

    move/from16 v28, v0

    add-int/lit8 v28, v28, 0x1

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    goto/16 :goto_5

    .line 2100
    :cond_1c
    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const-string v27, "[BSK recovery] About to sync the last window"

    aput-object v27, v25, v26

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 2101
    const/16 v25, 0x2

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exchange/EasSyncService;->mSyncStatus:I

    goto/16 :goto_5

    .line 2124
    :cond_1d
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->sendLocalChanges(Lcom/android/exchange/adapter/Serializer;)Z

    move-result v5

    .line 2125
    .local v5, canSendLocal:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    move/from16 v25, v0

    const/16 v26, 0x42

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_c

    if-nez v5, :cond_c

    goto/16 :goto_0

    .line 2145
    .end local v5           #canSendLocal:Z
    .restart local v7       #code:I
    .restart local v17       #resp:Lcom/android/exchange/EasResponse;
    :cond_1e
    const/16 v22, 0x0

    goto/16 :goto_6

    .line 2195
    .restart local v4       #bis:Ljava/io/BufferedInputStream;
    .restart local v10       #emptyStream:Z
    .restart local v11       #is:Ljava/io/InputStream;
    .restart local v22       #success:Z
    :cond_1f
    const/4 v12, 0x0

    goto/16 :goto_7

    .line 2203
    :cond_20
    const/16 v25, 0x0

    :try_start_6
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/exchange/EasSyncService;->mUpsyncFailed:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Lcom/android/exchange/adapter/Parser$EmptyStreamException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_8

    .line 2205
    :catch_1
    move-exception v9

    .line 2206
    .local v9, e:Lcom/android/exchange/adapter/Parser$EmptyStreamException;
    const/16 v25, 0x1

    :try_start_7
    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const-string v27, "Empty stream detected in GZIP response"

    aput-object v27, v25, v26

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 2207
    const/4 v10, 0x1

    .line 2222
    if-eqz v4, :cond_12

    .line 2223
    :try_start_8
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_9

    .line 2263
    .end local v4           #bis:Ljava/io/BufferedInputStream;
    .end local v7           #code:I
    .end local v9           #e:Lcom/android/exchange/adapter/Parser$EmptyStreamException;
    .end local v10           #emptyStream:Z
    .end local v11           #is:Ljava/io/InputStream;
    .end local v22           #success:Z
    :catchall_1
    move-exception v25

    invoke-virtual/range {v17 .. v17}, Lcom/android/exchange/EasResponse;->close()V

    throw v25

    .line 2208
    .restart local v4       #bis:Ljava/io/BufferedInputStream;
    .restart local v7       #code:I
    .restart local v10       #emptyStream:Z
    .restart local v11       #is:Ljava/io/InputStream;
    .restart local v22       #success:Z
    :catch_2
    move-exception v9

    .line 2210
    .local v9, e:Lcom/android/exchange/CommandStatusException;
    :try_start_9
    iget v0, v9, Lcom/android/exchange/CommandStatusException;->mStatus:I

    move/from16 v21, v0

    .line 2211
    .local v21, status:I
    invoke-static/range {v21 .. v21}, Lcom/android/exchange/CommandStatusException$CommandStatus;->isNeedsProvisioning(I)Z

    move-result v25

    if-eqz v25, :cond_22

    .line 2212
    const/16 v25, 0x4

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 2222
    :goto_a
    if-eqz v4, :cond_21

    .line 2223
    :try_start_a
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 2263
    :cond_21
    invoke-virtual/range {v17 .. v17}, Lcom/android/exchange/EasResponse;->close()V

    goto/16 :goto_1

    .line 2213
    :cond_22
    :try_start_b
    invoke-static/range {v21 .. v21}, Lcom/android/exchange/CommandStatusException$CommandStatus;->isDeniedAccess(I)Z

    move-result v25

    if-eqz v25, :cond_24

    .line 2214
    const/16 v25, 0x5

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_a

    .line 2222
    .end local v9           #e:Lcom/android/exchange/CommandStatusException;
    .end local v21           #status:I
    :catchall_2
    move-exception v25

    if-eqz v4, :cond_23

    .line 2223
    :try_start_c
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    :cond_23
    throw v25
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 2215
    .restart local v9       #e:Lcom/android/exchange/CommandStatusException;
    .restart local v21       #status:I
    :cond_24
    :try_start_d
    invoke-static/range {v21 .. v21}, Lcom/android/exchange/CommandStatusException$CommandStatus;->isTransientError(I)Z

    move-result v25

    if-eqz v25, :cond_25

    .line 2216
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    goto :goto_a

    .line 2218
    :cond_25
    const/16 v25, 0x3

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_a

    .line 2227
    .end local v4           #bis:Ljava/io/BufferedInputStream;
    .end local v9           #e:Lcom/android/exchange/CommandStatusException;
    .end local v11           #is:Ljava/io/InputStream;
    .end local v21           #status:I
    :cond_26
    const/4 v10, 0x1

    goto/16 :goto_9

    .line 2263
    :cond_27
    invoke-virtual/range {v17 .. v17}, Lcom/android/exchange/EasResponse;->close()V

    goto/16 :goto_0

    .line 2252
    .end local v10           #emptyStream:Z
    :cond_28
    :try_start_e
    const-string v25, "Sync response error: "

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v7}, Lcom/android/exchange/AbstractSyncService;->userLog(Ljava/lang/String;I)V

    .line 2253
    invoke-static {v7}, Lcom/android/exchange/EasResponse;->isProvisionError(I)Z

    move-result v25

    if-eqz v25, :cond_29

    .line 2254
    const/16 v25, 0x4

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 2263
    :goto_b
    invoke-virtual/range {v17 .. v17}, Lcom/android/exchange/EasResponse;->close()V

    goto/16 :goto_1

    .line 2255
    :cond_29
    :try_start_f
    invoke-static {v7}, Lcom/android/exchange/EasResponse;->isAuthError(I)Z

    move-result v25

    if-eqz v25, :cond_2a

    .line 2256
    const/16 v25, 0x2

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    goto :goto_b

    .line 2258
    :cond_2a
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto :goto_b

    .line 2263
    .restart local v10       #emptyStream:Z
    :cond_2b
    invoke-virtual/range {v17 .. v17}, Lcom/android/exchange/EasResponse;->close()V

    goto/16 :goto_0

    .line 2277
    .end local v6           #className:Ljava/lang/String;
    .end local v7           #code:I
    .end local v10           #emptyStream:Z
    .end local v16           #req:Lcom/android/exchange/Request;
    .end local v17           #resp:Lcom/android/exchange/EasResponse;
    .end local v19           #s:Lcom/android/exchange/adapter/Serializer;
    .end local v22           #success:Z
    .end local v23           #syncKey:Ljava/lang/String;
    .end local v24           #timeout:I
    :cond_2c
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    goto/16 :goto_1
.end method

.method public tryAutodiscover(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 27
    .parameter "userName"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 795
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v21

    .line 796
    .local v21, s:Lorg/xmlpull/v1/XmlSerializer;
    new-instance v16, Ljava/io/ByteArrayOutputStream;

    const/16 v23, 0x400

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 797
    .local v16, os:Ljava/io/ByteArrayOutputStream;
    new-instance v12, Lcom/android/emailcommon/provider/HostAuth;

    invoke-direct {v12}, Lcom/android/emailcommon/provider/HostAuth;-><init>()V

    .line 798
    .local v12, hostAuth:Lcom/android/emailcommon/provider/HostAuth;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 799
    .local v5, bundle:Landroid/os/Bundle;
    const-string v23, "autodiscover_error_code"

    const/16 v24, -0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 803
    :try_start_0
    const-string v23, "UTF-8"

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 804
    const-string v23, "UTF-8"

    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 805
    const/16 v23, 0x0

    const-string v24, "Autodiscover"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 806
    const/16 v23, 0x0

    const-string v24, "xmlns"

    const-string v25, "http://schemas.microsoft.com/exchange/autodiscover/mobilesync/requestschema/2006"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 807
    const/16 v23, 0x0

    const-string v24, "Request"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 808
    const/16 v23, 0x0

    const-string v24, "EMailAddress"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v23

    const/16 v24, 0x0

    const-string v25, "EMailAddress"

    invoke-interface/range {v23 .. v25}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 809
    const/16 v23, 0x0

    const-string v24, "AcceptableResponseSchema"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 810
    const-string v23, "http://schemas.microsoft.com/exchange/autodiscover/mobilesync/responseschema/2006"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 811
    const/16 v23, 0x0

    const-string v24, "AcceptableResponseSchema"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 812
    const/16 v23, 0x0

    const-string v24, "Request"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 813
    const/16 v23, 0x0

    const-string v24, "Autodiscover"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 814
    invoke-interface/range {v21 .. v21}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 815
    invoke-virtual/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v19

    .line 818
    .local v19, req:Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    .line 819
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exchange/EasSyncService;->mPassword:Ljava/lang/String;

    .line 821
    const/16 v23, 0x1bb

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exchange/EasSyncService;->mPort:I

    .line 822
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/exchange/EasSyncService;->mSsl:Z

    .line 825
    invoke-direct/range {p0 .. p0}, Lcom/android/exchange/EasSyncService;->cacheAuthUserAndBaseUriStrings()V

    .line 828
    const/16 v23, 0x40

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 830
    .local v4, amp:I
    if-gez v4, :cond_0

    .line 831
    new-instance v23, Landroid/os/RemoteException;

    invoke-direct/range {v23 .. v23}, Landroid/os/RemoteException;-><init>()V

    throw v23
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_5

    .line 909
    .end local v4           #amp:I
    .end local v19           #req:Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 910
    .local v9, e:Ljava/lang/IllegalArgumentException;
    const-string v23, "autodiscover_error_code"

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 923
    .end local v5           #bundle:Landroid/os/Bundle;
    .end local v9           #e:Ljava/lang/IllegalArgumentException;
    :goto_0
    return-object v5

    .line 833
    .restart local v4       #amp:I
    .restart local v5       #bundle:Landroid/os/Bundle;
    .restart local v19       #req:Ljava/lang/String;
    :cond_0
    add-int/lit8 v23, v4, 0x1

    :try_start_1
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 842
    .local v8, domain:Ljava/lang/String;
    new-instance v18, Lorg/apache/http/client/methods/HttpPost;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "https://"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "/autodiscover/autodiscover.xml"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 843
    .local v18, post:Lorg/apache/http/client/methods/HttpPost;
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/EasSyncService;->setHeaders(Lorg/apache/http/client/methods/HttpRequestBase;Z)V

    .line 844
    const-string v23, "Content-Type"

    const-string v24, "text/xml"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/message/AbstractHttpMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    new-instance v23, Lorg/apache/http/entity/StringEntity;

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 846
    const/16 v23, 0x7530

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/exchange/EasSyncService;->getHttpClient(I)Lorg/apache/http/client/HttpClient;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v6

    .line 849
    .local v6, client:Lorg/apache/http/client/HttpClient;
    const/16 v23, 0x1

    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v23

    invoke-direct {v0, v6, v1, v2}, Lcom/android/exchange/EasSyncService;->postAutodiscover(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpPost;Z)Lcom/android/exchange/EasResponse;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_5

    move-result-object v20

    .line 861
    .local v20, resp:Lcom/android/exchange/EasResponse;
    :goto_1
    :try_start_3
    invoke-virtual/range {v20 .. v20}, Lcom/android/exchange/EasResponse;->getStatus()I

    move-result v7

    .line 862
    .local v7, code:I
    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Code: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_3

    .line 863
    const/16 v23, 0xc8

    move/from16 v0, v23

    if-eq v7, v0, :cond_1

    const/16 v23, 0x0

    .line 905
    :try_start_4
    invoke-virtual/range {v20 .. v20}, Lcom/android/exchange/EasResponse;->close()V

    move-object/from16 v5, v23

    goto/16 :goto_0

    .line 850
    .end local v7           #code:I
    .end local v20           #resp:Lcom/android/exchange/EasResponse;
    :catch_1
    move-exception v10

    .line 851
    .local v10, e1:Ljava/io/IOException;
    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, "IOException in autodiscover; trying alternate address"

    aput-object v25, v23, v24

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 853
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "https://autodiscover."

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "/autodiscover/autodiscover.xml"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpRequestBase;->setURI(Ljava/net/URI;)V

    .line 856
    const/16 v23, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v23

    invoke-direct {v0, v6, v1, v2}, Lcom/android/exchange/EasSyncService;->postAutodiscover(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpPost;Z)Lcom/android/exchange/EasResponse;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_5

    move-result-object v20

    .restart local v20       #resp:Lcom/android/exchange/EasResponse;
    goto/16 :goto_1

    .line 865
    .end local v10           #e1:Ljava/io/IOException;
    .restart local v7       #code:I
    :cond_1
    :try_start_5
    invoke-virtual/range {v20 .. v20}, Lcom/android/exchange/EasResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v14

    .line 868
    .local v14, is:Ljava/io/InputStream;
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v11

    .line 869
    .local v11, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v11}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v17

    .line 870
    .local v17, parser:Lorg/xmlpull/v1/XmlPullParser;
    const-string v23, "UTF-8"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-interface {v0, v14, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 871
    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v22

    .line 872
    .local v22, type:I
    if-nez v22, :cond_2

    .line 873
    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v22

    .line 874
    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_2

    .line 875
    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 876
    .local v15, name:Ljava/lang/String;
    const-string v23, "Autodiscover"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    .line 877
    new-instance v13, Lcom/android/emailcommon/provider/HostAuth;

    invoke-direct {v13}, Lcom/android/emailcommon/provider/HostAuth;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_3

    .line 878
    .end local v12           #hostAuth:Lcom/android/emailcommon/provider/HostAuth;
    .local v13, hostAuth:Lcom/android/emailcommon/provider/HostAuth;
    :try_start_6
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v13}, Lcom/android/exchange/EasSyncService;->parseAutodiscover(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/HostAuth;)V

    .line 880
    iget-object v0, v13, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_3

    .line 884
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iput-object v0, v13, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    .line 885
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mPassword:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iput-object v0, v13, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    .line 888
    const/16 v23, 0x1bb

    move/from16 v0, v23

    iput v0, v13, Lcom/android/emailcommon/provider/HostAuth;->mPort:I

    .line 889
    const-string v23, "eas"

    move-object/from16 v0, v23

    iput-object v0, v13, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    .line 890
    const/16 v23, 0x5

    move/from16 v0, v23

    iput v0, v13, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    .line 892
    const-string v23, "autodiscover_host_auth"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0, v13}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_6

    move-object v12, v13

    .line 905
    .end local v13           #hostAuth:Lcom/android/emailcommon/provider/HostAuth;
    .end local v15           #name:Ljava/lang/String;
    .restart local v12       #hostAuth:Lcom/android/emailcommon/provider/HostAuth;
    :cond_2
    :goto_2
    :try_start_7
    invoke-virtual/range {v20 .. v20}, Lcom/android/exchange/EasResponse;->close()V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_7 .. :try_end_7} :catch_5

    goto/16 :goto_0

    .line 912
    .end local v4           #amp:I
    .end local v6           #client:Lorg/apache/http/client/HttpClient;
    .end local v7           #code:I
    .end local v8           #domain:Ljava/lang/String;
    .end local v11           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v14           #is:Ljava/io/InputStream;
    .end local v17           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v18           #post:Lorg/apache/http/client/methods/HttpPost;
    .end local v19           #req:Ljava/lang/String;
    .end local v20           #resp:Lcom/android/exchange/EasResponse;
    .end local v22           #type:I
    :catch_2
    move-exception v9

    .line 913
    .local v9, e:Ljava/lang/IllegalStateException;
    const-string v23, "autodiscover_error_code"

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 895
    .end local v9           #e:Ljava/lang/IllegalStateException;
    .end local v12           #hostAuth:Lcom/android/emailcommon/provider/HostAuth;
    .restart local v4       #amp:I
    .restart local v6       #client:Lorg/apache/http/client/HttpClient;
    .restart local v7       #code:I
    .restart local v8       #domain:Ljava/lang/String;
    .restart local v11       #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v13       #hostAuth:Lcom/android/emailcommon/provider/HostAuth;
    .restart local v14       #is:Ljava/io/InputStream;
    .restart local v15       #name:Ljava/lang/String;
    .restart local v17       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v18       #post:Lorg/apache/http/client/methods/HttpPost;
    .restart local v19       #req:Ljava/lang/String;
    .restart local v20       #resp:Lcom/android/exchange/EasResponse;
    .restart local v22       #type:I
    :cond_3
    :try_start_8
    const-string v23, "autodiscover_error_code"

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_6

    move-object v12, v13

    .end local v13           #hostAuth:Lcom/android/emailcommon/provider/HostAuth;
    .restart local v12       #hostAuth:Lcom/android/emailcommon/provider/HostAuth;
    goto :goto_2

    .line 901
    .end local v7           #code:I
    .end local v11           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v14           #is:Ljava/io/InputStream;
    .end local v15           #name:Ljava/lang/String;
    .end local v17           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v22           #type:I
    :catch_3
    move-exception v23

    .line 905
    :goto_3
    :try_start_9
    invoke-virtual/range {v20 .. v20}, Lcom/android/exchange/EasResponse;->close()V
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_9 .. :try_end_9} :catch_5

    goto/16 :goto_0

    .line 915
    .end local v4           #amp:I
    .end local v6           #client:Lorg/apache/http/client/HttpClient;
    .end local v8           #domain:Ljava/lang/String;
    .end local v18           #post:Lorg/apache/http/client/methods/HttpPost;
    .end local v19           #req:Ljava/lang/String;
    .end local v20           #resp:Lcom/android/exchange/EasResponse;
    :catch_4
    move-exception v9

    .line 916
    .local v9, e:Ljava/io/IOException;
    const-string v23, "IOException in Autodiscover"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v9}, Lcom/android/exchange/AbstractSyncService;->userLog(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 917
    const-string v23, "autodiscover_error_code"

    const/16 v24, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 905
    .end local v9           #e:Ljava/io/IOException;
    .restart local v4       #amp:I
    .restart local v6       #client:Lorg/apache/http/client/HttpClient;
    .restart local v8       #domain:Ljava/lang/String;
    .restart local v18       #post:Lorg/apache/http/client/methods/HttpPost;
    .restart local v19       #req:Ljava/lang/String;
    .restart local v20       #resp:Lcom/android/exchange/EasResponse;
    :catchall_0
    move-exception v23

    :goto_4
    :try_start_a
    invoke-virtual/range {v20 .. v20}, Lcom/android/exchange/EasResponse;->close()V

    throw v23
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_a .. :try_end_a} :catch_5

    .line 919
    .end local v4           #amp:I
    .end local v6           #client:Lorg/apache/http/client/HttpClient;
    .end local v8           #domain:Ljava/lang/String;
    .end local v18           #post:Lorg/apache/http/client/methods/HttpPost;
    .end local v19           #req:Ljava/lang/String;
    .end local v20           #resp:Lcom/android/exchange/EasResponse;
    :catch_5
    move-exception v9

    .line 920
    .local v9, e:Lcom/android/emailcommon/mail/MessagingException;
    const-string v23, "autodiscover_error_code"

    const/16 v24, 0xb

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 905
    .end local v9           #e:Lcom/android/emailcommon/mail/MessagingException;
    .end local v12           #hostAuth:Lcom/android/emailcommon/provider/HostAuth;
    .restart local v4       #amp:I
    .restart local v6       #client:Lorg/apache/http/client/HttpClient;
    .restart local v7       #code:I
    .restart local v8       #domain:Ljava/lang/String;
    .restart local v11       #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v13       #hostAuth:Lcom/android/emailcommon/provider/HostAuth;
    .restart local v14       #is:Ljava/io/InputStream;
    .restart local v15       #name:Ljava/lang/String;
    .restart local v17       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v18       #post:Lorg/apache/http/client/methods/HttpPost;
    .restart local v19       #req:Ljava/lang/String;
    .restart local v20       #resp:Lcom/android/exchange/EasResponse;
    .restart local v22       #type:I
    :catchall_1
    move-exception v23

    move-object v12, v13

    .end local v13           #hostAuth:Lcom/android/emailcommon/provider/HostAuth;
    .restart local v12       #hostAuth:Lcom/android/emailcommon/provider/HostAuth;
    goto :goto_4

    .line 901
    .end local v12           #hostAuth:Lcom/android/emailcommon/provider/HostAuth;
    .restart local v13       #hostAuth:Lcom/android/emailcommon/provider/HostAuth;
    :catch_6
    move-exception v23

    move-object v12, v13

    .end local v13           #hostAuth:Lcom/android/emailcommon/provider/HostAuth;
    .restart local v12       #hostAuth:Lcom/android/emailcommon/provider/HostAuth;
    goto :goto_3
.end method

.method public tryProvision(Lcom/android/exchange/EasSyncService;)Z
    .locals 12
    .parameter "svc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1663
    iget-object v8, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    const-string v9, "try to provision..."

    invoke-static {v8, v9}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1664
    invoke-virtual {p0, p1}, Lcom/android/exchange/EasSyncService;->canProvision(Lcom/android/exchange/EasSyncService;)Lcom/android/exchange/adapter/ProvisionParser;

    move-result-object v4

    .line 1665
    .local v4, pp:Lcom/android/exchange/adapter/ProvisionParser;
    if-nez v4, :cond_1

    .line 1742
    :cond_0
    :goto_0
    return v6

    .line 1668
    :cond_1
    iget-object v1, p1, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    .line 1669
    .local v1, context:Landroid/content/Context;
    iget-object v0, p1, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    .line 1671
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    invoke-virtual {v4}, Lcom/android/exchange/adapter/ProvisionParser;->getPolicy()Lcom/android/emailcommon/provider/Policy;

    move-result-object v3

    .line 1672
    .local v3, policy:Lcom/android/emailcommon/provider/Policy;
    const/4 v2, 0x0

    .line 1674
    .local v2, oldPolicy:Lcom/android/emailcommon/provider/Policy;
    iget-object v8, p1, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v8, v8, Lcom/android/emailcommon/provider/Account;->mPolicyKey:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_2

    .line 1675
    iget-wide v8, v0, Lcom/android/emailcommon/provider/Account;->mPolicyKey:J

    invoke-static {v1, v8, v9}, Lcom/android/emailcommon/provider/Policy;->restorePolicyWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Policy;

    move-result-object v2

    .line 1679
    :cond_2
    iget-wide v8, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v10, 0x0

    invoke-static {v1, v8, v9, v3, v10}, Lcom/android/emailcommon/service/PolicyServiceProxy;->setAccountPolicy(Landroid/content/Context;JLcom/android/emailcommon/provider/Policy;Ljava/lang/String;)V

    .line 1681
    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/Account;->refresh(Landroid/content/Context;)V

    .line 1682
    invoke-virtual {v4}, Lcom/android/exchange/adapter/ProvisionParser;->getRemoteWipe()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1684
    const-string v8, "!!! Remote wipe request received"

    invoke-static {v8}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    .line 1686
    invoke-static {v1, v0, v7}, Lcom/android/emailcommon/service/PolicyServiceProxy;->setAccountHoldFlag(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Z)V

    .line 1688
    iget-wide v7, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v7, v8}, Lcom/android/exchange/ExchangeService;->stopNonAccountMailboxSyncsForAccount(J)V

    .line 1693
    :try_start_0
    const-string v7, "!!! Acknowledging remote wipe to server"

    invoke-static {v7}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    .line 1694
    invoke-virtual {v4}, Lcom/android/exchange/adapter/ProvisionParser;->getSecuritySyncKey()Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v7}, Lcom/android/exchange/EasSyncService;->acknowledgeRemoteWipe(Lcom/android/exchange/EasSyncService;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1700
    :goto_1
    const-string v7, "!!! Executing remote wipe"

    invoke-static {v7}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    .line 1701
    invoke-static {v1}, Lcom/android/emailcommon/service/PolicyServiceProxy;->remoteWipe(Landroid/content/Context;)V

    goto :goto_0

    .line 1703
    :cond_3
    invoke-virtual {v4}, Lcom/android/exchange/adapter/ProvisionParser;->hasSupportablePolicySet()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {v1, v3}, Lcom/android/emailcommon/service/PolicyServiceProxy;->isActive(Landroid/content/Context;Lcom/android/emailcommon/provider/Policy;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1708
    iget-object v8, p1, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    const-wide/high16 v10, 0x402c

    cmpl-double v8, v8, v10

    if-nez v8, :cond_6

    .line 1709
    invoke-virtual {v4}, Lcom/android/exchange/adapter/ProvisionParser;->getSecuritySyncKey()Ljava/lang/String;

    move-result-object v5

    .line 1714
    .local v5, securitySyncKey:Ljava/lang/String;
    :goto_2
    iget-object v8, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    const-string v9, "The device is already at the required security level"

    invoke-static {v8, v9}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1715
    if-eqz v5, :cond_0

    .line 1716
    iget-object v6, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    const-string v8, "Got the latest policy key from server"

    invoke-static {v6, v8}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1718
    if-eqz v2, :cond_5

    .line 1719
    iget-boolean v6, v2, Lcom/android/emailcommon/provider/Policy;->mDontAllowAttachments:Z

    iget-boolean v8, v3, Lcom/android/emailcommon/provider/Policy;->mDontAllowAttachments:Z

    if-ne v6, v8, :cond_4

    iget v6, v2, Lcom/android/emailcommon/provider/Policy;->mMaxAttachmentSize:I

    iget v8, v3, Lcom/android/emailcommon/provider/Policy;->mMaxAttachmentSize:I

    if-eq v6, v8, :cond_5

    .line 1721
    :cond_4
    invoke-static {v1, v0, v3}, Lcom/android/emailcommon/provider/Policy;->setAttachmentFlagsForNewPolicy(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Policy;)V

    .line 1726
    :cond_5
    iget-object v6, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v6, v6, Lcom/android/emailcommon/provider/Account;->mSecuritySyncKey:Ljava/lang/String;

    invoke-static {v6, v5}, Lcom/android/emailcommon/utility/TextUtilities;->stringOrNullEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 1728
    iget-object v6, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iput-object v5, v6, Lcom/android/emailcommon/provider/Account;->mSecuritySyncKey:Ljava/lang/String;

    .line 1729
    iget-object v6, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "tryProvision Account updated with new securitySyncKey: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1736
    :goto_3
    iget-wide v8, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v1, v8, v9, v3, v5}, Lcom/android/emailcommon/service/PolicyServiceProxy;->setAccountPolicy(Landroid/content/Context;JLcom/android/emailcommon/provider/Policy;Ljava/lang/String;)V

    .line 1738
    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->releaseSecurityHold(Lcom/android/emailcommon/provider/Account;)V

    move v6, v7

    .line 1739
    goto/16 :goto_0

    .line 1711
    .end local v5           #securitySyncKey:Ljava/lang/String;
    :cond_6
    invoke-virtual {v4}, Lcom/android/exchange/adapter/ProvisionParser;->getSecuritySyncKey()Ljava/lang/String;

    move-result-object v8

    const-string v9, "1"

    invoke-static {p1, v8, v9}, Lcom/android/exchange/EasSyncService;->acknowledgeProvision(Lcom/android/exchange/EasSyncService;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #securitySyncKey:Ljava/lang/String;
    goto :goto_2

    .line 1732
    :cond_7
    iget-object v6, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    const-string v8, "tryProvision Account not chenged"

    invoke-static {v6, v8}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1695
    .end local v5           #securitySyncKey:Ljava/lang/String;
    :catch_0
    move-exception v7

    goto/16 :goto_1
.end method

.method public validateAccount(Lcom/android/emailcommon/provider/HostAuth;Landroid/content/Context;)Landroid/os/Bundle;
    .locals 23
    .parameter "hostAuth"
    .parameter "context"

    .prologue
    .line 545
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 546
    .local v9, bundle:Landroid/os/Bundle;
    const/16 v18, -0x1

    .line 548
    .local v18, resultCode:I
    const/4 v3, 0x6

    :try_start_0
    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "Testing EAS: "

    aput-object v5, v4, v3

    const/4 v3, 0x1

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    aput-object v5, v4, v3

    const/4 v3, 0x2

    const-string v5, ", "

    aput-object v5, v4, v3

    const/4 v3, 0x3

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    aput-object v5, v4, v3

    const/4 v3, 0x4

    const-string v5, ", ssl = "

    aput-object v5, v4, v3

    const/4 v5, 0x5

    invoke-virtual/range {p1 .. p1}, Lcom/android/emailcommon/provider/HostAuth;->shouldUseSsl()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "1"

    :goto_0
    aput-object v3, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 550
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    .line 551
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/exchange/EasSyncService;->mHostAddress:Ljava/lang/String;

    .line 552
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    .line 553
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/exchange/EasSyncService;->mPassword:Ljava/lang/String;

    .line 555
    invoke-virtual/range {p0 .. p1}, Lcom/android/exchange/EasSyncService;->setConnectionParameters(Lcom/android/emailcommon/provider/HostAuth;)V

    .line 556
    invoke-static/range {p2 .. p2}, Lcom/android/exchange/ExchangeService;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;

    .line 557
    new-instance v3, Lcom/android/emailcommon/provider/Account;

    invoke-direct {v3}, Lcom/android/emailcommon/provider/Account;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    .line 558
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    .line 559
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/EasSyncService;->sendHttpClientOptions()Lcom/android/exchange/EasResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v17

    .line 561
    .local v17, resp:Lcom/android/exchange/EasResponse;
    :try_start_1
    invoke-virtual/range {v17 .. v17}, Lcom/android/exchange/EasResponse;->getStatus()I

    move-result v11

    .line 562
    .local v11, code:I
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Validation (OPTIONS) response: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 563
    const/16 v3, 0xc8

    if-ne v11, v3, :cond_e

    .line 565
    const-string v3, "MS-ASProtocolCommands"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/android/exchange/EasResponse;->getHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v12

    .line 566
    .local v12, commands:Lorg/apache/http/Header;
    const-string v3, "ms-asprotocolversions"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/android/exchange/EasResponse;->getHeader(Ljava/lang/String;)Lorg/apache/http/Header;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v22

    .line 569
    .local v22, versions:Lorg/apache/http/Header;
    if-eqz v12, :cond_0

    if-nez v22, :cond_2

    .line 570
    :cond_0
    const/4 v3, 0x1

    :try_start_2
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "OPTIONS response without commands or versions"

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 572
    new-instance v3, Lcom/android/emailcommon/mail/MessagingException;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_2 .. :try_end_2} :catch_1

    .line 578
    :catch_0
    move-exception v13

    .line 579
    .local v13, e:Lcom/android/emailcommon/mail/MessagingException;
    :try_start_3
    const-string v3, "validate_result_code"

    const/16 v4, 0x9

    invoke-virtual {v9, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_3 .. :try_end_3} :catch_1

    .line 686
    :try_start_4
    invoke-virtual/range {v17 .. v17}, Lcom/android/exchange/EasResponse;->close()V

    .line 703
    .end local v9           #bundle:Landroid/os/Bundle;
    .end local v11           #code:I
    .end local v12           #commands:Lorg/apache/http/Header;
    .end local v13           #e:Lcom/android/emailcommon/mail/MessagingException;
    .end local v17           #resp:Lcom/android/exchange/EasResponse;
    .end local v22           #versions:Lorg/apache/http/Header;
    :goto_1
    return-object v9

    .line 548
    .restart local v9       #bundle:Landroid/os/Bundle;
    :cond_1
    const-string v3, "0"
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    .line 574
    .restart local v11       #code:I
    .restart local v12       #commands:Lorg/apache/http/Header;
    .restart local v17       #resp:Lcom/android/exchange/EasResponse;
    .restart local v22       #versions:Lorg/apache/http/Header;
    :cond_2
    :try_start_5
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/EasSyncService;->setupProtocolVersion(Lcom/android/exchange/EasSyncService;Lorg/apache/http/Header;)V

    .line 575
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "use protocol version: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 576
    const-string v3, "validate_protocol_version"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    invoke-virtual {v9, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_5 .. :try_end_5} :catch_1

    .line 585
    const/4 v3, 0x1

    :try_start_6
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Try folder sync"

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 587
    const-string v21, "0"

    .line 588
    .local v21, syncKey:Ljava/lang/String;
    const-wide/16 v4, -0x1

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    move-object/from16 v3, p2

    invoke-static/range {v3 .. v8}, Lcom/android/emailcommon/utility/Utility;->findExistingAccount(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/emailcommon/provider/Account;

    move-result-object v14

    .line 590
    .local v14, existingAccount:Lcom/android/emailcommon/provider/Account;
    if-eqz v14, :cond_3

    iget-object v3, v14, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 591
    iget-object v0, v14, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 593
    :cond_3
    new-instance v19, Lcom/android/exchange/adapter/Serializer;

    invoke-direct/range {v19 .. v19}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 594
    .local v19, s:Lcom/android/exchange/adapter/Serializer;
    const/16 v3, 0x1d6

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v3

    const/16 v4, 0x1d2

    invoke-virtual {v3, v4}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 596
    const-string v3, "FolderSync"

    invoke-virtual/range {v19 .. v19}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;[B)Lcom/android/exchange/EasResponse;

    move-result-object v17

    .line 597
    invoke-virtual/range {v17 .. v17}, Lcom/android/exchange/EasResponse;->getStatus()I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_6 .. :try_end_6} :catch_1

    move-result v11

    .line 599
    const/16 v3, 0x193

    if-ne v11, v3, :cond_4

    .line 602
    const/16 v18, 0xe

    .line 686
    .end local v12           #commands:Lorg/apache/http/Header;
    .end local v14           #existingAccount:Lcom/android/emailcommon/provider/Account;
    .end local v19           #s:Lcom/android/exchange/adapter/Serializer;
    .end local v21           #syncKey:Ljava/lang/String;
    .end local v22           #versions:Lorg/apache/http/Header;
    :goto_2
    :try_start_7
    invoke-virtual/range {v17 .. v17}, Lcom/android/exchange/EasResponse;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_7 .. :try_end_7} :catch_3

    .line 702
    .end local v11           #code:I
    .end local v17           #resp:Lcom/android/exchange/EasResponse;
    :goto_3
    const-string v3, "validate_result_code"

    move/from16 v0, v18

    invoke-virtual {v9, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 603
    .restart local v11       #code:I
    .restart local v12       #commands:Lorg/apache/http/Header;
    .restart local v14       #existingAccount:Lcom/android/emailcommon/provider/Account;
    .restart local v17       #resp:Lcom/android/exchange/EasResponse;
    .restart local v19       #s:Lcom/android/exchange/adapter/Serializer;
    .restart local v21       #syncKey:Ljava/lang/String;
    .restart local v22       #versions:Lorg/apache/http/Header;
    :cond_4
    :try_start_8
    invoke-static {v11}, Lcom/android/exchange/EasResponse;->isProvisionError(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 605
    new-instance v3, Lcom/android/exchange/CommandStatusException;

    const/16 v4, 0x8e

    invoke-direct {v3, v4}, Lcom/android/exchange/CommandStatusException;-><init>(I)V

    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_8 .. :try_end_8} :catch_1

    .line 651
    .end local v11           #code:I
    .end local v12           #commands:Lorg/apache/http/Header;
    .end local v14           #existingAccount:Lcom/android/emailcommon/provider/Account;
    .end local v19           #s:Lcom/android/exchange/adapter/Serializer;
    .end local v21           #syncKey:Ljava/lang/String;
    .end local v22           #versions:Lorg/apache/http/Header;
    :catch_1
    move-exception v13

    .line 652
    .local v13, e:Lcom/android/exchange/CommandStatusException;
    :try_start_9
    iget v0, v13, Lcom/android/exchange/CommandStatusException;->mStatus:I

    move/from16 v20, v0

    .line 653
    .local v20, status:I
    invoke-static/range {v20 .. v20}, Lcom/android/exchange/CommandStatusException$CommandStatus;->isNeedsProvisioning(I)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 655
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->canProvision(Lcom/android/exchange/EasSyncService;)Lcom/android/exchange/adapter/ProvisionParser;

    move-result-object v16

    .line 656
    .local v16, pp:Lcom/android/exchange/adapter/ProvisionParser;
    if-eqz v16, :cond_13

    invoke-virtual/range {v16 .. v16}, Lcom/android/exchange/adapter/ProvisionParser;->hasSupportablePolicySet()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 658
    const/16 v18, 0x7

    .line 659
    const-string v3, "validate_policy_set"

    invoke-virtual/range {v16 .. v16}, Lcom/android/exchange/adapter/ProvisionParser;->getPolicy()Lcom/android/emailcommon/provider/Policy;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 661
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const-wide/high16 v5, 0x402c

    cmpl-double v3, v3, v5

    if-nez v3, :cond_5

    .line 662
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-virtual/range {v16 .. v16}, Lcom/android/exchange/adapter/ProvisionParser;->getSecuritySyncKey()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/emailcommon/provider/Account;->mSecuritySyncKey:Ljava/lang/String;

    .line 663
    invoke-direct/range {p0 .. p0}, Lcom/android/exchange/EasSyncService;->sendSettings()Z

    move-result v3

    if-nez v3, :cond_5

    .line 664
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Denied access: "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static/range {v20 .. v20}, Lcom/android/exchange/CommandStatusException$CommandStatus;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 665
    const/16 v18, 0xe

    .line 686
    .end local v16           #pp:Lcom/android/exchange/adapter/ProvisionParser;
    :cond_5
    :goto_4
    :try_start_a
    invoke-virtual/range {v17 .. v17}, Lcom/android/exchange/EasResponse;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_3

    .line 688
    .end local v13           #e:Lcom/android/exchange/CommandStatusException;
    .end local v17           #resp:Lcom/android/exchange/EasResponse;
    .end local v20           #status:I
    :catch_2
    move-exception v13

    .line 689
    .local v13, e:Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v10

    .line 690
    .local v10, cause:Ljava/lang/Throwable;
    if-eqz v10, :cond_6

    instance-of v3, v10, Ljava/security/cert/CertificateException;

    if-eqz v3, :cond_6

    .line 692
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "CertificateException caught: "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v13}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 693
    const/16 v18, 0x4

    .line 695
    :cond_6
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "IOException caught: "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v13}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 696
    const/16 v18, 0x1

    .line 701
    goto/16 :goto_3

    .line 606
    .end local v10           #cause:Ljava/lang/Throwable;
    .end local v13           #e:Ljava/io/IOException;
    .restart local v11       #code:I
    .restart local v12       #commands:Lorg/apache/http/Header;
    .restart local v14       #existingAccount:Lcom/android/emailcommon/provider/Account;
    .restart local v17       #resp:Lcom/android/exchange/EasResponse;
    .restart local v19       #s:Lcom/android/exchange/adapter/Serializer;
    .restart local v21       #syncKey:Ljava/lang/String;
    .restart local v22       #versions:Lorg/apache/http/Header;
    :cond_7
    const/16 v3, 0x194

    if-ne v11, v3, :cond_8

    .line 608
    const/16 v18, 0x9

    goto/16 :goto_2

    .line 609
    :cond_8
    const/16 v3, 0x191

    if-ne v11, v3, :cond_a

    .line 610
    :try_start_b
    invoke-virtual/range {v17 .. v17}, Lcom/android/exchange/EasResponse;->isMissingCertificate()Z

    move-result v3

    if-eqz v3, :cond_9

    const/16 v18, 0x10

    :goto_5
    goto/16 :goto_2

    :cond_9
    const/16 v18, 0x5

    goto :goto_5

    .line 613
    :cond_a
    const/16 v3, 0xc8

    if-eq v11, v3, :cond_c

    .line 614
    const/16 v3, 0x1c3

    if-ne v11, v3, :cond_b

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/exchange/EasSyncService;->mRedirectCount:I

    add-int/lit8 v4, v3, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/exchange/EasSyncService;->mRedirectCount:I

    const/4 v4, 0x3

    if-ge v3, v4, :cond_b

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/EasSyncService;->getValidateRedirect(Lcom/android/exchange/EasResponse;Lcom/android/emailcommon/provider/HostAuth;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 616
    invoke-virtual/range {p0 .. p2}, Lcom/android/exchange/EasSyncService;->validateAccount(Lcom/android/emailcommon/provider/HostAuth;Landroid/content/Context;)Landroid/os/Bundle;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_b .. :try_end_b} :catch_1

    move-result-object v3

    .line 686
    :try_start_c
    invoke-virtual/range {v17 .. v17}, Lcom/android/exchange/EasResponse;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_c .. :try_end_c} :catch_3

    move-object v9, v3

    goto/16 :goto_1

    .line 619
    :cond_b
    :try_start_d
    const-string v3, "Unexpected response for FolderSync: "

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v11}, Lcom/android/exchange/AbstractSyncService;->userLog(Ljava/lang/String;I)V

    .line 620
    const/16 v18, 0x0

    goto/16 :goto_2

    .line 624
    :cond_c
    invoke-virtual/range {v17 .. v17}, Lcom/android/exchange/EasResponse;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_d

    .line 625
    invoke-virtual/range {v17 .. v17}, Lcom/android/exchange/EasResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v15

    .line 629
    .local v15, is:Ljava/io/InputStream;
    new-instance v3, Lcom/android/exchange/adapter/FolderSyncParser;

    new-instance v4, Lcom/android/exchange/adapter/AccountSyncAdapter;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/exchange/adapter/AccountSyncAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V

    const/4 v5, 0x1

    invoke-direct {v3, v15, v4, v5}, Lcom/android/exchange/adapter/FolderSyncParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;Z)V

    invoke-virtual {v3}, Lcom/android/exchange/adapter/FolderSyncParser;->parse()Z

    .line 631
    .end local v15           #is:Ljava/io/InputStream;
    :cond_d
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Validation successful"

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_d .. :try_end_d} :catch_1

    goto/16 :goto_2

    .line 686
    .end local v11           #code:I
    .end local v12           #commands:Lorg/apache/http/Header;
    .end local v14           #existingAccount:Lcom/android/emailcommon/provider/Account;
    .end local v19           #s:Lcom/android/exchange/adapter/Serializer;
    .end local v21           #syncKey:Ljava/lang/String;
    .end local v22           #versions:Lorg/apache/http/Header;
    :catchall_0
    move-exception v3

    :try_start_e
    invoke-virtual/range {v17 .. v17}, Lcom/android/exchange/EasResponse;->close()V

    throw v3
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_e .. :try_end_e} :catch_3

    .line 697
    .end local v17           #resp:Lcom/android/exchange/EasResponse;
    :catch_3
    move-exception v13

    .line 699
    .local v13, e:Ljava/security/cert/CertificateException;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "CertificateException caught: "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v13}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 700
    const/16 v18, 0x11

    goto/16 :goto_3

    .line 633
    .end local v13           #e:Ljava/security/cert/CertificateException;
    .restart local v11       #code:I
    .restart local v17       #resp:Lcom/android/exchange/EasResponse;
    :cond_e
    :try_start_f
    invoke-static {v11}, Lcom/android/exchange/EasResponse;->isAuthError(I)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 634
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Authentication failed"

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 635
    invoke-virtual/range {v17 .. v17}, Lcom/android/exchange/EasResponse;->isMissingCertificate()Z

    move-result v3

    if-eqz v3, :cond_f

    const/16 v18, 0x10

    :goto_6
    goto/16 :goto_2

    :cond_f
    const/16 v18, 0x5

    goto :goto_6

    .line 638
    :cond_10
    const/16 v3, 0x1f4

    if-ne v11, v3, :cond_11

    .line 640
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Internal server error"

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 641
    const/16 v18, 0xd

    goto/16 :goto_2

    .line 643
    :cond_11
    const/16 v3, 0x1c3

    if-ne v11, v3, :cond_12

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/exchange/EasSyncService;->mRedirectCount:I

    add-int/lit8 v4, v3, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/exchange/EasSyncService;->mRedirectCount:I

    const/4 v4, 0x3

    if-ge v3, v4, :cond_12

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/EasSyncService;->getValidateRedirect(Lcom/android/exchange/EasResponse;Lcom/android/emailcommon/provider/HostAuth;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 645
    invoke-virtual/range {p0 .. p2}, Lcom/android/exchange/EasSyncService;->validateAccount(Lcom/android/emailcommon/provider/HostAuth;Landroid/content/Context;)Landroid/os/Bundle;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_f .. :try_end_f} :catch_1

    move-result-object v3

    .line 686
    :try_start_10
    invoke-virtual/range {v17 .. v17}, Lcom/android/exchange/EasResponse;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_10 .. :try_end_10} :catch_3

    move-object v9, v3

    goto/16 :goto_1

    .line 648
    :cond_12
    :try_start_11
    const-string v3, "Validation failed, reporting I/O error: "

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v11}, Lcom/android/exchange/AbstractSyncService;->userLog(Ljava/lang/String;I)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_11 .. :try_end_11} :catch_1

    .line 649
    const/16 v18, 0x1

    goto/16 :goto_2

    .line 670
    .end local v11           #code:I
    .local v13, e:Lcom/android/exchange/CommandStatusException;
    .restart local v16       #pp:Lcom/android/exchange/adapter/ProvisionParser;
    .restart local v20       #status:I
    :cond_13
    const/16 v18, 0x8

    .line 672
    :try_start_12
    const-string v4, "validate_policy_set"

    if-nez v16, :cond_14

    const/4 v3, 0x0

    :goto_7
    invoke-virtual {v9, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto/16 :goto_4

    :cond_14
    invoke-virtual/range {v16 .. v16}, Lcom/android/exchange/adapter/ProvisionParser;->getPolicy()Lcom/android/emailcommon/provider/Policy;

    move-result-object v3

    goto :goto_7

    .line 675
    .end local v16           #pp:Lcom/android/exchange/adapter/ProvisionParser;
    :cond_15
    invoke-static/range {v20 .. v20}, Lcom/android/exchange/CommandStatusException$CommandStatus;->isDeniedAccess(I)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 676
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Denied access: "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static/range {v20 .. v20}, Lcom/android/exchange/CommandStatusException$CommandStatus;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 677
    const/16 v18, 0xe

    goto/16 :goto_4

    .line 678
    :cond_16
    invoke-static/range {v20 .. v20}, Lcom/android/exchange/CommandStatusException$CommandStatus;->isTransientError(I)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 679
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Transient error: "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static/range {v20 .. v20}, Lcom/android/exchange/CommandStatusException$CommandStatus;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 680
    const/16 v18, 0x1

    goto/16 :goto_4

    .line 682
    :cond_17
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Unexpected response: "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static/range {v20 .. v20}, Lcom/android/exchange/CommandStatusException$CommandStatus;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 683
    const/16 v18, 0x0

    goto/16 :goto_4
.end method
