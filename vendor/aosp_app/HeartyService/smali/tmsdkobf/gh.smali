.class public final Ltmsdkobf/gh;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltmsdkobf/gh$a;,
        Ltmsdkobf/gh$b;,
        Ltmsdkobf/gh$c;
    }
.end annotation


# instance fields
.field private a:Z

.field private jR:[B

.field private kG:Landroid/content/Context;

.field private ng:Landroid/telephony/TelephonyManager;

.field private nh:Ltmsdkobf/gh$a;

.field private ni:Ltmsdkobf/gh$c;

.field private nj:Ltmsdkobf/gh$b;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v0, p0, Ltmsdkobf/gh;->kG:Landroid/content/Context;

    .line 27
    iput-object v0, p0, Ltmsdkobf/gh;->ng:Landroid/telephony/TelephonyManager;

    .line 29
    iput-object v0, p0, Ltmsdkobf/gh;->nh:Ltmsdkobf/gh$a;

    .line 35
    iput-object v0, p0, Ltmsdkobf/gh;->ni:Ltmsdkobf/gh$c;

    .line 38
    iput-object v0, p0, Ltmsdkobf/gh;->nj:Ltmsdkobf/gh$b;

    .line 41
    iput-boolean v1, p0, Ltmsdkobf/gh;->a:Z

    .line 43
    new-array v0, v1, [B

    iput-object v0, p0, Ltmsdkobf/gh;->jR:[B

    .line 46
    return-void
.end method

.method static synthetic a(Ltmsdkobf/gh;)Ltmsdkobf/gh$c;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Ltmsdkobf/gh;->ni:Ltmsdkobf/gh$c;

    return-object v0
.end method

.method static synthetic a(Ltmsdkobf/gh;Ltmsdkobf/gh$b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Ltmsdkobf/gh;->nj:Ltmsdkobf/gh$b;

    return-void
.end method

.method private aP(I)I
    .locals 4
    .parameter "phoneType"

    .prologue
    const/4 v3, 0x3

    .line 101
    iget-object v2, p0, Ltmsdkobf/gh;->ng:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, opString:Ljava/lang/String;
    const/4 v1, -0x1

    .line 103
    .local v1, retMcc:I
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v3, :cond_0

    .line 105
    const/4 v2, 0x0

    const/4 v3, 0x3

    :try_start_0
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 109
    :cond_0
    :goto_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 110
    const/4 v1, 0x0

    .line 112
    :cond_1
    return v1

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method static synthetic b(Ltmsdkobf/gh;)Ltmsdkobf/gh$b;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Ltmsdkobf/gh;->nj:Ltmsdkobf/gh$b;

    return-object v0
.end method

.method static synthetic c(Ltmsdkobf/gh;)Landroid/telephony/TelephonyManager;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Ltmsdkobf/gh;->ng:Landroid/telephony/TelephonyManager;

    return-object v0
.end method


# virtual methods
.method public final Q()V
    .locals 4

    .prologue
    .line 81
    iget-object v1, p0, Ltmsdkobf/gh;->jR:[B

    monitor-enter v1

    .line 82
    :try_start_0
    iget-boolean v0, p0, Ltmsdkobf/gh;->a:Z

    if-nez v0, :cond_0

    .line 83
    monitor-exit v1

    :goto_0
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Ltmsdkobf/gh;->ng:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltmsdkobf/gh;->nh:Ltmsdkobf/gh$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 86
    :try_start_1
    iget-object v0, p0, Ltmsdkobf/gh;->ng:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Ltmsdkobf/gh;->nh:Ltmsdkobf/gh$a;

    .line 87
    const/4 v3, 0x0

    .line 86
    invoke-virtual {v0, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 92
    :cond_1
    :goto_1
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Ltmsdkobf/gh;->a:Z

    .line 81
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 89
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_3
    iput-boolean v0, p0, Ltmsdkobf/gh;->a:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public final a(Landroid/content/Context;Ltmsdkobf/gh$c;)Z
    .locals 7
    .parameter "context"
    .parameter "listener"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 50
    iget-object v4, p0, Ltmsdkobf/gh;->jR:[B

    monitor-enter v4

    .line 51
    :try_start_0
    iget-boolean v5, p0, Ltmsdkobf/gh;->a:Z

    if-eqz v5, :cond_0

    .line 52
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :goto_0
    return v2

    .line 53
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    .line 54
    :cond_1
    monitor-exit v4

    move v2, v3

    goto :goto_0

    .line 56
    :cond_2
    :try_start_1
    const-string v2, "startSosoLocCellProvider"

    invoke-static {v2}, Ltmsdkobf/gl;->aw(Ljava/lang/String;)V

    .line 57
    iput-object p1, p0, Ltmsdkobf/gh;->kG:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Ltmsdkobf/gh;->ni:Ltmsdkobf/gh$c;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    :try_start_2
    iget-object v2, p0, Ltmsdkobf/gh;->kG:Landroid/content/Context;

    .line 61
    const-string v5, "phone"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 60
    iput-object v2, p0, Ltmsdkobf/gh;->ng:Landroid/telephony/TelephonyManager;

    .line 62
    iget-object v2, p0, Ltmsdkobf/gh;->ng:Landroid/telephony/TelephonyManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-nez v2, :cond_3

    .line 63
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v2, v3

    goto :goto_0

    .line 64
    :cond_3
    :try_start_4
    iget-object v2, p0, Ltmsdkobf/gh;->ng:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    .line 65
    .local v1, phoneType:I
    invoke-direct {p0, v1}, Ltmsdkobf/gh;->aP(I)I

    move-result v0

    .line 66
    .local v0, mcc:I
    new-instance v2, Ltmsdkobf/gh$a;

    invoke-direct {v2, p0, v0, v1}, Ltmsdkobf/gh$a;-><init>(Ltmsdkobf/gh;II)V

    iput-object v2, p0, Ltmsdkobf/gh;->nh:Ltmsdkobf/gh$a;

    .line 67
    iget-object v2, p0, Ltmsdkobf/gh;->nh:Ltmsdkobf/gh$a;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    if-nez v2, :cond_4

    .line 68
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move v2, v3

    goto :goto_0

    .line 69
    :cond_4
    :try_start_6
    iget-object v2, p0, Ltmsdkobf/gh;->ng:Landroid/telephony/TelephonyManager;

    iget-object v5, p0, Ltmsdkobf/gh;->nh:Ltmsdkobf/gh$a;

    .line 70
    const/16 v6, 0x12

    .line 69
    invoke-virtual {v2, v5, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 75
    const/4 v2, 0x1

    :try_start_7
    iput-boolean v2, p0, Ltmsdkobf/gh;->a:Z

    .line 50
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 77
    iget-boolean v2, p0, Ltmsdkobf/gh;->a:Z

    goto :goto_0

    .line 73
    .end local v0           #mcc:I
    .end local v1           #phoneType:I
    :catch_0
    move-exception v2

    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move v2, v3

    goto :goto_0

    .line 50
    :catchall_0
    move-exception v2

    monitor-exit v4

    throw v2
.end method
