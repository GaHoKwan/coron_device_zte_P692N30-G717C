.class public Ltmsdkobf/lg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static Cb:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ltmsdkobf/lh;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x15

    .line 51
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Ltmsdkobf/lg;->Cb:Landroid/util/SparseArray;

    .line 53
    sget-object v0, Ltmsdkobf/lg;->Cb:Landroid/util/SparseArray;

    const v1, 0x10000001

    new-instance v2, Ltmsdkobf/lh;

    const-string v3, "conf"

    const-string v4, "reportUpdateConfition"

    invoke-direct {v2, v3, v4}, Ltmsdkobf/lh;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 54
    sget-object v0, Ltmsdkobf/lg;->Cb:Landroid/util/SparseArray;

    const v1, 0x10000002

    new-instance v2, Ltmsdkobf/lh;

    const-string v3, "report"

    const-string v4, "reportSoftUsageInfo"

    invoke-direct {v2, v3, v4}, Ltmsdkobf/lh;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 56
    sget-object v0, Ltmsdkobf/lg;->Cb:Landroid/util/SparseArray;

    const/4 v1, 0x0

    new-instance v2, Ltmsdkobf/lh;

    const-string v3, "info"

    const-string v4, "reportUserComment"

    invoke-direct {v2, v3, v4}, Ltmsdkobf/lh;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 57
    sget-object v0, Ltmsdkobf/lg;->Cb:Landroid/util/SparseArray;

    const/4 v1, 0x1

    new-instance v2, Ltmsdkobf/lh;

    const-string v3, "info"

    const-string v4, "reportChannelInfo"

    invoke-direct {v2, v3, v4}, Ltmsdkobf/lh;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 58
    sget-object v0, Ltmsdkobf/lg;->Cb:Landroid/util/SparseArray;

    const/4 v1, 0x2

    new-instance v2, Ltmsdkobf/lh;

    const-string v3, "info"

    const-string v4, "getVirusInfos"

    invoke-direct {v2, v3, v4}, Ltmsdkobf/lh;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 59
    sget-object v0, Ltmsdkobf/lg;->Cb:Landroid/util/SparseArray;

    const/4 v1, 0x3

    new-instance v2, Ltmsdkobf/lh;

    const-string v3, "softinfo"

    const-string v4, "getCategoryList"

    invoke-direct {v2, v3, v4}, Ltmsdkobf/lh;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 60
    sget-object v0, Ltmsdkobf/lg;->Cb:Landroid/util/SparseArray;

    const/4 v1, 0x4

    new-instance v2, Ltmsdkobf/lh;

    const-string v3, "softinfo"

    const-string v4, "getSoftList"

    invoke-direct {v2, v3, v4}, Ltmsdkobf/lh;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 61
    sget-object v0, Ltmsdkobf/lg;->Cb:Landroid/util/SparseArray;

    const/4 v1, 0x5

    new-instance v2, Ltmsdkobf/lh;

    const-string v3, "softinfo"

    const-string v4, "getMySoftList"

    invoke-direct {v2, v3, v4}, Ltmsdkobf/lh;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 62
    sget-object v0, Ltmsdkobf/lg;->Cb:Landroid/util/SparseArray;

    const/4 v1, 0x6

    new-instance v2, Ltmsdkobf/lh;

    const-string v3, "cloudcheck"

    const-string v4, "getAnalyseInfo"

    invoke-direct {v2, v3, v4}, Ltmsdkobf/lh;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 63
    sget-object v0, Ltmsdkobf/lg;->Cb:Landroid/util/SparseArray;

    const/4 v1, 0x7

    new-instance v2, Ltmsdkobf/lh;

    const-string v3, "info"

    const-string v4, "getUpdatesV2"

    invoke-direct {v2, v3, v4}, Ltmsdkobf/lh;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 64
    sget-object v0, Ltmsdkobf/lg;->Cb:Landroid/util/SparseArray;

    const/16 v1, 0x8

    new-instance v2, Ltmsdkobf/lh;

    const-string v3, "softinfo"

    const-string v4, "getADs"

    invoke-direct {v2, v3, v4}, Ltmsdkobf/lh;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 65
    sget-object v0, Ltmsdkobf/lg;->Cb:Landroid/util/SparseArray;

    const/16 v1, 0x9

    new-instance v2, Ltmsdkobf/lh;

    const-string v3, "info"

    const-string v4, "getGuid"

    invoke-direct {v2, v3, v4}, Ltmsdkobf/lh;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 66
    sget-object v0, Ltmsdkobf/lg;->Cb:Landroid/util/SparseArray;

    const/16 v1, 0xa

    new-instance v2, Ltmsdkobf/lh;

    const-string v3, "softinfo"

    const-string v4, "getHotWord"

    invoke-direct {v2, v3, v4}, Ltmsdkobf/lh;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 67
    sget-object v0, Ltmsdkobf/lg;->Cb:Landroid/util/SparseArray;

    const/16 v1, 0x13

    new-instance v2, Ltmsdkobf/lh;

    const-string v3, "info"

    const-string v4, "browerCheck"

    invoke-direct {v2, v3, v4}, Ltmsdkobf/lh;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 69
    sget-object v0, Ltmsdkobf/lg;->Cb:Landroid/util/SparseArray;

    const/16 v1, 0xb

    new-instance v2, Ltmsdkobf/lh;

    const-string v3, "conf"

    const-string v4, "getConfigV3CPT"

    invoke-direct {v2, v3, v4}, Ltmsdkobf/lh;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 71
    sget-object v0, Ltmsdkobf/lg;->Cb:Landroid/util/SparseArray;

    const/16 v1, 0xc

    new-instance v2, Ltmsdkobf/lh;

    const-string v3, "sms"

    const-string v4, "reportSms"

    invoke-direct {v2, v3, v4}, Ltmsdkobf/lh;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 72
    sget-object v0, Ltmsdkobf/lg;->Cb:Landroid/util/SparseArray;

    const/16 v1, 0xd

    new-instance v2, Ltmsdkobf/lh;

    const-string v3, "sms"

    const-string v4, "reportTel"

    invoke-direct {v2, v3, v4}, Ltmsdkobf/lh;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 73
    sget-object v0, Ltmsdkobf/lg;->Cb:Landroid/util/SparseArray;

    const/16 v1, 0xe

    new-instance v2, Ltmsdkobf/lh;

    const-string v3, "sms"

    const-string v4, "reportSoftFeature"

    invoke-direct {v2, v3, v4}, Ltmsdkobf/lh;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 75
    sget-object v0, Ltmsdkobf/lg;->Cb:Landroid/util/SparseArray;

    const/16 v1, 0xf

    new-instance v2, Ltmsdkobf/lh;

    const-string v3, "traffic"

    const-string v4, "getTrafficTemplate"

    invoke-direct {v2, v3, v4}, Ltmsdkobf/lh;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 76
    sget-object v0, Ltmsdkobf/lg;->Cb:Landroid/util/SparseArray;

    const/16 v1, 0x10

    new-instance v2, Ltmsdkobf/lh;

    const-string v3, "traffic"

    const-string v4, "getQueryInfo"

    invoke-direct {v2, v3, v4}, Ltmsdkobf/lh;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 78
    sget-object v0, Ltmsdkobf/lg;->Cb:Landroid/util/SparseArray;

    const/16 v1, 0x11

    new-instance v2, Ltmsdkobf/lh;

    const-string v3, "check"

    const-string v4, "checkUrl"

    invoke-direct {v2, v3, v4}, Ltmsdkobf/lh;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 79
    sget-object v0, Ltmsdkobf/lg;->Cb:Landroid/util/SparseArray;

    const/16 v1, 0x12

    new-instance v2, Ltmsdkobf/lh;

    const-string v3, "check"

    const-string v4, "checkUrlExt"

    invoke-direct {v2, v3, v4}, Ltmsdkobf/lh;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 80
    sget-object v0, Ltmsdkobf/lg;->Cb:Landroid/util/SparseArray;

    const/16 v1, 0x14

    new-instance v2, Ltmsdkobf/lh;

    const-string v3, "check"

    const-string v4, "getlicencedate"

    invoke-direct {v2, v3, v4}, Ltmsdkobf/lh;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 82
    sget-object v0, Ltmsdkobf/lg;->Cb:Landroid/util/SparseArray;

    const/16 v1, 0x3e7

    new-instance v2, Ltmsdkobf/lh;

    const-string v3, "tipsmain"

    const-string v4, "getMainTips"

    invoke-direct {v2, v3, v4}, Ltmsdkobf/lh;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 83
    sget-object v0, Ltmsdkobf/lg;->Cb:Landroid/util/SparseArray;

    new-instance v1, Ltmsdkobf/lh;

    const-string v2, "sms"

    const-string v3, "reportHitTel"

    invoke-direct {v1, v2, v3}, Ltmsdkobf/lh;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 85
    sget-object v0, Ltmsdkobf/lg;->Cb:Landroid/util/SparseArray;

    new-instance v1, Ltmsdkobf/lh;

    const-string v2, "sms"

    const-string v3, "reportHitTel"

    invoke-direct {v1, v2, v3}, Ltmsdkobf/lh;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 86
    sget-object v0, Ltmsdkobf/lg;->Cb:Landroid/util/SparseArray;

    const/16 v1, 0x16

    new-instance v2, Ltmsdkobf/lh;

    const-string v3, "antitheft"

    const-string v4, "reportCmdResult"

    invoke-direct {v2, v3, v4}, Ltmsdkobf/lh;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 89
    sget-object v0, Ltmsdkobf/lg;->Cb:Landroid/util/SparseArray;

    const/16 v1, 0x17

    new-instance v2, Ltmsdkobf/lh;

    const-string v3, "phonenumquery"

    const-string v4, "getTagPhonenum"

    invoke-direct {v2, v3, v4}, Ltmsdkobf/lh;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 90
    sget-object v0, Ltmsdkobf/lg;->Cb:Landroid/util/SparseArray;

    const/16 v1, 0x18

    new-instance v2, Ltmsdkobf/lh;

    const-string v3, "softinfo"

    const-string v4, "getSoftInfo"

    invoke-direct {v2, v3, v4}, Ltmsdkobf/lh;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 91
    return-void
.end method

.method public static bW(I)Ltmsdkobf/lj;
    .locals 2
    .parameter "requestId"

    .prologue
    .line 94
    new-instance v1, Ltmsdkobf/lj;

    sget-object v0, Ltmsdkobf/lg;->Cb:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltmsdkobf/lh;

    invoke-direct {v1, p0, v0}, Ltmsdkobf/lj;-><init>(ILtmsdkobf/lh;)V

    return-object v1
.end method
