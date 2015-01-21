.class public final Lcom/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/ak;


# static fields
.field private static a:Lcom/a/a;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Lcom/a/aw;

.field private C:Lcom/a/bc;

.field private D:J

.field private E:J

.field private F:Landroid/telephony/CellLocation;

.field private G:Z

.field private b:Landroid/content/Context;

.field private c:I

.field private d:Landroid/net/ConnectivityManager;

.field private e:Landroid/net/wifi/WifiManager;

.field private f:Landroid/telephony/TelephonyManager;

.field private g:Ljava/util/List;

.field private h:Ljava/util/List;

.field private i:Ljava/util/Map;

.field private j:Lcom/a/ac;

.field private k:Landroid/telephony/PhoneStateListener;

.field private l:I

.field private m:Lcom/a/c;

.field private n:Landroid/net/wifi/WifiInfo;

.field private o:Lorg/json/JSONObject;

.field private p:Ljava/lang/String;

.field private q:Lcom/a/ad;

.field private r:J

.field private s:J

.field private t:Z

.field private u:Z

.field private v:J

.field private w:J

.field private x:J

.field private y:Lcom/a/al;

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/a/a;->a:Lcom/a/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/a/a;->b:Landroid/content/Context;

    const/16 v0, 0x9

    iput v0, p0, Lcom/a/a;->c:I

    iput-object v1, p0, Lcom/a/a;->d:Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/a/a;->e:Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/a/a;->f:Landroid/telephony/TelephonyManager;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/a/a;->g:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/a/a;->h:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/a/a;->i:Ljava/util/Map;

    new-instance v0, Lcom/a/ac;

    invoke-direct {v0}, Lcom/a/ac;-><init>()V

    iput-object v0, p0, Lcom/a/a;->j:Lcom/a/ac;

    iput-object v1, p0, Lcom/a/a;->k:Landroid/telephony/PhoneStateListener;

    const/16 v0, -0x71

    iput v0, p0, Lcom/a/a;->l:I

    new-instance v0, Lcom/a/c;

    invoke-direct {v0, p0, v4}, Lcom/a/c;-><init>(Lcom/a/a;B)V

    iput-object v0, p0, Lcom/a/a;->m:Lcom/a/c;

    iput-object v1, p0, Lcom/a/a;->n:Landroid/net/wifi/WifiInfo;

    iput-object v1, p0, Lcom/a/a;->o:Lorg/json/JSONObject;

    iput-object v1, p0, Lcom/a/a;->p:Ljava/lang/String;

    iput-object v1, p0, Lcom/a/a;->q:Lcom/a/ad;

    iput-wide v2, p0, Lcom/a/a;->r:J

    iput-wide v2, p0, Lcom/a/a;->s:J

    iput-boolean v4, p0, Lcom/a/a;->t:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a;->u:Z

    iput-wide v2, p0, Lcom/a/a;->v:J

    iput-wide v2, p0, Lcom/a/a;->w:J

    iput-wide v2, p0, Lcom/a/a;->x:J

    invoke-static {}, Lcom/a/al;->a()Lcom/a/al;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a;->y:Lcom/a/al;

    iput v4, p0, Lcom/a/a;->z:I

    const-string v0, "00:00:00:00:00:00"

    iput-object v0, p0, Lcom/a/a;->A:Ljava/lang/String;

    iput-object v1, p0, Lcom/a/a;->B:Lcom/a/aw;

    iput-object v1, p0, Lcom/a/a;->C:Lcom/a/bc;

    iput-wide v2, p0, Lcom/a/a;->D:J

    iput-wide v2, p0, Lcom/a/a;->E:J

    iput-object v1, p0, Lcom/a/a;->F:Landroid/telephony/CellLocation;

    iput-boolean v4, p0, Lcom/a/a;->G:Z

    return-void
.end method

.method static synthetic a(Lcom/a/a;J)J
    .locals 0

    iput-wide p1, p0, Lcom/a/a;->v:J

    return-wide p1
.end method

.method static synthetic a(Lcom/a/a;Landroid/telephony/CellLocation;)Landroid/telephony/CellLocation;
    .locals 0

    iput-object p1, p0, Lcom/a/a;->F:Landroid/telephony/CellLocation;

    return-object p1
.end method

.method private a(Landroid/telephony/NeighboringCellInfo;)Lcom/a/ag;
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/a/ar;->a()I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Lcom/a/ag;

    invoke-direct {v1}, Lcom/a/ag;-><init>()V

    iget-object v2, p0, Lcom/a/a;->f:Landroid/telephony/TelephonyManager;

    invoke-static {v2}, Lcom/a/ar;->a(Landroid/telephony/TelephonyManager;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v2, v3

    iput-object v3, v1, Lcom/a/ag;->a:Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    iput-object v2, v1, Lcom/a/ag;->b:Ljava/lang/String;

    const-string v2, "getLac"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, v2, v3}, Lcom/a/ap;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v2

    iput v2, v1, Lcom/a/ag;->c:I

    invoke-virtual {p1}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v2

    iput v2, v1, Lcom/a/ag;->d:I

    invoke-virtual {p1}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, -0x71

    iput v2, v1, Lcom/a/ag;->j:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static declared-synchronized a()Lcom/a/ak;
    .locals 2

    const-class v1, Lcom/a/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/a/a;->a:Lcom/a/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/a/a;

    invoke-direct {v0}, Lcom/a/a;-><init>()V

    sput-object v0, Lcom/a/a;->a:Lcom/a/a;

    :cond_0
    sget-object v0, Lcom/a/a;->a:Lcom/a/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/a/a;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/a/a;->h:Ljava/util/List;

    return-object p1
.end method

.method private a(Landroid/telephony/CellLocation;)V
    .locals 7

    const/16 v6, 0x9

    const/4 v3, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/a/a;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    move-object v0, p1

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    if-ne v1, v5, :cond_1

    iput v6, p0, Lcom/a/a;->c:I

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "gsm illegal"

    aput-object v1, v0, v3

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    if-eq v1, v5, :cond_2

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    const v2, 0xffff

    if-eq v1, v2, :cond_2

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v0

    const v1, 0xfffffff

    if-ne v0, v1, :cond_3

    :cond_2
    iput v6, p0, Lcom/a/a;->c:I

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "gsm illegal"

    aput-object v1, v0, v3

    goto :goto_0

    :cond_3
    iput v4, p0, Lcom/a/a;->c:I

    iget-object v0, p0, Lcom/a/a;->g:Ljava/util/List;

    check-cast p1, Landroid/telephony/gsm/GsmCellLocation;

    new-instance v1, Lcom/a/ag;

    invoke-direct {v1}, Lcom/a/ag;-><init>()V

    iget-object v2, p0, Lcom/a/a;->f:Landroid/telephony/TelephonyManager;

    invoke-static {v2}, Lcom/a/ar;->a(Landroid/telephony/TelephonyManager;)[Ljava/lang/String;

    move-result-object v2

    aget-object v3, v2, v3

    iput-object v3, v1, Lcom/a/ag;->a:Ljava/lang/String;

    aget-object v2, v2, v4

    iput-object v2, v1, Lcom/a/ag;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v2

    iput v2, v1, Lcom/a/ag;->c:I

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v2

    iput v2, v1, Lcom/a/ag;->d:I

    iget v2, p0, Lcom/a/a;->l:I

    iput v2, v1, Lcom/a/ag;->j:I

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/a/a;->f:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/NeighboringCellInfo;

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v2

    if-eq v2, v5, :cond_4

    invoke-direct {p0, v0}, Lcom/a/a;->a(Landroid/telephony/NeighboringCellInfo;)Lcom/a/ag;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/a/a;->g:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method static synthetic a(Lcom/a/a;I)V
    .locals 2

    const/16 v0, -0x71

    if-ne p1, v0, :cond_1

    iput v0, p0, Lcom/a/a;->l:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/a/a;->l:I

    iget v0, p0, Lcom/a/a;->c:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/a/a;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/a/a;->g:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/ag;

    iget v1, p0, Lcom/a/a;->l:I

    iput v1, v0, Lcom/a/ag;->j:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Ljava/lang/StringBuilder;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v6, -0x1

    if-nez p0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/16 v1, 0x17

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, " phnum=\"\""

    aput-object v2, v1, v0

    const/4 v2, 0x1

    const-string v3, " nettype=\"\""

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, " nettype=\"UNKNOWN\""

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, " inftype=\"\""

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "<macs><![CDATA[]]></macs>"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "<nb></nb>"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "<mmac><![CDATA[]]></mmac>"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, " gtype=\"0\""

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, " glong=\"0.0\""

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, " glat=\"0.0\""

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, " precision=\"0.0\""

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, " glong=\"0\""

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, " glat=\"0\""

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, " precision=\"0\""

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "<smac>null</smac>"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "<smac>00:00:00:00:00:00</smac>"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "<imei>000000000000000</imei>"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "<imsi>000000000000000</imsi>"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "<mcc>000</mcc>"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "<mcc>0</mcc>"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "<lac>0</lac>"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "<cellid>0</cellid>"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "<key></key>"

    aput-object v3, v1, v2

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_3

    aget-object v3, v1, v0

    :goto_1
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v6, :cond_2

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    const-string v0, "*<"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_0

    const-string v0, "*<"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method private declared-synchronized a(Ljava/util/List;)V
    .locals 6

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget v3, v0, Landroid/net/wifi/ScanResult;->level:I

    invoke-static {v3}, Lcom/a/a;->a(I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    const-string v4, "*"

    const-string v5, "."

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    :goto_2
    iget v3, v0, Landroid/net/wifi/ScanResult;->level:I

    mul-int/lit8 v3, v3, 0x1e

    add-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    const-string v3, "null"

    iput-object v3, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    :try_start_2
    new-instance v0, Ljava/util/TreeMap;

    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {v0, v2}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    invoke-interface {p1}, Ljava/util/List;->clear()V

    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0x1d

    if-le v3, v4, :cond_5

    :cond_6
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private static a(I)Z
    .locals 2

    const/16 v0, 0x14

    const/16 v1, 0x14

    :try_start_0
    invoke-static {p0, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static a(Landroid/net/wifi/WifiInfo;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    const-string v3, "00:00:00:00:00:00"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/a/a;)Z
    .locals 4

    iget-wide v0, p0, Lcom/a/a;->v:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/a/a;->v:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/a/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/a/a;->t:Z

    return p1
.end method

.method static synthetic b(Lcom/a/a;)Landroid/telephony/TelephonyManager;
    .locals 1

    iget-object v0, p0, Lcom/a/a;->f:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Lcom/a/ad;
    .locals 14

    const/4 v1, 0x0

    const/4 v3, 0x1

    const-wide/16 v12, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/a/a;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/a/a;->s:J

    new-instance v0, Lcom/a/ad;

    invoke-direct {v0}, Lcom/a/ad;-><init>()V

    new-instance v4, Lcom/a/am;

    invoke-direct {v4}, Lcom/a/am;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v0, p0, Lcom/a/a;->y:Lcom/a/al;

    iget-object v7, p0, Lcom/a/a;->b:Landroid/content/Context;

    iget-object v8, p0, Lcom/a/a;->o:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, v7, v8}, Lcom/a/al;->a(Ljava/lang/String;Landroid/content/Context;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-object v9, p0, Lcom/a/a;->b:Landroid/content/Context;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "req cost "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v5, v7, v5

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Lcom/a/ar;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/a/a;->o:Lorg/json/JSONObject;

    invoke-static {v5}, Lcom/a/al;->a(Lorg/json/JSONObject;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v0, :cond_3

    const-string v6, "<saps>"

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_3

    invoke-virtual {v4, v0}, Lcom/a/am;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/a/a;->j:Lcom/a/ac;

    const-string v6, "GBK"

    invoke-virtual {v5, v0, v6}, Lcom/a/ac;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v4, v0}, Lcom/a/am;->b(Ljava/lang/String;)Lcom/a/ad;

    move-result-object v0

    iget-object v4, p0, Lcom/a/a;->B:Lcom/a/aw;

    if-eqz v4, :cond_1

    if-eqz v0, :cond_1

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-virtual {v0}, Lcom/a/ad;->j()Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "eab"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "e"

    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "d"

    const-string v8, "ctl"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "u"

    const-string v8, "suc"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v5, p0, Lcom/a/a;->B:Lcom/a/aw;

    iget-object v7, p0, Lcom/a/a;->C:Lcom/a/bc;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v7, v4}, Lcom/a/aw;->a(Lcom/a/bc;Ljava/lang/String;)V

    if-eqz v6, :cond_1

    const-string v4, "0"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/a/a;->B:Lcom/a/aw;

    invoke-virtual {v4}, Lcom/a/aw;->c()V

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/a/a;->B:Lcom/a/aw;

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/a/a;->G:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    :goto_2
    if-nez v0, :cond_6

    :cond_2
    :goto_3
    if-nez v2, :cond_8

    move-object v0, v1

    goto/16 :goto_0

    :cond_3
    aget-object v5, v5, v2

    const-string v6, "true"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    new-array v5, v3, [Ljava/lang/Object;

    const-string v6, "api return pure"

    aput-object v6, v5, v2

    goto :goto_1

    :cond_4
    new-array v5, v3, [Ljava/lang/Object;

    const-string v6, "aps return pure"

    aput-object v6, v5, v2

    goto :goto_1

    :cond_5
    :try_start_1
    const-string v4, "1"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/a/a;->B:Lcom/a/aw;

    if-nez v4, :cond_1

    invoke-direct {p0}, Lcom/a/a;->h()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_0
    move-exception v4

    goto :goto_2

    :cond_6
    invoke-virtual {v0}, Lcom/a/ad;->f()Ljava/lang/String;

    move-result-object v4

    const-string v5, "5"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0}, Lcom/a/ad;->f()Ljava/lang/String;

    move-result-object v4

    const-string v5, "6"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0}, Lcom/a/ad;->a()D

    move-result-wide v4

    invoke-virtual {v0}, Lcom/a/ad;->b()D

    move-result-wide v6

    invoke-virtual {v0}, Lcom/a/ad;->c()F

    move-result v8

    cmpl-double v4, v4, v12

    if-nez v4, :cond_7

    cmpl-double v4, v6, v12

    if-nez v4, :cond_7

    float-to-double v4, v8

    cmpl-double v4, v4, v12

    if-eqz v4, :cond_2

    :cond_7
    move v2, v3

    goto :goto_3

    :cond_8
    invoke-virtual {v0}, Lcom/a/ad;->j()Lorg/json/JSONObject;

    goto/16 :goto_0

    :catch_1
    move-exception v4

    goto :goto_2
.end method

.method static synthetic b(Lcom/a/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/a/a;->u:Z

    return p1
.end method

.method static synthetic c(Lcom/a/a;)Landroid/telephony/CellLocation;
    .locals 1

    iget-object v0, p0, Lcom/a/a;->F:Landroid/telephony/CellLocation;

    return-object v0
.end method

.method private c()Ljava/lang/StringBuilder;
    .locals 10

    const/4 v5, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/a/a;->l()V

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v0, 0x2bc

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    iget v0, p0, Lcom/a/a;->c:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    iget-object v0, p0, Lcom/a/a;->A:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/a/a;->A:Ljava/lang/String;

    const-string v1, "00:00:00:00:00:00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/a/a;->n:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/a/a;->n:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a;->A:Ljava/lang/String;

    iget-object v0, p0, Lcom/a/a;->A:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, "00:00:00:00:00:00"

    iput-object v0, p0, Lcom/a/a;->A:Ljava/lang/String;

    :cond_2
    invoke-direct {p0}, Lcom/a/a;->j()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, ""

    iget-object v1, p0, Lcom/a/a;->n:Landroid/net/wifi/WifiInfo;

    invoke-static {v1}, Lcom/a/a;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v0, p0, Lcom/a/a;->n:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_0
    move v3, v2

    move v4, v2

    :goto_1
    iget-object v0, p0, Lcom/a/a;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_5

    iget-object v0, p0, Lcom/a/a;->h:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v7, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    const-string v0, "nb"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v0, "access"

    move v4, v5

    :cond_3
    const-string v8, "#%s,%s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v7, v9, v2

    aput-object v0, v9, v5

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :pswitch_0
    move v1, v2

    :goto_2
    iget-object v0, p0, Lcom/a/a;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/a/a;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/ag;

    const-string v3, "#"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/a/ag;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "|"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/a/ag;->c:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "|"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, v0, Lcom/a/ag;->d:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_5
    if-nez v4, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    const-string v0, "#"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",access"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    :goto_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_7

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_7
    return-object v6

    :cond_8
    invoke-direct {p0}, Lcom/a/a;->f()V

    goto :goto_3

    :cond_9
    move-object v1, v0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic d(Lcom/a/a;)I
    .locals 1

    iget v0, p0, Lcom/a/a;->c:I

    return v0
.end method

.method private declared-synchronized d()Ljava/lang/StringBuilder;
    .locals 17

    monitor-enter p0

    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    const-string v8, "0"

    const-string v9, "0"

    const-string v10, "0"

    const-string v11, "0"

    const-string v2, ""

    const-string v1, "888888888888888"

    sput-object v1, Lcom/a/ah;->a:Ljava/lang/String;

    const-string v1, "888888888888888"

    sput-object v1, Lcom/a/ah;->b:Ljava/lang/String;

    const-string v1, ""

    sput-object v1, Lcom/a/ah;->c:Ljava/lang/String;

    const-string v4, ""

    const-string v3, ""

    const-string v1, ""

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v6, v0, Lcom/a/a;->c:I

    const/4 v15, 0x2

    if-ne v6, v15, :cond_14

    const-string v5, "1"

    move-object v6, v5

    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/a/a;->f:Landroid/telephony/TelephonyManager;

    if-eqz v5, :cond_6

    sget-object v5, Lcom/a/ah;->a:Ljava/lang/String;

    if-nez v5, :cond_b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/a/a;->f:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/a/ah;->a:Ljava/lang/String;

    :cond_0
    :goto_1
    sget-object v5, Lcom/a/ah;->a:Ljava/lang/String;

    if-nez v5, :cond_1

    const-string v5, "888888888888888"

    sput-object v5, Lcom/a/ah;->a:Ljava/lang/String;

    :cond_1
    sget-object v5, Lcom/a/ah;->b:Ljava/lang/String;

    if-eqz v5, :cond_2

    sget-object v5, Lcom/a/ah;->b:Ljava/lang/String;

    const-string v15, "888888888888888"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    const-string v5, "888888888888888"

    sput-object v5, Lcom/a/ah;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/a/a;->f:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/a/ah;->b:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_3
    :goto_2
    :try_start_2
    sget-object v5, Lcom/a/ah;->b:Ljava/lang/String;

    if-nez v5, :cond_4

    const-string v5, "888888888888888"

    sput-object v5, Lcom/a/ah;->b:Ljava/lang/String;

    :cond_4
    sget-object v5, Lcom/a/ah;->c:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, ""

    sput-object v5, Lcom/a/ah;->c:Ljava/lang/String;

    :cond_5
    sget-object v5, Lcom/a/ah;->c:Ljava/lang/String;

    if-nez v5, :cond_6

    const-string v5, ""

    sput-object v5, Lcom/a/ah;->c:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_6
    const/4 v5, 0x0

    :try_start_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/a/a;->d:Landroid/net/ConnectivityManager;

    invoke-virtual {v15}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v5

    :goto_3
    :try_start_4
    invoke-static {v5}, Lcom/a/al;->a(Landroid/net/NetworkInfo;)I

    move-result v5

    const/4 v15, -0x1

    if-eq v5, v15, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/a/a;->f:Landroid/telephony/TelephonyManager;

    invoke-static {v3}, Lcom/a/al;->a(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v4

    invoke-direct/range {p0 .. p0}, Lcom/a/a;->j()Z

    move-result v3

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/a/a;->n:Landroid/net/wifi/WifiInfo;

    invoke-static {v3}, Lcom/a/a;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "2"

    :cond_7
    :goto_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/a/a;->o:Lorg/json/JSONObject;

    invoke-static {v5}, Lcom/a/al;->a(Lorg/json/JSONObject;)[Ljava/lang/String;

    move-result-object v5

    const/4 v15, 0x0

    aget-object v15, v5, v15

    const-string v16, "true"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    const/4 v2, 0x1

    aget-object v2, v5, v2

    :cond_8
    const-string v5, "<?xml version=\"1.0\" encoding=\""

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "GBK\"?>"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "<Cell_Req ver=\"3.0\"><HDR version=\"3.0\" cdma=\""

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\" gtype=\""

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\" glong=\""

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\" glat=\""

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\" precision=\""

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\"><src>"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/a/ah;->d:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "</src><license>"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/a/ah;->e:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "</license><key>"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</key><clientid>"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Lcom/a/ah;->f:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</clientid><imei>"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Lcom/a/ah;->a:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</imei><imsi>"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Lcom/a/ah;->b:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</imsi><smac>"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/a/a;->A:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</smac></HDR><DRR phnum=\""

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Lcom/a/ah;->c:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" nettype=\""

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" inftype=\""

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a/a;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/a/a;->c:I

    packed-switch v2, :pswitch_data_0

    :goto_5
    const/4 v2, 0x0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_9
    move-object v3, v1

    invoke-direct/range {p0 .. p0}, Lcom/a/a;->j()Z

    move-result v1

    if-eqz v1, :cond_11

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/a/a;->n:Landroid/net/wifi/WifiInfo;

    invoke-static {v1}, Lcom/a/a;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v1

    if-eqz v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/a/a;->n:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/a/a;->n:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/a/a;->n:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "*"

    const-string v4, "."

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    const/4 v1, 0x0

    move v2, v1

    :goto_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/a/a;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_12

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/a/a;->h:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    iget-object v4, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "*"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_6

    :cond_b
    sget-object v5, Lcom/a/ah;->a:Ljava/lang/String;

    const-string v15, "888888888888888"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "888888888888888"

    sput-object v5, Lcom/a/ah;->a:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/a/a;->f:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/a/ah;->a:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v5

    goto/16 :goto_1

    :cond_c
    :try_start_6
    const-string v3, "1"

    invoke-direct/range {p0 .. p0}, Lcom/a/a;->j()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/a/a;->f()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_4

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_d
    const/4 v5, 0x0

    :try_start_7
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/a/a;->n:Landroid/net/wifi/WifiInfo;

    goto/16 :goto_4

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/a/a;->g:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/a/ag;

    const/4 v2, 0x0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const-string v2, "<mcc>"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/a/ag;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</mcc>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<mnc>"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/a/ag;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</mnc>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<lac>"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/a/ag;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</lac>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<cellid>"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/a/ag;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "</cellid>"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<signal>"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, v1, Lcom/a/ag;->j:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "</signal>"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    move v3, v1

    :goto_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/a/a;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_f

    if-eqz v3, :cond_e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/a/a;->g:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/a/ag;

    iget v5, v1, Lcom/a/ag;->c:I

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/a/ag;->d:I

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/a/ag;->j:I

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/a/a;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v3, v1, :cond_e

    const-string v1, "*"

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_7

    :cond_f
    move-object v1, v2

    goto/16 :goto_5

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/a/a;->g:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/a/ag;

    const/4 v2, 0x0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const-string v2, "<mcc>"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/a/ag;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</mcc>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<sid>"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/a/ag;->g:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</sid>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<nid>"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/a/ag;->h:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</nid>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<bid>"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/a/ag;->i:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</bid>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/a/ag;->f:I

    if-lez v2, :cond_10

    iget v2, v1, Lcom/a/ag;->e:I

    if-lez v2, :cond_10

    const-string v2, "<lon>"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/a/ag;->f:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</lon>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<lat>"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/a/ag;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</lat>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    const-string v2, "<signal>"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, v1, Lcom/a/ag;->j:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</signal>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5

    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/a/a;->f()V

    :cond_12
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<nb>%s</nb>"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v12, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_13

    const-string v1, "<macs><![CDATA[%s]]></macs>"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v14, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_8
    const-string v1, "<mmac><![CDATA[%s]]></mmac>"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v14, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</DRR></Cell_Req>"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/a/a;->a(Ljava/lang/StringBuilder;)V

    const/4 v1, 0x0

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v12, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v13, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v14, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return-object v7

    :cond_13
    :try_start_8
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    const-string v1, "<macs><![CDATA[%s]]></macs>"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v13, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_8

    :catch_1
    move-exception v15

    goto/16 :goto_3

    :catch_2
    move-exception v5

    goto/16 :goto_2

    :cond_14
    move-object v6, v5

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private declared-synchronized e()Ljava/lang/String;
    .locals 9

    const-wide/16 v7, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lcom/a/a;->t:Z

    if-eqz v3, :cond_4

    move v3, v1

    :goto_0
    if-eqz v3, :cond_0

    invoke-static {}, Landroid/telephony/CellLocation;->requestLocationUpdate()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/a/a;->w:J

    :cond_0
    invoke-direct {p0}, Lcom/a/a;->j()Z

    move-result v3

    if-nez v3, :cond_6

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/a/a;->g()V

    :cond_2
    invoke-direct {p0}, Lcom/a/a;->d()Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/a/a;->C:Lcom/a/bc;

    iget-object v2, p0, Lcom/a/a;->B:Lcom/a/aw;

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/a/a;->z:I

    if-ltz v2, :cond_3

    iget-boolean v2, p0, Lcom/a/a;->u:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_3

    :try_start_1
    iget-object v2, p0, Lcom/a/a;->B:Lcom/a/aw;

    invoke-virtual {v2}, Lcom/a/aw;->d()Lcom/a/bc;

    move-result-object v2

    iput-object v2, p0, Lcom/a/a;->C:Lcom/a/bc;

    iget-object v2, p0, Lcom/a/a;->C:Lcom/a/bc;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/a/a;->C:Lcom/a/bc;

    invoke-virtual {v2}, Lcom/a/bc;->a()[B

    move-result-object v2

    array-length v3, v2

    if-lez v3, :cond_3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0xb

    const-string v4, "<COR><inf>"

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/a/ac;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0xb

    invoke-virtual {v1, v3, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0xb

    const-string v3, "</inf></COR>"

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    :goto_2
    :try_start_2
    iget-object v2, p0, Lcom/a/a;->j:Lcom/a/ac;

    const-string v3, "GBK"

    invoke-virtual {v2, v1, v3}, Lcom/a/ac;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/4 v2, 0x0

    const-string v3, "</src><sreq>"

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    sget-object v3, Lcom/a/ah;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const-string v3, "\"?><saps><src v=\"3.0\">"

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const-string v3, "GBK"

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const-string v3, "<?xml version=\"1.0\" encoding=\""

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</sreq></saps>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    :goto_3
    monitor-exit p0

    return-object v0

    :cond_4
    :try_start_3
    iget-wide v3, p0, Lcom/a/a;->w:J

    cmp-long v3, v3, v7

    if-nez v3, :cond_5

    move v3, v1

    goto/16 :goto_0

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/a/a;->w:J

    sub-long/2addr v3, v5

    sget-wide v5, Lcom/a/ah;->j:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_7

    move v3, v1

    goto/16 :goto_0

    :cond_6
    iget-wide v3, p0, Lcom/a/a;->x:J

    cmp-long v3, v3, v7

    if-eqz v3, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/a/a;->x:J

    sub-long/2addr v3, v5

    sget-wide v5, Lcom/a/ah;->i:J

    cmp-long v3, v3, v5

    if-ltz v3, :cond_1

    move v1, v2

    goto/16 :goto_1

    :catch_0
    move-exception v2

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1
    move-exception v2

    goto :goto_2

    :cond_7
    move v3, v2

    goto/16 :goto_0
.end method

.method static synthetic e(Lcom/a/a;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/a/a;->g:Ljava/util/List;

    return-object v0
.end method

.method static synthetic f(Lcom/a/a;)I
    .locals 1

    const/16 v0, -0x71

    iput v0, p0, Lcom/a/a;->l:I

    return v0
.end method

.method private f()V
    .locals 1

    iget-object v0, p0, Lcom/a/a;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a;->n:Landroid/net/wifi/WifiInfo;

    return-void
.end method

.method static synthetic g(Lcom/a/a;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/a/a;->e:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method private g()V
    .locals 2

    invoke-direct {p0}, Lcom/a/a;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/a/a;->e:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/a/a;->x:J
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic h(Lcom/a/a;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/a/a;->h:Ljava/util/List;

    return-object v0
.end method

.method private h()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/a/a;->B:Lcom/a/aw;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/a/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/a/aw;->a(Landroid/content/Context;)Lcom/a/aw;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a;->B:Lcom/a/aw;

    iget-object v0, p0, Lcom/a/a;->B:Lcom/a/aw;

    invoke-virtual {v0}, Lcom/a/aw;->a()V

    :cond_0
    iget-boolean v0, p0, Lcom/a/a;->G:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a;->G:Z

    iget-object v0, p0, Lcom/a/a;->B:Lcom/a/aw;

    invoke-virtual {v0}, Lcom/a/aw;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private i()V
    .locals 12

    const/4 v11, 0x0

    iget-object v0, p0, Lcom/a/a;->q:Lcom/a/ad;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/a/a;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/aj;

    invoke-virtual {v0}, Lcom/a/aj;->a()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v8, v6, v8

    if-eqz v8, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-ltz v6, :cond_3

    :cond_4
    const/4 v6, 0x4

    new-array v6, v6, [D

    iget-wide v7, v0, Lcom/a/aj;->b:D

    aput-wide v7, v6, v11

    const/4 v7, 0x1

    iget-wide v8, v0, Lcom/a/aj;->a:D

    aput-wide v8, v6, v7

    const/4 v7, 0x2

    iget-object v8, p0, Lcom/a/a;->q:Lcom/a/ad;

    invoke-virtual {v8}, Lcom/a/ad;->b()D

    move-result-wide v8

    aput-wide v8, v6, v7

    const/4 v7, 0x3

    iget-object v8, p0, Lcom/a/a;->q:Lcom/a/ad;

    invoke-virtual {v8}, Lcom/a/ad;->a()D

    move-result-wide v8

    aput-wide v8, v6, v7

    invoke-static {v6}, Lcom/a/ar;->a([D)F

    move-result v6

    iget v7, v0, Lcom/a/aj;->c:F

    cmpl-float v7, v6, v7

    if-gez v7, :cond_3

    const-string v7, "distance"

    invoke-virtual {v4, v7, v6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v6, "fence"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, v0, Lcom/a/aj;->a:D

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "#"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, v0, Lcom/a/aj;->b:D

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "#"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v0, v0, Lcom/a/aj;->c:F

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :try_start_0
    iget-object v0, p0, Lcom/a/a;->b:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-virtual {v1, v0, v6, v3}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method static synthetic i(Lcom/a/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/a/a;->f()V

    return-void
.end method

.method static synthetic j(Lcom/a/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/a/a;->g()V

    return-void
.end method

.method private j()Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/a/a;->e:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic k(Lcom/a/a;)I
    .locals 1

    iget v0, p0, Lcom/a/a;->z:I

    return v0
.end method

.method private k()Lcom/a/ad;
    .locals 2

    invoke-direct {p0}, Lcom/a/a;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/a/a;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/a/a;->q:Lcom/a/ad;

    if-eqz v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/a/a;->r:J

    iget-object v0, p0, Lcom/a/a;->q:Lcom/a/ad;

    :goto_0
    return-object v0

    :cond_0
    iput-object v0, p0, Lcom/a/a;->p:Ljava/lang/String;

    :cond_1
    invoke-direct {p0, v0}, Lcom/a/a;->b(Ljava/lang/String;)Lcom/a/ad;

    move-result-object v0

    goto :goto_0
.end method

.method private l()V
    .locals 2

    const/16 v1, 0x9

    iget-boolean v0, p0, Lcom/a/a;->t:Z

    if-eqz v0, :cond_1

    iput v1, p0, Lcom/a/a;->c:I

    iget-object v0, p0, Lcom/a/a;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/a/a;->c:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/a/a;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iput v1, p0, Lcom/a/a;->c:I

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/a/a;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iput v1, p0, Lcom/a/a;->c:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 4

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/a/a;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/a/a;->b:Landroid/content/Context;

    const-string v1, "in debug mode, only for test"

    invoke-static {v0, v1}, Lcom/a/ar;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/a/a;->b:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-static {v0, v1}, Lcom/a/ar;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/a/a;->e:Landroid/net/wifi/WifiManager;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.location.GPS_FIX_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/a/a;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/a/a;->m:Lcom/a/c;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/a/a;->g()V

    const-string v0, "connectivity"

    iget-object v1, p0, Lcom/a/a;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/a/ar;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/a/a;->d:Landroid/net/ConnectivityManager;

    invoke-static {}, Landroid/telephony/CellLocation;->requestLocationUpdate()V

    iget-object v0, p0, Lcom/a/a;->b:Landroid/content/Context;

    const-string v1, "phone"

    invoke-static {v0, v1}, Lcom/a/ar;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/a/a;->f:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/a/a;->f:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a;->F:Landroid/telephony/CellLocation;

    iget-object v0, p0, Lcom/a/a;->f:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0x9

    iput v0, p0, Lcom/a/a;->c:I

    :goto_1
    new-instance v0, Lcom/a/b;

    invoke-direct {v0, p0}, Lcom/a/b;-><init>(Lcom/a/a;)V

    iput-object v0, p0, Lcom/a/a;->k:Landroid/telephony/PhoneStateListener;

    const-string v1, "android.telephony.PhoneStateListener"

    const/4 v0, 0x0

    invoke-static {}, Lcom/a/ar;->a()I

    move-result v2

    const/4 v3, 0x7

    if-ge v2, v3, :cond_2

    const-string v2, "LISTEN_SIGNAL_STRENGTH"

    :try_start_0
    invoke-static {v1, v2}, Lcom/a/ap;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    :goto_2
    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/a/a;->f:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/a/a;->k:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/a/a;->D:J

    goto/16 :goto_0

    :pswitch_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/a/a;->c:I

    goto :goto_1

    :pswitch_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/a/a;->c:I

    goto :goto_1

    :cond_2
    const-string v2, "LISTEN_SIGNAL_STRENGTHS"

    :try_start_1
    invoke-static {v1, v2}, Lcom/a/ap;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v0

    goto :goto_2

    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/a/a;->f:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/a/a;->k:Landroid/telephony/PhoneStateListener;

    or-int/lit8 v0, v0, 0x10

    invoke-virtual {v1, v2, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    const-string v0, "##"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "##"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    sput-object v1, Lcom/a/ah;->d:Ljava/lang/String;

    sget-object v1, Lcom/a/ah;->e:Ljava/lang/String;

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/a/ae;->a()Lcom/a/ae;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/ae;->b()V

    :cond_2
    aget-object v1, v0, v3

    sput-object v1, Lcom/a/ah;->e:Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    sput-object v0, Lcom/a/ah;->f:Ljava/lang/String;

    goto :goto_0
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/a/a;->o:Lorg/json/JSONObject;

    return-void
.end method

.method public final declared-synchronized b()Lcom/a/ad;
    .locals 12

    const/high16 v11, 0x41a0

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/a/a;->b:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_1
    :try_start_1
    sget-object v0, Lcom/a/ah;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/a/ah;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/a/a;->o:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/a/al;->a(Lorg/json/JSONObject;)[Ljava/lang/String;

    move-result-object v0

    const-string v2, "false"

    const/4 v5, 0x0

    aget-object v0, v0, v5

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/a/a;->z:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/a/a;->z:I

    iget v0, p0, Lcom/a/a;->z:I

    if-le v0, v3, :cond_2

    invoke-direct {p0}, Lcom/a/a;->h()V

    :cond_2
    iget v0, p0, Lcom/a/a;->z:I

    if-ne v0, v3, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/a/a;->E:J

    iget-object v0, p0, Lcom/a/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/a/ar;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/a/a;->t:Z

    :cond_3
    iget-object v0, p0, Lcom/a/a;->h:Ljava/util/List;

    if-nez v0, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/a/a;->h:Ljava/util/List;

    :cond_4
    iget v0, p0, Lcom/a/a;->z:I

    if-ne v0, v3, :cond_5

    invoke-direct {p0}, Lcom/a/a;->j()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-wide v5, p0, Lcom/a/a;->E:J

    iget-wide v7, p0, Lcom/a/a;->D:J

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x7d0

    cmp-long v0, v5, v7

    if-gez v0, :cond_5

    const/4 v0, 0x4

    :goto_1
    if-lez v0, :cond_5

    iget-object v2, p0, Lcom/a/a;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_5

    const-wide/16 v5, 0x1f4

    invoke-static {v5, v6}, Landroid/os/SystemClock;->sleep(J)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_5
    iget-wide v5, p0, Lcom/a/a;->r:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v5, v7, v5

    const-wide/16 v9, 0x12c

    cmp-long v0, v5, v9

    if-gez v0, :cond_1d

    const-wide/16 v5, 0x0

    iget-object v0, p0, Lcom/a/a;->q:Lcom/a/ad;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/a/a;->q:Lcom/a/ad;

    invoke-virtual {v0}, Lcom/a/ad;->d()J

    move-result-wide v5

    sub-long v5, v7, v5

    :cond_6
    const-wide/16 v7, 0x2710

    cmp-long v0, v5, v7

    if-gtz v0, :cond_1d

    move v0, v3

    :goto_2
    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/a/a;->q:Lcom/a/ad;

    if-eqz v0, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/a/a;->r:J

    iget-object v1, p0, Lcom/a/a;->q:Lcom/a/ad;

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/a/a;->F:Landroid/telephony/CellLocation;

    if-nez v0, :cond_8

    iget-boolean v2, p0, Lcom/a/a;->t:Z

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/a/a;->f:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_8

    iget-object v0, p0, Lcom/a/a;->f:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    :cond_8
    if-eqz v0, :cond_9

    iget-object v2, p0, Lcom/a/a;->b:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/a/ar;->a(Landroid/telephony/CellLocation;Landroid/content/Context;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_9
    :goto_3
    iget-object v0, p0, Lcom/a/a;->h:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/a/a;->a(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/a/a;->l()V

    const-string v0, ""

    const-string v2, "network"

    invoke-direct {p0}, Lcom/a/a;->j()Z

    move-result v5

    if-eqz v5, :cond_10

    iget-object v5, p0, Lcom/a/a;->e:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    iput-object v5, p0, Lcom/a/a;->n:Landroid/net/wifi/WifiInfo;

    :goto_4
    iget v5, p0, Lcom/a/a;->c:I

    sparse-switch v5, :sswitch_data_0

    :cond_a
    move-object v2, v0

    :goto_5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/a/a;->c()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/a/ae;->a()Lcom/a/ae;

    move-result-object v0

    const-string v5, "mem"

    invoke-virtual {v0, v2, v1, v5}, Lcom/a/ae;->a(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)Lcom/a/ad;

    move-result-object v5

    if-nez v5, :cond_19

    invoke-direct {p0}, Lcom/a/a;->k()Lcom/a/ad;

    move-result-object v0

    iget-object v5, p0, Lcom/a/a;->q:Lcom/a/ad;

    if-eqz v0, :cond_b

    if-nez v5, :cond_18

    :cond_b
    :goto_6
    if-eqz v3, :cond_c

    iput-object v0, p0, Lcom/a/a;->q:Lcom/a/ad;

    :cond_c
    :goto_7
    invoke-static {}, Lcom/a/ae;->a()Lcom/a/ae;

    move-result-object v0

    iget-object v3, p0, Lcom/a/a;->q:Lcom/a/ad;

    iget-object v4, p0, Lcom/a/a;->b:Landroid/content/Context;

    invoke-virtual {v0, v2, v3, v1}, Lcom/a/ae;->a(Ljava/lang/String;Lcom/a/ad;Ljava/lang/StringBuilder;)V

    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/a/a;->r:J

    invoke-direct {p0}, Lcom/a/a;->i()V

    iget-object v1, p0, Lcom/a/a;->q:Lcom/a/ad;

    goto/16 :goto_0

    :pswitch_0
    if-eqz v0, :cond_9

    iget-object v2, p0, Lcom/a/a;->f:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_9

    invoke-direct {p0, v0}, Lcom/a/a;->a(Landroid/telephony/CellLocation;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_1
    if-eqz v0, :cond_9

    :try_start_2
    iget-object v2, p0, Lcom/a/a;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-static {}, Lcom/a/ar;->a()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    const/4 v5, 0x5

    if-lt v2, v5, :cond_9

    :try_start_3
    const-string v2, "getSystemId"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v2, v5}, Lcom/a/ap;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_d

    const/16 v0, 0x9

    iput v0, p0, Lcom/a/a;->c:I

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v5, "cdma illegal"

    aput-object v5, v0, v2

    goto/16 :goto_3

    :catch_0
    move-exception v0

    goto/16 :goto_3

    :cond_d
    const-string v2, "getNetworkId"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v2, v5}, Lcom/a/ap;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v2

    const/4 v5, -0x1

    if-ne v2, v5, :cond_e

    const/16 v0, 0x9

    iput v0, p0, Lcom/a/a;->c:I

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v5, "cdma illegal"

    aput-object v5, v0, v2

    goto/16 :goto_3

    :cond_e
    const-string v2, "getBaseStationId"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v2, v5}, Lcom/a/ap;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v2

    const/4 v5, -0x1

    if-ne v2, v5, :cond_f

    const/16 v0, 0x9

    iput v0, p0, Lcom/a/a;->c:I

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v5, "cdma illegal"

    aput-object v5, v0, v2

    goto/16 :goto_3

    :cond_f
    const/4 v2, 0x2

    iput v2, p0, Lcom/a/a;->c:I

    iget-object v2, p0, Lcom/a/a;->f:Landroid/telephony/TelephonyManager;

    invoke-static {v2}, Lcom/a/ar;->a(Landroid/telephony/TelephonyManager;)[Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/a/ag;

    invoke-direct {v5}, Lcom/a/ag;-><init>()V

    const/4 v6, 0x0

    aget-object v6, v2, v6

    iput-object v6, v5, Lcom/a/ag;->a:Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v2, v2, v6

    iput-object v2, v5, Lcom/a/ag;->b:Ljava/lang/String;

    const-string v2, "getSystemId"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0, v2, v6}, Lcom/a/ap;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v2

    iput v2, v5, Lcom/a/ag;->g:I

    const-string v2, "getNetworkId"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0, v2, v6}, Lcom/a/ap;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v2

    iput v2, v5, Lcom/a/ag;->h:I

    const-string v2, "getBaseStationId"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0, v2, v6}, Lcom/a/ap;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v2

    iput v2, v5, Lcom/a/ag;->i:I

    iget v2, p0, Lcom/a/a;->l:I

    iput v2, v5, Lcom/a/ag;->j:I

    const-string v2, "getBaseStationLatitude"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0, v2, v6}, Lcom/a/ap;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v2

    iput v2, v5, Lcom/a/ag;->e:I

    const-string v2, "getBaseStationLongitude"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0, v2, v6}, Lcom/a/ap;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    iput v0, v5, Lcom/a/ag;->f:I

    iget-object v0, p0, Lcom/a/a;->g:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_3

    :cond_10
    :try_start_4
    invoke-direct {p0}, Lcom/a/a;->f()V

    goto/16 :goto_4

    :sswitch_0
    iget-object v5, p0, Lcom/a/a;->g:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_a

    iget-object v0, p0, Lcom/a/a;->g:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/ag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/a/ag;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/a/ag;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/a/ag;->c:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/a/ag;->d:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "#"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/a/a;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_11

    iget-object v0, p0, Lcom/a/a;->n:Landroid/net/wifi/WifiInfo;

    invoke-static {v0}, Lcom/a/a;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_11
    const-string v0, "cellwifi"

    :goto_8
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto/16 :goto_5

    :cond_12
    const-string v0, "cell"

    goto :goto_8

    :sswitch_1
    iget-object v5, p0, Lcom/a/a;->g:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_a

    iget-object v0, p0, Lcom/a/a;->g:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/ag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/a/ag;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/a/ag;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/a/ag;->g:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/a/ag;->h:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/a/ag;->i:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "#"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/a/a;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_13

    iget-object v0, p0, Lcom/a/a;->n:Landroid/net/wifi/WifiInfo;

    invoke-static {v0}, Lcom/a/a;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_13
    const-string v0, "cellwifi"

    :goto_9
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto/16 :goto_5

    :cond_14
    const-string v0, "cell"

    goto :goto_9

    :sswitch_2
    const-string v0, "#%s#"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/a/a;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_15

    iget-object v0, p0, Lcom/a/a;->n:Landroid/net/wifi/WifiInfo;

    invoke-static {v0}, Lcom/a/a;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v0

    if-nez v0, :cond_15

    move-object v2, v1

    goto/16 :goto_5

    :cond_15
    iget-object v0, p0, Lcom/a/a;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_16

    move-object v2, v1

    goto/16 :goto_5

    :cond_16
    iget-object v0, p0, Lcom/a/a;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_17

    iget-object v0, p0, Lcom/a/a;->n:Landroid/net/wifi/WifiInfo;

    invoke-static {v0}, Lcom/a/a;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/a/a;->h:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    if-eqz v0, :cond_1c

    iget-object v5, p0, Lcom/a/a;->n:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v5

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    move-object v0, v1

    :goto_a
    move-object v2, v0

    goto/16 :goto_5

    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto/16 :goto_5

    :cond_18
    const/4 v6, 0x4

    new-array v6, v6, [D

    const/4 v7, 0x0

    invoke-virtual {v0}, Lcom/a/ad;->b()D

    move-result-wide v8

    aput-wide v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v0}, Lcom/a/ad;->a()D

    move-result-wide v8

    aput-wide v8, v6, v7

    const/4 v7, 0x2

    invoke-virtual {v5}, Lcom/a/ad;->b()D

    move-result-wide v8

    aput-wide v8, v6, v7

    const/4 v7, 0x3

    invoke-virtual {v5}, Lcom/a/ad;->a()D

    move-result-wide v8

    aput-wide v8, v6, v7

    invoke-static {v6}, Lcom/a/ar;->a([D)F

    move-result v6

    cmpg-float v6, v6, v11

    if-gtz v6, :cond_b

    invoke-virtual {v0}, Lcom/a/ad;->c()F

    move-result v6

    invoke-virtual {v5}, Lcom/a/ad;->c()F

    move-result v5

    sub-float v5, v6, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v11

    if-gtz v5, :cond_b

    move v3, v4

    goto/16 :goto_6

    :cond_19
    iget-wide v6, p0, Lcom/a/a;->r:J

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-eqz v0, :cond_1a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/a/a;->s:J

    sub-long/2addr v6, v8

    const-wide/32 v8, 0x493e0

    cmp-long v0, v6, v8

    if-lez v0, :cond_1a

    move v0, v3

    :goto_b
    if-eqz v0, :cond_1b

    invoke-direct {p0}, Lcom/a/a;->k()Lcom/a/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a;->q:Lcom/a/ad;

    goto/16 :goto_7

    :cond_1a
    move v0, v4

    goto :goto_b

    :cond_1b
    iput-object v5, p0, Lcom/a/a;->q:Lcom/a/ad;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_7

    :cond_1c
    move-object v0, v2

    goto :goto_a

    :cond_1d
    move v0, v4

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x9 -> :sswitch_2
    .end sparse-switch
.end method
