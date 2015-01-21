.class public final Ltmsdkobf/gi;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltmsdkobf/gi$a;,
        Ltmsdkobf/gi$b;,
        Ltmsdkobf/gi$c;
    }
.end annotation


# static fields
.field private static nq:F


# instance fields
.field private a:Z

.field private jR:[B

.field private kG:Landroid/content/Context;

.field private no:Landroid/location/LocationManager;

.field private np:Ltmsdkobf/gi$a;

.field private nr:Ltmsdkobf/gi$c;

.field private ns:Ltmsdkobf/gi$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput v0, Ltmsdkobf/gi;->nq:F

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v0, p0, Ltmsdkobf/gi;->kG:Landroid/content/Context;

    .line 34
    iput-object v0, p0, Ltmsdkobf/gi;->no:Landroid/location/LocationManager;

    .line 36
    iput-object v0, p0, Ltmsdkobf/gi;->np:Ltmsdkobf/gi$a;

    .line 44
    iput-object v0, p0, Ltmsdkobf/gi;->nr:Ltmsdkobf/gi$c;

    .line 47
    iput-object v0, p0, Ltmsdkobf/gi;->ns:Ltmsdkobf/gi$b;

    .line 50
    iput-boolean v1, p0, Ltmsdkobf/gi;->a:Z

    .line 52
    new-array v0, v1, [B

    iput-object v0, p0, Ltmsdkobf/gi;->jR:[B

    .line 55
    return-void
.end method

.method static synthetic a(Ltmsdkobf/gi;)Ltmsdkobf/gi$c;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Ltmsdkobf/gi;->nr:Ltmsdkobf/gi$c;

    return-object v0
.end method

.method static synthetic a(Ltmsdkobf/gi;Ltmsdkobf/gi$b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Ltmsdkobf/gi;->ns:Ltmsdkobf/gi$b;

    return-void
.end method

.method static synthetic b(Ltmsdkobf/gi;)Ltmsdkobf/gi$b;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Ltmsdkobf/gi;->ns:Ltmsdkobf/gi$b;

    return-object v0
.end method

.method static synthetic c(Ltmsdkobf/gi;)Landroid/location/LocationManager;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Ltmsdkobf/gi;->no:Landroid/location/LocationManager;

    return-object v0
.end method


# virtual methods
.method public final Q()V
    .locals 3

    .prologue
    .line 91
    iget-object v1, p0, Ltmsdkobf/gi;->jR:[B

    monitor-enter v1

    .line 92
    :try_start_0
    iget-boolean v0, p0, Ltmsdkobf/gi;->a:Z

    if-nez v0, :cond_0

    .line 93
    monitor-exit v1

    :goto_0
    return-void

    .line 94
    :cond_0
    const-string v0, "stopSosoLocGpsProvider"

    invoke-static {v0}, Ltmsdkobf/gl;->aw(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Ltmsdkobf/gi;->no:Landroid/location/LocationManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltmsdkobf/gi;->np:Ltmsdkobf/gi$a;

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Ltmsdkobf/gi;->no:Landroid/location/LocationManager;

    iget-object v2, p0, Ltmsdkobf/gi;->np:Ltmsdkobf/gi$a;

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    .line 97
    iget-object v0, p0, Ltmsdkobf/gi;->no:Landroid/location/LocationManager;

    iget-object v2, p0, Ltmsdkobf/gi;->np:Ltmsdkobf/gi$a;

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 99
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltmsdkobf/gi;->a:Z

    .line 91
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Ltmsdkobf/gi$c;Landroid/content/Context;)Z
    .locals 8
    .parameter "listener"
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    const/4 v6, 0x0

    .line 59
    iget-object v7, p0, Ltmsdkobf/gi;->jR:[B

    monitor-enter v7

    .line 60
    :try_start_0
    iget-boolean v1, p0, Ltmsdkobf/gi;->a:Z

    if-eqz v1, :cond_0

    .line 61
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :goto_0
    return v0

    .line 62
    :cond_0
    if-eqz p2, :cond_1

    if-nez p1, :cond_2

    .line 63
    :cond_1
    monitor-exit v7

    move v0, v6

    goto :goto_0

    .line 65
    :cond_2
    :try_start_1
    const-string v0, "startSosoLocGpsProvider"

    invoke-static {v0}, Ltmsdkobf/gl;->aw(Ljava/lang/String;)V

    .line 66
    iput-object p2, p0, Ltmsdkobf/gi;->kG:Landroid/content/Context;

    .line 67
    iput-object p1, p0, Ltmsdkobf/gi;->nr:Ltmsdkobf/gi$c;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    :try_start_2
    iget-object v0, p0, Ltmsdkobf/gi;->kG:Landroid/content/Context;

    .line 70
    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 69
    iput-object v0, p0, Ltmsdkobf/gi;->no:Landroid/location/LocationManager;

    .line 71
    new-instance v0, Ltmsdkobf/gi$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ltmsdkobf/gi$a;-><init>(Ltmsdkobf/gi;B)V

    iput-object v0, p0, Ltmsdkobf/gi;->np:Ltmsdkobf/gi$a;

    .line 72
    iget-object v0, p0, Ltmsdkobf/gi;->no:Landroid/location/LocationManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Ltmsdkobf/gi;->np:Ltmsdkobf/gi$a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-nez v0, :cond_4

    .line 73
    :cond_3
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v0, v6

    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    monitor-exit v7

    move v0, v6

    goto :goto_0

    .line 78
    :cond_4
    :try_start_4
    iget-object v0, p0, Ltmsdkobf/gi;->no:Landroid/location/LocationManager;

    .line 79
    const-string v1, "gps"

    const-wide/16 v2, 0x3e8

    .line 80
    const/4 v4, 0x0

    iget-object v5, p0, Ltmsdkobf/gi;->np:Ltmsdkobf/gi$a;

    .line 78
    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 81
    iget-object v0, p0, Ltmsdkobf/gi;->no:Landroid/location/LocationManager;

    iget-object v1, p0, Ltmsdkobf/gi;->np:Ltmsdkobf/gi$a;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 85
    const/4 v0, 0x1

    :try_start_5
    iput-boolean v0, p0, Ltmsdkobf/gi;->a:Z

    .line 59
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 87
    iget-boolean v0, p0, Ltmsdkobf/gi;->a:Z

    goto :goto_0

    .line 83
    :catch_1
    move-exception v0

    :try_start_6
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move v0, v6

    goto :goto_0

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method
