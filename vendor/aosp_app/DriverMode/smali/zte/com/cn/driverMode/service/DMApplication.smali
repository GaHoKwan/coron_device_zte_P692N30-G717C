.class public Lzte/com/cn/driverMode/service/DMApplication;
.super Landroid/app/Application;


# instance fields
.field public A:Z

.field public B:Z

.field public C:Z

.field public D:Z

.field private E:Z

.field public a:Ljava/util/ArrayList;

.field public b:Ljava/lang/String;

.field public c:Z

.field public d:Ljava/util/HashMap;

.field public e:Ljava/util/HashMap;

.field public f:Ljava/lang/String;

.field public g:Z

.field public final h:I

.field public i:Z

.field public j:Ljava/util/ArrayList;

.field public k:I

.field public l:Ljava/util/LinkedList;

.field public m:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

.field public n:I

.field public o:I

.field public p:Z

.field public q:Z

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:Z

.field public w:Z

.field public x:Ljava/lang/String;

.field public y:I

.field public z:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzte/com/cn/driverMode/service/DMApplication;->a:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lzte/com/cn/driverMode/service/DMApplication;->c:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lzte/com/cn/driverMode/service/DMApplication;->d:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lzte/com/cn/driverMode/service/DMApplication;->e:Ljava/util/HashMap;

    const-string v0, "sign_no"

    iput-object v0, p0, Lzte/com/cn/driverMode/service/DMApplication;->f:Ljava/lang/String;

    iput-boolean v1, p0, Lzte/com/cn/driverMode/service/DMApplication;->g:Z

    iput-boolean v1, p0, Lzte/com/cn/driverMode/service/DMApplication;->E:Z

    const v0, 0x8751

    iput v0, p0, Lzte/com/cn/driverMode/service/DMApplication;->h:I

    iput-boolean v1, p0, Lzte/com/cn/driverMode/service/DMApplication;->i:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzte/com/cn/driverMode/service/DMApplication;->j:Ljava/util/ArrayList;

    iput v1, p0, Lzte/com/cn/driverMode/service/DMApplication;->k:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lzte/com/cn/driverMode/service/DMApplication;->l:Ljava/util/LinkedList;

    const/4 v0, 0x0

    iput-object v0, p0, Lzte/com/cn/driverMode/service/DMApplication;->m:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    const/16 v0, -0x1770

    iput v0, p0, Lzte/com/cn/driverMode/service/DMApplication;->n:I

    iput v1, p0, Lzte/com/cn/driverMode/service/DMApplication;->o:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lzte/com/cn/driverMode/service/DMApplication;->p:Z

    iput-boolean v1, p0, Lzte/com/cn/driverMode/service/DMApplication;->q:Z

    const/16 v0, 0x1f4

    iput v0, p0, Lzte/com/cn/driverMode/service/DMApplication;->r:I

    const/16 v0, 0x12c

    iput v0, p0, Lzte/com/cn/driverMode/service/DMApplication;->s:I

    const/4 v0, 0x5

    iput v0, p0, Lzte/com/cn/driverMode/service/DMApplication;->t:I

    const/16 v0, 0x40

    iput v0, p0, Lzte/com/cn/driverMode/service/DMApplication;->u:I

    iput-boolean v1, p0, Lzte/com/cn/driverMode/service/DMApplication;->v:Z

    iput-boolean v1, p0, Lzte/com/cn/driverMode/service/DMApplication;->w:Z

    const-string v0, ""

    iput-object v0, p0, Lzte/com/cn/driverMode/service/DMApplication;->x:Ljava/lang/String;

    iput v1, p0, Lzte/com/cn/driverMode/service/DMApplication;->y:I

    iput-boolean v1, p0, Lzte/com/cn/driverMode/service/DMApplication;->z:Z

    iput-boolean v1, p0, Lzte/com/cn/driverMode/service/DMApplication;->A:Z

    iput-boolean v1, p0, Lzte/com/cn/driverMode/service/DMApplication;->B:Z

    iput-boolean v1, p0, Lzte/com/cn/driverMode/service/DMApplication;->C:Z

    iput-boolean v1, p0, Lzte/com/cn/driverMode/service/DMApplication;->D:Z

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "DMApplication"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setRunningBackgroundFlag---flag="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lzte/com/cn/driverMode/service/DMApplication;->E:Z

    if-eqz p1, :cond_1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "zte.com.cn.driverMode.QUITE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lzte/com/cn/driverMode/service/DMApplication;->sendBroadcast(Landroid/content/Intent;)V

    :goto_0
    const-string v2, "version"

    invoke-static {p0, v2}, Lzte/com/cn/driverMode/service/ce;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "DMApplication"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "setRunningBackgroundFlag---version="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_3

    const v3, 0x7f080294

    invoke-virtual {p0, v3}, Lzte/com/cn/driverMode/service/DMApplication;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const v3, 0x7f080295

    invoke-virtual {p0, v3}, Lzte/com/cn/driverMode/service/DMApplication;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const v3, 0x7f080296

    invoke-virtual {p0, v3}, Lzte/com/cn/driverMode/service/DMApplication;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lzte/com/cn/driverMode/service/DMApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "DRIVE_MODE_ON"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_1
    return-void

    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "zte.com.cn.driverMode.LAUNCH"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lzte/com/cn/driverMode/service/DMApplication;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lzte/com/cn/driverMode/service/DMApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "DRIVE_MODE_ON"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_3
    new-instance v2, Landroid/content/Intent;

    const-string v3, "zte.com.cn.driverMode.StatusChanged"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "DRIVE_MODE_ON"

    if-nez p1, :cond_4

    :goto_2
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lzte/com/cn/driverMode/service/DMApplication;->sendBroadcast(Landroid/content/Intent;)V

    const-string v0, "DMApplication"

    const-string v1, "setRunningBackgroundFlag---send broadcast StatusChanged!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method public final a()Z
    .locals 3

    const-string v0, "DMApplication"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getRunningBackgroundFlag---bRunningBackground="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lzte/com/cn/driverMode/service/DMApplication;->E:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lzte/com/cn/driverMode/service/DMApplication;->E:Z

    return v0
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    const-string v0, "version"

    invoke-static {p0, v0}, Lzte/com/cn/driverMode/service/ce;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const v1, 0x7f080294

    invoke-virtual {p0, v1}, Lzte/com/cn/driverMode/service/DMApplication;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x7f08029d

    invoke-virtual {p0, v1}, Lzte/com/cn/driverMode/service/DMApplication;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lzte/com/cn/driverMode/service/k;->a()Lzte/com/cn/driverMode/service/k;

    move-result-object v0

    invoke-virtual {p0}, Lzte/com/cn/driverMode/service/DMApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzte/com/cn/driverMode/service/k;->a(Landroid/content/Context;)V

    :cond_1
    return-void
.end method
