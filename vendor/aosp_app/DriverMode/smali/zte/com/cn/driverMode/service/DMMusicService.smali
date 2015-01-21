.class public Lzte/com/cn/driverMode/service/DMMusicService;
.super Landroid/app/Service;


# instance fields
.field private A:Landroid/os/Handler;

.field public final a:I

.field public final b:I

.field public final c:I

.field protected d:Ljava/util/ArrayList;

.field protected e:Ljava/util/ArrayList;

.field protected f:Ljava/util/ArrayList;

.field protected g:Ljava/util/ArrayList;

.field protected h:Ljava/util/ArrayList;

.field protected i:Ljava/util/ArrayList;

.field protected j:Ljava/util/ArrayList;

.field protected k:Landroid/content/Context;

.field protected l:Landroid/media/MediaPlayer;

.field protected m:I

.field protected n:I

.field protected o:I

.field protected p:I

.field protected q:I

.field protected r:I

.field protected s:Z

.field protected t:Lzte/com/cn/driverMode/service/DMApplication;

.field protected u:Landroid/content/BroadcastReceiver;

.field private final v:Landroid/os/IBinder;

.field private w:Lzte/com/cn/driverMode/service/by;

.field private x:Z

.field private y:Lzte/com/cn/driverMode/service/ay;

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    iput v1, p0, Lzte/com/cn/driverMode/service/DMMusicService;->a:I

    iput v2, p0, Lzte/com/cn/driverMode/service/DMMusicService;->b:I

    const/4 v0, 0x2

    iput v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->c:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->d:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->e:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->f:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->g:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->h:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->i:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->j:Ljava/util/ArrayList;

    new-instance v0, Lzte/com/cn/driverMode/service/aw;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/service/aw;-><init>(Lzte/com/cn/driverMode/service/DMMusicService;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->v:Landroid/os/IBinder;

    iput v1, p0, Lzte/com/cn/driverMode/service/DMMusicService;->n:I

    iput v1, p0, Lzte/com/cn/driverMode/service/DMMusicService;->o:I

    iput v1, p0, Lzte/com/cn/driverMode/service/DMMusicService;->q:I

    iput v1, p0, Lzte/com/cn/driverMode/service/DMMusicService;->r:I

    iput-boolean v2, p0, Lzte/com/cn/driverMode/service/DMMusicService;->s:Z

    iput-boolean v1, p0, Lzte/com/cn/driverMode/service/DMMusicService;->x:Z

    iput-boolean v1, p0, Lzte/com/cn/driverMode/service/DMMusicService;->z:Z

    new-instance v0, Lzte/com/cn/driverMode/service/aq;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/service/aq;-><init>(Lzte/com/cn/driverMode/service/DMMusicService;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->A:Landroid/os/Handler;

    new-instance v0, Lzte/com/cn/driverMode/service/ar;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/service/ar;-><init>(Lzte/com/cn/driverMode/service/DMMusicService;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->u:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lzte/com/cn/driverMode/service/DMMusicService;)Lzte/com/cn/driverMode/service/by;
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->w:Lzte/com/cn/driverMode/service/by;

    return-object v0
.end method

.method static synthetic a(Lzte/com/cn/driverMode/service/DMMusicService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lzte/com/cn/driverMode/service/DMMusicService;->z:Z

    return p1
.end method

.method static synthetic b(Lzte/com/cn/driverMode/service/DMMusicService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->A:Landroid/os/Handler;

    return-object v0
.end method

.method private r()V
    .locals 4

    const/4 v0, 0x0

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iget v2, p0, Lzte/com/cn/driverMode/service/DMMusicService;->q:I

    if-nez v2, :cond_3

    iget-object v2, p0, Lzte/com/cn/driverMode/service/DMMusicService;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    iget-object v2, p0, Lzte/com/cn/driverMode/service/DMMusicService;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lzte/com/cn/driverMode/service/DMMusicService;->f:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->n:I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lzte/com/cn/driverMode/service/DMMusicService;->h()Z

    const-string v0, "DMMusicService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PLAY, pause="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lzte/com/cn/driverMode/service/DMMusicService;->s:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->s:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lzte/com/cn/driverMode/service/DMMusicService;->i()Z

    :cond_2
    return-void

    :cond_3
    iget v2, p0, Lzte/com/cn/driverMode/service/DMMusicService;->q:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lzte/com/cn/driverMode/service/DMMusicService;->h:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_4

    :goto_2
    iget-object v2, p0, Lzte/com/cn/driverMode/service/DMMusicService;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lzte/com/cn/driverMode/service/DMMusicService;->h:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->m:I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->g:Ljava/util/ArrayList;

    iget v2, p0, Lzte/com/cn/driverMode/service/DMMusicService;->m:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->n:I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    iget v2, p0, Lzte/com/cn/driverMode/service/DMMusicService;->q:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lzte/com/cn/driverMode/service/DMMusicService;->j:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_6

    :goto_3
    iget-object v2, p0, Lzte/com/cn/driverMode/service/DMMusicService;->i:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_6

    iget-object v2, p0, Lzte/com/cn/driverMode/service/DMMusicService;->j:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->p:I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->i:Ljava/util/ArrayList;

    iget v2, p0, Lzte/com/cn/driverMode/service/DMMusicService;->p:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->n:I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1
.end method

.method private s()V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->q:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->p:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->p:I

    iget v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->p:I

    iget-object v1, p0, Lzte/com/cn/driverMode/service/DMMusicService;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    iput v2, p0, Lzte/com/cn/driverMode/service/DMMusicService;->p:I

    :cond_0
    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->i:Ljava/util/ArrayList;

    iget v1, p0, Lzte/com/cn/driverMode/service/DMMusicService;->p:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->n:I

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lzte/com/cn/driverMode/service/DMMusicService;->h()Z

    const-string v0, "DMMusicService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PLAY, pause="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lzte/com/cn/driverMode/service/DMMusicService;->s:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->s:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lzte/com/cn/driverMode/service/DMMusicService;->i()Z

    :cond_2
    return-void

    :cond_3
    iget v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->q:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    iget v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->m:I

    iget v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->m:I

    iget-object v1, p0, Lzte/com/cn/driverMode/service/DMMusicService;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_4

    iput v2, p0, Lzte/com/cn/driverMode/service/DMMusicService;->m:I

    :cond_4
    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->g:Ljava/util/ArrayList;

    iget v1, p0, Lzte/com/cn/driverMode/service/DMMusicService;->m:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->n:I

    goto :goto_0

    :cond_5
    iget v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->n:I

    iget v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->n:I

    iget-object v1, p0, Lzte/com/cn/driverMode/service/DMMusicService;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    iput v2, p0, Lzte/com/cn/driverMode/service/DMMusicService;->n:I

    goto :goto_0
.end method

.method private t()V
    .locals 6

    const/4 v2, 0x0

    const-string v3, "is_music!=0"

    invoke-virtual {p0}, Lzte/com/cn/driverMode/service/DMMusicService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v5, "title_key"

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    const/4 v0, 0x0

    if-eqz v2, :cond_2

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v3, Lzte/com/cn/driverMode/service/ax;

    invoke-direct {v3, p0}, Lzte/com/cn/driverMode/service/ax;-><init>(Lzte/com/cn/driverMode/service/DMMusicService;)V

    const-string v1, "_data"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lzte/com/cn/driverMode/service/ax;->a:Ljava/lang/String;

    const-string v1, "title"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lzte/com/cn/driverMode/service/ax;->b:Ljava/lang/String;

    const-string v1, "artist"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lzte/com/cn/driverMode/service/ax;->c:Ljava/lang/String;

    const-string v1, "album"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lzte/com/cn/driverMode/service/ax;->d:Ljava/lang/String;

    const-string v1, "DMMusicService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "@@@@info.path = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v3, Lzte/com/cn/driverMode/service/ax;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v3, Lzte/com/cn/driverMode/service/ax;->a:Ljava/lang/String;

    const-string v4, ".amr"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v3, Lzte/com/cn/driverMode/service/ax;->a:Ljava/lang/String;

    const-string v4, ".ogg"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v3, Lzte/com/cn/driverMode/service/ax;->a:Ljava/lang/String;

    const-string v4, ".m4a"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "DMMusicService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "&&&&&&&&&&&& info.path"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v3, Lzte/com/cn/driverMode/service/ax;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lzte/com/cn/driverMode/service/DMMusicService;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lzte/com/cn/driverMode/service/DMMusicService;->f:Ljava/util/ArrayList;

    add-int/lit8 v1, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    :cond_0
    const-string v1, "DMMusicService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "info.path = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v3, Lzte/com/cn/driverMode/service/ax;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "DMMusicService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "info.title = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v3, Lzte/com/cn/driverMode/service/ax;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "DMMusicService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "info.artist = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v3, Lzte/com/cn/driverMode/service/ax;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "DMMusicService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "info.album = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v3, Lzte/com/cn/driverMode/service/ax;->d:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    return-void
.end method

.method private u()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "album_art"

    aput-object v0, v2, v6

    const-string v0, "album"

    aput-object v0, v2, v7

    invoke-virtual {p0}, Lzte/com/cn/driverMode/service/DMMusicService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_3

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lzte/com/cn/driverMode/service/av;

    invoke-direct {v1, p0}, Lzte/com/cn/driverMode/service/av;-><init>(Lzte/com/cn/driverMode/service/DMMusicService;)V

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iput-object v2, v1, Lzte/com/cn/driverMode/service/av;->a:Ljava/lang/String;

    const-string v3, "DMMusicService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "album_art = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iput-object v2, v1, Lzte/com/cn/driverMode/service/av;->b:Ljava/lang/String;

    const-string v3, "DMMusicService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "album = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v2, p0, Lzte/com/cn/driverMode/service/DMMusicService;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->x:Z

    return-void
.end method

.method public final a(I)V
    .locals 2

    const-string v0, "DMMusicService"

    const-string v1, "seekTo .."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->l:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v2, 0x0

    const-string v0, "DMMusicService"

    const-string v1, "init ......"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->x:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "DMMusicService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "intit....command:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "music"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iput v2, p0, Lzte/com/cn/driverMode/service/DMMusicService;->q:I

    iput v2, p0, Lzte/com/cn/driverMode/service/DMMusicService;->n:I

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lzte/com/cn/driverMode/service/DMMusicService;->h()Z

    iput-boolean v7, p0, Lzte/com/cn/driverMode/service/DMMusicService;->x:Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    move v1, v2

    move v3, v2

    move v4, v2

    :goto_2
    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzte/com/cn/driverMode/service/ax;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/ax;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iput v2, p0, Lzte/com/cn/driverMode/service/DMMusicService;->q:I

    iput v1, p0, Lzte/com/cn/driverMode/service/DMMusicService;->n:I

    :cond_4
    iget v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->q:I

    if-ne v0, v7, :cond_a

    iput v2, p0, Lzte/com/cn/driverMode/service/DMMusicService;->m:I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_9

    :cond_5
    const-string v0, "DMMusicService"

    const-string v1, "artistMusicList == NULL || size == 0"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v2, p0, Lzte/com/cn/driverMode/service/DMMusicService;->n:I

    iput v2, p0, Lzte/com/cn/driverMode/service/DMMusicService;->q:I

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzte/com/cn/driverMode/service/ax;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/ax;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->g:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lzte/com/cn/driverMode/service/DMMusicService;->h:Ljava/util/ArrayList;

    add-int/lit8 v0, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput v7, p0, Lzte/com/cn/driverMode/service/DMMusicService;->q:I

    move v4, v0

    :cond_7
    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzte/com/cn/driverMode/service/ax;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/ax;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "DMMusicService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "find album:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->i:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lzte/com/cn/driverMode/service/DMMusicService;->j:Ljava/util/ArrayList;

    add-int/lit8 v0, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput v8, p0, Lzte/com/cn/driverMode/service/DMMusicService;->q:I

    move v3, v0

    :cond_8
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_2

    :cond_9
    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->g:Ljava/util/ArrayList;

    iget v1, p0, Lzte/com/cn/driverMode/service/DMMusicService;->m:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->n:I

    goto/16 :goto_1

    :cond_a
    iget v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->q:I

    if-ne v0, v8, :cond_2

    iput v2, p0, Lzte/com/cn/driverMode/service/DMMusicService;->p:I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_c

    :cond_b
    const-string v0, "DMMusicService"

    const-string v1, "albumMusicList == NULL || size == 0"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v2, p0, Lzte/com/cn/driverMode/service/DMMusicService;->n:I

    iput v2, p0, Lzte/com/cn/driverMode/service/DMMusicService;->q:I

    goto/16 :goto_1

    :cond_c
    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->i:Ljava/util/ArrayList;

    iget v1, p0, Lzte/com/cn/driverMode/service/DMMusicService;->p:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->n:I

    goto/16 :goto_1
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->n:I

    return v0
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lzte/com/cn/driverMode/service/DMMusicService;->r:I

    return-void
.end method

.method public final c(I)V
    .locals 1

    if-nez p1, :cond_1

    iget v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->r:I

    if-nez v0, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->r:I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->r:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->r:I

    goto :goto_0
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->l:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public final d()V
    .locals 3

    const-string v0, "DMMusicService"

    const-string v1, "AUTO_NEXT "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->r:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lzte/com/cn/driverMode/service/DMMusicService;->r()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->r:I

    if-nez v0, :cond_2

    invoke-direct {p0}, Lzte/com/cn/driverMode/service/DMMusicService;->s()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lzte/com/cn/driverMode/service/DMMusicService;->h()Z

    const-string v0, "DMMusicService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PLAY, pause="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lzte/com/cn/driverMode/service/DMMusicService;->s:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->s:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lzte/com/cn/driverMode/service/DMMusicService;->i()Z

    goto :goto_0
.end method

.method public final d(I)V
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->n:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lzte/com/cn/driverMode/service/DMMusicService;->n:I

    iput-boolean v1, p0, Lzte/com/cn/driverMode/service/DMMusicService;->s:Z

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->t:Lzte/com/cn/driverMode/service/DMApplication;

    iput-boolean v1, v0, Lzte/com/cn/driverMode/service/DMApplication;->D:Z

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 2

    const-string v0, "DMMusicService"

    const-string v1, "NEXT "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->r:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lzte/com/cn/driverMode/service/DMMusicService;->r()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lzte/com/cn/driverMode/service/DMMusicService;->s()V

    goto :goto_0
.end method

.method public final f()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->r:I

    if-ne v0, v3, :cond_2

    invoke-direct {p0}, Lzte/com/cn/driverMode/service/DMMusicService;->r()V

    goto :goto_0

    :cond_2
    iget v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->q:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    iget v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->p:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->p:I

    iget v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->p:I

    if-gtz v0, :cond_3

    iput v2, p0, Lzte/com/cn/driverMode/service/DMMusicService;->p:I

    :cond_3
    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->i:Ljava/util/ArrayList;

    iget v1, p0, Lzte/com/cn/driverMode/service/DMMusicService;->p:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->n:I

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lzte/com/cn/driverMode/service/DMMusicService;->h()Z

    const-string v0, "DMMusicService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PLAY, pause="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lzte/com/cn/driverMode/service/DMMusicService;->s:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->s:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lzte/com/cn/driverMode/service/DMMusicService;->i()Z

    goto :goto_0

    :cond_5
    iget v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->q:I

    if-ne v0, v3, :cond_7

    iget v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->m:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->m:I

    iget v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->m:I

    if-gtz v0, :cond_6

    iput v2, p0, Lzte/com/cn/driverMode/service/DMMusicService;->m:I

    :cond_6
    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->g:Ljava/util/ArrayList;

    iget v1, p0, Lzte/com/cn/driverMode/service/DMMusicService;->m:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->n:I

    goto :goto_1

    :cond_7
    iget v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->n:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->n:I

    iget v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->n:I

    if-gez v0, :cond_4

    iput v2, p0, Lzte/com/cn/driverMode/service/DMMusicService;->n:I

    goto :goto_1
.end method

.method public final g()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lzte/com/cn/driverMode/service/DMMusicService;->l:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "music"

    const-string v2, "pause ......"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lzte/com/cn/driverMode/service/DMMusicService;->l:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V

    iput-boolean v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->s:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()Z
    .locals 7

    const/4 v1, 0x0

    const-string v0, "DMMusicService"

    const-string v2, "prepare........"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    const-string v0, "DMMusicService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "musicInfoList.size() = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lzte/com/cn/driverMode/service/DMMusicService;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    const-string v0, "DMMusicService"

    const-string v2, "prepare : musicInfoList is nulll"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const-string v0, "DMMusicService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "curIndex = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lzte/com/cn/driverMode/service/DMMusicService;->n:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "DMMusicService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "musicInfoList.get(curIndex).path = "

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->d:Ljava/util/ArrayList;

    iget v5, p0, Lzte/com/cn/driverMode/service/DMMusicService;->n:I

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzte/com/cn/driverMode/service/ax;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/ax;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "DMMusicService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "title :"

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->d:Ljava/util/ArrayList;

    iget v5, p0, Lzte/com/cn/driverMode/service/DMMusicService;->n:I

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzte/com/cn/driverMode/service/ax;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/ax;->b:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/n -------------------------"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->l:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    iput-boolean v1, p0, Lzte/com/cn/driverMode/service/DMMusicService;->z:Z

    const/4 v3, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v5, Ljava/io/File;

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->d:Ljava/util/ArrayList;

    iget v6, p0, Lzte/com/cn/driverMode/service/DMMusicService;->n:I

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzte/com/cn/driverMode/service/ax;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/ax;->a:Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->l:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->l:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    move-object v3, v2

    move v0, v4

    :goto_1
    if-eqz v3, :cond_1

    :try_start_2
    const-string v2, "DMMusicService"

    const-string v4, "fio  is  safe close"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :cond_1
    :goto_2
    iput v1, p0, Lzte/com/cn/driverMode/service/DMMusicService;->o:I

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v2, v3

    :goto_3
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    move-object v3, v2

    move v0, v4

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_4
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    move v0, v4

    goto :goto_1

    :catch_2
    move-exception v0

    :goto_5
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    move v0, v4

    goto :goto_1

    :catch_3
    move-exception v0

    :goto_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string v2, "lixiangyang"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "e.getMessage() = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Prepare failed"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->o:I

    iget-object v2, p0, Lzte/com/cn/driverMode/service/DMMusicService;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-string v2, "zte.com.cn.drivermod.musicplayererror"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/service/DMMusicService;->sendBroadcast(Landroid/content/Intent;)V

    move v0, v1

    goto :goto_1

    :catch_4
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_5
    move-exception v0

    move-object v3, v2

    goto :goto_6

    :catch_6
    move-exception v0

    move-object v3, v2

    goto :goto_5

    :catch_7
    move-exception v0

    move-object v3, v2

    goto :goto_4

    :catch_8
    move-exception v0

    goto :goto_3

    :cond_2
    move v0, v4

    goto :goto_1
.end method

.method public final i()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lzte/com/cn/driverMode/service/DMMusicService;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const-string v1, "DMMusicService"

    const-string v2, "play() .."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-string v2, "zte.com.cn.drivermode.music.startPlay"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lzte/com/cn/driverMode/service/DMMusicService;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v1, p0, Lzte/com/cn/driverMode/service/DMMusicService;->t:Lzte/com/cn/driverMode/service/DMApplication;

    iget-boolean v1, v1, Lzte/com/cn/driverMode/service/DMApplication;->B:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lzte/com/cn/driverMode/service/DMMusicService;->t:Lzte/com/cn/driverMode/service/DMApplication;

    iget-boolean v1, v1, Lzte/com/cn/driverMode/service/DMApplication;->z:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lzte/com/cn/driverMode/service/DMMusicService;->t:Lzte/com/cn/driverMode/service/DMApplication;

    iget-boolean v1, v1, Lzte/com/cn/driverMode/service/DMApplication;->C:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lzte/com/cn/driverMode/service/DMMusicService;->t:Lzte/com/cn/driverMode/service/DMApplication;

    iget-boolean v1, v1, Lzte/com/cn/driverMode/service/DMApplication;->A:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lzte/com/cn/driverMode/service/DMMusicService;->l:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    :goto_1
    iget-object v1, p0, Lzte/com/cn/driverMode/service/DMMusicService;->l:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    iput-boolean v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->s:Z

    iget-object v1, p0, Lzte/com/cn/driverMode/service/DMMusicService;->t:Lzte/com/cn/driverMode/service/DMApplication;

    iput-boolean v0, v1, Lzte/com/cn/driverMode/service/DMApplication;->D:Z

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lzte/com/cn/driverMode/service/DMMusicService;->l:Landroid/media/MediaPlayer;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    goto :goto_1
.end method

.method public final j()V
    .locals 2

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->l:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->l:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->t:Lzte/com/cn/driverMode/service/DMApplication;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lzte/com/cn/driverMode/service/DMApplication;->D:Z

    :cond_0
    return-void
.end method

.method public final k()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lzte/com/cn/driverMode/service/DMMusicService;->l:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lzte/com/cn/driverMode/service/DMMusicService;->z:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lzte/com/cn/driverMode/service/DMMusicService;->l:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final l()I
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->l:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->z:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->l:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    goto :goto_0
.end method

.method public final m()Lzte/com/cn/driverMode/service/ax;
    .locals 2

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->d:Ljava/util/ArrayList;

    iget v1, p0, Lzte/com/cn/driverMode/service/DMMusicService;->n:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzte/com/cn/driverMode/service/ax;

    goto :goto_0
.end method

.method public final n()I
    .locals 1

    iget v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->r:I

    return v0
.end method

.method public final o()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    const-string v0, "DMMusicService"

    const-string v1, "onBind ...."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->v:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "DMMusicService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->l:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->l:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    invoke-virtual {p0}, Lzte/com/cn/driverMode/service/DMMusicService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->k:Landroid/content/Context;

    invoke-virtual {p0}, Lzte/com/cn/driverMode/service/DMMusicService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lzte/com/cn/driverMode/service/DMApplication;

    iput-object v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->t:Lzte/com/cn/driverMode/service/DMApplication;

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->l:Landroid/media/MediaPlayer;

    new-instance v1, Lzte/com/cn/driverMode/service/as;

    invoke-direct {v1, p0}, Lzte/com/cn/driverMode/service/as;-><init>(Lzte/com/cn/driverMode/service/DMMusicService;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->l:Landroid/media/MediaPlayer;

    new-instance v1, Lzte/com/cn/driverMode/service/at;

    invoke-direct {v1, p0}, Lzte/com/cn/driverMode/service/at;-><init>(Lzte/com/cn/driverMode/service/DMMusicService;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->l:Landroid/media/MediaPlayer;

    new-instance v1, Lzte/com/cn/driverMode/service/au;

    invoke-direct {v1, p0}, Lzte/com/cn/driverMode/service/au;-><init>(Lzte/com/cn/driverMode/service/DMMusicService;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    invoke-direct {p0}, Lzte/com/cn/driverMode/service/DMMusicService;->t()V

    invoke-direct {p0}, Lzte/com/cn/driverMode/service/DMMusicService;->u()V

    new-instance v0, Lzte/com/cn/driverMode/service/by;

    invoke-virtual {p0}, Lzte/com/cn/driverMode/service/DMMusicService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lzte/com/cn/driverMode/service/by;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->w:Lzte/com/cn/driverMode/service/by;

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->w:Lzte/com/cn/driverMode/service/by;

    const-string v1, "music_mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lzte/com/cn/driverMode/service/by;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->r:I

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "zte.com.cn.driverMode.ToggleMusic"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lzte/com/cn/driverMode/service/DMMusicService;->u:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lzte/com/cn/driverMode/service/DMMusicService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Lzte/com/cn/driverMode/service/ay;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/service/ay;-><init>(Lzte/com/cn/driverMode/service/DMMusicService;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->y:Lzte/com/cn/driverMode/service/ay;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sget-object v1, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lzte/com/cn/driverMode/service/DMMusicService;->y:Lzte/com/cn/driverMode/service/ay;

    invoke-virtual {p0, v1, v0}, Lzte/com/cn/driverMode/service/DMMusicService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->y:Lzte/com/cn/driverMode/service/ay;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "zte.com.cn.driverMode.exit_application"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lzte/com/cn/driverMode/service/DMMusicService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->y:Lzte/com/cn/driverMode/service/ay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->y:Lzte/com/cn/driverMode/service/ay;

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/service/DMMusicService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v1, p0, Lzte/com/cn/driverMode/service/DMMusicService;->y:Lzte/com/cn/driverMode/service/ay;

    :cond_0
    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->u:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->u:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/service/DMMusicService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    invoke-virtual {p0}, Lzte/com/cn/driverMode/service/DMMusicService;->j()V

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->l:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->l:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iput-object v1, p0, Lzte/com/cn/driverMode/service/DMMusicService;->l:Landroid/media/MediaPlayer;

    :cond_2
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2

    const-string v0, "DMMusicService"

    const-string v1, "onUnBind ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public final p()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->q:I

    return-void
.end method

.method public final q()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMMusicService;->e:Ljava/util/ArrayList;

    return-object v0
.end method
