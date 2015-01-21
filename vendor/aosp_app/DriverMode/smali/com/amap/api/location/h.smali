.class public final Lcom/amap/api/location/h;
.super Ljava/lang/Object;


# instance fields
.field public a:J

.field public b:F

.field public c:Lcom/amap/api/location/a;

.field public d:Z

.field public e:Lcom/amap/api/location/AMapLocation;

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amap/api/location/a;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/location/h;->d:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/location/h;->e:Lcom/amap/api/location/AMapLocation;

    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/amap/api/location/h;->a:J

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/amap/api/location/h;->b:F

    iput-object p1, p0, Lcom/amap/api/location/h;->c:Lcom/amap/api/location/a;

    iput-object p2, p0, Lcom/amap/api/location/h;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/amap/api/location/h;

    iget-object v2, p0, Lcom/amap/api/location/h;->c:Lcom/amap/api/location/a;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/amap/api/location/h;->c:Lcom/amap/api/location/a;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/amap/api/location/h;->c:Lcom/amap/api/location/a;

    iget-object v3, p1, Lcom/amap/api/location/h;->c:Lcom/amap/api/location/a;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/amap/api/location/h;->c:Lcom/amap/api/location/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    return v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/location/h;->c:Lcom/amap/api/location/a;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method
