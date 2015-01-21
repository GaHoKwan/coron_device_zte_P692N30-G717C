.class public final Ltmsdkobf/bw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final synthetic N:Z

.field public static final hA:Ltmsdkobf/bw;

.field public static final hB:Ltmsdkobf/bw;

.field public static final hC:Ltmsdkobf/bw;

.field public static final hD:Ltmsdkobf/bw;

.field public static final hE:Ltmsdkobf/bw;

.field public static final hF:Ltmsdkobf/bw;

.field public static final hG:Ltmsdkobf/bw;

.field public static final hH:Ltmsdkobf/bw;

.field public static final hI:Ltmsdkobf/bw;

.field public static final hJ:Ltmsdkobf/bw;

.field public static final hK:Ltmsdkobf/bw;

.field public static final hL:Ltmsdkobf/bw;

.field public static final hM:Ltmsdkobf/bw;

.field public static final hN:Ltmsdkobf/bw;

.field public static final hO:Ltmsdkobf/bw;

.field public static final hP:Ltmsdkobf/bw;

.field public static final hQ:Ltmsdkobf/bw;

.field public static final hR:Ltmsdkobf/bw;

.field public static final hS:Ltmsdkobf/bw;

.field public static final hT:Ltmsdkobf/bw;

.field public static final hU:Ltmsdkobf/bw;

.field public static final hV:Ltmsdkobf/bw;

.field public static final hW:Ltmsdkobf/bw;

.field public static final hX:Ltmsdkobf/bw;

.field public static final hY:Ltmsdkobf/bw;

.field public static final hZ:Ltmsdkobf/bw;

.field private static hl:[Ltmsdkobf/bw;

.field public static final hm:Ltmsdkobf/bw;

.field public static final hn:Ltmsdkobf/bw;

.field public static final ho:Ltmsdkobf/bw;

.field public static final hp:Ltmsdkobf/bw;

.field public static final hq:Ltmsdkobf/bw;

.field public static final hr:Ltmsdkobf/bw;

.field public static final hs:Ltmsdkobf/bw;

.field public static final ht:Ltmsdkobf/bw;

.field public static final hu:Ltmsdkobf/bw;

.field public static final hv:Ltmsdkobf/bw;

.field public static final hw:Ltmsdkobf/bw;

.field public static final hx:Ltmsdkobf/bw;

.field public static final hy:Ltmsdkobf/bw;

.field public static final hz:Ltmsdkobf/bw;


# instance fields
.field private aW:I

.field private aX:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 9
    const-class v0, Ltmsdkobf/bw;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Ltmsdkobf/bw;->N:Z

    .line 11
    const/16 v0, 0x28

    new-array v0, v0, [Ltmsdkobf/bw;

    sput-object v0, Ltmsdkobf/bw;->hl:[Ltmsdkobf/bw;

    .line 16
    new-instance v0, Ltmsdkobf/bw;

    const-string v3, "WHITELIST_COMMON"

    invoke-direct {v0, v2, v2, v3}, Ltmsdkobf/bw;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/bw;->hm:Ltmsdkobf/bw;

    .line 18
    new-instance v0, Ltmsdkobf/bw;

    const-string v2, "WHITELIST_UNUSUAL"

    invoke-direct {v0, v1, v1, v2}, Ltmsdkobf/bw;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/bw;->hn:Ltmsdkobf/bw;

    .line 20
    new-instance v0, Ltmsdkobf/bw;

    const-string v1, "BLACKLIST_ROM"

    invoke-direct {v0, v4, v4, v1}, Ltmsdkobf/bw;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/bw;->ho:Ltmsdkobf/bw;

    .line 22
    new-instance v0, Ltmsdkobf/bw;

    const-string v1, "BLACKLIST_WITHPLUGIN"

    invoke-direct {v0, v5, v5, v1}, Ltmsdkobf/bw;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/bw;->hp:Ltmsdkobf/bw;

    .line 24
    new-instance v0, Ltmsdkobf/bw;

    const-string v1, "BLACKLIST_ROM_THIRDPART"

    invoke-direct {v0, v6, v6, v1}, Ltmsdkobf/bw;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/bw;->hq:Ltmsdkobf/bw;

    .line 26
    new-instance v0, Ltmsdkobf/bw;

    const/4 v1, 0x5

    const/4 v2, 0x5

    const-string v3, "WHITELIST_ROM"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/bw;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/bw;->hr:Ltmsdkobf/bw;

    .line 28
    new-instance v0, Ltmsdkobf/bw;

    const/4 v1, 0x6

    const/4 v2, 0x6

    const-string v3, "WHITELIST_STARTER_SYMBIAN_V3"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/bw;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/bw;->hs:Ltmsdkobf/bw;

    .line 30
    new-instance v0, Ltmsdkobf/bw;

    const/4 v1, 0x7

    const/4 v2, 0x7

    const-string v3, "WHITELIST_PROCESS_SYMBIAN_V3"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/bw;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/bw;->ht:Ltmsdkobf/bw;

    .line 32
    new-instance v0, Ltmsdkobf/bw;

    const/16 v1, 0x8

    const/16 v2, 0x8

    const-string v3, "WHITELIST_NETWORK_SYMBIAN_V3"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/bw;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/bw;->hu:Ltmsdkobf/bw;

    .line 34
    new-instance v0, Ltmsdkobf/bw;

    const/16 v1, 0x9

    const/16 v2, 0x9

    const-string v3, "WHITELIST_STARTER_SYMBIAN_V5"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/bw;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/bw;->hv:Ltmsdkobf/bw;

    .line 36
    new-instance v0, Ltmsdkobf/bw;

    const/16 v1, 0xa

    const/16 v2, 0xa

    const-string v3, "WHITELIST_PROCESS_SYMBIAN_V5"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/bw;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/bw;->hw:Ltmsdkobf/bw;

    .line 38
    new-instance v0, Ltmsdkobf/bw;

    const/16 v1, 0xb

    const/16 v2, 0xb

    const-string v3, "WHITELIST_NETWORK_SYMBIAN_V5"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/bw;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/bw;->hx:Ltmsdkobf/bw;

    .line 40
    new-instance v0, Ltmsdkobf/bw;

    const/16 v1, 0xc

    const/16 v2, 0xc

    const-string v3, "FILE_CLEAR"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/bw;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/bw;->hy:Ltmsdkobf/bw;

    .line 42
    new-instance v0, Ltmsdkobf/bw;

    const/16 v1, 0xd

    const/16 v2, 0xd

    const-string v3, "WHITELIST_MEMORY_IPHONE"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/bw;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/bw;->hz:Ltmsdkobf/bw;

    .line 44
    new-instance v0, Ltmsdkobf/bw;

    const/16 v1, 0xe

    const/16 v2, 0xe

    const-string v3, "PAYMENT_BLACKLIST"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/bw;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/bw;->hA:Ltmsdkobf/bw;

    .line 46
    new-instance v0, Ltmsdkobf/bw;

    const/16 v1, 0xf

    const/16 v2, 0xf

    const-string v3, "PAYMENT_WHITELIST"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/bw;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/bw;->hB:Ltmsdkobf/bw;

    .line 48
    new-instance v0, Ltmsdkobf/bw;

    const/16 v1, 0x10

    const/16 v2, 0x10

    const-string v3, "SYSTEM_CLEAR_CONFIG_WP8"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/bw;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/bw;->hC:Ltmsdkobf/bw;

    .line 50
    new-instance v0, Ltmsdkobf/bw;

    const/16 v1, 0x11

    const/16 v2, 0x11

    const-string v3, "PRIVACYLOCKLIST_USUAL"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/bw;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/bw;->hD:Ltmsdkobf/bw;

    .line 52
    new-instance v0, Ltmsdkobf/bw;

    const/16 v1, 0x12

    const/16 v2, 0x12

    const-string v3, "LIST_CACHECLEAN_IPHONE"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/bw;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/bw;->hE:Ltmsdkobf/bw;

    .line 54
    new-instance v0, Ltmsdkobf/bw;

    const/16 v1, 0x13

    const/16 v2, 0x13

    const-string v3, "BLACKLIST_KILL_PROCESSES"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/bw;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/bw;->hF:Ltmsdkobf/bw;

    .line 56
    new-instance v0, Ltmsdkobf/bw;

    const/16 v1, 0x14

    const/16 v2, 0x14

    const-string v3, "WHITELIST_KILL_PROCESS"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/bw;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/bw;->hG:Ltmsdkobf/bw;

    .line 58
    new-instance v0, Ltmsdkobf/bw;

    const/16 v1, 0x15

    const/16 v2, 0x15

    const-string v3, "WHITELIST_AUTO_ROOT"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/bw;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/bw;->hH:Ltmsdkobf/bw;

    .line 60
    new-instance v0, Ltmsdkobf/bw;

    const/16 v1, 0x16

    const/16 v2, 0x16

    const-string v3, "WHITELIST_PERMISSION_CONTROL"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/bw;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/bw;->hI:Ltmsdkobf/bw;

    .line 62
    new-instance v0, Ltmsdkobf/bw;

    const/16 v1, 0x17

    const/16 v2, 0x17

    const-string v3, "CAMERA_SOFTWARE_LIST"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/bw;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/bw;->hJ:Ltmsdkobf/bw;

    .line 64
    new-instance v0, Ltmsdkobf/bw;

    const/16 v1, 0x18

    const/16 v2, 0x18

    const-string v3, "DEEPCLEAN_SOFTWARE_LIST"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/bw;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/bw;->hK:Ltmsdkobf/bw;

    .line 66
    new-instance v0, Ltmsdkobf/bw;

    const/16 v1, 0x19

    const/16 v2, 0x19

    const-string v3, "WHITELIST_CACHECLEAN_IPHONE"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/bw;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/bw;->hL:Ltmsdkobf/bw;

    .line 68
    new-instance v0, Ltmsdkobf/bw;

    const/16 v1, 0x1a

    const/16 v2, 0x1a

    const-string v3, "DEEPCLEAN_SOFT_PATH_LIST"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/bw;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/bw;->hM:Ltmsdkobf/bw;

    .line 70
    new-instance v0, Ltmsdkobf/bw;

    const/16 v1, 0x1b

    const/16 v2, 0x1b

    const-string v3, "PERMIS_MONITOR_LIST"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/bw;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/bw;->hN:Ltmsdkobf/bw;

    .line 72
    new-instance v0, Ltmsdkobf/bw;

    const/16 v1, 0x1c

    const/16 v2, 0x1c

    const-string v3, "NOTKILLLIST_KILL_PROCESSES"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/bw;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/bw;->hO:Ltmsdkobf/bw;

    .line 74
    new-instance v0, Ltmsdkobf/bw;

    const/16 v1, 0x1d

    const/16 v2, 0x1d

    const-string v3, "DEEP_CLEAN_MEDIA_SRC_PATH"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/bw;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/bw;->hP:Ltmsdkobf/bw;

    .line 76
    new-instance v0, Ltmsdkobf/bw;

    const/16 v1, 0x1e

    const/16 v2, 0x1e

    const-string v3, "ADBLOCKING_REPORT_WHITE"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/bw;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/bw;->hQ:Ltmsdkobf/bw;

    .line 78
    new-instance v0, Ltmsdkobf/bw;

    const/16 v1, 0x1f

    const/16 v2, 0x1f

    const-string v3, "WHITELIST_DEB_UNINSTALL_IPHONE"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/bw;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/bw;->hR:Ltmsdkobf/bw;

    .line 80
    new-instance v0, Ltmsdkobf/bw;

    const/16 v1, 0x20

    const/16 v2, 0x20

    const-string v3, "DEEP_CLEAN_WHITE_LIST"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/bw;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/bw;->hS:Ltmsdkobf/bw;

    .line 82
    new-instance v0, Ltmsdkobf/bw;

    const/16 v1, 0x21

    const/16 v2, 0x21

    const-string v3, "CAMERA_SOFTWARE_NEW_LIST"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/bw;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/bw;->hT:Ltmsdkobf/bw;

    .line 84
    new-instance v0, Ltmsdkobf/bw;

    const/16 v1, 0x22

    const/16 v2, 0x22

    const-string v3, "ROOT_PHONE_WHITE_LIST"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/bw;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/bw;->hU:Ltmsdkobf/bw;

    .line 86
    new-instance v0, Ltmsdkobf/bw;

    const/16 v1, 0x23

    const/16 v2, 0x23

    const-string v3, "HARDWARE_INFOMATION_WP8"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/bw;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/bw;->hV:Ltmsdkobf/bw;

    .line 88
    new-instance v0, Ltmsdkobf/bw;

    const/16 v1, 0x24

    const/16 v2, 0x2710

    const-string v3, "START_NET_UPDATE"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/bw;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/bw;->hW:Ltmsdkobf/bw;

    .line 90
    new-instance v0, Ltmsdkobf/bw;

    const/16 v1, 0x25

    const/16 v2, 0x2711

    const-string v3, "PAY_LIST"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/bw;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/bw;->hX:Ltmsdkobf/bw;

    .line 92
    new-instance v0, Ltmsdkobf/bw;

    const/16 v1, 0x26

    const/16 v2, 0x2712

    const-string v3, "STEAL_ACCOUNT_LIST"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/bw;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/bw;->hY:Ltmsdkobf/bw;

    .line 94
    new-instance v0, Ltmsdkobf/bw;

    const/16 v1, 0x27

    const/16 v2, 0x2713

    const-string v3, "END_NET_UPDATE"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/bw;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/bw;->hZ:Ltmsdkobf/bw;

    return-void

    :cond_0
    move v0, v2

    .line 9
    goto/16 :goto_0
.end method

.method private constructor <init>(IILjava/lang/String;)V
    .locals 1
    .parameter "index"
    .parameter "val"
    .parameter "s"

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Ltmsdkobf/bw;->aX:Ljava/lang/String;

    .line 134
    iput-object p3, p0, Ltmsdkobf/bw;->aX:Ljava/lang/String;

    .line 135
    iput p2, p0, Ltmsdkobf/bw;->aW:I

    .line 136
    sget-object v0, Ltmsdkobf/bw;->hl:[Ltmsdkobf/bw;

    aput-object p0, v0, p1

    .line 137
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Ltmsdkobf/bw;->aX:Ljava/lang/String;

    return-object v0
.end method

.method public value()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Ltmsdkobf/bw;->aW:I

    return v0
.end method
