.class public Ltmsdk/fg/tcc/LoginUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EM_LOGIN_RES_ACCOUNT_BLACKLISTED:I = 0x21

.field public static final EM_LOGIN_RES_ACCOUNT_FROZEN:I = 0x20

.field public static final EM_LOGIN_RES_ALERT_DNA:I = 0x25

.field public static final EM_LOGIN_RES_CLIENT_PARAM_ERROR:I = 0xcf

.field public static final EM_LOGIN_RES_FAIL:I = 0xc9

.field public static final EM_LOGIN_RES_FREQ_LIMIT:I = 0xca

.field public static final EM_LOGIN_RES_LOGIN_OK:I = 0x0

.field public static final EM_LOGIN_RES_NEED_PIM_PASSWORD:I = 0x3eb

.field public static final EM_LOGIN_RES_NEED_VERIFY_IMAGE:I = 0x65

.field public static final EM_LOGIN_RES_NEED_VERIFY_SMS:I = 0x66

.field public static final EM_LOGIN_RES_NETWORK_FAIL:I = -0x64

.field public static final EM_LOGIN_RES_NOT_ALLOWED:I = 0xd0

.field public static final EM_LOGIN_RES_NOT_WHITELISTED:I = 0x3e9

.field public static final EM_LOGIN_RES_OTHER_FAIL:I = -0x65

.field public static final EM_LOGIN_RES_QQ_NUM_NOT_EXIST:I = 0x12

.field public static final EM_LOGIN_RES_RESTRICTED_IP:I = 0x14

.field public static final EM_LOGIN_RES_SAFE_SESSION:I = 0x67

.field public static final EM_LOGIN_RES_SERVICE_BLOCK:I = 0x28

.field public static final EM_LOGIN_RES_SERVICE_MATURITY:I = 0x29

.field public static final EM_LOGIN_RES_SYNC_SERVER_LIMIT:I = 0x3ea

.field public static final EM_LOGIN_RES_SYSTEM_ERROR:I = 0xff

.field public static final EM_LOGIN_RES_SYSTEM_MAINTENANCE:I = 0xfe

.field public static final EM_LOGIN_RES_USER_STOP:I = -0x3e8

.field public static final EM_LOGIN_RES_WRONG_ID:I = 0xcc

.field public static final EM_LOGIN_RES_WRONG_PASSWORD:I = 0xcb

.field public static final EM_LOGIN_RES_WRONG_PASSWORD_AND_ALLOWED_IP:I = 0x13

.field public static final EM_LOGIN_RES_WRONG_PASSWORD_AND_RESTRICTED_IP:I = 0x15

.field public static final EM_LOGIN_RES_WRONG_PIM_PASSWORD:I = 0x3ec

.field public static final EM_LOGIN_RES_WRONG_QQ_NUM:I = 0xcd

.field public static final EM_LOGIN_RES_WRONG_SID:I = 0xce

.field public static final EM_LOGIN_RES_WRONG_VERIFY_CODE:I = 0xd1


# instance fields
.field private FF:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 251
    const/4 v0, 0x5

    const-class v1, Ltmsdk/fg/tcc/LoginUtil;

    invoke-static {v0, v1}, Ltmsdk/common/TMSDKContext;->registerNatives(ILjava/lang/Class;)V

    .line 254
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    invoke-direct {p0}, Ltmsdk/fg/tcc/LoginUtil;->newLoginUtilInstance()I

    move-result v0

    iput v0, p0, Ltmsdk/fg/tcc/LoginUtil;->FF:I

    .line 114
    iget v0, p0, Ltmsdk/fg/tcc/LoginUtil;->FF:I

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Ljava/lang/OutOfMemoryError;

    invoke-direct {v0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v0

    .line 116
    :cond_0
    return-void
.end method

.method private bj(I)V
    .locals 1
    .parameter "err"

    .prologue
    .line 238
    sparse-switch p1, :sswitch_data_0

    .line 244
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 242
    :sswitch_0
    new-instance v0, Ljava/lang/OutOfMemoryError;

    invoke-direct {v0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v0

    .line 246
    :sswitch_1
    return-void

    .line 238
    :sswitch_data_0
    .sparse-switch
        -0x4 -> :sswitch_0
        0x0 -> :sswitch_1
    .end sparse-switch
.end method

.method private native clear(I)V
.end method

.method private native deleteLoginUtilObject(I)V
.end method

.method private native getKey(I)Ljava/lang/String;
.end method

.method private native getPostBody(I)[B
.end method

.method private native getPostUrl(I)Ljava/lang/String;
.end method

.method private native getVerifyImageUrl(I)Ljava/lang/String;
.end method

.method private native getWapSid(I)Ljava/lang/String;
.end method

.method private native makeLoginRequestPackage(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I
.end method

.method private native makeLoginRequestPackageMd5(ILjava/lang/String;Ljava/lang/String;[B[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I
.end method

.method public static native makeQQPhoneAndroidFeekBackUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Ljava/lang/String;
.end method

.method public static native makeQQPimFeekBackUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Ljava/lang/String;
.end method

.method public static native makeQQPimSecureAndroidFeekBackUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Ljava/lang/String;
.end method

.method private native newLoginUtilInstance()I
.end method

.method private native solveLoginResponPackge(I[BI)I
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 216
    iget v0, p0, Ltmsdk/fg/tcc/LoginUtil;->FF:I

    invoke-direct {p0, v0}, Ltmsdk/fg/tcc/LoginUtil;->clear(I)V

    .line 217
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 119
    iget v0, p0, Ltmsdk/fg/tcc/LoginUtil;->FF:I

    if-eqz v0, :cond_0

    .line 120
    iget v0, p0, Ltmsdk/fg/tcc/LoginUtil;->FF:I

    invoke-direct {p0, v0}, Ltmsdk/fg/tcc/LoginUtil;->deleteLoginUtilObject(I)V

    .line 121
    const/4 v0, 0x0

    iput v0, p0, Ltmsdk/fg/tcc/LoginUtil;->FF:I

    .line 123
    :cond_0
    return-void
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget v0, p0, Ltmsdk/fg/tcc/LoginUtil;->FF:I

    invoke-direct {p0, v0}, Ltmsdk/fg/tcc/LoginUtil;->getKey(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPostBody()[B
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Ltmsdk/fg/tcc/LoginUtil;->FF:I

    invoke-direct {p0, v0}, Ltmsdk/fg/tcc/LoginUtil;->getPostBody(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getPostUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Ltmsdk/fg/tcc/LoginUtil;->FF:I

    invoke-direct {p0, v0}, Ltmsdk/fg/tcc/LoginUtil;->getPostUrl(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVerifyImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Ltmsdk/fg/tcc/LoginUtil;->FF:I

    invoke-direct {p0, v0}, Ltmsdk/fg/tcc/LoginUtil;->getVerifyImageUrl(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWapSid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    iget v0, p0, Ltmsdk/fg/tcc/LoginUtil;->FF:I

    invoke-direct {p0, v0}, Ltmsdk/fg/tcc/LoginUtil;->getWapSid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public makeLoginRequestPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 13
    .parameter "serverHost"
    .parameter "qqNum"
    .parameter "pws"
    .parameter "pimPws"
    .parameter "verifyCode"
    .parameter "imei"
    .parameter "lcString"
    .parameter "ctrlRecord"
    .parameter "len"
    .parameter "cryptType"

    .prologue
    .line 152
    iget v1, p0, Ltmsdk/fg/tcc/LoginUtil;->FF:I

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Ltmsdk/fg/tcc/LoginUtil;->makeLoginRequestPackage(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v12

    .line 153
    .local v12, res:I
    invoke-direct {p0, v12}, Ltmsdk/fg/tcc/LoginUtil;->bj(I)V

    .line 154
    return-void
.end method

.method public makeLoginRequestPackageMd5(Ljava/lang/String;Ljava/lang/String;[B[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 13
    .parameter "serverHost"
    .parameter "qqNum"
    .parameter "md5Pws"
    .parameter "md5PimPws"
    .parameter "verifyCode"
    .parameter "imei"
    .parameter "lcString"
    .parameter "ctrlRecord"
    .parameter "len"
    .parameter "cryptType"

    .prologue
    .line 183
    iget v1, p0, Ltmsdk/fg/tcc/LoginUtil;->FF:I

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Ltmsdk/fg/tcc/LoginUtil;->makeLoginRequestPackageMd5(ILjava/lang/String;Ljava/lang/String;[B[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v12

    .line 184
    .local v12, res:I
    invoke-direct {p0, v12}, Ltmsdk/fg/tcc/LoginUtil;->bj(I)V

    .line 185
    return-void
.end method

.method public solveLoginResponPackge([BI)I
    .locals 1
    .parameter "respBody"
    .parameter "respBodyLen"

    .prologue
    .line 209
    iget v0, p0, Ltmsdk/fg/tcc/LoginUtil;->FF:I

    invoke-direct {p0, v0, p1, p2}, Ltmsdk/fg/tcc/LoginUtil;->solveLoginResponPackge(I[BI)I

    move-result v0

    return v0
.end method
