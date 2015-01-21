.class public final Lcom/powermo/base/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/powermo/base/d;


# instance fields
.field private a:Lcom/powermo/base/i;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/powermo/base/e;

.field private final d:Lcom/powermo/base/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/powermo/base/a/a;->a:Lcom/powermo/base/i;

    new-instance v0, Lcom/powermo/base/e;

    const-string v1, "config.android.id"

    invoke-direct {v0, v1}, Lcom/powermo/base/e;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/powermo/base/a/a;->c:Lcom/powermo/base/e;

    new-instance v0, Lcom/powermo/base/e;

    const-string v1, "config.android.devicename"

    invoke-direct {v0, v1}, Lcom/powermo/base/e;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/powermo/base/a/a;->d:Lcom/powermo/base/e;

    iput-object p1, p0, Lcom/powermo/base/a/a;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/powermo/base/a/a;->c()V

    return-void
.end method

.method private c()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    iget-object v0, p0, Lcom/powermo/base/a/a;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/powermo/base/a/a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v0, v2, :cond_3

    iget-object v0, p0, Lcom/powermo/base/a/a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "wifi_p2p_device_name"

    invoke-static {v0, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-nez v1, :cond_1

    const-string v1, "0000000000000000"

    :cond_1
    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Android_"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-object v2, p0, Lcom/powermo/base/a/a;->c:Lcom/powermo/base/e;

    invoke-virtual {v2, v1}, Lcom/powermo/base/e;->b(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/powermo/base/a/a;->c:Lcom/powermo/base/e;

    invoke-virtual {v1}, Lcom/powermo/base/e;->b()V

    iget-object v1, p0, Lcom/powermo/base/a/a;->d:Lcom/powermo/base/e;

    invoke-virtual {v1, v0}, Lcom/powermo/base/e;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/powermo/base/a/a;->d:Lcom/powermo/base/e;

    invoke-virtual {v0}, Lcom/powermo/base/e;->b()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/powermo/base/a/a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "wifi_p2p_device_name"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "config.android."

    return-object v0
.end method

.method public final a(Lcom/powermo/base/b;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/powermo/base/i;)V
    .locals 3

    const/4 v2, 0x1

    iput-object p1, p0, Lcom/powermo/base/a/a;->a:Lcom/powermo/base/i;

    iget-object v0, p0, Lcom/powermo/base/a/a;->a:Lcom/powermo/base/i;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/powermo/base/a/a;->a:Lcom/powermo/base/i;

    iget-object v1, p0, Lcom/powermo/base/a/a;->c:Lcom/powermo/base/e;

    invoke-interface {v0, v1, v2}, Lcom/powermo/base/i;->a(Lcom/powermo/base/b;Z)V

    iget-object v0, p0, Lcom/powermo/base/a/a;->a:Lcom/powermo/base/i;

    iget-object v1, p0, Lcom/powermo/base/a/a;->d:Lcom/powermo/base/e;

    invoke-interface {v0, v1, v2}, Lcom/powermo/base/i;->a(Lcom/powermo/base/b;Z)V

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/powermo/base/a/a;->a:Lcom/powermo/base/i;

    return-void
.end method

.method public final b(Lcom/powermo/base/b;)V
    .locals 0

    return-void
.end method
