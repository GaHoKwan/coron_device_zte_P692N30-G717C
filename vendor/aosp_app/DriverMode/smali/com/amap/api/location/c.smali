.class public final Lcom/amap/api/location/c;
.super Ljava/lang/Object;


# static fields
.field public static a:I

.field static b:Z

.field static c:J

.field static d:Z

.field static e:Z

.field private static g:Ljava/util/Vector;

.field private static i:Lcom/amap/api/location/f;

.field private static j:Lcom/amap/api/location/e;

.field private static k:Lcom/amap/api/location/c;


# instance fields
.field private f:Landroid/content/Context;

.field private h:Lcom/amap/api/location/d;

.field private l:Lcom/amap/api/location/AMapLocation;

.field private m:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    sput-object v1, Lcom/amap/api/location/c;->g:Ljava/util/Vector;

    const/16 v0, 0x64

    sput v0, Lcom/amap/api/location/c;->a:I

    sput-object v1, Lcom/amap/api/location/c;->i:Lcom/amap/api/location/f;

    sput-object v1, Lcom/amap/api/location/c;->j:Lcom/amap/api/location/e;

    sput-object v1, Lcom/amap/api/location/c;->k:Lcom/amap/api/location/c;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/amap/api/location/c;->b:Z

    sput-boolean v2, Lcom/amap/api/location/c;->d:Z

    sput-boolean v2, Lcom/amap/api/location/c;->e:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/location/LocationManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/location/c;->h:Lcom/amap/api/location/d;

    iput-object p1, p0, Lcom/amap/api/location/c;->f:Landroid/content/Context;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/amap/api/location/c;->g:Ljava/util/Vector;

    new-instance v0, Lcom/amap/api/location/d;

    invoke-direct {v0, p0}, Lcom/amap/api/location/d;-><init>(Lcom/amap/api/location/c;)V

    iput-object v0, p0, Lcom/amap/api/location/c;->h:Lcom/amap/api/location/d;

    iget-object v0, p0, Lcom/amap/api/location/c;->h:Lcom/amap/api/location/d;

    invoke-static {p1, v0}, Lcom/amap/api/location/e;->a(Landroid/content/Context;Lcom/amap/api/location/d;)Lcom/amap/api/location/e;

    move-result-object v0

    sput-object v0, Lcom/amap/api/location/c;->j:Lcom/amap/api/location/e;

    iget-object v0, p0, Lcom/amap/api/location/c;->h:Lcom/amap/api/location/d;

    invoke-static {p1, p2, v0}, Lcom/amap/api/location/f;->a(Landroid/content/Context;Landroid/location/LocationManager;Lcom/amap/api/location/d;)Lcom/amap/api/location/f;

    move-result-object v0

    sput-object v0, Lcom/amap/api/location/c;->i:Lcom/amap/api/location/f;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/location/c;)Lcom/amap/api/location/AMapLocation;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/location/c;->l:Lcom/amap/api/location/AMapLocation;

    return-object v0
.end method

.method static synthetic a(Lcom/amap/api/location/c;Lcom/amap/api/location/AMapLocation;)Lcom/amap/api/location/AMapLocation;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/location/c;->l:Lcom/amap/api/location/AMapLocation;

    return-object p1
.end method

.method static a(Landroid/content/Context;Landroid/location/LocationManager;)Lcom/amap/api/location/c;
    .locals 1

    sget-object v0, Lcom/amap/api/location/c;->k:Lcom/amap/api/location/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/location/c;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/location/c;-><init>(Landroid/content/Context;Landroid/location/LocationManager;)V

    sput-object v0, Lcom/amap/api/location/c;->k:Lcom/amap/api/location/c;

    :cond_0
    sget-object v0, Lcom/amap/api/location/c;->k:Lcom/amap/api/location/c;

    return-object v0
.end method

.method static synthetic b(Lcom/amap/api/location/c;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/location/c;->f:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b()Ljava/util/Vector;
    .locals 1

    sget-object v0, Lcom/amap/api/location/c;->g:Ljava/util/Vector;

    return-object v0
.end method


# virtual methods
.method final a()Lcom/amap/api/location/AMapLocation;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/location/c;->l:Lcom/amap/api/location/AMapLocation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/location/c;->l:Lcom/amap/api/location/AMapLocation;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/location/c;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/location/core/c;->a(Landroid/content/Context;)Lcom/amap/api/location/AMapLocation;

    move-result-object v0

    goto :goto_0
.end method

.method final a(Lcom/amap/api/location/a;)V
    .locals 5

    const/4 v3, 0x0

    sget-object v0, Lcom/amap/api/location/c;->g:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    move v2, v3

    :goto_0
    if-ge v2, v1, :cond_0

    sget-object v0, Lcom/amap/api/location/c;->g:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/location/h;

    iget-object v4, v0, Lcom/amap/api/location/h;->c:Lcom/amap/api/location/a;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/amap/api/location/c;->g:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, -0x1

    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/amap/api/location/c;->i:Lcom/amap/api/location/f;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/amap/api/location/c;->g:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/amap/api/location/c;->i:Lcom/amap/api/location/f;

    invoke-virtual {v0}, Lcom/amap/api/location/f;->b()V

    sput-boolean v3, Lcom/amap/api/location/c;->b:Z

    sput-boolean v3, Lcom/amap/api/location/c;->d:Z

    iget-object v0, p0, Lcom/amap/api/location/c;->m:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/location/c;->m:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/location/c;->m:Ljava/lang/Thread;

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method final a(Lcom/amap/api/location/a;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Lcom/amap/api/location/h;

    invoke-direct {v0, p1, p2}, Lcom/amap/api/location/h;-><init>(Lcom/amap/api/location/a;Ljava/lang/String;)V

    sget-object v1, Lcom/amap/api/location/c;->g:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v0, "gps"

    if-ne p2, v0, :cond_2

    sget-object v0, Lcom/amap/api/location/c;->i:Lcom/amap/api/location/f;

    invoke-virtual {v0}, Lcom/amap/api/location/f;->a()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v0, "lbs"

    if-ne p2, v0, :cond_1

    sget-boolean v0, Lcom/amap/api/location/c;->e:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/amap/api/location/c;->i:Lcom/amap/api/location/f;

    invoke-virtual {v0}, Lcom/amap/api/location/f;->a()V

    :cond_3
    sget-object v0, Lcom/amap/api/location/c;->j:Lcom/amap/api/location/e;

    invoke-virtual {v0}, Lcom/amap/api/location/e;->a()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/amap/api/location/c;->d:Z

    iget-object v0, p0, Lcom/amap/api/location/c;->m:Ljava/lang/Thread;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/Thread;

    sget-object v1, Lcom/amap/api/location/c;->j:Lcom/amap/api/location/e;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/amap/api/location/c;->m:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/amap/api/location/c;->m:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
