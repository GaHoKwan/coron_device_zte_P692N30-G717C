.class public Lcom/mediatek/engineermode/wifi/ChannelInfo;
.super Ljava/lang/Object;
.source "ChannelInfo.java"


# static fields
.field public static final CHANNEL_NUMBER_14:I = 0xe

.field private static final DEFAULT_CHANNEL_COUNT:I = 0xb

.field private static final MAX_CHANNEL_COUNT:I = 0x4b

.field private static final TAG:Ljava/lang/String; = "EM/Wifi_ChannelInfo"

.field private static final sBw40mUnsupported2dot4GChannels:[I

.field protected static sChannels:[J

.field protected static sHas14Ch:Z

.field protected static sHasUpper14Ch:Z


# instance fields
.field final mChannelFreq:[I

.field final mChannelName:[Ljava/lang/String;

.field protected mChannelSelect:Ljava/lang/String;

.field final mFullChannelName:[Ljava/lang/String;

.field private final sBw40MChannels:[[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/engineermode/wifi/ChannelInfo;->sChannels:[J

    .line 50
    sput-boolean v1, Lcom/mediatek/engineermode/wifi/ChannelInfo;->sHas14Ch:Z

    .line 51
    sput-boolean v1, Lcom/mediatek/engineermode/wifi/ChannelInfo;->sHasUpper14Ch:Z

    .line 136
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mediatek/engineermode/wifi/ChannelInfo;->sBw40mUnsupported2dot4GChannels:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v3, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/engineermode/wifi/ChannelInfo;->mChannelSelect:Ljava/lang/String;

    .line 52
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Channel 1 [2412MHz]"

    aput-object v1, v0, v4

    const-string v1, "Channel 2 [2417MHz]"

    aput-object v1, v0, v5

    const-string v1, "Channel 3 [2422MHz]"

    aput-object v1, v0, v6

    const-string v1, "Channel 4 [2427MHz]"

    aput-object v1, v0, v7

    const-string v1, "Channel 5 [2432MHz]"

    aput-object v1, v0, v3

    const/4 v1, 0x5

    const-string v2, "Channel 6 [2437MHz]"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Channel 7 [2442MHz]"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Channel 8 [2447MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Channel 9 [2452MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Channel 10 [2457MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Channel 11 [2462MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Channel 12 [2467MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Channel 13 [2472MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Channel 14 [2484MHz]"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/mediatek/engineermode/wifi/ChannelInfo;->mChannelName:[Ljava/lang/String;

    .line 62
    const/16 v0, 0x4b

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Channel 1 [2412MHz]"

    aput-object v1, v0, v4

    const-string v1, "Channel 2 [2417MHz]"

    aput-object v1, v0, v5

    const-string v1, "Channel 3 [2422MHz]"

    aput-object v1, v0, v6

    const-string v1, "Channel 4 [2427MHz]"

    aput-object v1, v0, v7

    const-string v1, "Channel 5 [2432MHz]"

    aput-object v1, v0, v3

    const/4 v1, 0x5

    const-string v2, "Channel 6 [2437MHz]"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Channel 7 [2442MHz]"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Channel 8 [2447MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Channel 9 [2452MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Channel 10 [2457MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Channel 11 [2462MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Channel 12 [2467MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Channel 13 [2472MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Channel 14 [2484MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Channel 36 [5180MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Channel 38 [5190MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Channel 40 [5200MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Channel 44 [5220MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Channel 46 [5230MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "Channel 48 [5240MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Channel 52 [5260MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "Channel 54 [5270MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "Channel 56 [5280MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "Channel 60 [5300MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Channel 62 [5310MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Channel 64 [5320MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Channel 68 [5340MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "Channel 70 [5350MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "Channel 72 [5360MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "Channel 76 [5380MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "Channel 78 [5390MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "Channel 80 [5400MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "Channel 84 [5420MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "Channel 86 [5430MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "Channel 88 [5440MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "Channel 92 [5460MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "Channel 94 [5470MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "Channel 96 [5480MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "Channel 100 [5500MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "Channel 102 [5510MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "Channel 104 [5520MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "Channel 108 [5540MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "Channel 110 [5550MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "Channel 112 [5560MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "Channel 116 [5580MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "Channel 118 [5590MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "Channel 120 [5600MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "Channel 124 [5620MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "Channel 126 [5630MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "Channel 128 [5640MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "Channel 132 [5660MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "Channel 134 [5670MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "Channel 136 [5680MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "Channel 140 [5700MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "Channel 149 [5745MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "Channel 151 [5755MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "Channel 153 [5765MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "Channel 157 [5785MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "Channel 159 [5795MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "Channel 161 [5805MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "Channel 165 [5825MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "Channel 167 [5835MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "Channel 169 [5845MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "Channel 173 [5865MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "Channel 175 [5875MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "Channel 177 [5885MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "Channel 181 [5905MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "Channel 183 [4915MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "Channel 184 [4920MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "Channel 185 [4925MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "Channel 187 [4935MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "Channel 188 [4940MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "Channel 189 [4945MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "Channel 192 [4960MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "Channel 196 [4980MHz]"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/mediatek/engineermode/wifi/ChannelInfo;->mFullChannelName:[Ljava/lang/String;

    .line 103
    const/16 v0, 0x4b

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/mediatek/engineermode/wifi/ChannelInfo;->mChannelFreq:[I

    .line 116
    const/16 v0, 0x11

    new-array v0, v0, [[Ljava/lang/Object;

    new-array v1, v7, [Ljava/lang/Object;

    const/16 v2, 0x26

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const v2, 0x4f3170

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "Channel 38 [5190MHz]"

    aput-object v2, v1, v6

    aput-object v1, v0, v4

    new-array v1, v7, [Ljava/lang/Object;

    const/16 v2, 0x2e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const v2, 0x4fcdb0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "Channel 46 [5230MHz]"

    aput-object v2, v1, v6

    aput-object v1, v0, v5

    new-array v1, v7, [Ljava/lang/Object;

    const/16 v2, 0x36

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const v2, 0x5069f0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "Channel 54 [5270MHz]"

    aput-object v2, v1, v6

    aput-object v1, v0, v6

    new-array v1, v7, [Ljava/lang/Object;

    const/16 v2, 0x3e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const v2, 0x510630

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "Channel 62 [5310MHz]"

    aput-object v2, v1, v6

    aput-object v1, v0, v7

    new-array v1, v7, [Ljava/lang/Object;

    const/16 v2, 0x46

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const v2, 0x51a270

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "Channel 70 [5350MHz]"

    aput-object v2, v1, v6

    aput-object v1, v0, v3

    const/4 v1, 0x5

    new-array v2, v7, [Ljava/lang/Object;

    const/16 v3, 0x4e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x523eb0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const-string v3, "Channel 78 [5390MHz]"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v7, [Ljava/lang/Object;

    const/16 v3, 0x56

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x52daf0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const-string v3, "Channel 86 [5430MHz]"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v7, [Ljava/lang/Object;

    const/16 v3, 0x5e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x537730

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const-string v3, "Channel 94 [5470MHz]"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v7, [Ljava/lang/Object;

    const/16 v3, 0x66

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x541370

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const-string v3, "Channel 102 [5510MHz]"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v7, [Ljava/lang/Object;

    const/16 v3, 0x6e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x54afb0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const-string v3, "Channel 110 [5550MHz]"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v7, [Ljava/lang/Object;

    const/16 v3, 0x76

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x554bf0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const-string v3, "Channel 118 [5590MHz]"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v7, [Ljava/lang/Object;

    const/16 v3, 0x7e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x55e830

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const-string v3, "Channel 126 [5630MHz]"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v7, [Ljava/lang/Object;

    const/16 v3, 0x86

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x568470

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const-string v3, "Channel 134 [5670MHz]"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v7, [Ljava/lang/Object;

    const/16 v3, 0x97

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x57d078

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const-string v3, "Channel 151 [5755MHz]"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v7, [Ljava/lang/Object;

    const/16 v3, 0x9f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x586cb8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const-string v3, "Channel 159 [5795MHz]"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v7, [Ljava/lang/Object;

    const/16 v3, 0xa7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x5908f8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const-string v3, "Channel 167 [5835MHz]"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v7, [Ljava/lang/Object;

    const/16 v3, 0xaf

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x59a538

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const-string v3, "Channel 175 [5875MHz]"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/mediatek/engineermode/wifi/ChannelInfo;->sBw40MChannels:[[Ljava/lang/Object;

    .line 338
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/ChannelInfo;->mFullChannelName:[Ljava/lang/String;

    aget-object v0, v0, v4

    iput-object v0, p0, Lcom/mediatek/engineermode/wifi/ChannelInfo;->mChannelSelect:Ljava/lang/String;

    .line 339
    return-void

    .line 103
    nop

    :array_0
    .array-data 0x4
        0xe0t 0xcdt 0x24t 0x0t
        0x68t 0xe1t 0x24t 0x0t
        0xf0t 0xf4t 0x24t 0x0t
        0x78t 0x8t 0x25t 0x0t
        0x0t 0x1ct 0x25t 0x0t
        0x88t 0x2ft 0x25t 0x0t
        0x10t 0x43t 0x25t 0x0t
        0x98t 0x56t 0x25t 0x0t
        0x20t 0x6at 0x25t 0x0t
        0xa8t 0x7dt 0x25t 0x0t
        0x30t 0x91t 0x25t 0x0t
        0xb8t 0xa4t 0x25t 0x0t
        0x40t 0xb8t 0x25t 0x0t
        0x20t 0xe7t 0x25t 0x0t
        0x60t 0xat 0x4ft 0x0t
        0x70t 0x31t 0x4ft 0x0t
        0x80t 0x58t 0x4ft 0x0t
        0xa0t 0xa6t 0x4ft 0x0t
        0xb0t 0xcdt 0x4ft 0x0t
        0xc0t 0xf4t 0x4ft 0x0t
        0xe0t 0x42t 0x50t 0x0t
        0xf0t 0x69t 0x50t 0x0t
        0x0t 0x91t 0x50t 0x0t
        0x20t 0xdft 0x50t 0x0t
        0x30t 0x6t 0x51t 0x0t
        0x40t 0x2dt 0x51t 0x0t
        0x60t 0x7bt 0x51t 0x0t
        0x70t 0xa2t 0x51t 0x0t
        0x80t 0xc9t 0x51t 0x0t
        0xa0t 0x17t 0x52t 0x0t
        0xb0t 0x3et 0x52t 0x0t
        0xc0t 0x65t 0x52t 0x0t
        0xe0t 0xb3t 0x52t 0x0t
        0xf0t 0xdat 0x52t 0x0t
        0x0t 0x2t 0x53t 0x0t
        0x20t 0x50t 0x53t 0x0t
        0x30t 0x77t 0x53t 0x0t
        0x40t 0x9et 0x53t 0x0t
        0x60t 0xect 0x53t 0x0t
        0x70t 0x13t 0x54t 0x0t
        0x80t 0x3at 0x54t 0x0t
        0xa0t 0x88t 0x54t 0x0t
        0xb0t 0xaft 0x54t 0x0t
        0xc0t 0xd6t 0x54t 0x0t
        0xe0t 0x24t 0x55t 0x0t
        0xf0t 0x4bt 0x55t 0x0t
        0x0t 0x73t 0x55t 0x0t
        0x20t 0xc1t 0x55t 0x0t
        0x30t 0xe8t 0x55t 0x0t
        0x40t 0xft 0x56t 0x0t
        0x60t 0x5dt 0x56t 0x0t
        0x70t 0x84t 0x56t 0x0t
        0x80t 0xabt 0x56t 0x0t
        0xa0t 0xf9t 0x56t 0x0t
        0x68t 0xa9t 0x57t 0x0t
        0x78t 0xd0t 0x57t 0x0t
        0x88t 0xf7t 0x57t 0x0t
        0xa8t 0x45t 0x58t 0x0t
        0xb8t 0x6ct 0x58t 0x0t
        0xc8t 0x93t 0x58t 0x0t
        0xe8t 0xe1t 0x58t 0x0t
        0xf8t 0x8t 0x59t 0x0t
        0x8t 0x30t 0x59t 0x0t
        0x28t 0x7et 0x59t 0x0t
        0x38t 0xa5t 0x59t 0x0t
        0x48t 0xcct 0x59t 0x0t
        0x68t 0x1at 0x5at 0x0t
        0x38t 0xfft 0x4at 0x0t
        0xc0t 0x12t 0x4bt 0x0t
        0x48t 0x26t 0x4bt 0x0t
        0x58t 0x4dt 0x4bt 0x0t
        0xe0t 0x60t 0x4bt 0x0t
        0x68t 0x74t 0x4bt 0x0t
        0x0t 0xaft 0x4bt 0x0t
        0x20t 0xfdt 0x4bt 0x0t
    .end array-data
.end method

.method private computeInsertIndex(Landroid/widget/ArrayAdapter;I)I
    .locals 5
    .parameter
    .parameter "channel"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 207
    .local p1, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const/4 v3, -0x1

    .line 208
    .local v3, targetIndex:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 209
    invoke-virtual {p1, v0}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 210
    .local v2, name:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/mediatek/engineermode/wifi/ChannelInfo;->extractChannelIdFromName(Ljava/lang/String;)I

    move-result v1

    .line 211
    .local v1, id:I
    if-le v1, p2, :cond_2

    .line 212
    move v3, v0

    .line 216
    .end local v1           #id:I
    .end local v2           #name:Ljava/lang/String;
    :cond_0
    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 217
    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v3

    .line 219
    :cond_1
    return v3

    .line 208
    .restart local v1       #id:I
    .restart local v2       #name:Ljava/lang/String;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private extractChannelIdFromName(Ljava/lang/String;)I
    .locals 6
    .parameter "fullName"

    .prologue
    .line 233
    const/4 v1, -0x1

    .line 234
    .local v1, id:I
    const-string v3, " +"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 235
    .local v2, strs:[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 237
    const/4 v3, 0x1

    :try_start_0
    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 244
    :goto_0
    return v1

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v3, "EM/Wifi_ChannelInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NumberFormatException:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 242
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_0
    const-string v3, "EM/Wifi_ChannelInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "extractChannelIdFromName(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " invalid name format!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getChannelIdIntern(I[[Ljava/lang/Object;)I
    .locals 3
    .parameter "index"
    .parameter "datas"

    .prologue
    .line 162
    aget-object v1, p2, p1

    const/4 v2, 0x0

    aget-object v0, v1, v2

    check-cast v0, Ljava/lang/Integer;

    .line 163
    .local v0, id:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method private getChannelNameIntern(I[[Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .parameter "index"
    .parameter "datas"

    .prologue
    .line 157
    aget-object v1, p2, p1

    const/4 v2, 0x2

    aget-object v0, v1, v2

    check-cast v0, Ljava/lang/String;

    .line 158
    .local v0, name:Ljava/lang/String;
    return-object v0
.end method

.method public static getSupportChannels()V
    .locals 9

    .prologue
    const-wide/16 v7, 0xe

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 310
    const/16 v1, 0x4b

    new-array v1, v1, [J

    sput-object v1, Lcom/mediatek/engineermode/wifi/ChannelInfo;->sChannels:[J

    .line 311
    sget-boolean v1, Lcom/mediatek/engineermode/wifi/EMWifi;->sIsInitialed:Z

    if-eqz v1, :cond_3

    .line 312
    sget-object v1, Lcom/mediatek/engineermode/wifi/ChannelInfo;->sChannels:[J

    invoke-static {v1}, Lcom/mediatek/engineermode/wifi/EMWifi;->getSupportChannelList([J)I

    move-result v1

    if-nez v1, :cond_2

    .line 313
    const-string v1, "EM/Wifi_ChannelInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LENGTH channels[0] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/engineermode/wifi/ChannelInfo;->sChannels:[J

    aget-wide v3, v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    int-to-long v1, v0

    sget-object v3, Lcom/mediatek/engineermode/wifi/ChannelInfo;->sChannels:[J

    aget-wide v3, v3, v5

    cmp-long v1, v1, v3

    if-gtz v1, :cond_4

    .line 315
    sget-object v1, Lcom/mediatek/engineermode/wifi/ChannelInfo;->sChannels:[J

    aget-wide v1, v1, v0

    cmp-long v1, v7, v1

    if-nez v1, :cond_0

    .line 316
    sput-boolean v6, Lcom/mediatek/engineermode/wifi/ChannelInfo;->sHas14Ch:Z

    .line 318
    :cond_0
    sget-object v1, Lcom/mediatek/engineermode/wifi/ChannelInfo;->sChannels:[J

    aget-wide v1, v1, v0

    cmp-long v1, v1, v7

    if-lez v1, :cond_1

    .line 319
    sput-boolean v6, Lcom/mediatek/engineermode/wifi/ChannelInfo;->sHasUpper14Ch:Z

    .line 321
    :cond_1
    const-string v1, "EM/Wifi_ChannelInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "channels["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/engineermode/wifi/ChannelInfo;->sChannels:[J

    aget-wide v3, v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 324
    .end local v0           #i:I
    :cond_2
    sget-object v1, Lcom/mediatek/engineermode/wifi/ChannelInfo;->sChannels:[J

    const-wide/16 v2, 0xb

    aput-wide v2, v1, v5

    .line 325
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    const/16 v1, 0xb

    if-ge v0, v1, :cond_4

    .line 326
    sget-object v1, Lcom/mediatek/engineermode/wifi/ChannelInfo;->sChannels:[J

    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v3, v0, 0x1

    int-to-long v3, v3

    aput-wide v3, v1, v2

    .line 325
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 330
    .end local v0           #i:I
    :cond_3
    const-string v1, "EM/Wifi_ChannelInfo"

    const-string v2, "Wifi is not initialed"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_4
    return-void
.end method

.method private isChannelSupported(J)Z
    .locals 10
    .parameter "channel"

    .prologue
    const-wide/16 v8, 0x2

    .line 256
    const/4 v3, 0x0

    .line 257
    .local v3, supported:Z
    const/4 v2, 0x1

    .local v2, i:I
    :goto_0
    int-to-long v4, v2

    sget-object v6, Lcom/mediatek/engineermode/wifi/ChannelInfo;->sChannels:[J

    const/4 v7, 0x0

    aget-wide v6, v6, v7

    cmp-long v4, v4, v6

    if-gtz v4, :cond_1

    .line 258
    sget-object v4, Lcom/mediatek/engineermode/wifi/ChannelInfo;->sChannels:[J

    aget-wide v0, v4, v2

    .line 259
    .local v0, ch:J
    cmp-long v4, v0, p1

    if-eqz v4, :cond_0

    add-long v4, v0, v8

    cmp-long v4, v4, p1

    if-eqz v4, :cond_0

    sub-long v4, v0, v8

    cmp-long v4, v4, p1

    if-nez v4, :cond_2

    .line 260
    :cond_0
    const/4 v3, 0x1

    .line 264
    .end local v0           #ch:J
    :cond_1
    const-string v4, "EM/Wifi_ChannelInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isChannelSupported: channel:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " supported:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    return v3

    .line 257
    .restart local v0       #ch:J
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getChannelFreq()I
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/ChannelInfo;->mChannelFreq:[I

    invoke-virtual {p0}, Lcom/mediatek/engineermode/wifi/ChannelInfo;->getChannelIndex()I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public getChannelIndex()I
    .locals 3

    .prologue
    .line 282
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/mediatek/engineermode/wifi/ChannelInfo;->mFullChannelName:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 283
    iget-object v1, p0, Lcom/mediatek/engineermode/wifi/ChannelInfo;->mFullChannelName:[Ljava/lang/String;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/mediatek/engineermode/wifi/ChannelInfo;->mChannelSelect:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 287
    .end local v0           #i:I
    :goto_1
    return v0

    .line 282
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 287
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getChannelNameById(J)Ljava/lang/String;
    .locals 7
    .parameter "channel"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/ChannelInfo;->mFullChannelName:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v0, v1

    .line 224
    .local v4, name:Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/mediatek/engineermode/wifi/ChannelInfo;->extractChannelIdFromName(Ljava/lang/String;)I

    move-result v2

    .line 225
    .local v2, id:I
    int-to-long v5, v2

    cmp-long v5, v5, p1

    if-nez v5, :cond_0

    .line 229
    .end local v2           #id:I
    .end local v4           #name:Ljava/lang/String;
    :goto_1
    return-object v4

    .line 223
    .restart local v2       #id:I
    .restart local v4       #name:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 229
    .end local v2           #id:I
    .end local v4           #name:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public insert5GChannelsIntoAdapter(Landroid/widget/ArrayAdapter;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 183
    .local p1, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    int-to-long v4, v0

    sget-object v6, Lcom/mediatek/engineermode/wifi/ChannelInfo;->sChannels:[J

    const/4 v7, 0x0

    aget-wide v6, v6, v7

    cmp-long v4, v4, v6

    if-gtz v4, :cond_2

    .line 184
    sget-object v4, Lcom/mediatek/engineermode/wifi/ChannelInfo;->sChannels:[J

    aget-wide v1, v4, v0

    .line 185
    .local v1, id:J
    const-wide/16 v4, 0xe

    cmp-long v4, v1, v4

    if-lez v4, :cond_0

    .line 186
    invoke-virtual {p0, v1, v2}, Lcom/mediatek/engineermode/wifi/ChannelInfo;->getChannelNameById(J)Ljava/lang/String;

    move-result-object v3

    .line 187
    .local v3, tag:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 188
    invoke-virtual {p0, p1, v3}, Lcom/mediatek/engineermode/wifi/ChannelInfo;->insertChannelIntoAdapterByOrder(Landroid/widget/ArrayAdapter;Ljava/lang/String;)V

    .line 183
    .end local v3           #tag:Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 190
    .restart local v3       #tag:Ljava/lang/String;
    :cond_1
    const-string v4, "EM/Wifi_ChannelInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UNKnown channel:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 194
    .end local v1           #id:J
    .end local v3           #tag:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public insertBw40MChannelsIntoAdapter(Landroid/widget/ArrayAdapter;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 197
    .local p1, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/mediatek/engineermode/wifi/ChannelInfo;->sBw40MChannels:[[Ljava/lang/Object;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 198
    iget-object v3, p0, Lcom/mediatek/engineermode/wifi/ChannelInfo;->sBw40MChannels:[[Ljava/lang/Object;

    invoke-direct {p0, v0, v3}, Lcom/mediatek/engineermode/wifi/ChannelInfo;->getChannelIdIntern(I[[Ljava/lang/Object;)I

    move-result v1

    .line 199
    .local v1, id:I
    int-to-long v3, v1

    invoke-direct {p0, v3, v4}, Lcom/mediatek/engineermode/wifi/ChannelInfo;->isChannelSupported(J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 200
    iget-object v3, p0, Lcom/mediatek/engineermode/wifi/ChannelInfo;->sBw40MChannels:[[Ljava/lang/Object;

    invoke-direct {p0, v0, v3}, Lcom/mediatek/engineermode/wifi/ChannelInfo;->getChannelNameIntern(I[[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 201
    .local v2, name:Ljava/lang/String;
    invoke-virtual {p0, p1, v2}, Lcom/mediatek/engineermode/wifi/ChannelInfo;->insertChannelIntoAdapterByOrder(Landroid/widget/ArrayAdapter;Ljava/lang/String;)V

    .line 197
    .end local v2           #name:Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 204
    .end local v1           #id:I
    :cond_1
    return-void
.end method

.method public insertBw40mUnsupported2dot4GChannels(Landroid/widget/ArrayAdapter;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 147
    .local p1, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    sget-object v3, Lcom/mediatek/engineermode/wifi/ChannelInfo;->sBw40mUnsupported2dot4GChannels:[I

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 148
    sget-object v3, Lcom/mediatek/engineermode/wifi/ChannelInfo;->sBw40mUnsupported2dot4GChannels:[I

    aget v0, v3, v2

    .line 149
    .local v0, channel:I
    iget-object v3, p0, Lcom/mediatek/engineermode/wifi/ChannelInfo;->mFullChannelName:[Ljava/lang/String;

    add-int/lit8 v4, v0, -0x1

    aget-object v1, v3, v4

    .line 150
    .local v1, channelName:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/wifi/ChannelInfo;->isContains(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 151
    invoke-virtual {p0, p1, v1}, Lcom/mediatek/engineermode/wifi/ChannelInfo;->insertChannelIntoAdapterByOrder(Landroid/widget/ArrayAdapter;Ljava/lang/String;)V

    .line 147
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 154
    .end local v0           #channel:I
    .end local v1           #channelName:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public insertChannelIntoAdapterByOrder(Landroid/widget/ArrayAdapter;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter "channelName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 248
    .local p1, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {p1, p2}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 249
    invoke-direct {p0, p2}, Lcom/mediatek/engineermode/wifi/ChannelInfo;->extractChannelIdFromName(Ljava/lang/String;)I

    move-result v0

    .line 250
    .local v0, id:I
    invoke-direct {p0, p1, v0}, Lcom/mediatek/engineermode/wifi/ChannelInfo;->computeInsertIndex(Landroid/widget/ArrayAdapter;I)I

    move-result v1

    .line 251
    .local v1, targetIndex:I
    invoke-virtual {p1, p2, v1}, Landroid/widget/ArrayAdapter;->insert(Ljava/lang/Object;I)V

    .line 253
    .end local v0           #id:I
    .end local v1           #targetIndex:I
    :cond_0
    return-void
.end method

.method public isContains(I)Z
    .locals 6
    .parameter "channel"

    .prologue
    const/4 v1, 0x0

    .line 298
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    int-to-long v2, v0

    sget-object v4, Lcom/mediatek/engineermode/wifi/ChannelInfo;->sChannels:[J

    aget-wide v4, v4, v1

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 299
    int-to-long v2, p1

    sget-object v4, Lcom/mediatek/engineermode/wifi/ChannelInfo;->sChannels:[J

    aget-wide v4, v4, v0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 300
    const/4 v1, 0x1

    .line 303
    :cond_0
    return v1

    .line 298
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public remove5GChannelsFromAdapter(Landroid/widget/ArrayAdapter;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 173
    .local p1, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_0
    if-lez v0, :cond_1

    .line 174
    invoke-virtual {p1, v0}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 175
    .local v2, name:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/mediatek/engineermode/wifi/ChannelInfo;->extractChannelIdFromName(Ljava/lang/String;)I

    move-result v1

    .line 176
    .local v1, id:I
    const/16 v3, 0xe

    if-le v1, v3, :cond_0

    .line 177
    invoke-virtual {p1, v2}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    .line 173
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 180
    .end local v1           #id:I
    .end local v2           #name:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public removeBw40MChannelsFromAdapter(Landroid/widget/ArrayAdapter;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 167
    .local p1, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/mediatek/engineermode/wifi/ChannelInfo;->sBw40MChannels:[[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 168
    iget-object v1, p0, Lcom/mediatek/engineermode/wifi/ChannelInfo;->sBw40MChannels:[[Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/mediatek/engineermode/wifi/ChannelInfo;->getChannelNameIntern(I[[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    .line 167
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 170
    :cond_0
    return-void
.end method

.method public removeBw40mUnsupported2dot4GChannels(Landroid/widget/ArrayAdapter;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 139
    .local p1, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v3, Lcom/mediatek/engineermode/wifi/ChannelInfo;->sBw40mUnsupported2dot4GChannels:[I

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 140
    sget-object v3, Lcom/mediatek/engineermode/wifi/ChannelInfo;->sBw40mUnsupported2dot4GChannels:[I

    aget v0, v3, v1

    .line 141
    .local v0, channel:I
    add-int/lit8 v2, v0, -0x1

    .line 142
    .local v2, index:I
    iget-object v3, p0, Lcom/mediatek/engineermode/wifi/ChannelInfo;->mFullChannelName:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {p1, v3}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    .line 139
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 144
    .end local v0           #channel:I
    .end local v2           #index:I
    :cond_0
    return-void
.end method
