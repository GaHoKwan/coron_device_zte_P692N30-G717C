.class public Ltmsdk/bg/module/antitheft/AntitheftCommandReporter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltmsdk/bg/module/antitheft/AntitheftCommandReporter$AntitheftCommandReporterArgs;
    }
.end annotation


# static fields
.field private static final jt:[C


# instance fields
.field private mContext:Landroid/content/Context;

.field private tP:Ltmsdk/bg/module/antitheft/AntitheftCommandReporter$AntitheftCommandReporterArgs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 158
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Ltmsdk/bg/module/antitheft/AntitheftCommandReporter;->jt:[C

    return-void

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
    .end array-data
.end method

.method public constructor <init>(Ltmsdk/bg/module/antitheft/AntitheftCommandReporter$AntitheftCommandReporterArgs;Landroid/content/Context;)V
    .locals 0
    .parameter "args"
    .parameter "context"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Ltmsdk/bg/module/antitheft/AntitheftCommandReporter;->tP:Ltmsdk/bg/module/antitheft/AntitheftCommandReporter$AntitheftCommandReporterArgs;

    .line 35
    iput-object p2, p0, Ltmsdk/bg/module/antitheft/AntitheftCommandReporter;->mContext:Landroid/content/Context;

    .line 36
    return-void
.end method

.method private a(Ltmsdkobf/cp;)Z
    .locals 5
    .parameter "result"

    .prologue
    .line 62
    const-class v2, Ltmsdkobf/lk;

    invoke-static {v2}, Ltmsdk/common/creator/ManagerCreatorC;->getManager(Ljava/lang/Class;)Ltmsdk/common/creator/BaseManagerC;

    move-result-object v0

    check-cast v0, Ltmsdkobf/lk;

    .line 63
    .local v0, manager:Ltmsdkobf/lk;
    invoke-virtual {v0, p1}, Ltmsdkobf/lk;->b(Ltmsdkobf/cp;)I

    move-result v1

    .line 64
    .local v1, retCode:I
    const-string v2, "AntitheftCommandReporter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "repy server by network retCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ltmsdk/common/utils/Log;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 65
    if-nez v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static byte2HexStr(B)Ljava/lang/String;
    .locals 4
    .parameter "b"

    .prologue
    .line 164
    const/4 v1, 0x2

    new-array v0, v1, [C

    .line 165
    .local v0, buf:[C
    const/4 v1, 0x1

    sget-object v2, Ltmsdk/bg/module/antitheft/AntitheftCommandReporter;->jt:[C

    and-int/lit8 v3, p0, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 166
    ushr-int/lit8 v1, p0, 0x4

    int-to-byte p0, v1

    .line 167
    const/4 v1, 0x0

    sget-object v2, Ltmsdk/bg/module/antitheft/AntitheftCommandReporter;->jt:[C

    and-int/lit8 v3, p0, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 168
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method private em()Ltmsdkobf/cp;
    .locals 3

    .prologue
    .line 92
    new-instance v0, Ltmsdkobf/cp;

    invoke-direct {v0}, Ltmsdkobf/cp;-><init>()V

    .line 93
    .local v0, ret:Ltmsdkobf/cp;
    invoke-direct {p0}, Ltmsdk/bg/module/antitheft/AntitheftCommandReporter;->en()S

    move-result v1

    iput-short v1, v0, Ltmsdkobf/cp;->iU:S

    .line 94
    iget-object v1, p0, Ltmsdk/bg/module/antitheft/AntitheftCommandReporter;->tP:Ltmsdk/bg/module/antitheft/AntitheftCommandReporter$AntitheftCommandReporterArgs;

    iget-short v1, v1, Ltmsdk/bg/module/antitheft/AntitheftCommandReporter$AntitheftCommandReporterArgs;->mResult:S

    iput-short v1, v0, Ltmsdkobf/cp;->iV:S

    .line 95
    iget-object v1, p0, Ltmsdk/bg/module/antitheft/AntitheftCommandReporter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Ltmsdk/common/utils/PhoneInfoUtil;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ltmsdkobf/cp;->U:Ljava/lang/String;

    .line 96
    iget-object v1, v0, Ltmsdkobf/cp;->U:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 97
    const-string v1, ""

    iput-object v1, v0, Ltmsdkobf/cp;->U:Ljava/lang/String;

    .line 99
    :cond_0
    iget-object v1, p0, Ltmsdk/bg/module/antitheft/AntitheftCommandReporter;->tP:Ltmsdk/bg/module/antitheft/AntitheftCommandReporter$AntitheftCommandReporterArgs;

    iget-object v1, v1, Ltmsdk/bg/module/antitheft/AntitheftCommandReporter$AntitheftCommandReporterArgs;->mAction:Ltmsdk/common/module/antitheft/AntitheftCommand;

    iget-object v1, v1, Ltmsdk/common/module/antitheft/AntitheftCommand;->mBindQQNum:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Ltmsdkobf/cp;->iW:J

    .line 100
    iget-object v1, p0, Ltmsdk/bg/module/antitheft/AntitheftCommandReporter;->tP:Ltmsdk/bg/module/antitheft/AntitheftCommandReporter$AntitheftCommandReporterArgs;

    iget-object v1, v1, Ltmsdk/bg/module/antitheft/AntitheftCommandReporter$AntitheftCommandReporterArgs;->mAction:Ltmsdk/common/module/antitheft/AntitheftCommand;

    iget-wide v1, v1, Ltmsdk/common/module/antitheft/AntitheftCommand;->mWebServerUlkey:J

    iput-wide v1, v0, Ltmsdkobf/cp;->iX:J

    .line 101
    iget-object v1, p0, Ltmsdk/bg/module/antitheft/AntitheftCommandReporter;->tP:Ltmsdk/bg/module/antitheft/AntitheftCommandReporter$AntitheftCommandReporterArgs;

    iget-wide v1, v1, Ltmsdk/bg/module/antitheft/AntitheftCommandReporter$AntitheftCommandReporterArgs;->mLongtitute:D

    iput-wide v1, v0, Ltmsdkobf/cp;->ix:D

    .line 102
    iget-object v1, p0, Ltmsdk/bg/module/antitheft/AntitheftCommandReporter;->tP:Ltmsdk/bg/module/antitheft/AntitheftCommandReporter$AntitheftCommandReporterArgs;

    iget-wide v1, v1, Ltmsdk/bg/module/antitheft/AntitheftCommandReporter$AntitheftCommandReporterArgs;->aLatitute:D

    iput-wide v1, v0, Ltmsdkobf/cp;->iy:D

    .line 103
    iget-object v1, p0, Ltmsdk/bg/module/antitheft/AntitheftCommandReporter;->tP:Ltmsdk/bg/module/antitheft/AntitheftCommandReporter$AntitheftCommandReporterArgs;

    iget-wide v1, v1, Ltmsdk/bg/module/antitheft/AntitheftCommandReporter$AntitheftCommandReporterArgs;->accuracy:D

    iput-wide v1, v0, Ltmsdkobf/cp;->accuracy:D

    .line 104
    return-object v0
.end method

.method private en()S
    .locals 2

    .prologue
    .line 122
    const/4 v0, 0x0

    .line 123
    .local v0, cmd:S
    iget-object v1, p0, Ltmsdk/bg/module/antitheft/AntitheftCommandReporter;->tP:Ltmsdk/bg/module/antitheft/AntitheftCommandReporter$AntitheftCommandReporterArgs;

    iget-object v1, v1, Ltmsdk/bg/module/antitheft/AntitheftCommandReporter$AntitheftCommandReporterArgs;->mAction:Ltmsdk/common/module/antitheft/AntitheftCommand;

    iget v1, v1, Ltmsdk/common/module/antitheft/AntitheftCommand;->mTaskType:I

    packed-switch v1, :pswitch_data_0

    .line 142
    :goto_0
    :pswitch_0
    return v0

    .line 125
    :pswitch_1
    const/4 v0, 0x1

    .line 127
    goto :goto_0

    .line 129
    :pswitch_2
    const/4 v0, 0x2

    .line 131
    goto :goto_0

    .line 133
    :pswitch_3
    const/4 v0, 0x3

    .line 134
    goto :goto_0

    .line 137
    :pswitch_4
    const/4 v0, 0x5

    .line 138
    goto :goto_0

    .line 123
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private getKey()[B
    .locals 4

    .prologue
    .line 112
    const-string v3, "%#!*^().,ljhd"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-array v2, v3, [B

    .line 113
    .local v2, key:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 115
    const-string v3, "%#!*^().,ljhd"

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 116
    .local v0, c:C
    int-to-byte v3, v0

    aput-byte v3, v2, v1

    .line 113
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 118
    .end local v0           #c:C
    :cond_0
    return-object v2
.end method

.method private n([B)Z
    .locals 10
    .parameter "bodyData"

    .prologue
    const/16 v8, 0x23

    .line 69
    invoke-direct {p0}, Ltmsdk/bg/module/antitheft/AntitheftCommandReporter;->en()S

    move-result v0

    .line 70
    .local v0, cmd:S
    const-string v4, ""

    .line 71
    .local v4, preFix:Ljava/lang/String;
    iget-object v7, p0, Ltmsdk/bg/module/antitheft/AntitheftCommandReporter;->tP:Ltmsdk/bg/module/antitheft/AntitheftCommandReporter$AntitheftCommandReporterArgs;

    iget-boolean v7, v7, Ltmsdk/bg/module/antitheft/AntitheftCommandReporter$AntitheftCommandReporterArgs;->mIsReleaseVersion:Z

    if-nez v7, :cond_0

    .line 72
    const-string v4, "TQSAT#"

    .line 76
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .local v3, message:Ljava/lang/StringBuilder;
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 80
    invoke-direct {p0}, Ltmsdk/bg/module/antitheft/AntitheftCommandReporter;->getKey()[B

    move-result-object v2

    .line 81
    .local v2, key:[B
    invoke-static {p1, v2}, Ltmsdk/common/tcc/TccCryptor;->encrypt([B[B)[B

    move-result-object v6

    .line 82
    .local v6, smsEncrptyBuf:[B
    invoke-direct {p0, v6}, Ltmsdk/bg/module/antitheft/AntitheftCommandReporter;->o([B)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 83
    .local v1, hexStr:Ljava/lang/StringBuilder;
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 85
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    .line 86
    .local v5, sms:Ljava/lang/String;
    const-string v7, "AntitheftCommandReporter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "repy server"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Ltmsdk/common/utils/Log;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 87
    iget-object v7, p0, Ltmsdk/bg/module/antitheft/AntitheftCommandReporter;->tP:Ltmsdk/bg/module/antitheft/AntitheftCommandReporter$AntitheftCommandReporterArgs;

    iget-object v7, v7, Ltmsdk/bg/module/antitheft/AntitheftCommandReporter$AntitheftCommandReporterArgs;->mAction:Ltmsdk/common/module/antitheft/AntitheftCommand;

    iget-object v7, v7, Ltmsdk/common/module/antitheft/AntitheftCommand;->mRemotePhoneNum:Ljava/lang/String;

    iget-object v8, p0, Ltmsdk/bg/module/antitheft/AntitheftCommandReporter;->mContext:Landroid/content/Context;

    invoke-static {v7, v5, v8}, Ltmsdk/common/utils/SMSUtil;->sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 88
    const/4 v7, 0x1

    return v7

    .line 74
    .end local v1           #hexStr:Ljava/lang/StringBuilder;
    .end local v2           #key:[B
    .end local v3           #message:Ljava/lang/StringBuilder;
    .end local v5           #sms:Ljava/lang/String;
    .end local v6           #smsEncrptyBuf:[B
    :cond_0
    const-string v4, "QSAT#"

    goto :goto_0
.end method

.method private o([B)Ljava/lang/StringBuilder;
    .locals 3
    .parameter "binData"

    .prologue
    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .local v1, ret:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 153
    aget-byte v2, p1, v0

    invoke-static {v2}, Ltmsdk/bg/module/antitheft/AntitheftCommandReporter;->byte2HexStr(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 155
    :cond_0
    return-object v1
.end method


# virtual methods
.method public replyServer()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ltmsdk/bg/module/antitheft/AntitheftCommandReporter;->replyServer(Z)V

    .line 40
    return-void
.end method

.method public replyServer(Z)V
    .locals 5
    .parameter "justReplyBySms"

    .prologue
    .line 43
    invoke-direct {p0}, Ltmsdk/bg/module/antitheft/AntitheftCommandReporter;->em()Ltmsdkobf/cp;

    move-result-object v1

    .line 44
    .local v1, result:Ltmsdkobf/cp;
    const/4 v2, 0x0

    .line 45
    .local v2, success:Z
    if-nez p1, :cond_0

    .line 46
    invoke-direct {p0, v1}, Ltmsdk/bg/module/antitheft/AntitheftCommandReporter;->a(Ltmsdkobf/cp;)Z

    move-result v2

    .line 48
    :cond_0
    if-nez v2, :cond_1

    .line 49
    invoke-virtual {v1}, Ltmsdkobf/cp;->toByteArray()[B

    move-result-object v0

    .line 50
    .local v0, reportBody:[B
    invoke-direct {p0, v0}, Ltmsdk/bg/module/antitheft/AntitheftCommandReporter;->n([B)Z

    .line 54
    .end local v0           #reportBody:[B
    :goto_0
    return-void

    .line 52
    :cond_1
    const-string v3, "AntitheftCommandReporter"

    const-string v4, "repy server by network successed."

    invoke-static {v3, v4}, Ltmsdk/common/utils/Log;->f(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
