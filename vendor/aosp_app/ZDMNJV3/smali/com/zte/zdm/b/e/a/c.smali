.class public Lcom/zte/zdm/b/e/a/c;
.super Lcom/zte/zdm/b/e/a;


# static fields
.field public static final A:Ljava/lang/String; = "sdcard"

.field public static final B:Ljava/lang/String; = "/data/data/com.zte.zdm/files"

.field private static final C:Ljava/util/Map; = null

.field private static final D:I = 0x3

.field private static final E:I = 0x493e0

.field public static final g:I = 0x3ba

.field public static final h:I = 0x3b9

.field public static final i:I = 0x3b8

.field public static final j:I = 0x3b7

.field public static final k:I = 0x38a

.field public static final l:I = 0x389

.field public static final m:I = 0x387

.field public static final n:I = 0x386

.field public static final o:I = 0x385

.field public static final p:I = 0x384

.field public static final q:I = 0x1f7

.field public static final r:I = 0x1f8

.field public static final s:I


# instance fields
.field private F:Ljava/lang/String;

.field private G:Lcom/zte/zdm/b/e/a/a/b;

.field private H:Lcom/zte/zdm/b/e/a/b/g;

.field private I:Lcom/zte/zdm/g/d/b;

.field private J:Lcom/zte/zdm/b/a;

.field private K:I

.field private L:I

.field private M:I

.field private N:Lcom/zte/zdm/b/e/a/a/h;

.field t:Lcom/zte/zdm/b/e/a/j;

.field u:Lcom/zte/zdm/b/e/a/j;

.field v:Lcom/zte/zdm/b/e/a/j;

.field w:Lcom/zte/zdm/b/e/a/j;

.field x:Lcom/zte/zdm/b/e/a/j;

.field y:Lcom/zte/zdm/b/e/a/j;

.field z:Lcom/zte/zdm/b/e/a/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zte/zdm/b/e/a/d;

    invoke-direct {v0}, Lcom/zte/zdm/b/e/a/d;-><init>()V

    sput-object v0, Lcom/zte/zdm/b/e/a/c;->C:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/zte/zdm/b/a;Lcom/zte/zdm/g/d/b;Lcom/zte/zdm/d/a/k;Lcom/zte/zdm/b/e/e;Lcom/zte/zdm/b/b/a;Lcom/zte/zdm/b/e/a/b/g;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/zte/zdm/b/e/a;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/b/e/a/c;->F:Ljava/lang/String;

    iput-object v0, p0, Lcom/zte/zdm/b/e/a/c;->G:Lcom/zte/zdm/b/e/a/a/b;

    iput-object v0, p0, Lcom/zte/zdm/b/e/a/c;->H:Lcom/zte/zdm/b/e/a/b/g;

    iput-object v0, p0, Lcom/zte/zdm/b/e/a/c;->I:Lcom/zte/zdm/g/d/b;

    invoke-static {}, Lcom/zte/zdm/b/a;->b()Lcom/zte/zdm/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/b/e/a/c;->J:Lcom/zte/zdm/b/a;

    const/16 v0, 0x384

    iput v0, p0, Lcom/zte/zdm/b/e/a/c;->L:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/zdm/b/e/a/c;->M:I

    new-instance v0, Lcom/zte/zdm/b/e/a/a/h;

    invoke-direct {v0}, Lcom/zte/zdm/b/e/a/a/h;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/b/e/a/c;->N:Lcom/zte/zdm/b/e/a/a/h;

    iput-object p1, p0, Lcom/zte/zdm/b/e/a/c;->J:Lcom/zte/zdm/b/a;

    iput-object p2, p0, Lcom/zte/zdm/b/e/a/c;->I:Lcom/zte/zdm/g/d/b;

    iput-object p3, p0, Lcom/zte/zdm/b/e/a/c;->a:Lcom/zte/zdm/d/a/k;

    iput-object p4, p0, Lcom/zte/zdm/b/e/a/c;->d:Lcom/zte/zdm/b/e/e;

    iput-object p5, p0, Lcom/zte/zdm/b/e/a/c;->b:Lcom/zte/zdm/b/b/a;

    iput-object p6, p0, Lcom/zte/zdm/b/e/a/c;->H:Lcom/zte/zdm/b/e/a/b/g;

    invoke-direct {p0}, Lcom/zte/zdm/b/e/a/c;->u()V

    return-void
.end method

.method public constructor <init>(Lcom/zte/zdm/b/e/b;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/zte/zdm/b/e/a;-><init>(Lcom/zte/zdm/b/e/b;)V

    iput-object v0, p0, Lcom/zte/zdm/b/e/a/c;->F:Ljava/lang/String;

    iput-object v0, p0, Lcom/zte/zdm/b/e/a/c;->G:Lcom/zte/zdm/b/e/a/a/b;

    iput-object v0, p0, Lcom/zte/zdm/b/e/a/c;->H:Lcom/zte/zdm/b/e/a/b/g;

    iput-object v0, p0, Lcom/zte/zdm/b/e/a/c;->I:Lcom/zte/zdm/g/d/b;

    invoke-static {}, Lcom/zte/zdm/b/a;->b()Lcom/zte/zdm/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/b/e/a/c;->J:Lcom/zte/zdm/b/a;

    const/16 v0, 0x384

    iput v0, p0, Lcom/zte/zdm/b/e/a/c;->L:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/zdm/b/e/a/c;->M:I

    new-instance v0, Lcom/zte/zdm/b/e/a/a/h;

    invoke-direct {v0}, Lcom/zte/zdm/b/e/a/a/h;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/b/e/a/c;->N:Lcom/zte/zdm/b/e/a/a/h;

    iput-object p2, p0, Lcom/zte/zdm/b/e/a/c;->F:Ljava/lang/String;

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/c;->J:Lcom/zte/zdm/b/a;

    invoke-virtual {v0}, Lcom/zte/zdm/b/a;->d()Lcom/zte/zdm/g/d/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/zte/zdm/g/d/c;->a()Lcom/zte/zdm/g/d/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/zte/zdm/g/d/a;->a()Lcom/zte/zdm/g/d/b;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/b/e/a/c;->I:Lcom/zte/zdm/g/d/b;

    invoke-direct {p0}, Lcom/zte/zdm/b/e/a/c;->D()V

    invoke-direct {p0}, Lcom/zte/zdm/b/e/a/c;->u()V

    return-void
.end method

.method private A()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/c;->b:Lcom/zte/zdm/b/b/a;

    const-string v1, "up_file_uri"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/b/b/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private B()I
    .locals 3

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/c;->b:Lcom/zte/zdm/b/b/a;

    const-string v1, "retry_times"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/b/b/a;->b(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private C()I
    .locals 3

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/c;->b:Lcom/zte/zdm/b/b/a;

    const-string v1, "retry_millionseconds"

    const v2, 0x493e0

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/b/b/a;->b(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private D()V
    .locals 5

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    const-string v1, "Accept"

    const-string v2, "application/vnd.oma.dd+xml, */*"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/zte/zdm/b/e/a/c;->a:Lcom/zte/zdm/d/a/k;

    iget-object v2, p0, Lcom/zte/zdm/b/e/a/c;->F:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/zte/zdm/d/a/k;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/zdm/b/e/a/c;->a:Lcom/zte/zdm/d/a/k;

    iget-object v2, p0, Lcom/zte/zdm/b/e/a/c;->b:Lcom/zte/zdm/b/b/a;

    const-string v3, "retry_times"

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Lcom/zte/zdm/b/b/a;->b(Ljava/lang/String;I)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/zte/zdm/d/a/k;->a(I)V

    iget-object v1, p0, Lcom/zte/zdm/b/e/a/c;->a:Lcom/zte/zdm/d/a/k;

    invoke-interface {v1, v0}, Lcom/zte/zdm/d/a/k;->a(Ljava/util/Hashtable;)V

    return-void
.end method

.method private E()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/c;->G:Lcom/zte/zdm/b/e/a/a/b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/b/e/a/c;->G:Lcom/zte/zdm/b/e/a/a/b;

    invoke-virtual {v0}, Lcom/zte/zdm/b/e/a/a/b;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private F()V
    .locals 1

    const/16 v0, 0x3b7

    invoke-virtual {p0, v0}, Lcom/zte/zdm/b/e/a/c;->c(I)V

    return-void
.end method

.method private G()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/zte/zdm/b/e/a/c;->e(I)V

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/c;->x:Lcom/zte/zdm/b/e/a/j;

    iget-object v1, p0, Lcom/zte/zdm/b/e/a/c;->d:Lcom/zte/zdm/b/e/e;

    iget-object v2, p0, Lcom/zte/zdm/b/e/a/c;->I:Lcom/zte/zdm/g/d/b;

    invoke-interface {v0, p1, v1, v2}, Lcom/zte/zdm/b/e/a/j;->a(Ljava/lang/String;Lcom/zte/zdm/b/e/e;Lcom/zte/zdm/g/d/b;)Lcom/zte/zdm/b/e/a/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/b/e/a/c;->G:Lcom/zte/zdm/b/e/a/a/b;

    return-void
.end method

.method private static b(Ljava/lang/String;)V
    .locals 5

    new-instance v0, Ljava/io/File;

    const-string v1, "update.zip"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    const-string v2, "DLsession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteUpdataPackage delete"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " result is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "DLsession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteUpdataPackage delete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " not exist"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private e(I)V
    .locals 2

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/c;->b:Lcom/zte/zdm/b/b/a;

    const-string v1, "dl_session_state"

    invoke-virtual {v0, v1, p1}, Lcom/zte/zdm/b/b/a;->c(Ljava/lang/String;I)V

    return-void
.end method

.method public static r()V
    .locals 1

    const-string v0, "sdcard"

    invoke-static {v0}, Lcom/zte/zdm/b/e/a/c;->b(Ljava/lang/String;)V

    const-string v0, "/data/data/com.zte.zdm/files"

    invoke-static {v0}, Lcom/zte/zdm/b/e/a/c;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/zte/zdm/b/a;->b()Lcom/zte/zdm/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/b/a;->d()Lcom/zte/zdm/g/d/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/zte/zdm/g/d/c;->a()Lcom/zte/zdm/g/d/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/zte/zdm/g/d/a;->a()Lcom/zte/zdm/g/d/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/zte/zdm/g/d/b;->a()V

    return-void
.end method

.method private u()V
    .locals 2

    new-instance v0, Lcom/zte/zdm/b/e/a/g;

    iget-object v1, p0, Lcom/zte/zdm/b/e/a/c;->N:Lcom/zte/zdm/b/e/a/a/h;

    invoke-direct {v0, p0, v1}, Lcom/zte/zdm/b/e/a/g;-><init>(Lcom/zte/zdm/b/e/a/c;Lcom/zte/zdm/b/e/a/a/h;)V

    iput-object v0, p0, Lcom/zte/zdm/b/e/a/c;->t:Lcom/zte/zdm/b/e/a/j;

    new-instance v0, Lcom/zte/zdm/b/e/a/a;

    invoke-direct {v0, p0}, Lcom/zte/zdm/b/e/a/a;-><init>(Lcom/zte/zdm/b/e/a/c;)V

    iput-object v0, p0, Lcom/zte/zdm/b/e/a/c;->u:Lcom/zte/zdm/b/e/a/j;

    new-instance v0, Lcom/zte/zdm/b/e/a/h;

    invoke-direct {v0, p0}, Lcom/zte/zdm/b/e/a/h;-><init>(Lcom/zte/zdm/b/e/a/c;)V

    iput-object v0, p0, Lcom/zte/zdm/b/e/a/c;->v:Lcom/zte/zdm/b/e/a/j;

    new-instance v0, Lcom/zte/zdm/b/e/a/k;

    invoke-direct {v0, p0}, Lcom/zte/zdm/b/e/a/k;-><init>(Lcom/zte/zdm/b/e/a/c;)V

    iput-object v0, p0, Lcom/zte/zdm/b/e/a/c;->w:Lcom/zte/zdm/b/e/a/j;

    new-instance v0, Lcom/zte/zdm/b/e/a/f;

    invoke-direct {v0, p0}, Lcom/zte/zdm/b/e/a/f;-><init>(Lcom/zte/zdm/b/e/a/c;)V

    iput-object v0, p0, Lcom/zte/zdm/b/e/a/c;->y:Lcom/zte/zdm/b/e/a/j;

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/c;->t:Lcom/zte/zdm/b/e/a/j;

    iput-object v0, p0, Lcom/zte/zdm/b/e/a/c;->x:Lcom/zte/zdm/b/e/a/j;

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/c;->x:Lcom/zte/zdm/b/e/a/j;

    iput-object v0, p0, Lcom/zte/zdm/b/e/a/c;->z:Lcom/zte/zdm/b/e/a/j;

    return-void
.end method

.method private v()V
    .locals 6

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/c;->x:Lcom/zte/zdm/b/e/a/j;

    iget-object v1, p0, Lcom/zte/zdm/b/e/a/c;->v:Lcom/zte/zdm/b/e/a/j;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/zte/zdm/b/e/a/c;->e(I)V

    :cond_1
    iget-object v0, p0, Lcom/zte/zdm/b/e/a/c;->x:Lcom/zte/zdm/b/e/a/j;

    iget-object v1, p0, Lcom/zte/zdm/b/e/a/c;->v:Lcom/zte/zdm/b/e/a/j;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "DL: NOW STATE != metaState, much possiblly IO exception happen during metastate ,so  break download"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/zte/zdm/b/e/a/c;->H:Lcom/zte/zdm/b/e/a/b/g;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/c;->G:Lcom/zte/zdm/b/e/a/a/b;

    invoke-virtual {v0}, Lcom/zte/zdm/b/e/a/a/b;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/c;->G:Lcom/zte/zdm/b/e/a/a/b;

    invoke-virtual {v0}, Lcom/zte/zdm/b/e/a/a/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/zte/zdm/b/e/a/c;->K:I

    new-instance v0, Lcom/zte/zdm/b/e/a/b/g;

    iget-object v1, p0, Lcom/zte/zdm/b/e/a/c;->I:Lcom/zte/zdm/g/d/b;

    invoke-direct {p0}, Lcom/zte/zdm/b/e/a/c;->B()I

    move-result v3

    invoke-direct {p0}, Lcom/zte/zdm/b/e/a/c;->C()I

    move-result v4

    iget v5, p0, Lcom/zte/zdm/b/e/a/c;->K:I

    invoke-direct/range {v0 .. v5}, Lcom/zte/zdm/b/e/a/b/g;-><init>(Lcom/zte/zdm/g/d/b;Ljava/lang/String;III)V

    iput-object v0, p0, Lcom/zte/zdm/b/e/a/c;->H:Lcom/zte/zdm/b/e/a/b/g;

    :cond_3
    iget-object v0, p0, Lcom/zte/zdm/b/e/a/c;->x:Lcom/zte/zdm/b/e/a/j;

    iget-object v1, p0, Lcom/zte/zdm/b/e/a/c;->H:Lcom/zte/zdm/b/e/a/b/g;

    iget-object v2, p0, Lcom/zte/zdm/b/e/a/c;->d:Lcom/zte/zdm/b/e/e;

    iget-object v3, p0, Lcom/zte/zdm/b/e/a/c;->b:Lcom/zte/zdm/b/b/a;

    iget v4, p0, Lcom/zte/zdm/b/e/a/c;->K:I

    iget-object v5, p0, Lcom/zte/zdm/b/e/a/c;->I:Lcom/zte/zdm/g/d/b;

    invoke-interface/range {v0 .. v5}, Lcom/zte/zdm/b/e/a/j;->a(Lcom/zte/zdm/b/e/a/b/g;Lcom/zte/zdm/b/e/e;Lcom/zte/zdm/b/b/a;ILcom/zte/zdm/g/d/b;)V

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/c;->H:Lcom/zte/zdm/b/e/a/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/b/e/a/b/g;->t()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/c;->d:Lcom/zte/zdm/b/e/e;

    invoke-interface {v0}, Lcom/zte/zdm/b/e/e;->o()V

    invoke-virtual {p0}, Lcom/zte/zdm/b/e/a/c;->i()V

    :cond_4
    invoke-virtual {p0}, Lcom/zte/zdm/b/e/a/c;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0
.end method

.method private w()V
    .locals 3

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/c;->x:Lcom/zte/zdm/b/e/a/j;

    iget v1, p0, Lcom/zte/zdm/b/e/a/c;->M:I

    iget-object v2, p0, Lcom/zte/zdm/b/e/a/c;->d:Lcom/zte/zdm/b/e/e;

    invoke-interface {v0, v1, v2}, Lcom/zte/zdm/b/e/a/j;->a(ILcom/zte/zdm/b/e/e;)V

    return-void
.end method

.method private x()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/zte/zdm/b/e/a/c;->e(I)V

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/c;->x:Lcom/zte/zdm/b/e/a/j;

    iget-object v1, p0, Lcom/zte/zdm/b/e/a/c;->a:Lcom/zte/zdm/d/a/k;

    invoke-interface {v0, v1}, Lcom/zte/zdm/b/e/a/j;->a(Lcom/zte/zdm/d/a/k;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private y()V
    .locals 3

    invoke-virtual {p0}, Lcom/zte/zdm/b/e/a/c;->t()V

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/zte/zdm/b/e/a/c;->e(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/zdm/b/e/a/c;->c:Z

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/c;->H:Lcom/zte/zdm/b/e/a/b/g;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/c;->z:Lcom/zte/zdm/b/e/a/j;

    iget-object v1, p0, Lcom/zte/zdm/b/e/a/c;->u:Lcom/zte/zdm/b/e/a/j;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/zte/zdm/b/e/a/c;->z()V

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/b/e/a/c;->x:Lcom/zte/zdm/b/e/a/j;

    iget-object v1, p0, Lcom/zte/zdm/b/e/a/c;->H:Lcom/zte/zdm/b/e/a/b/g;

    iget-object v2, p0, Lcom/zte/zdm/b/e/a/c;->d:Lcom/zte/zdm/b/e/e;

    invoke-interface {v0, v1, v2}, Lcom/zte/zdm/b/e/a/j;->a(Lcom/zte/zdm/b/e/a/b/g;Lcom/zte/zdm/b/e/e;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/zdm/b/e/a/c;->H:Lcom/zte/zdm/b/e/a/b/g;

    return-void
.end method

.method private z()V
    .locals 4

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/c;->I:Lcom/zte/zdm/g/d/b;

    iget-object v1, p0, Lcom/zte/zdm/b/e/a/c;->G:Lcom/zte/zdm/b/e/a/a/b;

    invoke-virtual {v1}, Lcom/zte/zdm/b/e/a/a/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/zte/zdm/g/d/b;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/zte/zdm/b/e/a/c;->A()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " result is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method a(Lcom/zte/zdm/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/b/e/a/c;->J:Lcom/zte/zdm/b/a;

    return-void
.end method

.method a(Lcom/zte/zdm/b/e/a/j;)V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/c;->x:Lcom/zte/zdm/b/e/a/j;

    iput-object v0, p0, Lcom/zte/zdm/b/e/a/c;->z:Lcom/zte/zdm/b/e/a/j;

    iput-object p1, p0, Lcom/zte/zdm/b/e/a/c;->x:Lcom/zte/zdm/b/e/a/j;

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 7

    const-string v0, "send Install Notification "

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/c;->a:Lcom/zte/zdm/d/a/k;

    invoke-interface {v0}, Lcom/zte/zdm/d/a/k;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/c;->a:Lcom/zte/zdm/d/a/k;

    invoke-interface {v0}, Lcom/zte/zdm/d/a/k;->f()I

    move-result v2

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/c;->a:Lcom/zte/zdm/d/a/k;

    invoke-interface {v0}, Lcom/zte/zdm/d/a/k;->d()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/c;->a:Lcom/zte/zdm/d/a/k;

    invoke-interface {v0}, Lcom/zte/zdm/d/a/k;->c()Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "orgRequestContentType:["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "],"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "orgRequestMethod:["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "]"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/c;->a:Lcom/zte/zdm/d/a/k;

    const-string v5, "text/html"

    invoke-interface {v0, v5}, Lcom/zte/zdm/d/a/k;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/c;->a:Lcom/zte/zdm/d/a/k;

    invoke-interface {v0, p1}, Lcom/zte/zdm/d/a/k;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/c;->a:Lcom/zte/zdm/d/a/k;

    const-string v5, "POST"

    invoke-interface {v0, v5}, Lcom/zte/zdm/d/a/k;->d(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v0, Lcom/zte/zdm/b/e/a/c;->C:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\r\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v5, p0, Lcom/zte/zdm/b/e/a/c;->a:Lcom/zte/zdm/d/a/k;

    invoke-interface {v5, v0}, Lcom/zte/zdm/d/a/k;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/zte/zdm/d/a/a; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/zte/zdm/b/e/a/c;->a:Lcom/zte/zdm/d/a/k;

    invoke-interface {v0, v1}, Lcom/zte/zdm/d/a/k;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/c;->a:Lcom/zte/zdm/d/a/k;

    invoke-interface {v0, v4}, Lcom/zte/zdm/d/a/k;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/c;->a:Lcom/zte/zdm/d/a/k;

    invoke-interface {v0, v3}, Lcom/zte/zdm/d/a/k;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/c;->a:Lcom/zte/zdm/d/a/k;

    invoke-interface {v0, v2}, Lcom/zte/zdm/d/a/k;->a(I)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/zte/zdm/d/a/a;->printStackTrace()V

    const-string v0, "send install notification failed! exit"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method b(I)V
    .locals 0

    iput p1, p0, Lcom/zte/zdm/b/e/a/c;->M:I

    return-void
.end method

.method public b(Z)V
    .locals 1

    const-string v0, "dlSession notifyPauseSession()"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/c;->H:Lcom/zte/zdm/b/e/a/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/b/e/a/b/g;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "can not cancel while task is empty!"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/c;->d:Lcom/zte/zdm/b/e/e;

    invoke-interface {v0}, Lcom/zte/zdm/b/e/e;->k()V

    :cond_1
    invoke-virtual {p0}, Lcom/zte/zdm/b/e/a/c;->d()V

    goto :goto_0
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/zte/zdm/b/e/a/c;->L:I

    return-void
.end method

.method public d(I)V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/c;->d:Lcom/zte/zdm/b/e/e;

    invoke-interface {v0, p1}, Lcom/zte/zdm/b/e/e;->d(I)V

    return-void
.end method

.method public g()V
    .locals 0

    invoke-virtual {p0}, Lcom/zte/zdm/b/e/a/c;->o()V

    return-void
.end method

.method public i()V
    .locals 0

    invoke-virtual {p0}, Lcom/zte/zdm/b/e/a/c;->e()V

    return-void
.end method

.method public j()V
    .locals 1

    const-string v0, "notifyContinueSession() "

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/c;->v:Lcom/zte/zdm/b/e/a/j;

    invoke-virtual {p0, v0}, Lcom/zte/zdm/b/e/a/c;->a(Lcom/zte/zdm/b/e/a/j;)V

    invoke-virtual {p0}, Lcom/zte/zdm/b/e/a/c;->o()V

    return-void
.end method

.method public k()V
    .locals 2

    const-string v0, "notifyCancelSession() "

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/c;->H:Lcom/zte/zdm/b/e/a/b/g;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zte/zdm/b/e/a/b/g;->a(Z)V

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/c;->w:Lcom/zte/zdm/b/e/a/j;

    invoke-virtual {p0, v0}, Lcom/zte/zdm/b/e/a/c;->a(Lcom/zte/zdm/b/e/a/j;)V

    const/16 v0, 0x386

    invoke-virtual {p0, v0}, Lcom/zte/zdm/b/e/a/c;->c(I)V

    return-void
.end method

.method public l()Lcom/zte/zdm/b/a;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/c;->J:Lcom/zte/zdm/b/a;

    return-object v0
.end method

.method public m()Lcom/zte/zdm/b/e/a/j;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/c;->z:Lcom/zte/zdm/b/e/a/j;

    return-object v0
.end method

.method public n()Lcom/zte/zdm/b/e/a/j;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/c;->x:Lcom/zte/zdm/b/e/a/j;

    return-object v0
.end method

.method o()V
    .locals 1

    invoke-direct {p0}, Lcom/zte/zdm/b/e/a/c;->x()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zte/zdm/b/e/a/c;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/zte/zdm/b/e/a/c;->v()V

    const-string v0, "DlSession go ahead!"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/zte/zdm/b/e/a/c;->w()V

    invoke-direct {p0}, Lcom/zte/zdm/b/e/a/c;->y()V

    return-void
.end method

.method public p()I
    .locals 1

    iget v0, p0, Lcom/zte/zdm/b/e/a/c;->L:I

    return v0
.end method

.method q()V
    .locals 2

    invoke-direct {p0}, Lcom/zte/zdm/b/e/a/c;->E()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/zte/zdm/b/e/a/c;->p()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/zte/zdm/b/e/a/c;->a(Ljava/lang/String;I)V

    const/16 v0, 0x384

    invoke-virtual {p0, v0}, Lcom/zte/zdm/b/e/a/c;->c(I)V

    :cond_0
    return-void
.end method

.method public s()Lcom/zte/zdm/b/e/e;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/c;->d:Lcom/zte/zdm/b/e/e;

    return-object v0
.end method

.method t()V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/zte/zdm/b/e/a/c;->b:Lcom/zte/zdm/b/b/a;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/zte/zdm/b/e/a/c;->b:Lcom/zte/zdm/b/b/a;

    const-string v2, "server_addr"

    const-string v3, "http://dmcn.ztems.com/zxmdmp/dm"

    invoke-virtual {v1, v2, v3}, Lcom/zte/zdm/b/b/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zdm/b/e/a/c;->b:Lcom/zte/zdm/b/b/a;

    const-string v3, "dm_proxy"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/zte/zdm/b/b/a;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/zte/zdm/b/e/a/c;->b:Lcom/zte/zdm/b/b/a;

    const-string v3, "dm_proxy_addr"

    invoke-virtual {v2, v3, v0}, Lcom/zte/zdm/b/b/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/c;->b:Lcom/zte/zdm/b/b/a;

    const-string v3, "dm_proxy_port"

    const/16 v4, 0x50

    invoke-virtual {v0, v3, v4}, Lcom/zte/zdm/b/b/a;->b(Ljava/lang/String;I)I

    move-result v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FumoSession\'s transportAgent\'s parameter: proxy addr:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " port:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/zte/zdm/d/a/i;

    const/4 v4, 0x2

    invoke-direct {v0, v4}, Lcom/zte/zdm/d/a/i;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/zte/zdm/d/a/i;->a(Ljava/lang/String;)Lcom/zte/zdm/d/a/i;

    invoke-virtual {v0, v3}, Lcom/zte/zdm/d/a/i;->a(I)Lcom/zte/zdm/d/a/i;

    :cond_2
    invoke-static {}, Lcom/zte/zdm/b/a;->b()Lcom/zte/zdm/b/a;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/zte/zdm/b/a;->b()Lcom/zte/zdm/b/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/zdm/b/a;->o()Lcom/zte/zdm/d/a/c;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/zte/zdm/b/a;->b()Lcom/zte/zdm/b/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/zdm/b/a;->o()Lcom/zte/zdm/d/a/c;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/zte/zdm/d/a/c;->a(Ljava/lang/String;Lcom/zte/zdm/d/a/i;)Lcom/zte/zdm/d/a/f;

    move-result-object v0

    iget-object v2, p0, Lcom/zte/zdm/b/e/a/c;->b:Lcom/zte/zdm/b/b/a;

    const-string v3, "retry_times"

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Lcom/zte/zdm/b/b/a;->b(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/zte/zdm/d/a/f;->a(I)V

    iget-object v2, p0, Lcom/zte/zdm/b/e/a/c;->b:Lcom/zte/zdm/b/b/a;

    const-string v3, "retry_millionseconds"

    const v4, 0x493e0

    invoke-virtual {v2, v3, v4}, Lcom/zte/zdm/b/b/a;->b(Ljava/lang/String;I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/zte/zdm/d/a/f;->a(J)V

    iput-object v0, p0, Lcom/zte/zdm/b/e/a/c;->a:Lcom/zte/zdm/d/a/k;

    iget-object v2, p0, Lcom/zte/zdm/b/e/a/c;->e:Lcom/zte/zdm/b/e/b;

    iget-object v3, p0, Lcom/zte/zdm/b/e/a/c;->a:Lcom/zte/zdm/d/a/k;

    invoke-virtual {v2, v3}, Lcom/zte/zdm/b/e/b;->a(Lcom/zte/zdm/d/a/k;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "httpAgent.getNumRetry : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/zte/zdm/d/a/f;->f()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "httpAgent.getDelay : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/zte/zdm/d/a/f;->j()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "httpAgent.url : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
