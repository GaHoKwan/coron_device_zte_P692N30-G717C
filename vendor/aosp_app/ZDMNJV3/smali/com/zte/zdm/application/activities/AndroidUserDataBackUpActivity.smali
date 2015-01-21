.class public Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;
.super Landroid/app/Activity;

# interfaces
.implements Lcom/zte/zdm/a/j;


# static fields
.field private static final a:Ljava/lang/String; = "ZDMLog"

.field private static l:Z


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/zte/backup/reporter/ProgressReporter;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:Ljava/util/List;

.field private m:Lcom/zte/zdm/application/activities/b;

.field private n:Lcom/zte/zdm/application/b/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->l:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v2, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->b:Landroid/content/Context;

    const-string v0, ""

    iput-object v0, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->d:Ljava/lang/String;

    iput-object v2, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->e:Lcom/zte/backup/reporter/ProgressReporter;

    iput v1, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->f:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->g:I

    iput v1, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->h:I

    iput v1, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->i:I

    iput v1, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->j:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->k:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->b(Landroid/os/Message;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/zte/backup/common/CommonFunctions;->deleteDirRecursion(Ljava/lang/String;)Z

    return-void
.end method

.method public static a(Z)V
    .locals 0

    sput-boolean p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->l:Z

    return-void
.end method

.method private a(Landroid/os/Message;)Z
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
    invoke-direct {p0, p1}, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->e(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->c(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->d(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_3
    iget v1, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->f:I

    iget v2, p1, Landroid/os/Message;->arg1:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->f:I

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, p1}, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->b(Landroid/os/Message;)V

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

.method private b(Landroid/os/Message;)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->a(Z)V

    const-string v0, "ZDMLog"

    const-string v1, "handleDataMessageCompleted  AndroidMmiController"

    invoke-static {v0, v1}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "backup"

    iget-object v1, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ZDMLog"

    const-string v1, "handleDataMessageCompleted  backup message over"

    invoke-static {v0, v1}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->i()V

    invoke-direct {p0}, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->m()V

    :goto_0
    invoke-virtual {p0}, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->finish()V

    return-void

    :cond_0
    const-wide/16 v0, 0xbb8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-direct {p0}, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->i()V

    invoke-static {v2}, Lcom/zte/zdm/application/d/f;->a(Z)V

    const-string v0, "ZDMLog"

    const-string v1, "handleDataMessageCompleted  restore message over"

    invoke-static {v0, v1}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic b(Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;Landroid/os/Message;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->a(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method private c(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->g:I

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->arg2:I

    iput v0, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->h:I

    goto :goto_0
.end method

.method private d(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v0, p1, Landroid/os/Message;->arg2:I

    iget v1, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->j:I

    iget v2, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->h:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->j:I

    const/16 v1, 0x2003

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v1, 0x2001

    if-eq v0, v1, :cond_0

    const/16 v1, 0x2005

    if-ne v0, v1, :cond_0

    goto :goto_0
.end method

.method public static d()Z
    .locals 1

    sget-boolean v0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->l:Z

    return v0
.end method

.method private e(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->arg1:I

    iput v0, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->g:I

    iget v0, p1, Landroid/os/Message;->arg2:I

    iput v0, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->i:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->h:I

    return-void
.end method

.method private g()V
    .locals 3

    invoke-virtual {p0}, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "backupORrestore"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->d:Ljava/lang/String;

    const-string v0, "ZDMLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AndroidUserDataBackUpActivity oncreate sBackupRestore="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->requestWindowFeature(I)Z

    const-string v0, "backup"

    iget-object v1, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->n:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    const v1, 0x7f090055

    invoke-virtual {p0, v1}, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f090056

    invoke-virtual {p0, v2}, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/a/d;->n(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/zte/zdm/application/activities/bb;

    invoke-direct {v0, p0}, Lcom/zte/zdm/application/activities/bb;-><init>(Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;)V

    invoke-virtual {v0}, Lcom/zte/zdm/application/activities/bb;->start()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "restore"

    iget-object v1, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->h()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->n:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    const v1, 0x7f090058

    invoke-virtual {p0, v1}, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f090059

    invoke-virtual {p0, v2}, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/a/d;->o(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/zte/zdm/application/activities/bc;

    invoke-direct {v0, p0}, Lcom/zte/zdm/application/activities/bc;-><init>(Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;)V

    invoke-virtual {v0}, Lcom/zte/zdm/application/activities/bc;->start()V

    goto :goto_0

    :cond_2
    const-string v0, "ZDMLog"

    const-string v1, "AndroidUserDataBackUpActivity oncreate Not backup or restore"

    invoke-static {v0, v1}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->finish()V

    goto :goto_0
.end method

.method private h()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v1, Lcom/zte/zdm/application/activities/bd;

    invoke-direct {v1, p0}, Lcom/zte/zdm/application/activities/bd;-><init>(Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;)V

    iget-object v0, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->m:Lcom/zte/zdm/application/activities/b;

    invoke-virtual {p0}, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090163

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09003a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Runnable;

    aput-object v1, v4, v6

    const/4 v1, 0x0

    aput-object v1, v4, v7

    const-wide/16 v5, 0x0

    invoke-virtual {p0}, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v7, 0x7f090058

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lcom/zte/zdm/application/activities/b;->a(Lcom/zte/zdm/a/j;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Runnable;JLjava/lang/String;)V

    return-void
.end method

.method private i()V
    .locals 2

    const-string v0, "ZDMLog"

    const-string v1, "AndroidUserDataBackUpActivity closeWatingDialog"

    invoke-static {v0, v1}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->n:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/zdm/a/d;->d(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private j()V
    .locals 4

    const-string v0, "ZDMLog"

    const-string v1, "startBackupTask"

    invoke-static {v0, v1}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/zte/backup/utils/VersionInfo3G;->getInstance()Lcom/zte/backup/utils/VersionInfo3G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/backup/utils/VersionInfo3G;->clearComponent()V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->k:Ljava/util/List;

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

    iget-object v3, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->e:Lcom/zte/backup/reporter/ProgressReporter;

    invoke-virtual {v0, v3}, Lcom/zte/backup/composer/Composer;->setReporter(Lcom/zte/backup/reporter/IProgressReporter;)V

    invoke-virtual {v0}, Lcom/zte/backup/composer/Composer;->init()Z

    invoke-virtual {v0}, Lcom/zte/backup/composer/Composer;->getTotalNum()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->e:Lcom/zte/backup/reporter/ProgressReporter;

    invoke-virtual {v0, v1}, Lcom/zte/backup/reporter/ProgressReporter;->postMsgAllComposerDataCount(I)V

    iget-object v0, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/backup/composer/Composer;

    invoke-virtual {v0}, Lcom/zte/backup/composer/Composer;->onStart()V

    invoke-virtual {v0}, Lcom/zte/backup/composer/Composer;->compose()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/zte/backup/composer/Composer;->onEnd(I)V

    const/16 v3, 0x2001

    if-ne v2, v3, :cond_2

    invoke-static {}, Lcom/zte/backup/utils/VersionInfo3G;->getInstance()Lcom/zte/backup/utils/VersionInfo3G;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/zte/backup/utils/VersionInfo3G;->addComponent(Lcom/zte/backup/composer/Composer;)V

    invoke-static {}, Lcom/zte/backup/utils/VersionInfo3G;->getInstance()Lcom/zte/backup/utils/VersionInfo3G;

    move-result-object v0

    iget-object v2, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/zte/backup/utils/VersionInfo3G;->writeVerInfo2Xml(Ljava/lang/String;)Z

    goto :goto_1

    :cond_2
    const/16 v3, 0x2003

    if-eq v2, v3, :cond_1

    invoke-virtual {v0}, Lcom/zte/backup/composer/Composer;->clearData()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->e:Lcom/zte/backup/reporter/ProgressReporter;

    invoke-virtual {v0}, Lcom/zte/backup/reporter/ProgressReporter;->postMsgAllComposerCompleted()V

    return-void
.end method

.method private k()V
    .locals 4

    const-string v0, "ZDMLog"

    const-string v1, "startRestoreTask"

    invoke-static {v0, v1}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/zte/backup/utils/VersionInfo3G;->getInstance()Lcom/zte/backup/utils/VersionInfo3G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/backup/utils/VersionInfo3G;->clearComponent()V

    invoke-static {}, Lcom/zte/backup/utils/VersionInfo3G;->getInstance()Lcom/zte/backup/utils/VersionInfo3G;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/zte/backup/utils/VersionInfo3G;->readVerInfoFromXml(Ljava/lang/String;)Z

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->k:Ljava/util/List;

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

    iget-object v3, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->e:Lcom/zte/backup/reporter/ProgressReporter;

    invoke-virtual {v0, v3}, Lcom/zte/backup/composer/Composer;->setReporter(Lcom/zte/backup/reporter/IProgressReporter;)V

    invoke-virtual {v0}, Lcom/zte/backup/composer/Composer;->init()Z

    invoke-virtual {v0}, Lcom/zte/backup/composer/Composer;->getTotalNum()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->e:Lcom/zte/backup/reporter/ProgressReporter;

    invoke-virtual {v0, v1}, Lcom/zte/backup/reporter/ProgressReporter;->postMsgAllComposerDataCount(I)V

    iget-object v0, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->k:Ljava/util/List;

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
    iget-object v0, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->e:Lcom/zte/backup/reporter/ProgressReporter;

    invoke-virtual {v0}, Lcom/zte/backup/reporter/ProgressReporter;->postMsgAllComposerCompleted()V

    const-string v0, "ZDMLog"

    const-string v1, "RestoreTask complete"

    invoke-static {v0, v1}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private l()Landroid/os/Handler;
    .locals 1

    new-instance v0, Lcom/zte/zdm/application/activities/be;

    invoke-direct {v0, p0}, Lcom/zte/zdm/application/activities/be;-><init>(Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;)V

    return-object v0
.end method

.method private m()V
    .locals 1

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->b()Lcom/zte/zdm/application/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/a;->a()Lcom/zte/zdm/application/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->q()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v1, "BackupPath"

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->c:Ljava/lang/String;

    const-string v0, "ZDMLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBackupPath()  mBackupRootPath ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    iget-object v0, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/heartyservice/a/c;->a(Landroid/content/Context;)Lcom/zte/zdm/heartyservice/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/zte/zdm/heartyservice/a/b;->f()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
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

    iput-object v0, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->c:Ljava/lang/String;

    :cond_1
    return-void

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
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

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

    iget-object v2, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->c:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->k:Ljava/util/List;

    sget-object v1, Lcom/zte/backup/composer/DataType;->PHONEBOOK:Lcom/zte/backup/composer/DataType;

    iget-object v2, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->c:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/zte/backup/composer/ComposerFactory;->createBackupComposerEntity(Lcom/zte/backup/composer/DataType;Landroid/content/Context;Ljava/lang/String;)Lcom/zte/backup/composer/Composer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->k:Ljava/util/List;

    sget-object v1, Lcom/zte/backup/composer/DataType;->CALLHISTORY:Lcom/zte/backup/composer/DataType;

    iget-object v2, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->c:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/zte/backup/composer/ComposerFactory;->createBackupComposerEntity(Lcom/zte/backup/composer/DataType;Landroid/content/Context;Ljava/lang/String;)Lcom/zte/backup/composer/Composer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->k:Ljava/util/List;

    sget-object v1, Lcom/zte/backup/composer/DataType;->SMS:Lcom/zte/backup/composer/DataType;

    iget-object v2, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->c:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/zte/backup/composer/ComposerFactory;->createBackupComposerEntity(Lcom/zte/backup/composer/DataType;Landroid/content/Context;Ljava/lang/String;)Lcom/zte/backup/composer/Composer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->k:Ljava/util/List;

    sget-object v1, Lcom/zte/backup/composer/DataType;->MMS:Lcom/zte/backup/composer/DataType;

    iget-object v2, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->c:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/zte/backup/composer/ComposerFactory;->createBackupComposerEntity(Lcom/zte/backup/composer/DataType;Landroid/content/Context;Ljava/lang/String;)Lcom/zte/backup/composer/Composer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->k:Ljava/util/List;

    sget-object v1, Lcom/zte/backup/composer/DataType;->CALENDAR:Lcom/zte/backup/composer/DataType;

    iget-object v2, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->c:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/zte/backup/composer/ComposerFactory;->createBackupComposerEntity(Lcom/zte/backup/composer/DataType;Landroid/content/Context;Ljava/lang/String;)Lcom/zte/backup/composer/Composer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->k:Ljava/util/List;

    sget-object v1, Lcom/zte/backup/composer/DataType;->BROWSER:Lcom/zte/backup/composer/DataType;

    iget-object v2, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->c:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/zte/backup/composer/ComposerFactory;->createBackupComposerEntity(Lcom/zte/backup/composer/DataType;Landroid/content/Context;Ljava/lang/String;)Lcom/zte/backup/composer/Composer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->k:Ljava/util/List;

    sget-object v1, Lcom/zte/backup/composer/DataType;->SETTINGS:Lcom/zte/backup/composer/DataType;

    iget-object v2, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->c:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/zte/backup/composer/ComposerFactory;->createBackupComposerEntity(Lcom/zte/backup/composer/DataType;Landroid/content/Context;Ljava/lang/String;)Lcom/zte/backup/composer/Composer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->k:Ljava/util/List;

    sget-object v1, Lcom/zte/backup/composer/DataType;->ALARM:Lcom/zte/backup/composer/DataType;

    iget-object v2, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->c:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/zte/backup/composer/ComposerFactory;->createBackupComposerEntity(Lcom/zte/backup/composer/DataType;Landroid/content/Context;Ljava/lang/String;)Lcom/zte/backup/composer/Composer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->k:Ljava/util/List;

    sget-object v1, Lcom/zte/backup/composer/DataType;->NOTES:Lcom/zte/backup/composer/DataType;

    iget-object v2, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->c:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/zte/backup/composer/ComposerFactory;->createBackupComposerEntity(Lcom/zte/backup/composer/DataType;Landroid/content/Context;Ljava/lang/String;)Lcom/zte/backup/composer/Composer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->k:Ljava/util/List;

    sget-object v1, Lcom/zte/backup/composer/DataType;->FAVORITES:Lcom/zte/backup/composer/DataType;

    iget-object v2, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->c:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/zte/backup/composer/ComposerFactory;->createBackupComposerEntity(Lcom/zte/backup/composer/DataType;Landroid/content/Context;Ljava/lang/String;)Lcom/zte/backup/composer/Composer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->j()V

    iget-object v0, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public c()V
    .locals 4

    const-string v0, "ZDMLog"

    const-string v1, "restoreAll"

    invoke-static {v0, v1}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->k:Ljava/util/List;

    sget-object v1, Lcom/zte/backup/composer/DataType;->PHONEBOOK:Lcom/zte/backup/composer/DataType;

    iget-object v2, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->c:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/zte/backup/composer/ComposerFactory;->createRestoreComposerEntity(Lcom/zte/backup/composer/DataType;Landroid/content/Context;Ljava/lang/String;)Lcom/zte/backup/composer/Composer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->k:Ljava/util/List;

    sget-object v1, Lcom/zte/backup/composer/DataType;->CALLHISTORY:Lcom/zte/backup/composer/DataType;

    iget-object v2, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->c:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/zte/backup/composer/ComposerFactory;->createRestoreComposerEntity(Lcom/zte/backup/composer/DataType;Landroid/content/Context;Ljava/lang/String;)Lcom/zte/backup/composer/Composer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->k:Ljava/util/List;

    sget-object v1, Lcom/zte/backup/composer/DataType;->SMS:Lcom/zte/backup/composer/DataType;

    iget-object v2, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->c:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/zte/backup/composer/ComposerFactory;->createRestoreComposerEntity(Lcom/zte/backup/composer/DataType;Landroid/content/Context;Ljava/lang/String;)Lcom/zte/backup/composer/Composer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->k:Ljava/util/List;

    sget-object v1, Lcom/zte/backup/composer/DataType;->MMS:Lcom/zte/backup/composer/DataType;

    iget-object v2, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->c:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/zte/backup/composer/ComposerFactory;->createRestoreComposerEntity(Lcom/zte/backup/composer/DataType;Landroid/content/Context;Ljava/lang/String;)Lcom/zte/backup/composer/Composer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->k:Ljava/util/List;

    sget-object v1, Lcom/zte/backup/composer/DataType;->CALENDAR:Lcom/zte/backup/composer/DataType;

    iget-object v2, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->c:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/zte/backup/composer/ComposerFactory;->createRestoreComposerEntity(Lcom/zte/backup/composer/DataType;Landroid/content/Context;Ljava/lang/String;)Lcom/zte/backup/composer/Composer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->k:Ljava/util/List;

    sget-object v1, Lcom/zte/backup/composer/DataType;->BROWSER:Lcom/zte/backup/composer/DataType;

    iget-object v2, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->c:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/zte/backup/composer/ComposerFactory;->createRestoreComposerEntity(Lcom/zte/backup/composer/DataType;Landroid/content/Context;Ljava/lang/String;)Lcom/zte/backup/composer/Composer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->k:Ljava/util/List;

    sget-object v1, Lcom/zte/backup/composer/DataType;->SETTINGS:Lcom/zte/backup/composer/DataType;

    iget-object v2, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->c:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/zte/backup/composer/ComposerFactory;->createRestoreComposerEntity(Lcom/zte/backup/composer/DataType;Landroid/content/Context;Ljava/lang/String;)Lcom/zte/backup/composer/Composer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->k:Ljava/util/List;

    sget-object v1, Lcom/zte/backup/composer/DataType;->ALARM:Lcom/zte/backup/composer/DataType;

    iget-object v2, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->c:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/zte/backup/composer/ComposerFactory;->createRestoreComposerEntity(Lcom/zte/backup/composer/DataType;Landroid/content/Context;Ljava/lang/String;)Lcom/zte/backup/composer/Composer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->k:Ljava/util/List;

    sget-object v1, Lcom/zte/backup/composer/DataType;->NOTES:Lcom/zte/backup/composer/DataType;

    iget-object v2, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->c:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/zte/backup/composer/ComposerFactory;->createRestoreComposerEntity(Lcom/zte/backup/composer/DataType;Landroid/content/Context;Ljava/lang/String;)Lcom/zte/backup/composer/Composer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->k:Ljava/util/List;

    sget-object v1, Lcom/zte/backup/composer/DataType;->FAVORITES:Lcom/zte/backup/composer/DataType;

    iget-object v2, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->c:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/zte/backup/composer/ComposerFactory;->createRestoreComposerEntity(Lcom/zte/backup/composer/DataType;Landroid/content/Context;Ljava/lang/String;)Lcom/zte/backup/composer/Composer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->k()V

    iget-object v0, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public e()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "ZDMLog"

    const-string v1, "AndroidUserDataBackUpActivity oncreate"

    invoke-static {v0, v1}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p0, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->b:Landroid/content/Context;

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->b()Lcom/zte/zdm/application/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/a;->a()Lcom/zte/zdm/application/b/g;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->n:Lcom/zte/zdm/application/b/g;

    iget-object v0, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->n:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zte/zdm/a/d;->a(Lcom/zte/zdm/a/j;)V

    iget-object v0, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->n:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->b()Lcom/zte/zdm/a/b;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/application/activities/b;

    iput-object v0, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->m:Lcom/zte/zdm/application/activities/b;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->a(Z)V

    new-instance v0, Lcom/zte/backup/reporter/ProgressReporter;

    invoke-direct {p0}, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->l()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zte/backup/reporter/ProgressReporter;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->e:Lcom/zte/backup/reporter/ProgressReporter;

    invoke-virtual {p0}, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->a()V

    invoke-direct {p0}, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->g()V

    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreateDialog  dialog id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->m:Lcom/zte/zdm/application/activities/b;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->m:Lcom/zte/zdm/application/activities/b;

    invoke-virtual {v0, p1}, Lcom/zte/zdm/application/activities/b;->a(I)Landroid/app/Dialog;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    :goto_0
    return-object v0

    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->n:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->b()Lcom/zte/zdm/a/j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/application/activities/AndroidUserDataBackUpActivity;->n:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/zdm/a/d;->a(Lcom/zte/zdm/a/j;)V

    :cond_0
    const-string v0, "onDestroy"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
