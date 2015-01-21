.class public Lcom/zte/zdm/application/b/co;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zte/zdm/a/e;


# static fields
.field private static b:Lcom/zte/zdm/application/b/co; = null

.field private static final c:I = 0xa

.field private static final d:I = 0xb

.field private static final e:I = 0xc


# instance fields
.field private a:Lcom/zte/zdm/a/f;

.field private f:Lcom/zte/zdm/application/activities/b;

.field private g:I

.field private h:Landroid/content/Context;


# direct methods
.method private constructor <init>(Lcom/zte/zdm/application/activities/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/zdm/application/b/co;->a:Lcom/zte/zdm/a/f;

    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/zdm/application/b/co;->g:I

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/b/co;->h:Landroid/content/Context;

    iput-object p1, p0, Lcom/zte/zdm/application/b/co;->f:Lcom/zte/zdm/application/activities/b;

    return-void
.end method

.method public static declared-synchronized a(Lcom/zte/zdm/application/activities/b;)Lcom/zte/zdm/application/b/co;
    .locals 2

    const-class v1, Lcom/zte/zdm/application/b/co;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/zte/zdm/application/b/co;->b:Lcom/zte/zdm/application/b/co;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zte/zdm/application/b/co;

    invoke-direct {v0, p0}, Lcom/zte/zdm/application/b/co;-><init>(Lcom/zte/zdm/application/activities/b;)V

    sput-object v0, Lcom/zte/zdm/application/b/co;->b:Lcom/zte/zdm/application/b/co;

    :cond_0
    sget-object v0, Lcom/zte/zdm/application/b/co;->b:Lcom/zte/zdm/application/b/co;
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
.method public a()V
    .locals 7

    const/4 v5, 0x0

    const v4, 0x7f090034

    const-string v0, "showNotificationforAlert"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xa

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/zte/zdm/application/b/co;->h:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/zdm/application/b/co;->h:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/zdm/application/b/co;->h:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f090036

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Lcom/zte/zdm/a/h;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/zte/zdm/a/i;)Lcom/zte/zdm/a/f;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/b/co;->a:Lcom/zte/zdm/a/f;

    iget-object v0, p0, Lcom/zte/zdm/application/b/co;->a:Lcom/zte/zdm/a/f;

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/b/co;->a(Lcom/zte/zdm/a/f;)V

    return-void
.end method

.method public a(II)V
    .locals 7

    const v4, 0x7f09002d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showNotificationforDownload currentSize1 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "total="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/zdm/application/b/co;->g:I

    const/16 v0, 0xb

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/zte/zdm/application/b/co;->h:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/zdm/application/b/co;->h:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/zdm/application/b/co;->h:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09002e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v6, Lcom/zte/zdm/a/i;

    invoke-direct {v6, p1, p2}, Lcom/zte/zdm/a/i;-><init>(II)V

    invoke-static/range {v0 .. v6}, Lcom/zte/zdm/a/h;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/zte/zdm/a/i;)Lcom/zte/zdm/a/f;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/b/co;->a:Lcom/zte/zdm/a/f;

    iget-object v0, p0, Lcom/zte/zdm/application/b/co;->a:Lcom/zte/zdm/a/f;

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/b/co;->a(Lcom/zte/zdm/a/f;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showNotificationforDownload lastNotification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/co;->a:Lcom/zte/zdm/a/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method protected a(Lcom/zte/zdm/a/f;)V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/b/co;->f:Lcom/zte/zdm/application/activities/b;

    invoke-virtual {v0, p1}, Lcom/zte/zdm/application/activities/b;->a(Lcom/zte/zdm/a/f;)V

    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/b/co;->f:Lcom/zte/zdm/application/activities/b;

    invoke-virtual {v0, p1}, Lcom/zte/zdm/application/activities/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 7

    const/4 v5, 0x0

    const v4, 0x7f090044

    const/16 v0, 0xc

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/zte/zdm/application/b/co;->h:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/zdm/application/b/co;->h:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v4, p1

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Lcom/zte/zdm/a/h;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/zte/zdm/a/i;)Lcom/zte/zdm/a/f;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/b/co;->a:Lcom/zte/zdm/a/f;

    iget-object v0, p0, Lcom/zte/zdm/application/b/co;->a:Lcom/zte/zdm/a/f;

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/b/co;->a(Lcom/zte/zdm/a/f;)V

    return-void
.end method

.method public b()V
    .locals 7

    const/4 v5, 0x0

    const v4, 0x7f090031

    const/16 v0, 0xc

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/zte/zdm/application/b/co;->h:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/zdm/application/b/co;->h:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/zdm/application/b/co;->h:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f090032

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Lcom/zte/zdm/a/h;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/zte/zdm/a/i;)Lcom/zte/zdm/a/f;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/b/co;->a:Lcom/zte/zdm/a/f;

    iget-object v0, p0, Lcom/zte/zdm/application/b/co;->a:Lcom/zte/zdm/a/f;

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/b/co;->a(Lcom/zte/zdm/a/f;)V

    return-void
.end method

.method public b(II)V
    .locals 7

    const v4, 0x7f09002f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showNotificationforDownload currentSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "total="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xb

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/zte/zdm/application/b/co;->h:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/zdm/application/b/co;->h:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/zdm/application/b/co;->h:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090030

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v6, Lcom/zte/zdm/a/i;

    invoke-direct {v6, p1, p2}, Lcom/zte/zdm/a/i;-><init>(II)V

    invoke-static/range {v0 .. v6}, Lcom/zte/zdm/a/h;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/zte/zdm/a/i;)Lcom/zte/zdm/a/f;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/b/co;->a:Lcom/zte/zdm/a/f;

    iget-object v0, p0, Lcom/zte/zdm/application/b/co;->a:Lcom/zte/zdm/a/f;

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/b/co;->a(Lcom/zte/zdm/a/f;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showNotificationforBackup lastNotification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/co;->a:Lcom/zte/zdm/a/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method protected b(Lcom/zte/zdm/a/f;)V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/b/co;->f:Lcom/zte/zdm/application/activities/b;

    invoke-virtual {v0, p1}, Lcom/zte/zdm/application/activities/b;->b(Lcom/zte/zdm/a/f;)V

    return-void
.end method

.method public c()V
    .locals 7

    const/4 v5, 0x0

    const v4, 0x7f090034

    const/16 v0, 0xa

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/zte/zdm/application/b/co;->h:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/zdm/application/b/co;->h:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/zdm/application/b/co;->h:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f090035

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Lcom/zte/zdm/a/h;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/zte/zdm/a/i;)Lcom/zte/zdm/a/f;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/b/co;->a:Lcom/zte/zdm/a/f;

    iget-object v0, p0, Lcom/zte/zdm/application/b/co;->a:Lcom/zte/zdm/a/f;

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/b/co;->a(Lcom/zte/zdm/a/f;)V

    return-void
.end method

.method public c(II)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateNotificationMessage lastNotification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/co;->a:Lcom/zte/zdm/a/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/co;->a:Lcom/zte/zdm/a/f;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/zte/zdm/application/b/co;->a(II)V

    :cond_0
    int-to-long v0, p1

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    int-to-long v2, p2

    div-long/2addr v0, v2

    long-to-int v0, v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",currentSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/zte/zdm/application/b/co;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lastNotification.getSeverity() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zdm/application/b/co;->a:Lcom/zte/zdm/a/f;

    invoke-virtual {v2}, Lcom/zte/zdm/a/f;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/zdm/application/b/co;->a:Lcom/zte/zdm/a/f;

    invoke-virtual {v1}, Lcom/zte/zdm/a/f;->b()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    if-ne p1, p2, :cond_2

    const-string v0, "download completed"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v1, p0, Lcom/zte/zdm/application/b/co;->g:I

    if-lt v0, v1, :cond_1

    iget-object v1, p0, Lcom/zte/zdm/application/b/co;->a:Lcom/zte/zdm/a/f;

    invoke-virtual {v1, p1, p2}, Lcom/zte/zdm/a/f;->a(II)Lcom/zte/zdm/a/f;

    iget-object v1, p0, Lcom/zte/zdm/application/b/co;->a:Lcom/zte/zdm/a/f;

    invoke-virtual {p0, v1}, Lcom/zte/zdm/application/b/co;->b(Lcom/zte/zdm/a/f;)V

    iput v0, p0, Lcom/zte/zdm/application/b/co;->g:I

    goto :goto_0
.end method

.method protected c(Lcom/zte/zdm/a/f;)V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/b/co;->f:Lcom/zte/zdm/application/activities/b;

    invoke-virtual {v0, p1}, Lcom/zte/zdm/application/activities/b;->e(Lcom/zte/zdm/a/f;)V

    return-void
.end method

.method public d()V
    .locals 7

    const/4 v5, 0x0

    const v4, 0x7f090031

    const/16 v0, 0xc

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/zte/zdm/application/b/co;->h:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/zdm/application/b/co;->h:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/zdm/application/b/co;->h:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f090033

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Lcom/zte/zdm/a/h;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/zte/zdm/a/i;)Lcom/zte/zdm/a/f;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/b/co;->a:Lcom/zte/zdm/a/f;

    iget-object v0, p0, Lcom/zte/zdm/application/b/co;->a:Lcom/zte/zdm/a/f;

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/b/co;->a(Lcom/zte/zdm/a/f;)V

    return-void
.end method

.method public e()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lastNotification = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/co;->a:Lcom/zte/zdm/a/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/co;->a:Lcom/zte/zdm/a/f;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/zte/zdm/application/b/co;->a:Lcom/zte/zdm/a/f;

    invoke-virtual {v0}, Lcom/zte/zdm/a/f;->b()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/application/b/co;->f:Lcom/zte/zdm/application/activities/b;

    iget-object v1, p0, Lcom/zte/zdm/application/b/co;->a:Lcom/zte/zdm/a/f;

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/activities/b;->c(Lcom/zte/zdm/a/f;)V

    goto :goto_0
.end method

.method public f()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lastNotification = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/co;->a:Lcom/zte/zdm/a/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/co;->a:Lcom/zte/zdm/a/f;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/zte/zdm/application/b/co;->a:Lcom/zte/zdm/a/f;

    invoke-virtual {v0}, Lcom/zte/zdm/a/f;->b()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/application/b/co;->f:Lcom/zte/zdm/application/activities/b;

    iget-object v1, p0, Lcom/zte/zdm/application/b/co;->a:Lcom/zte/zdm/a/f;

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/activities/b;->d(Lcom/zte/zdm/a/f;)V

    goto :goto_0
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/b/co;->a:Lcom/zte/zdm/a/f;

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/b/co;->c(Lcom/zte/zdm/a/f;)V

    return-void
.end method

.method public h()Lcom/zte/zdm/a/f;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/b/co;->a:Lcom/zte/zdm/a/f;

    return-object v0
.end method
