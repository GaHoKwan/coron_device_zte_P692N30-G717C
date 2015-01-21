.class public final Lcom/b/a/a/b/a;
.super Lcom/b/a/a/b/b;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/b/a/a/b/b;-><init>()V

    :try_start_0
    sget-object v0, Lcom/b/a/a/a/b;->a:Lcom/b/a/a/a/b;

    invoke-virtual {v0}, Lcom/b/a/a/a/b;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "type"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/b/a/a/b/a;->a(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v0, Lcom/b/a/a/h;->d:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "app_version"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/b/a/a/b/a;->a(Ljava/lang/String;[Ljava/lang/String;)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    sget-wide v2, Lcom/b/a/a/h;->p:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "time"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/b/a/a/b/a;->a(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "Android"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "device"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "os_name"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/b/a/a/b/b;->a(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "device"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "os_version"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/b/a/a/b/b;->a(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "device"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "os_build"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/b/a/a/b/b;->a(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "device"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "manufacturer"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/b/a/a/b/b;->a(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "device"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "model"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/b/a/a/b/b;->a(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "device"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "product"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/b/a/a/b/b;->a(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "device"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "brand"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/b/a/a/b/b;->a(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "device"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "device"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/b/a/a/b/b;->a(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v0, Lcom/b/a/a/h;->f:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "device"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "current_carrier"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/b/a/a/b/b;->a(Ljava/lang/String;[Ljava/lang/String;)V

    sget v0, Lcom/b/a/a/h;->g:I

    invoke-static {v0}, Lcom/b/a/a/c/a;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "device"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "network_type"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/b/a/a/b/b;->a(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v0, Lcom/b/a/a/h;->h:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "device"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "did"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/b/a/a/b/b;->a(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "feedback V1.0.0"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "sdk_version"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/b/a/a/b/b;->a(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Exception creating Feedback Payload."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/b/a/a/i;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/b/a/a/b/a;->b:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "user"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "contactInfo"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/b/a/a/b/a;->a(Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/b/a/a/b/a;->c:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "content"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/b/a/a/b/a;->a(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/b/a/a/b/a;->a:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Exception getting Feedback Payload as JSON."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/b/a/a/i;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/b/a/a/b/a;->b:Ljava/lang/String;

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/b/a/a/b/a;->c:Ljava/lang/String;

    return-void
.end method
