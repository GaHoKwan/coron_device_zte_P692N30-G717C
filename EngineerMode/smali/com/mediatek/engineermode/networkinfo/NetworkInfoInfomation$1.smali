.class Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$1;
.super Ljava/util/HashMap;
.source "NetworkInfoInfomation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/Integer;",
        "Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$NetworkInfoItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x6

    const/16 v7, 0xc8

    const/16 v6, 0xe

    const/4 v5, 0x4

    const/16 v4, 0x10

    .line 101
    iput-object p1, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$1;->this$0:Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 102
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$NetworkInfoItem;

    const-string v2, "RR Cell Sel"

    invoke-direct {v1, v2, v8}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$NetworkInfoItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$NetworkInfoItem;

    const-string v2, "RR Ch Dscr"

    const/16 v3, 0x154

    invoke-direct {v1, v2, v3}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$NetworkInfoItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$NetworkInfoItem;

    const-string v2, "RR Ctrl chan"

    invoke-direct {v1, v2, v6}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$NetworkInfoItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$NetworkInfoItem;

    const-string v2, "RR RACH Ctrl"

    invoke-direct {v1, v2, v6}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$NetworkInfoItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$NetworkInfoItem;

    const-string v2, "RR LAI Info"

    const/16 v3, 0x1c

    invoke-direct {v1, v2, v3}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$NetworkInfoItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$NetworkInfoItem;

    const-string v2, "RR Radio Link"

    invoke-direct {v1, v2, v4}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$NetworkInfoItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$NetworkInfoItem;

    const-string v2, "RR Meas Rep"

    const/16 v3, 0x568

    invoke-direct {v1, v2, v3}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$NetworkInfoItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$NetworkInfoItem;

    const-string v2, "RR Ca List"

    const/16 v3, 0x104

    invoke-direct {v1, v2, v3}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$NetworkInfoItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$NetworkInfoItem;

    const-string v2, "RR Control Msg"

    invoke-direct {v1, v2, v5}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$NetworkInfoItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const/16 v0, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$NetworkInfoItem;

    const-string v2, "RR SI2Q Info"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$NetworkInfoItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$NetworkInfoItem;

    const-string v2, "RR MI Info"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$NetworkInfoItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const/16 v0, 0xb

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$NetworkInfoItem;

    const-string v2, "RR BLK Info"

    const/16 v3, 0x50

    invoke-direct {v1, v2, v3}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$NetworkInfoItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$NetworkInfoItem;

    const-string v2, "RR TBF Info"

    const/16 v3, 0x38

    invoke-direct {v1, v2, v3}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$NetworkInfoItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const/16 v0, 0xd

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$NetworkInfoItem;

    const-string v2, "RR GPRS Gen"

    const/16 v3, 0x20

    invoke-direct {v1, v2, v3}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$NetworkInfoItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const/16 v0, 0x35

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$NetworkInfoItem;

    const-string v2, "RR 3G MM EM Info"

    const/16 v3, 0x3c

    invoke-direct {v1, v2, v3}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$NetworkInfoItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const/16 v0, 0x3b

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$NetworkInfoItem;

    const-string v2, "RR 3G TCM MMI EM Info"

    invoke-direct {v1, v2, v6}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$NetworkInfoItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const/16 v0, 0x4b

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$NetworkInfoItem;

    const-string v2, "RR 3G CsceEMServCellSStatusInd"

    const/16 v3, 0x68

    invoke-direct {v1, v2, v3}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$NetworkInfoItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const/16 v0, 0x4c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$NetworkInfoItem;

    const-string v2, "RR xG CsceEMNeighCellSStatusIndStructSize"

    const/16 v3, 0x410

    invoke-direct {v1, v2, v3}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$NetworkInfoItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const/16 v0, 0x51

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$NetworkInfoItem;

    const-string v2, "RR 3G CsceEmInfoMultiPlmn"

    const/16 v3, 0x4a

    invoke-direct {v1, v2, v3}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$NetworkInfoItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const/16 v0, 0x5a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$NetworkInfoItem;

    const-string v2, "RR 3G MemeEmInfoUmtsCellStatus"

    const/16 v3, 0x608

    invoke-direct {v1, v2, v3}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$NetworkInfoItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const/16 v0, 0x63

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$NetworkInfoItem;

    const-string v2, "RR 3G MemeEmPeriodicBlerReportInd"

    invoke-direct {v1, v2, v7}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$NetworkInfoItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const/16 v0, 0x6f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$NetworkInfoItem;

    const-string v2, "RR 3G UrrUmtsSrncId"

    invoke-direct {v1, v2, v5}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$NetworkInfoItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const/16 v0, 0x8c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$NetworkInfoItem;

    const-string v2, "RR 3G SlceEmPsDataRateStatusInd"

    invoke-direct {v1, v2, v7}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$NetworkInfoItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const/16 v0, 0x9b

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$NetworkInfoItem;

    const-string v2, "RR 3G MemeEmInfoHServCellInd"

    invoke-direct {v1, v2, v4}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$NetworkInfoItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const/16 v0, 0x82

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$NetworkInfoItem;

    const-string v2, "RR 3G HandoverSequenceIndStuct"

    const/16 v3, 0x20

    invoke-direct {v1, v2, v3}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$NetworkInfoItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const/16 v0, 0xb9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$NetworkInfoItem;

    const-string v2, "RR 3G Ul2EmAdmPoolStatusIndStruct"

    const/16 v3, 0x40

    invoke-direct {v1, v2, v3}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$NetworkInfoItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const/16 v0, 0xba

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$NetworkInfoItem;

    const-string v2, "RR 3G Ul2EmPsDataRateStatusIndStruct"

    invoke-direct {v1, v2, v4}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$NetworkInfoItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const/16 v0, 0xbb

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$NetworkInfoItem;

    const-string v2, "RR 3G Ul2EmHsdschReconfigStatusIndStruct"

    invoke-direct {v1, v2, v4}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$NetworkInfoItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const/16 v0, 0xbc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$NetworkInfoItem;

    const-string v2, "RR 3G Ul2EmUrlcEventStatusIndStruct"

    const/16 v3, 0x24

    invoke-direct {v1, v2, v3}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$NetworkInfoItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const/16 v0, 0xbd

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$NetworkInfoItem;

    const-string v2, "RR 3G Ul2EmPeriodicBlerReportInd"

    invoke-direct {v1, v2, v7}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$NetworkInfoItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    return-void
.end method
