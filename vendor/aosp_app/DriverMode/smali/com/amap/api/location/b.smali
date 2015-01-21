.class public final Lcom/amap/api/location/b;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/amap/api/location/b;


# instance fields
.field private a:Landroid/location/LocationManager;

.field private c:Lcom/amap/api/location/c;

.field private d:Landroid/content/Context;

.field private e:Ljava/util/ArrayList;

.field private f:Ljava/util/Hashtable;

.field private g:Ljava/lang/String;

.field private h:Lcom/amap/api/location/core/b;

.field private i:Ljava/lang/String;

.field private j:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/amap/api/location/b;->b:Lcom/amap/api/location/b;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amap/api/location/b;->a:Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/amap/api/location/b;->c:Lcom/amap/api/location/c;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/location/b;->e:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/amap/api/location/b;->f:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/location/b;->j:Ljava/util/List;

    iput-object p1, p0, Lcom/amap/api/location/b;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/amap/api/location/core/b;->a(Landroid/content/Context;)Lcom/amap/api/location/core/b;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/location/b;->h:Lcom/amap/api/location/core/b;

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/amap/api/location/b;->a:Landroid/location/LocationManager;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/location/b;->a:Landroid/location/LocationManager;

    invoke-static {v0, v1}, Lcom/amap/api/location/c;->a(Landroid/content/Context;Landroid/location/LocationManager;)Lcom/amap/api/location/c;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/location/b;->c:Lcom/amap/api/location/c;

    iget-object v0, p0, Lcom/amap/api/location/b;->h:Lcom/amap/api/location/core/b;

    invoke-static {p1}, Lcom/amap/api/location/core/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/location/b;->i:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/amap/api/location/b;
    .locals 2

    const-class v1, Lcom/amap/api/location/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/amap/api/location/b;->b:Lcom/amap/api/location/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/location/b;

    invoke-direct {v0, p0}, Lcom/amap/api/location/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/amap/api/location/b;->b:Lcom/amap/api/location/b;

    :cond_0
    sget-object v0, Lcom/amap/api/location/b;->b:Lcom/amap/api/location/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/amap/api/location/AMapLocation;
    .locals 2

    const-string v0, "lbs"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/location/b;->h:Lcom/amap/api/location/core/b;

    iget-object v0, p0, Lcom/amap/api/location/b;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/amap/api/location/core/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/amap/api/location/b;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/amap/api/location/b;->c:Lcom/amap/api/location/c;

    invoke-virtual {v0}, Lcom/amap/api/location/c;->a()Lcom/amap/api/location/AMapLocation;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/location/b;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    iget-object v0, p0, Lcom/amap/api/location/b;->a:Landroid/location/LocationManager;

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/amap/api/location/AMapLocation;

    invoke-direct {v0, v1}, Lcom/amap/api/location/AMapLocation;-><init>(Landroid/location/Location;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/amap/api/location/a;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/amap/api/location/b;->c:Lcom/amap/api/location/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/location/b;->c:Lcom/amap/api/location/c;

    invoke-virtual {v0, p1}, Lcom/amap/api/location/c;->a(Lcom/amap/api/location/a;)V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/location/b;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/amap/api/location/a;)V
    .locals 6

    iget-object v0, p0, Lcom/amap/api/location/b;->c:Lcom/amap/api/location/c;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/location/b;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/location/b;->a:Landroid/location/LocationManager;

    invoke-static {v0, v1}, Lcom/amap/api/location/c;->a(Landroid/content/Context;Landroid/location/LocationManager;)Lcom/amap/api/location/c;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/location/b;->c:Lcom/amap/api/location/c;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/location/b;->h:Lcom/amap/api/location/core/b;

    iget-object v0, p0, Lcom/amap/api/location/b;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/amap/api/location/core/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "lbs"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "network"

    move-object v1, p1

    :goto_0
    iput-object v1, p0, Lcom/amap/api/location/b;->g:Ljava/lang/String;

    const-string v0, "lbs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/location/b;->h:Lcom/amap/api/location/core/b;

    iget-object v0, p0, Lcom/amap/api/location/b;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/amap/api/location/core/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/location/b;->c:Lcom/amap/api/location/c;

    const-string v1, "lbs"

    invoke-virtual {v0, p2, v1}, Lcom/amap/api/location/c;->a(Lcom/amap/api/location/a;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_1
    const-string v0, "gps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/location/b;->c:Lcom/amap/api/location/c;

    const-string v1, "gps"

    invoke-virtual {v0, p2, v1}, Lcom/amap/api/location/c;->a(Lcom/amap/api/location/a;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/amap/api/location/b;->a:Landroid/location/LocationManager;

    const-wide/16 v2, 0xbb8

    const/high16 v4, 0x3f80

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto :goto_1

    :cond_3
    move-object v1, p1

    goto :goto_0
.end method
