.class public Lcom/zte/statistics/sdk/b/a/a;
.super Lcom/zte/statistics/sdk/a/c;


# direct methods
.method constructor <init>(Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;)V
    .locals 4

    invoke-direct {p0}, Lcom/zte/statistics/sdk/a/c;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;->D()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "type"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/zte/statistics/sdk/b/a/a;->a(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;->D()Ljava/lang/String;

    move-result-object v0

    const-string v1, "event"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "model"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/zte/statistics/sdk/b/a/a;->a(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/zte/statistics/sdk/b/a/a;->bx()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/zte/statistics/sdk/b/a/a;->a(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to add data to metric: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/zte/statistics/sdk/c;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method b(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "times"

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/zte/statistics/sdk/b/a/a;->a(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to add data to metric: times = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/zte/statistics/sdk/c;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
