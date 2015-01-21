.class public final Lcom/b/b/a/b/a/b;
.super Lcom/b/b/a/c/b;


# direct methods
.method constructor <init>(Lcom/b/b/a/a/b;)V
    .locals 4

    invoke-direct {p0}, Lcom/b/b/a/c/b;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Lcom/b/b/a/a/b;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "type"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/b/b/a/b/a/b;->a(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/b/b/a/a/b;->a()Ljava/lang/String;

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

    invoke-virtual {p0, v0, v1}, Lcom/b/b/a/b/a/b;->a(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    const-string v0, "statistics V1.0.0"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "sdk_version"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/b/b/a/c/b;->a(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
