.class public Lcom/zte/zdm/application/c/a;
.super Ljava/lang/Object;


# static fields
.field public static c:Z = false

.field public static d:Z = false

.field public static e:Z = false

.field private static final i:Ljava/lang/String; = "ZDMLog"

.field private static k:Landroid/content/Context;

.field private static l:Lcom/zte/zdm/application/c/a;


# instance fields
.field public a:I

.field public b:I

.field public f:Z

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private j:Ljava/util/List;

.field private m:Landroid/app/ProgressDialog;

.field private n:I

.field private o:I

.field private p:I

.field private q:Lcom/zte/backup/reporter/ProgressReporter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/zte/zdm/application/c/a;->c:Z

    sput-boolean v0, Lcom/zte/zdm/application/c/a;->d:Z

    sput-boolean v0, Lcom/zte/zdm/application/c/a;->e:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/zte/zdm/application/c/a;->g:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/zte/zdm/application/c/a;->h:Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/application/c/a;->j:Ljava/util/List;

    iput v1, p0, Lcom/zte/zdm/application/c/a;->a:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/zte/zdm/application/c/a;->n:I

    iput v1, p0, Lcom/zte/zdm/application/c/a;->o:I

    iput v1, p0, Lcom/zte/zdm/application/c/a;->p:I

    iput v1, p0, Lcom/zte/zdm/application/c/a;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/zdm/application/c/a;->q:Lcom/zte/backup/reporter/ProgressReporter;

    iput-boolean v1, p0, Lcom/zte/zdm/application/c/a;->f:Z

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/zte/zdm/application/c/a;
    .locals 1

    sput-object p0, Lcom/zte/zdm/application/c/a;->k:Landroid/content/Context;

    sget-object v0, Lcom/zte/zdm/application/c/a;->l:Lcom/zte/zdm/application/c/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zte/zdm/application/c/a;

    invoke-direct {v0}, Lcom/zte/zdm/application/c/a;-><init>()V

    sput-object v0, Lcom/zte/zdm/application/c/a;->l:Lcom/zte/zdm/application/c/a;

    :cond_0
    sget-object v0, Lcom/zte/zdm/application/c/a;->l:Lcom/zte/zdm/application/c/a;

    return-object v0
.end method

.method private a(I)V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput p1, v0, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/application/App;->b()Lcom/zte/zdm/application/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/application/a;->a()Lcom/zte/zdm/application/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/a/d;->b()Lcom/zte/zdm/a/j;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lcom/zte/zdm/a/j;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private a(Landroid/os/Message;)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "ZDMLog"

    const-string v1, "handleDataMessageCompleted"

    invoke-static {v0, v1}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iput v3, p0, Lcom/zte/zdm/application/c/a;->a:I

    iput v3, p0, Lcom/zte/zdm/application/c/a;->b:I

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "===============cancelBackup="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/zte/zdm/application/c/a;->f:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/zte/zdm/application/c/a;->f:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iput-boolean v3, p0, Lcom/zte/zdm/application/c/a;->f:Z

    :goto_0
    return-void

    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "===============restoreBackup="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/zte/zdm/application/c/a;->e:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-boolean v0, Lcom/zte/zdm/application/c/a;->e:Z

    if-nez v0, :cond_1

    const/16 v0, 0x7d7

    invoke-direct {p0, v0}, Lcom/zte/zdm/application/c/a;->a(I)V

    goto :goto_0

    :cond_1
    sput-boolean v3, Lcom/zte/zdm/application/c/a;->e:Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/zte/zdm/application/c/a;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zte/zdm/application/c/a;->a(Landroid/os/Message;)V

    return-void
.end method

.method private b(Landroid/os/Message;)Z
    .locals 4

    const/4 v0, 0x1

    const-string v1, "ZDMLog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processDataMsg ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/zte/zdm/application/c/a;->c(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/zte/zdm/application/c/a;->d(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/zte/zdm/application/c/a;->e(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_3
    iget v1, p0, Lcom/zte/zdm/application/c/a;->a:I

    iget v2, p1, Landroid/os/Message;->arg1:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/zte/zdm/application/c/a;->a:I

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, p1}, Lcom/zte/zdm/application/c/a;->a(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method static synthetic b(Lcom/zte/zdm/application/c/a;Landroid/os/Message;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/zte/zdm/application/c/a;->b(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method private c(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->arg1:I

    iput v0, p0, Lcom/zte/zdm/application/c/a;->n:I

    iget v0, p1, Landroid/os/Message;->arg2:I

    iput v0, p0, Lcom/zte/zdm/application/c/a;->p:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/zdm/application/c/a;->o:I

    return-void
.end method

.method private d(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p0, Lcom/zte/zdm/application/c/a;->n:I

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->arg2:I

    iput v0, p0, Lcom/zte/zdm/application/c/a;->o:I

    goto :goto_0
.end method

.method private e(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->arg2:I

    iget v1, p0, Lcom/zte/zdm/application/c/a;->b:I

    iget v2, p0, Lcom/zte/zdm/application/c/a;->o:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/zte/zdm/application/c/a;->b:I

    sget-boolean v1, Lcom/zte/zdm/application/c/a;->e:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/zte/zdm/application/c/a;->b:I

    iget v2, p0, Lcom/zte/zdm/application/c/a;->a:I

    invoke-static {v1, v2}, Lcom/zte/zdm/application/mmi/DownloadActivity;->a(II)V

    :cond_0
    const/16 v1, 0x2003

    if-ne v0, v1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/16 v1, 0x2001

    if-eq v0, v1, :cond_1

    const/16 v1, 0x2005

    if-ne v0, v1, :cond_1

    goto :goto_0
.end method

.method private f()V
    .locals 4

    const-string v0, "ZDMLog"

    const-string v1, "startBackupTask"

    invoke-static {v0, v1}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/zte/backup/utils/VersionInfo3G;->getInstance()Lcom/zte/backup/utils/VersionInfo3G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/backup/utils/VersionInfo3G;->clearComponent()V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/zte/zdm/application/c/a;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/backup/composer/Composer;

    iget-object v3, p0, Lcom/zte/zdm/application/c/a;->q:Lcom/zte/backup/reporter/ProgressReporter;

    invoke-virtual {v0, v3}, Lcom/zte/backup/composer/Composer;->setReporter(Lcom/zte/backup/reporter/IProgressReporter;)V

    invoke-virtual {v0}, Lcom/zte/backup/composer/Composer;->init()Z

    invoke-virtual {v0}, Lcom/zte/backup/composer/Composer;->getTotalNum()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :cond_0
    const-string v0, "ZDMLog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startBackupTask totalCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_1

    const/16 v0, 0x7d6

    invoke-direct {p0, v0}, Lcom/zte/zdm/application/c/a;->a(I)V

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/zte/zdm/application/c/a;->q:Lcom/zte/backup/reporter/ProgressReporter;

    invoke-virtual {v0, v1}, Lcom/zte/backup/reporter/ProgressReporter;->postMsgAllComposerDataCount(I)V

    iget-object v0, p0, Lcom/zte/zdm/application/c/a;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/backup/composer/Composer;

    invoke-virtual {v0}, Lcom/zte/backup/composer/Composer;->onStart()V

    invoke-virtual {v0}, Lcom/zte/backup/composer/Composer;->compose()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/zte/backup/composer/Composer;->onEnd(I)V

    const/16 v3, 0x2001

    if-ne v2, v3, :cond_3

    invoke-static {}, Lcom/zte/backup/utils/VersionInfo3G;->getInstance()Lcom/zte/backup/utils/VersionInfo3G;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/zte/backup/utils/VersionInfo3G;->addComponent(Lcom/zte/backup/composer/Composer;)V

    invoke-static {}, Lcom/zte/backup/utils/VersionInfo3G;->getInstance()Lcom/zte/backup/utils/VersionInfo3G;

    move-result-object v0

    iget-object v2, p0, Lcom/zte/zdm/application/c/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/zte/backup/utils/VersionInfo3G;->writeVerInfo2Xml(Ljava/lang/String;)Z

    goto :goto_2

    :cond_3
    const/16 v3, 0x2003

    if-eq v2, v3, :cond_2

    invoke-virtual {v0}, Lcom/zte/backup/composer/Composer;->clearData()V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/zte/zdm/application/c/a;->q:Lcom/zte/backup/reporter/ProgressReporter;

    invoke-virtual {v0}, Lcom/zte/backup/reporter/ProgressReporter;->postMsgAllComposerCompleted()V

    goto :goto_1
.end method

.method private g()Landroid/os/Handler;
    .locals 1

    new-instance v0, Lcom/zte/zdm/application/c/d;

    invoke-direct {v0, p0}, Lcom/zte/zdm/application/c/d;-><init>(Lcom/zte/zdm/application/c/a;)V

    return-object v0
.end method

.method private h()V
    .locals 4

    const-string v0, "ZDMLog"

    const-string v1, "startRestoreTask"

    invoke-static {v0, v1}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/zte/zdm/application/c/a;->e:Z

    invoke-static {}, Lcom/zte/backup/utils/VersionInfo3G;->getInstance()Lcom/zte/backup/utils/VersionInfo3G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/backup/utils/VersionInfo3G;->clearComponent()V

    invoke-static {}, Lcom/zte/backup/utils/VersionInfo3G;->getInstance()Lcom/zte/backup/utils/VersionInfo3G;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/c/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/zte/backup/utils/VersionInfo3G;->readVerInfoFromXml(Ljava/lang/String;)Z

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/zte/zdm/application/c/a;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/backup/composer/Composer;

    iget-object v3, p0, Lcom/zte/zdm/application/c/a;->q:Lcom/zte/backup/reporter/ProgressReporter;

    invoke-virtual {v0, v3}, Lcom/zte/backup/composer/Composer;->setReporter(Lcom/zte/backup/reporter/IProgressReporter;)V

    invoke-virtual {v0}, Lcom/zte/backup/composer/Composer;->init()Z

    invoke-virtual {v0}, Lcom/zte/backup/composer/Composer;->getTotalNum()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/application/c/a;->q:Lcom/zte/backup/reporter/ProgressReporter;

    invoke-virtual {v0, v1}, Lcom/zte/backup/reporter/ProgressReporter;->postMsgAllComposerDataCount(I)V

    iget-object v0, p0, Lcom/zte/zdm/application/c/a;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/backup/composer/Composer;

    invoke-virtual {v0}, Lcom/zte/backup/composer/Composer;->onStart()V

    invoke-virtual {v0}, Lcom/zte/backup/composer/Composer;->compose()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/zte/backup/composer/Composer;->onEnd(I)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/zte/zdm/application/c/a;->q:Lcom/zte/backup/reporter/ProgressReporter;

    invoke-virtual {v0}, Lcom/zte/backup/reporter/ProgressReporter;->postMsgAllComposerCompleted()V

    const-string v0, "ZDMLog"

    const-string v1, "RestoreTask complete"

    invoke-static {v0, v1}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v1, "BackupPath"

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/c/a;->g:Ljava/lang/String;

    const-string v0, "ZDMLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBackupPath()  mBackupRootPath ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zdm/application/c/a;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/c/a;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lcom/zte/zdm/application/c/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    :try_start_0
    sget-object v0, Lcom/zte/zdm/application/c/a;->k:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/heartyservice/a/c;->a(Landroid/content/Context;)Lcom/zte/zdm/heartyservice/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/zte/zdm/heartyservice/a/b;->f()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    sget-object v1, Lcom/zte/zdm/application/c/a;->k:Landroid/content/Context;

    invoke-static {v1}, Lcom/zte/zdm/application/d/a/a;->a(Landroid/content/Context;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v3, v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "ZDMLog"

    const-string v1, "get sd card path is fail"

    invoke-static {v0, v1}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "firmware_update_backup"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/c/a;->g:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/zte/zdm/application/c/a;->g:Ljava/lang/String;

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    const-string v0, "ZDMLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BackupService sBackupRestore"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zdm/application/c/a;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/zte/backup/reporter/ProgressReporter;

    invoke-direct {p0}, Lcom/zte/zdm/application/c/a;->g()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zte/backup/reporter/ProgressReporter;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/zte/zdm/application/c/a;->q:Lcom/zte/backup/reporter/ProgressReporter;

    const-string v0, "backup"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/zte/zdm/application/c/b;

    invoke-direct {v0, p0}, Lcom/zte/zdm/application/c/b;-><init>(Lcom/zte/zdm/application/c/a;)V

    invoke-virtual {v0}, Lcom/zte/zdm/application/c/b;->start()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "restore"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/zte/zdm/application/c/c;

    invoke-direct {v0, p0}, Lcom/zte/zdm/application/c/c;-><init>(Lcom/zte/zdm/application/c/a;)V

    invoke-virtual {v0}, Lcom/zte/zdm/application/c/c;->start()V

    goto :goto_0

    :cond_1
    const-string v0, "ZDMLog"

    const-string v1, "BackupService Not backup or restore"

    invoke-static {v0, v1}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "ZDMLog"

    const-string v1, "BackupService showWatingDialog"

    invoke-static {v0, v1}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/app/ProgressDialog;

    sget-object v1, Lcom/zte/zdm/application/c/a;->k:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/zdm/application/c/a;->m:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/zte/zdm/application/c/a;->m:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v0, p0, Lcom/zte/zdm/application/c/a;->m:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zte/zdm/application/c/a;->m:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zte/zdm/application/c/a;->m:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/c/a;->m:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method public b()V
    .locals 4

    const-string v0, "ZDMLog"

    const-string v1, "backupAll"

    invoke-static {v0, v1}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ZDMLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "backupAll TEST_DATA_DIR = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zdm/application/c/a;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/c/a;->g:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/c/a;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/c/a;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/zte/zdm/application/c/a;->j:Ljava/util/List;

    sget-object v1, Lcom/zte/backup/composer/DataType;->PHONEBOOK:Lcom/zte/backup/composer/DataType;

    sget-object v2, Lcom/zte/zdm/application/c/a;->k:Landroid/content/Context;

    iget-object v3, p0, Lcom/zte/zdm/application/c/a;->g:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/zte/backup/composer/ComposerFactory;->createBackupComposerEntity(Lcom/zte/backup/composer/DataType;Landroid/content/Context;Ljava/lang/String;)Lcom/zte/backup/composer/Composer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/zte/zdm/application/c/a;->j:Ljava/util/List;

    sget-object v1, Lcom/zte/backup/composer/DataType;->CALLHISTORY:Lcom/zte/backup/composer/DataType;

    sget-object v2, Lcom/zte/zdm/application/c/a;->k:Landroid/content/Context;

    iget-object v3, p0, Lcom/zte/zdm/application/c/a;->g:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/zte/backup/composer/ComposerFactory;->createBackupComposerEntity(Lcom/zte/backup/composer/DataType;Landroid/content/Context;Ljava/lang/String;)Lcom/zte/backup/composer/Composer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/zte/zdm/application/c/a;->j:Ljava/util/List;

    sget-object v1, Lcom/zte/backup/composer/DataType;->SMS:Lcom/zte/backup/composer/DataType;

    sget-object v2, Lcom/zte/zdm/application/c/a;->k:Landroid/content/Context;

    iget-object v3, p0, Lcom/zte/zdm/application/c/a;->g:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/zte/backup/composer/ComposerFactory;->createBackupComposerEntity(Lcom/zte/backup/composer/DataType;Landroid/content/Context;Ljava/lang/String;)Lcom/zte/backup/composer/Composer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/zte/zdm/application/c/a;->j:Ljava/util/List;

    sget-object v1, Lcom/zte/backup/composer/DataType;->MMS:Lcom/zte/backup/composer/DataType;

    sget-object v2, Lcom/zte/zdm/application/c/a;->k:Landroid/content/Context;

    iget-object v3, p0, Lcom/zte/zdm/application/c/a;->g:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/zte/backup/composer/ComposerFactory;->createBackupComposerEntity(Lcom/zte/backup/composer/DataType;Landroid/content/Context;Ljava/lang/String;)Lcom/zte/backup/composer/Composer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/zte/zdm/application/c/a;->j:Ljava/util/List;

    sget-object v1, Lcom/zte/backup/composer/DataType;->CALENDAR:Lcom/zte/backup/composer/DataType;

    sget-object v2, Lcom/zte/zdm/application/c/a;->k:Landroid/content/Context;

    iget-object v3, p0, Lcom/zte/zdm/application/c/a;->g:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/zte/backup/composer/ComposerFactory;->createBackupComposerEntity(Lcom/zte/backup/composer/DataType;Landroid/content/Context;Ljava/lang/String;)Lcom/zte/backup/composer/Composer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/zte/zdm/application/c/a;->j:Ljava/util/List;

    sget-object v1, Lcom/zte/backup/composer/DataType;->SETTINGS:Lcom/zte/backup/composer/DataType;

    sget-object v2, Lcom/zte/zdm/application/c/a;->k:Landroid/content/Context;

    iget-object v3, p0, Lcom/zte/zdm/application/c/a;->g:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/zte/backup/composer/ComposerFactory;->createBackupComposerEntity(Lcom/zte/backup/composer/DataType;Landroid/content/Context;Ljava/lang/String;)Lcom/zte/backup/composer/Composer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/zte/zdm/application/c/a;->j:Ljava/util/List;

    sget-object v1, Lcom/zte/backup/composer/DataType;->ALARM:Lcom/zte/backup/composer/DataType;

    sget-object v2, Lcom/zte/zdm/application/c/a;->k:Landroid/content/Context;

    iget-object v3, p0, Lcom/zte/zdm/application/c/a;->g:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/zte/backup/composer/ComposerFactory;->createBackupComposerEntity(Lcom/zte/backup/composer/DataType;Landroid/content/Context;Ljava/lang/String;)Lcom/zte/backup/composer/Composer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/zte/zdm/application/c/a;->j:Ljava/util/List;

    sget-object v1, Lcom/zte/backup/composer/DataType;->NOTES:Lcom/zte/backup/composer/DataType;

    sget-object v2, Lcom/zte/zdm/application/c/a;->k:Landroid/content/Context;

    iget-object v3, p0, Lcom/zte/zdm/application/c/a;->g:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/zte/backup/composer/ComposerFactory;->createBackupComposerEntity(Lcom/zte/backup/composer/DataType;Landroid/content/Context;Ljava/lang/String;)Lcom/zte/backup/composer/Composer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/zte/zdm/application/c/a;->j:Ljava/util/List;

    sget-object v1, Lcom/zte/backup/composer/DataType;->FAVORITES:Lcom/zte/backup/composer/DataType;

    sget-object v2, Lcom/zte/zdm/application/c/a;->k:Landroid/content/Context;

    iget-object v3, p0, Lcom/zte/zdm/application/c/a;->g:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/zte/backup/composer/ComposerFactory;->createBackupComposerEntity(Lcom/zte/backup/composer/DataType;Landroid/content/Context;Ljava/lang/String;)Lcom/zte/backup/composer/Composer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/zte/zdm/application/c/a;->f()V

    iget-object v0, p0, Lcom/zte/zdm/application/c/a;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/zte/backup/common/CommonFunctions;->deleteDirRecursion(Ljava/lang/String;)Z

    return-void
.end method

.method public c()V
    .locals 4

    const-string v0, "ZDMLog"

    const-string v1, "restoreAll"

    invoke-static {v0, v1}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/c/a;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/zte/zdm/application/c/a;->j:Ljava/util/List;

    sget-object v1, Lcom/zte/backup/composer/DataType;->PHONEBOOK:Lcom/zte/backup/composer/DataType;

    sget-object v2, Lcom/zte/zdm/application/c/a;->k:Landroid/content/Context;

    iget-object v3, p0, Lcom/zte/zdm/application/c/a;->g:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/zte/backup/composer/ComposerFactory;->createRestoreComposerEntity(Lcom/zte/backup/composer/DataType;Landroid/content/Context;Ljava/lang/String;)Lcom/zte/backup/composer/Composer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/zte/zdm/application/c/a;->j:Ljava/util/List;

    sget-object v1, Lcom/zte/backup/composer/DataType;->CALLHISTORY:Lcom/zte/backup/composer/DataType;

    sget-object v2, Lcom/zte/zdm/application/c/a;->k:Landroid/content/Context;

    iget-object v3, p0, Lcom/zte/zdm/application/c/a;->g:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/zte/backup/composer/ComposerFactory;->createRestoreComposerEntity(Lcom/zte/backup/composer/DataType;Landroid/content/Context;Ljava/lang/String;)Lcom/zte/backup/composer/Composer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/zte/zdm/application/c/a;->j:Ljava/util/List;

    sget-object v1, Lcom/zte/backup/composer/DataType;->SMS:Lcom/zte/backup/composer/DataType;

    sget-object v2, Lcom/zte/zdm/application/c/a;->k:Landroid/content/Context;

    iget-object v3, p0, Lcom/zte/zdm/application/c/a;->g:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/zte/backup/composer/ComposerFactory;->createRestoreComposerEntity(Lcom/zte/backup/composer/DataType;Landroid/content/Context;Ljava/lang/String;)Lcom/zte/backup/composer/Composer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/zte/zdm/application/c/a;->j:Ljava/util/List;

    sget-object v1, Lcom/zte/backup/composer/DataType;->MMS:Lcom/zte/backup/composer/DataType;

    sget-object v2, Lcom/zte/zdm/application/c/a;->k:Landroid/content/Context;

    iget-object v3, p0, Lcom/zte/zdm/application/c/a;->g:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/zte/backup/composer/ComposerFactory;->createRestoreComposerEntity(Lcom/zte/backup/composer/DataType;Landroid/content/Context;Ljava/lang/String;)Lcom/zte/backup/composer/Composer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/zte/zdm/application/c/a;->j:Ljava/util/List;

    sget-object v1, Lcom/zte/backup/composer/DataType;->CALENDAR:Lcom/zte/backup/composer/DataType;

    sget-object v2, Lcom/zte/zdm/application/c/a;->k:Landroid/content/Context;

    iget-object v3, p0, Lcom/zte/zdm/application/c/a;->g:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/zte/backup/composer/ComposerFactory;->createRestoreComposerEntity(Lcom/zte/backup/composer/DataType;Landroid/content/Context;Ljava/lang/String;)Lcom/zte/backup/composer/Composer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/zte/zdm/application/c/a;->j:Ljava/util/List;

    sget-object v1, Lcom/zte/backup/composer/DataType;->SETTINGS:Lcom/zte/backup/composer/DataType;

    sget-object v2, Lcom/zte/zdm/application/c/a;->k:Landroid/content/Context;

    iget-object v3, p0, Lcom/zte/zdm/application/c/a;->g:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/zte/backup/composer/ComposerFactory;->createRestoreComposerEntity(Lcom/zte/backup/composer/DataType;Landroid/content/Context;Ljava/lang/String;)Lcom/zte/backup/composer/Composer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/zte/zdm/application/c/a;->j:Ljava/util/List;

    sget-object v1, Lcom/zte/backup/composer/DataType;->ALARM:Lcom/zte/backup/composer/DataType;

    sget-object v2, Lcom/zte/zdm/application/c/a;->k:Landroid/content/Context;

    iget-object v3, p0, Lcom/zte/zdm/application/c/a;->g:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/zte/backup/composer/ComposerFactory;->createRestoreComposerEntity(Lcom/zte/backup/composer/DataType;Landroid/content/Context;Ljava/lang/String;)Lcom/zte/backup/composer/Composer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/zte/zdm/application/c/a;->j:Ljava/util/List;

    sget-object v1, Lcom/zte/backup/composer/DataType;->NOTES:Lcom/zte/backup/composer/DataType;

    sget-object v2, Lcom/zte/zdm/application/c/a;->k:Landroid/content/Context;

    iget-object v3, p0, Lcom/zte/zdm/application/c/a;->g:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/zte/backup/composer/ComposerFactory;->createRestoreComposerEntity(Lcom/zte/backup/composer/DataType;Landroid/content/Context;Ljava/lang/String;)Lcom/zte/backup/composer/Composer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/zte/zdm/application/c/a;->j:Ljava/util/List;

    sget-object v1, Lcom/zte/backup/composer/DataType;->FAVORITES:Lcom/zte/backup/composer/DataType;

    sget-object v2, Lcom/zte/zdm/application/c/a;->k:Landroid/content/Context;

    iget-object v3, p0, Lcom/zte/zdm/application/c/a;->g:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/zte/backup/composer/ComposerFactory;->createRestoreComposerEntity(Lcom/zte/backup/composer/DataType;Landroid/content/Context;Ljava/lang/String;)Lcom/zte/backup/composer/Composer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/zte/zdm/application/c/a;->h()V

    iget-object v0, p0, Lcom/zte/zdm/application/c/a;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public d()V
    .locals 2

    const-string v0, "ZDMLog"

    const-string v1, "BackupService closeWatingDialog"

    invoke-static {v0, v1}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/zte/zdm/application/c/a;->m:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/application/c/a;->m:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    iget-object v0, p0, Lcom/zte/zdm/application/c/a;->m:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public e()V
    .locals 3

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/zte/zdm/application/c/a;->f:Z

    iget-object v0, p0, Lcom/zte/zdm/application/c/a;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/backup/composer/Composer;

    invoke-virtual {v0, v2}, Lcom/zte/backup/composer/Composer;->setCancel(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method
