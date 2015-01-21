.class public Lcom/zte/zdm/application/autoupdate/d;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "need_check_update_time_old"

.field public static final b:Ljava/lang/String; = "need_check_update_time_new"

.field public static final c:Ljava/lang/String; = "need_check_update_flag"

.field public static final d:Ljava/lang/String; = "first_boot"

.field private static e:Lcom/zte/zdm/application/a;

.field private static f:Lcom/zte/zdm/application/b/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;J)J
    .locals 8

    const-wide/16 v0, 0x1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Australia"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/zte/zdm/application/b;->b([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/16 v0, 0x2

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p1

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_1

    const-wide/16 v4, 0x7

    mul-long/2addr v4, v0

    const-wide/16 v6, 0x18

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x3c

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x3c

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    div-long/2addr v2, v4

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    :goto_0
    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    const-wide/16 v4, 0x7

    mul-long/2addr v0, v4

    const-wide/16 v4, 0x18

    mul-long/2addr v0, v4

    const-wide/16 v4, 0x3c

    mul-long/2addr v0, v4

    const-wide/16 v4, 0x3c

    mul-long/2addr v0, v4

    const-wide/16 v4, 0x3e8

    mul-long/2addr v0, v4

    mul-long/2addr v0, v2

    add-long/2addr v0, p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "newUpdateTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-wide v0

    :cond_1
    const-wide/16 v4, 0x7

    mul-long/2addr v4, v0

    const-wide/16 v6, 0x18

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x3c

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x3c

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    div-long/2addr v2, v4

    goto :goto_0
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    const-string v0, "need_check_update_time_old"

    return-object v0
.end method

.method public static a(JLandroid/content/Context;)V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x1

    const-wide/16 v7, 0x0

    invoke-static {p2}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v1, "need_check_update_time_new"

    invoke-virtual {v0, v1, v7, v8}, Lcom/zte/zdm/b/b/a;->a(Ljava/lang/String;J)J

    move-result-wide v1

    const-string v3, "need_check_update_time_old"

    invoke-virtual {v0, v3, v7, v8}, Lcom/zte/zdm/b/b/a;->a(Ljava/lang/String;J)J

    move-result-wide v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NetworkChangeCheckUpdate newtime"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetworkChangeCheckUpdate oldtime"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v1, v9, [Ljava/lang/String;

    const-string v2, "Australia"

    aput-object v2, v1, v10

    invoke-static {v1}, Lcom/zte/zdm/application/b;->b([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/32 v1, 0x240c8400

    add-long/2addr p0, v1

    :cond_0
    cmp-long v1, v3, v7

    if-nez v1, :cond_3

    const-string v1, "need_check_update_time_old"

    invoke-virtual {v0, v1, p0, p1}, Lcom/zte/zdm/b/b/a;->b(Ljava/lang/String;J)V

    :cond_1
    :goto_0
    invoke-static {p2}, Lcom/zte/zdm/application/autoupdate/d;->b(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v0, v2

    cmp-long v2, v2, v7

    if-gez v2, :cond_2

    invoke-static {v9, p2}, Lcom/zte/zdm/application/autoupdate/d;->a(ZLandroid/content/Context;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NetworkChangeCheckUpdate time"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkChangeCheckUpdate System.currentTimeMillis()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    new-array v1, v9, [Ljava/lang/String;

    const-string v2, "Australia"

    aput-object v2, v1, v10

    invoke-static {v1}, Lcom/zte/zdm/application/b;->b([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "need_check_update_time_new"

    invoke-static {p2, v3, v4}, Lcom/zte/zdm/application/autoupdate/d;->a(Landroid/content/Context;J)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/zte/zdm/b/b/a;->b(Ljava/lang/String;J)V

    goto :goto_0

    :cond_4
    cmp-long v1, v3, v7

    if-eqz v1, :cond_1

    const-string v1, "need_check_update_time_new"

    invoke-virtual {v0, v1, p0, p1}, Lcom/zte/zdm/b/b/a;->b(Ljava/lang/String;J)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkChangeCheckUpdate newtime - oldtime"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sub-long v1, p0, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x1

    invoke-static {p0}, Lcom/zte/zdm/application/autoupdate/d;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-array v0, v5, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Australia"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/zte/zdm/application/b;->b([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.action.alarm.check.update"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v0, "first boot sendBroadcast for update"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lcom/zte/zdm/application/autoupdate/d;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "NetworkChangeCheckUpdate is false"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/zte/zdm/application/autoupdate/d;->b(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/zdm/application/App;->b()Lcom/zte/zdm/application/a;

    move-result-object v2

    sput-object v2, Lcom/zte/zdm/application/autoupdate/d;->e:Lcom/zte/zdm/application/a;

    sget-object v2, Lcom/zte/zdm/application/autoupdate/d;->e:Lcom/zte/zdm/application/a;

    invoke-virtual {v2}, Lcom/zte/zdm/application/a;->a()Lcom/zte/zdm/application/b/g;

    move-result-object v2

    sput-object v2, Lcom/zte/zdm/application/autoupdate/d;->f:Lcom/zte/zdm/application/b/g;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NetworkChangeCheckUpdate triggerCheckUpdate time"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NetworkChangeCheckUpdate triggerCheckUpdate System.currentTimeMillis()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    sget-object v0, Lcom/zte/zdm/application/autoupdate/d;->f:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->E()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/zte/zdm/application/autoupdate/d;->c(Landroid/content/Context;)Z

    move-result v0

    if-ne v5, v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.action.alarm.check.update"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v0, "NetworkChangeCheckUpdate sendBroadcast"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 2

    invoke-static {p0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v1, "first_boot"

    invoke-virtual {v0, v1, p1}, Lcom/zte/zdm/b/b/a;->b(Ljava/lang/String;Z)V

    return-void
.end method

.method public static a(ZLandroid/content/Context;)V
    .locals 3

    const/4 v0, 0x1

    invoke-static {p1}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v2

    const/4 v1, 0x0

    if-ne v0, p0, :cond_0

    :goto_0
    const-string v1, "need_check_update_flag"

    invoke-virtual {v2, v1, v0}, Lcom/zte/zdm/b/b/a;->c(Ljava/lang/String;I)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)J
    .locals 4

    invoke-static {p0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    invoke-static {}, Lcom/zte/zdm/application/autoupdate/d;->a()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/zte/zdm/b/b/a;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x1

    invoke-static {p0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v1

    const-string v2, "need_check_update_flag"

    invoke-virtual {v1, v2, v0}, Lcom/zte/zdm/b/b/a;->b(Ljava/lang/String;I)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NetworkChangeCheckUpdate val"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)V
    .locals 6

    const-wide/16 v4, 0x0

    invoke-static {p0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v1, "need_check_update_time_new"

    invoke-virtual {v0, v1, v4, v5}, Lcom/zte/zdm/b/b/a;->a(Ljava/lang/String;J)J

    move-result-wide v1

    cmp-long v3, v4, v1

    if-eqz v3, :cond_0

    const-string v3, "need_check_update_time_new"

    invoke-virtual {v0, v3, v4, v5}, Lcom/zte/zdm/b/b/a;->b(Ljava/lang/String;J)V

    const-string v3, "need_check_update_time_old"

    invoke-virtual {v0, v3, v1, v2}, Lcom/zte/zdm/b/b/a;->b(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public static e(Landroid/content/Context;)Z
    .locals 3

    invoke-static {p0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v1, "first_boot"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/b/b/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
