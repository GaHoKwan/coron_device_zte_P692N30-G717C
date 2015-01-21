.class public Lcom/zte/zdm/omacp/application/platform/OmaCpActitvity;
.super Landroid/app/Activity;


# static fields
.field private static d:Lcom/zte/zdm/omacp/application/b/b;

.field private static e:Lcom/zte/zdm/omacp/application/platform/OmaCpActitvity;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/zte/zdm/omacp/c;

.field private c:Lcom/zte/zdm/omacp/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/zte/zdm/omacp/application/platform/OmaCpActitvity;->e:Lcom/zte/zdm/omacp/application/platform/OmaCpActitvity;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "OmaCpActitvity"

    iput-object v0, p0, Lcom/zte/zdm/omacp/application/platform/OmaCpActitvity;->a:Ljava/lang/String;

    return-void
.end method

.method public static a()Lcom/zte/zdm/omacp/application/platform/OmaCpActitvity;
    .locals 1

    sget-object v0, Lcom/zte/zdm/omacp/application/platform/OmaCpActitvity;->e:Lcom/zte/zdm/omacp/application/platform/OmaCpActitvity;

    return-object v0
.end method

.method private static declared-synchronized a(Lcom/zte/zdm/omacp/application/platform/OmaCpActitvity;)V
    .locals 2

    const-class v0, Lcom/zte/zdm/omacp/application/platform/OmaCpActitvity;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/zte/zdm/omacp/application/platform/OmaCpActitvity;->e:Lcom/zte/zdm/omacp/application/platform/OmaCpActitvity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static a(Lcom/zte/zdm/omacp/b;Lcom/zte/zdm/omacp/c;)V
    .locals 2

    new-instance v0, Lcom/zte/zdm/omacp/application/b/b;

    invoke-direct {v0, p0, p1}, Lcom/zte/zdm/omacp/application/b/b;-><init>(Lcom/zte/zdm/omacp/b;Lcom/zte/zdm/omacp/c;)V

    sput-object v0, Lcom/zte/zdm/omacp/application/platform/OmaCpActitvity;->d:Lcom/zte/zdm/omacp/application/b/b;

    sget-object v0, Lcom/zte/zdm/omacp/application/platform/OmaCpActitvity;->d:Lcom/zte/zdm/omacp/application/b/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/zdm/omacp/application/b/b;->sendEmptyMessage(I)Z

    return-void
.end method

.method public static b()Lcom/zte/zdm/omacp/application/b/b;
    .locals 1

    sget-object v0, Lcom/zte/zdm/omacp/application/platform/OmaCpActitvity;->d:Lcom/zte/zdm/omacp/application/b/b;

    return-object v0
.end method


# virtual methods
.method public c()[B
    .locals 2

    invoke-virtual {p0}, Lcom/zte/zdm/omacp/application/platform/OmaCpActitvity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .locals 3

    invoke-static {}, Lcom/zte/zdm/omacp/a;->a()Lcom/zte/zdm/omacp/a;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/omacp/application/platform/OmaCpActitvity;->c:Lcom/zte/zdm/omacp/b;

    invoke-virtual {v0, v1}, Lcom/zte/zdm/omacp/a;->a(Lcom/zte/zdm/omacp/b;)V

    invoke-static {}, Lcom/zte/zdm/omacp/b/a;->a()Lcom/zte/zdm/omacp/b/a;

    move-result-object v0

    const-string v1, "w2"

    const-class v2, Lcom/zte/zdm/omacp/application/a/a;

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/omacp/b/a;->a(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-static {}, Lcom/zte/zdm/omacp/b/a;->a()Lcom/zte/zdm/omacp/b/a;

    move-result-object v0

    const-string v1, "w4"

    const-class v2, Lcom/zte/zdm/omacp/application/a/c;

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/omacp/b/a;->a(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-static {}, Lcom/zte/zdm/omacp/b/a;->a()Lcom/zte/zdm/omacp/b/a;

    move-result-object v0

    const-string v1, "w7"

    const-class v2, Lcom/zte/zdm/omacp/application/a/b;

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/omacp/b/a;->a(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "onCreate"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/zte/zdm/omacp/application/platform/OmaCpActitvity;->a(Lcom/zte/zdm/omacp/application/platform/OmaCpActitvity;)V

    new-instance v0, Lcom/zte/zdm/omacp/application/platform/a;

    invoke-direct {v0, p0}, Lcom/zte/zdm/omacp/application/platform/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/zdm/omacp/application/platform/OmaCpActitvity;->c:Lcom/zte/zdm/omacp/b;

    invoke-virtual {p0}, Lcom/zte/zdm/omacp/application/platform/OmaCpActitvity;->d()V

    invoke-static {}, Lcom/zte/zdm/omacp/application/platform/OmaCpNotifycation;->a()V

    invoke-virtual {p0}, Lcom/zte/zdm/omacp/application/platform/OmaCpActitvity;->c()[B

    move-result-object v0

    const-string v1, "OmaCpActitvity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " data = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/zte/zdm/omacp/a;->a()Lcom/zte/zdm/omacp/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/zte/zdm/omacp/a;->a([B)Lcom/zte/zdm/omacp/c;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/omacp/application/platform/OmaCpActitvity;->b:Lcom/zte/zdm/omacp/c;

    iget-object v0, p0, Lcom/zte/zdm/omacp/application/platform/OmaCpActitvity;->c:Lcom/zte/zdm/omacp/b;

    iget-object v1, p0, Lcom/zte/zdm/omacp/application/platform/OmaCpActitvity;->b:Lcom/zte/zdm/omacp/c;

    invoke-static {v0, v1}, Lcom/zte/zdm/omacp/application/platform/OmaCpActitvity;->a(Lcom/zte/zdm/omacp/b;Lcom/zte/zdm/omacp/c;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    const-string v0, "onDestroy"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/zte/zdm/omacp/application/platform/OmaCpActitvity;->a(Lcom/zte/zdm/omacp/application/platform/OmaCpActitvity;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    const-string v0, "onResume"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 1

    const-string v0, "onStart"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 1

    const-string v0, "onStop"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
