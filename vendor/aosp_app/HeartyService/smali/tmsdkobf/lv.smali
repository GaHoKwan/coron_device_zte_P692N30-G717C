.class public Ltmsdkobf/lv;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltmsdkobf/lv$a;,
        Ltmsdkobf/lv$b;
    }
.end annotation


# static fields
.field public static CY:Landroid/content/Context;

.field private static CZ:Landroid/content/SharedPreferences;

.field private static DA:Ljava/lang/String;

.field private static DB:Z

.field private static DC:Z

.field static DD:Ljava/lang/Boolean;

.field private static Da:I

.field private static Db:I

.field private static Dc:I

.field private static Dd:Landroid/os/Handler;

.field private static De:I

.field private static Df:I

.field private static Dg:J

.field private static Dh:Ljava/lang/String;

.field private static Di:Z

.field private static Dj:Ljava/lang/String;

.field private static Dk:Z

.field private static Dl:Ljava/lang/String;

.field private static Dm:I

.field private static Dn:Ljava/lang/String;

.field private static Do:Ljava/lang/String;

.field private static Dp:J

.field private static Dq:Ljava/lang/String;

.field private static Dr:Z

.field private static Ds:J

.field private static Dt:Ljava/lang/String;

.field private static Du:J

.field private static Dv:Ljava/lang/String;

.field private static Dw:[Z

.field private static Dx:[Ljava/lang/String;

.field private static Dy:I

.field private static Dz:I

.field private static mHandler:Landroid/os/Handler;

.field private static startTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v2, 0x5

    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    .line 31
    invoke-static {}, Ltmsdk/common/TMSDKContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Ltmsdkobf/lv;->CY:Landroid/content/Context;

    .line 39
    sget-object v0, Ltmsdkobf/lv;->CY:Landroid/content/Context;

    const-string v1, "ulspn_1.0fscxv#^as@"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Ltmsdkobf/lv;->CZ:Landroid/content/SharedPreferences;

    .line 49
    sput v3, Ltmsdkobf/lv;->Da:I

    .line 53
    sput v3, Ltmsdkobf/lv;->Db:I

    .line 57
    sput v3, Ltmsdkobf/lv;->Dc:I

    .line 62
    new-instance v0, Ltmsdkobf/lv$a;

    invoke-direct {v0}, Ltmsdkobf/lv$a;-><init>()V

    sput-object v0, Ltmsdkobf/lv;->mHandler:Landroid/os/Handler;

    .line 70
    new-instance v0, Ltmsdkobf/lv$b;

    invoke-direct {v0}, Ltmsdkobf/lv$b;-><init>()V

    sput-object v0, Ltmsdkobf/lv;->Dd:Landroid/os/Handler;

    .line 99
    const/16 v0, 0xa8

    sput v0, Ltmsdkobf/lv;->De:I

    .line 104
    const/16 v0, 0x64

    sput v0, Ltmsdkobf/lv;->Df:I

    .line 110
    const-wide/32 v0, 0x32000

    sput-wide v0, Ltmsdkobf/lv;->Dg:J

    .line 111
    const-string v0, "45^9*(;jkld;sjf%!"

    sput-object v0, Ltmsdkobf/lv;->Dh:Ljava/lang/String;

    .line 121
    sput-boolean v3, Ltmsdkobf/lv;->Di:Z

    .line 122
    const-string v0, "jklg&(*%Jhgf^"

    sput-object v0, Ltmsdkobf/lv;->Dj:Ljava/lang/String;

    .line 127
    sput-boolean v3, Ltmsdkobf/lv;->Dk:Z

    .line 128
    const-string v0, "LKJHG&@&*%F"

    sput-object v0, Ltmsdkobf/lv;->Dl:Ljava/lang/String;

    .line 133
    sput v3, Ltmsdkobf/lv;->Dm:I

    .line 134
    const-string v0, "!)#*JSGkhshjf@"

    sput-object v0, Ltmsdkobf/lv;->Dn:Ljava/lang/String;

    .line 139
    sput-wide v4, Ltmsdkobf/lv;->startTime:J

    .line 140
    const-string v0, ";\'r\'sa8913$"

    sput-object v0, Ltmsdkobf/lv;->Do:Ljava/lang/String;

    .line 145
    sput-wide v4, Ltmsdkobf/lv;->Dp:J

    .line 146
    const-string v0, "fl;s()+231^%"

    sput-object v0, Ltmsdkobf/lv;->Dq:Ljava/lang/String;

    .line 151
    sput-boolean v3, Ltmsdkobf/lv;->Dr:Z

    .line 156
    sput-wide v4, Ltmsdkobf/lv;->Ds:J

    .line 157
    const-string v0, "(&*JKH*%^ASDGFY"

    sput-object v0, Ltmsdkobf/lv;->Dt:Ljava/lang/String;

    .line 162
    sput-wide v4, Ltmsdkobf/lv;->Du:J

    .line 163
    const-string v0, "*/+|}>!jkipoIJ23HKJ"

    sput-object v0, Ltmsdkobf/lv;->Dv:Ljava/lang/String;

    .line 168
    new-array v0, v2, [Z

    fill-array-data v0, :array_0

    sput-object v0, Ltmsdkobf/lv;->Dw:[Z

    .line 169
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "75YOU#$^F@!\"KJH|J"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "D(*&$!:LJSDF!%)"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "AP>>XMpe,&2%%!2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "55+=_%^!Js521df"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "|?<>Ags1376H*OJHs"

    aput-object v2, v0, v1

    sput-object v0, Ltmsdkobf/lv;->Dx:[Ljava/lang/String;

    .line 174
    sput v3, Ltmsdkobf/lv;->Dy:I

    .line 178
    sput v3, Ltmsdkobf/lv;->Dz:I

    .line 179
    const-string v0, "jlk&*(%$HJ\" +\"\"+"

    sput-object v0, Ltmsdkobf/lv;->DA:Ljava/lang/String;

    .line 184
    invoke-static {v3}, Ltmsdk/common/tcc/TccCryptor;->encryptBoolean(Z)Z

    move-result v0

    sput-boolean v0, Ltmsdkobf/lv;->DB:Z

    .line 190
    sput-boolean v3, Ltmsdkobf/lv;->DC:Z

    .line 687
    const/4 v0, 0x0

    sput-object v0, Ltmsdkobf/lv;->DD:Ljava/lang/Boolean;

    return-void

    .line 168
    :array_0
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method static synthetic cI()Z
    .locals 1

    .prologue
    .line 27
    invoke-static {}, Ltmsdkobf/lv;->gU()Z

    move-result v0

    return v0
.end method

.method public static cT(Ljava/lang/String;)Z
    .locals 2
    .parameter "encyptTagName"

    .prologue
    .line 351
    sget-object v0, Ltmsdkobf/lv;->CZ:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static cf(I)Z
    .locals 1
    .parameter "tag"

    .prologue
    .line 348
    invoke-static {p0}, Ltmsdkobf/lv;->ci(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltmsdkobf/lv;->cT(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static ch(I)Z
    .locals 1
    .parameter "netType"

    .prologue
    .line 598
    sget-object v0, Ltmsdkobf/lv;->Dw:[Z

    array-length v0, v0

    if-ge p0, v0, :cond_0

    if-gez p0, :cond_1

    .line 599
    :cond_0
    const/4 v0, 0x0

    .line 601
    :goto_0
    return v0

    :cond_1
    sget-object v0, Ltmsdkobf/lv;->Dw:[Z

    aget-boolean v0, v0, p0

    goto :goto_0
.end method

.method private static ci(I)Ljava/lang/String;
    .locals 2
    .parameter "tag"

    .prologue
    .line 661
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "*Y7U*8^uwSs@%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic cj(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    sput p0, Ltmsdkobf/lv;->Db:I

    return p0
.end method

.method static synthetic ck(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    sput p0, Ltmsdkobf/lv;->Da:I

    return p0
.end method

.method static synthetic dP()J
    .locals 2

    .prologue
    .line 27
    sget-wide v0, Ltmsdkobf/lv;->Ds:J

    return-wide v0
.end method

.method private static gK()V
    .locals 12

    .prologue
    const/4 v11, 0x4

    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 74
    .local v4, now:J
    invoke-static {v4, v5}, Ltmsdkobf/lu;->x(J)J

    move-result-wide v2

    .line 76
    .local v2, hour:J
    sget-wide v6, Ltmsdkobf/lv;->Du:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    .line 77
    sget-wide v6, Ltmsdkobf/lv;->Du:J

    invoke-static {v6, v7}, Ltmsdkobf/lu;->x(J)J

    move-result-wide v0

    .line 81
    .local v0, endLogTimeHour:J
    cmp-long v6, v0, v2

    if-gtz v6, :cond_1

    .line 93
    .end local v0           #endLogTimeHour:J
    :cond_0
    :goto_0
    return-void

    .line 88
    .restart local v0       #endLogTimeHour:J
    :cond_1
    cmp-long v6, v2, v4

    if-ltz v6, :cond_0

    .line 90
    sget-object v6, Ltmsdkobf/lv;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 91
    sget-object v6, Ltmsdkobf/lv;->mHandler:Landroid/os/Handler;

    sub-long v7, v2, v4

    const-wide/16 v9, 0x3e8

    add-long/2addr v7, v9

    invoke-virtual {v6, v11, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public static gL()I
    .locals 1

    .prologue
    .line 358
    sget v0, Ltmsdkobf/lv;->De:I

    return v0
.end method

.method public static gM()I
    .locals 1

    .prologue
    .line 365
    sget v0, Ltmsdkobf/lv;->Df:I

    return v0
.end method

.method public static gN()J
    .locals 2

    .prologue
    .line 372
    const-wide/32 v0, 0x1e00000

    return-wide v0
.end method

.method public static gO()Z
    .locals 1

    .prologue
    .line 379
    sget-boolean v0, Ltmsdkobf/lv;->Di:Z

    return v0
.end method

.method public static gP()Z
    .locals 1

    .prologue
    .line 400
    sget-boolean v0, Ltmsdkobf/lv;->Dk:Z

    return v0
.end method

.method public static gQ()I
    .locals 1

    .prologue
    .line 422
    sget v0, Ltmsdkobf/lv;->Dm:I

    return v0
.end method

.method public static gR()J
    .locals 2

    .prologue
    .line 449
    sget-wide v0, Ltmsdkobf/lv;->Dg:J

    return-wide v0
.end method

.method public static gS()I
    .locals 1

    .prologue
    .line 526
    sget v0, Ltmsdkobf/lv;->Dz:I

    return v0
.end method

.method private static gT()I
    .locals 1

    .prologue
    .line 608
    sget v0, Ltmsdkobf/lv;->Dy:I

    return v0
.end method

.method private static gU()Z
    .locals 2

    .prologue
    .line 693
    sget-object v0, Ltmsdkobf/lv;->DD:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 694
    invoke-static {}, Ltmsdkobf/lu;->getProcessName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fore"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 695
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Ltmsdkobf/lv;->DD:Ljava/lang/Boolean;

    .line 700
    :cond_0
    :goto_0
    sget-object v0, Ltmsdkobf/lv;->DD:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 697
    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Ltmsdkobf/lv;->DD:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public static gV()Z
    .locals 2

    .prologue
    .line 722
    invoke-static {}, Ltmsdkobf/lv;->gT()I

    move-result v0

    invoke-static {v0}, Ltmsdkobf/lv;->ch(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ltmsdkobf/lv;->gS()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static gW()V
    .locals 2

    .prologue
    .line 857
    const-string v0, "UserLogCloudCmd"

    const-string v1, "HANDLER_MSG_OPEN_LOG_FILE"

    invoke-static {v0, v1}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 858
    invoke-static {}, Ltmsdkobf/lv;->gP()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 859
    const/4 v0, 0x1

    invoke-static {v0}, Ltmsdkobf/lu;->G(Z)V

    .line 860
    invoke-static {}, Ltmsdkobf/lv;->gK()V

    .line 862
    :cond_0
    return-void
.end method

.method public static gX()V
    .locals 5

    .prologue
    const/16 v4, 0x15

    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 864
    const-string v0, "UserLogCloudCmd"

    const-string v1, "HANDLER_MSG_CLOSE_LOG_FILE"

    invoke-static {v0, v1}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 866
    invoke-static {v2}, Ltmsdkobf/lu;->G(Z)V

    .line 868
    invoke-static {}, Ltmsdkobf/lv;->gV()Z

    move-result v0

    if-nez v0, :cond_1

    .line 869
    const-string v0, "UserLogCloudCmd"

    const-string v1, "NOT allow to upload auto"

    invoke-static {v0, v1}, Ltmsdk/common/utils/Log;->w(Ljava/lang/String;Ljava/lang/Object;)V

    .line 870
    sget v0, Ltmsdkobf/lv;->Dc:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Ltmsdkobf/lv;->Dc:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 871
    sget-object v0, Ltmsdkobf/lv;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 872
    sget-object v0, Ltmsdkobf/lv;->mHandler:Landroid/os/Handler;

    sget v1, Ltmsdkobf/lv;->Dc:I

    mul-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 882
    :goto_0
    return-void

    .line 874
    :cond_0
    sput v2, Ltmsdkobf/lv;->Dc:I

    goto :goto_0

    .line 880
    :cond_1
    sget-object v0, Ltmsdkobf/lv;->Dd:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 881
    sget-object v0, Ltmsdkobf/lv;->Dd:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public static gY()V
    .locals 2

    .prologue
    .line 885
    const-string v0, "UserLogCloudCmd"

    const-string v1, "HANDLER_MSG_CLOSE_USER_LOG_PAGE"

    invoke-static {v0, v1}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 886
    const/4 v0, 0x0

    sput-boolean v0, Ltmsdkobf/lv;->Dr:Z

    .line 887
    return-void
.end method

.method public static gZ()V
    .locals 2

    .prologue
    .line 890
    const-string v0, "UserLogCloudCmd"

    const-string v1, "HANDLER_MSG_OPEN_USER_LOG_PAGE"

    invoke-static {v0, v1}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 891
    invoke-static {}, Ltmsdkobf/lv;->gP()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 892
    const/4 v0, 0x1

    sput-boolean v0, Ltmsdkobf/lv;->Dr:Z

    .line 894
    :cond_0
    return-void
.end method

.method static synthetic ha()I
    .locals 1

    .prologue
    .line 27
    sget v0, Ltmsdkobf/lv;->Db:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Ltmsdkobf/lv;->Db:I

    return v0
.end method

.method static synthetic hb()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Ltmsdkobf/lv;->Dd:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic hc()V
    .locals 0

    .prologue
    .line 27
    invoke-static {}, Ltmsdkobf/lv;->gK()V

    return-void
.end method

.method static synthetic hd()J
    .locals 2

    .prologue
    .line 27
    sget-wide v0, Ltmsdkobf/lv;->Du:J

    return-wide v0
.end method

.method static synthetic he()I
    .locals 1

    .prologue
    .line 27
    sget v0, Ltmsdkobf/lv;->Da:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Ltmsdkobf/lv;->Da:I

    return v0
.end method
