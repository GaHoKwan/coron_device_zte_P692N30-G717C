.class public final Ltmsdkobf/dp;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltmsdkobf/dp$a;
    }
.end annotation


# static fields
.field private static jZ:Ltmsdkobf/dp;


# instance fields
.field private jO:I

.field private jY:Ltmsdkobf/dp$a;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Ltmsdkobf/dp;->jO:I

    .line 50
    return-void
.end method

.method public static P()Ltmsdkobf/dp;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Ltmsdkobf/dp;->jZ:Ltmsdkobf/dp;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Ltmsdkobf/dp;

    invoke-direct {v0}, Ltmsdkobf/dp;-><init>()V

    sput-object v0, Ltmsdkobf/dp;->jZ:Ltmsdkobf/dp;

    .line 46
    :cond_0
    sget-object v0, Ltmsdkobf/dp;->jZ:Ltmsdkobf/dp;

    return-object v0
.end method

.method public static R()I
    .locals 1

    .prologue
    .line 128
    invoke-static {}, Ltmsdkobf/dp;->P()Ltmsdkobf/dp;

    move-result-object v0

    iget v0, v0, Ltmsdkobf/dp;->jO:I

    return v0
.end method


# virtual methods
.method public final Q()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    .line 71
    invoke-static {}, Ltmsdkobf/dw;->N()Landroid/content/Context;

    move-result-object v5

    .line 72
    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 71
    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 73
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v4

    .line 76
    .local v4, operator:Ljava/lang/String;
    invoke-static {v4}, Ltmsdkobf/gf;->as(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, mcc:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v5, "460"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 88
    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, mnc:Ljava/lang/String;
    const/4 v2, 0x0

    .line 91
    .local v2, mncIntVar:I
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 95
    :goto_1
    const/4 v3, 0x0

    .line 96
    .local v3, netOperator:I
    packed-switch v2, :pswitch_data_0

    .line 109
    :goto_2
    :pswitch_0
    iget v5, p0, Ltmsdkobf/dp;->jO:I

    if-eq v5, v3, :cond_0

    .line 116
    iput v3, p0, Ltmsdkobf/dp;->jO:I

    .line 117
    iget-object v5, p0, Ltmsdkobf/dp;->jY:Ltmsdkobf/dp$a;

    if-eqz v5, :cond_0

    .line 118
    iget-object v5, p0, Ltmsdkobf/dp;->jY:Ltmsdkobf/dp$a;

    invoke-interface {v5}, Ltmsdkobf/dp$a;->Q()V

    goto :goto_0

    .line 100
    :pswitch_1
    const/4 v3, 0x1

    .line 101
    goto :goto_2

    .line 104
    :pswitch_2
    const/4 v3, 0x2

    .line 105
    goto :goto_2

    .line 108
    :pswitch_3
    const/4 v3, 0x3

    goto :goto_2

    .end local v3           #netOperator:I
    :catch_0
    move-exception v5

    goto :goto_1

    .line 96
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Ltmsdkobf/dp$a;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 57
    iput-object p1, p0, Ltmsdkobf/dp;->jY:Ltmsdkobf/dp$a;

    .line 58
    return-void
.end method
