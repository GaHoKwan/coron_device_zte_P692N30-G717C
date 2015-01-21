.class public Lcom/zte/zdm/d/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zte/zdm/d/a/k;


# static fields
.field private static C:Ljava/io/InputStream; = null

.field private static D:Ljava/io/OutputStream; = null

.field public static final a:Ljava/lang/String; = "Content-Length"

.field public static final b:Ljava/lang/String; = "Content-Type"

.field private static final h:Ljava/lang/String; = "Uncompressed-Content-Length"

.field private static final i:Ljava/lang/String; = "User-Agent"

.field private static final j:Ljava/lang/String; = "x-syncml-hmac"

.field private static final k:Ljava/lang/String; = "Device-Agent"

.field private static final l:Ljava/lang/Object;


# instance fields
.field private A:I

.field private B:Lcom/zte/zdm/d/a/e;

.field private E:Ljava/util/HashMap;

.field private F:Ljava/lang/String;

.field private G:Z

.field private H:Ljava/util/Timer;

.field private I:Lcom/zte/zdm/d/a/g;

.field private J:J

.field private K:I

.field private L:I

.field private M:Lcom/zte/zdm/d/a/c;

.field private N:Lcom/zte/zdm/d/a/b;

.field private O:I

.field private volatile P:Z

.field private Q:Ljava/io/ByteArrayInputStream;

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private final q:Ljava/lang/String;

.field private final r:Ljava/lang/String;

.field private final s:Lcom/zte/zdm/d/a/i;

.field private final t:Lcom/zte/zdm/g/e;

.field private u:Ljava/util/Hashtable;

.field private v:I

.field private w:Z

.field private x:Z

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/zte/zdm/d/a/f;->l:Ljava/lang/Object;

    sput-object v1, Lcom/zte/zdm/d/a/f;->C:Ljava/io/InputStream;

    sput-object v1, Lcom/zte/zdm/d/a/f;->D:Ljava/io/OutputStream;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 7

    const/4 v4, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move v5, v4

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/zte/zdm/d/a/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/zte/zdm/d/a/i;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/zte/zdm/d/a/i;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move v5, v4

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/zte/zdm/d/a/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/zte/zdm/d/a/i;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/zte/zdm/d/a/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/zte/zdm/d/a/i;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/zte/zdm/d/a/i;)V
    .locals 5

    const/4 v4, 0x3

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/zte/zdm/d/a/f;->c:I

    iput v1, p0, Lcom/zte/zdm/d/a/f;->d:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/zte/zdm/d/a/f;->e:I

    iput v4, p0, Lcom/zte/zdm/d/a/f;->f:I

    const-string v0, "application/vnd.syncml.dm+xml"

    iput-object v0, p0, Lcom/zte/zdm/d/a/f;->g:Ljava/lang/String;

    const-string v0, "application/vnd.syncml.dm+xml"

    iput-object v0, p0, Lcom/zte/zdm/d/a/f;->n:Ljava/lang/String;

    new-instance v0, Lcom/zte/zdm/g/e;

    invoke-direct {v0}, Lcom/zte/zdm/g/e;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/d/a/f;->t:Lcom/zte/zdm/g/e;

    iput-object v3, p0, Lcom/zte/zdm/d/a/f;->u:Ljava/util/Hashtable;

    iput v2, p0, Lcom/zte/zdm/d/a/f;->z:I

    sget v0, Lcom/zte/zdm/d/a/e;->M:I

    iput v0, p0, Lcom/zte/zdm/d/a/f;->A:I

    iput-boolean v1, p0, Lcom/zte/zdm/d/a/f;->G:Z

    iput-object v3, p0, Lcom/zte/zdm/d/a/f;->H:Ljava/util/Timer;

    iput-object v3, p0, Lcom/zte/zdm/d/a/f;->I:Lcom/zte/zdm/d/a/g;

    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/zte/zdm/d/a/f;->J:J

    const/16 v0, 0x7530

    iput v0, p0, Lcom/zte/zdm/d/a/f;->K:I

    iput-object v3, p0, Lcom/zte/zdm/d/a/f;->M:Lcom/zte/zdm/d/a/c;

    iput-object v3, p0, Lcom/zte/zdm/d/a/f;->N:Lcom/zte/zdm/d/a/b;

    iput v2, p0, Lcom/zte/zdm/d/a/f;->O:I

    iput-boolean v2, p0, Lcom/zte/zdm/d/a/f;->P:Z

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "[HttpTransportAgent]Request URL parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput v4, p0, Lcom/zte/zdm/d/a/f;->L:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Number of writing Attempts init value befor set: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/zdm/d/a/f;->L:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/zte/zdm/d/a/f;->q:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserAgent set to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/d/a/f;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/zte/zdm/d/a/f;->m:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request Url set to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/d/a/f;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/zte/zdm/d/a/f;->r:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Charset set to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/d/a/f;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput v2, p0, Lcom/zte/zdm/d/a/f;->v:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Threshold size set to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/zdm/d/a/f;->v:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput-boolean p4, p0, Lcom/zte/zdm/d/a/f;->w:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableCompression: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/zte/zdm/d/a/f;->w:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput-boolean p5, p0, Lcom/zte/zdm/d/a/f;->x:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "forceCookies: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p6, p0, Lcom/zte/zdm/d/a/f;->s:Lcom/zte/zdm/d/a/i;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "proxyConfig: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/zte/zdm/d/a/c;->a()Lcom/zte/zdm/d/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/d/a/f;->M:Lcom/zte/zdm/d/a/c;

    iget-object v0, p0, Lcom/zte/zdm/d/a/f;->M:Lcom/zte/zdm/d/a/c;

    invoke-virtual {v0}, Lcom/zte/zdm/d/a/c;->b()Lcom/zte/zdm/d/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/d/a/f;->N:Lcom/zte/zdm/d/a/b;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/zte/zdm/d/a/i;Lcom/zte/zdm/d/a/c;J)V
    .locals 5

    const/4 v4, 0x3

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/zte/zdm/d/a/f;->c:I

    iput v1, p0, Lcom/zte/zdm/d/a/f;->d:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/zte/zdm/d/a/f;->e:I

    iput v4, p0, Lcom/zte/zdm/d/a/f;->f:I

    const-string v0, "application/vnd.syncml.dm+xml"

    iput-object v0, p0, Lcom/zte/zdm/d/a/f;->g:Ljava/lang/String;

    const-string v0, "application/vnd.syncml.dm+xml"

    iput-object v0, p0, Lcom/zte/zdm/d/a/f;->n:Ljava/lang/String;

    new-instance v0, Lcom/zte/zdm/g/e;

    invoke-direct {v0}, Lcom/zte/zdm/g/e;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/d/a/f;->t:Lcom/zte/zdm/g/e;

    iput-object v3, p0, Lcom/zte/zdm/d/a/f;->u:Ljava/util/Hashtable;

    iput v2, p0, Lcom/zte/zdm/d/a/f;->z:I

    sget v0, Lcom/zte/zdm/d/a/e;->M:I

    iput v0, p0, Lcom/zte/zdm/d/a/f;->A:I

    iput-boolean v1, p0, Lcom/zte/zdm/d/a/f;->G:Z

    iput-object v3, p0, Lcom/zte/zdm/d/a/f;->H:Ljava/util/Timer;

    iput-object v3, p0, Lcom/zte/zdm/d/a/f;->I:Lcom/zte/zdm/d/a/g;

    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/zte/zdm/d/a/f;->J:J

    const/16 v0, 0x7530

    iput v0, p0, Lcom/zte/zdm/d/a/f;->K:I

    iput-object v3, p0, Lcom/zte/zdm/d/a/f;->M:Lcom/zte/zdm/d/a/c;

    iput-object v3, p0, Lcom/zte/zdm/d/a/f;->N:Lcom/zte/zdm/d/a/b;

    iput v2, p0, Lcom/zte/zdm/d/a/f;->O:I

    iput-boolean v2, p0, Lcom/zte/zdm/d/a/f;->P:Z

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "[HttpTransportAgent]Request URL parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput v4, p0, Lcom/zte/zdm/d/a/f;->L:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Number of writing Attempts init value befor set: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/zdm/d/a/f;->L:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/zte/zdm/d/a/f;->q:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserAgent set to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/d/a/f;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/zte/zdm/d/a/f;->m:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request Url set to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/d/a/f;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/zte/zdm/d/a/f;->r:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Charset set to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/d/a/f;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput v2, p0, Lcom/zte/zdm/d/a/f;->v:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Threshold size set to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/zdm/d/a/f;->v:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput-boolean p4, p0, Lcom/zte/zdm/d/a/f;->w:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableCompression: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/zte/zdm/d/a/f;->w:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput-boolean p5, p0, Lcom/zte/zdm/d/a/f;->x:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "forceCookies: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p6, p0, Lcom/zte/zdm/d/a/f;->s:Lcom/zte/zdm/d/a/i;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "proxyConfig: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p7, p0, Lcom/zte/zdm/d/a/f;->M:Lcom/zte/zdm/d/a/c;

    invoke-virtual {p7}, Lcom/zte/zdm/d/a/c;->b()Lcom/zte/zdm/d/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/d/a/f;->N:Lcom/zte/zdm/d/a/b;

    iput-wide p8, p0, Lcom/zte/zdm/d/a/f;->J:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 7

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/zte/zdm/d/a/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/zte/zdm/d/a/i;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 7

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move v4, p2

    move v5, p3

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/zte/zdm/d/a/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/zte/zdm/d/a/i;)V

    return-void
.end method

.method static synthetic a(Lcom/zte/zdm/d/a/f;)J
    .locals 2

    iget-wide v0, p0, Lcom/zte/zdm/d/a/f;->J:J

    return-wide v0
.end method

.method static synthetic a(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 0

    sput-object p0, Lcom/zte/zdm/d/a/f;->C:Ljava/io/InputStream;

    return-object p0
.end method

.method private a(ILjava/lang/Exception;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempt "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/zdm/d/a/f;->L:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " failed. Retrying...! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IOTimeout is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/zte/zdm/d/a/f;->P:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/zte/zdm/d/a/f;->L:I

    if-ge p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/zte/zdm/d/a/f;->P:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0, p2}, Lcom/zte/zdm/d/a/f;->a(Ljava/lang/Exception;)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/zte/zdm/d/a/f;->n()V

    goto :goto_0
.end method

.method private a(Lcom/zte/zdm/d/a/h;)V
    .locals 2

    const-string v0, "read response stream error!"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/zte/zdm/d/a/e;->M:I

    iput v0, p0, Lcom/zte/zdm/d/a/f;->A:I

    const-string v0, "Http Response Code: 110"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/zte/zdm/d/a/h;->a()Ljava/io/IOException;

    move-result-object v1

    const-string v0, "Unknown exception"

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private a(Ljava/lang/Exception;)V
    .locals 3

    const/16 v2, 0xc9

    iget v0, p0, Lcom/zte/zdm/d/a/f;->z:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/zte/zdm/d/a/a;

    const-string v1, "Host not found"

    invoke-direct {v0, v2, v1}, Lcom/zte/zdm/d/a/a;-><init>(ILjava/lang/String;)V

    :goto_0
    throw v0

    :cond_0
    instance-of v0, p1, Lcom/zte/zdm/d/a/d;

    if-eqz v0, :cond_1

    const-string v1, "[Open connection failed]:"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/zte/zdm/d/a/a;

    invoke-direct {v0, v2, v1}, Lcom/zte/zdm/d/a/a;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljava/lang/IllegalArgumentException;

    if-eqz v0, :cond_2

    const-string v1, "[Invalid argument for connection]:"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/zte/zdm/d/a/a;

    const/16 v2, 0xca

    invoke-direct {v0, v2, v1}, Lcom/zte/zdm/d/a/a;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Ljava/io/IOException;

    if-eqz v0, :cond_3

    const-string v1, "[IOException]:"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/zte/zdm/d/a/a;

    const/16 v2, 0xd1

    invoke-direct {v0, v2, v1}, Lcom/zte/zdm/d/a/a;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/zte/zdm/d/a/a;

    const/16 v1, 0xcb

    const-string v2, "[Cannot write request to server]:"

    invoke-direct {v0, v1, v2}, Lcom/zte/zdm/d/a/a;-><init>(ILjava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/zte/zdm/d/a/f;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/zte/zdm/d/a/f;->P:Z

    return p1
.end method

.method static synthetic b(Lcom/zte/zdm/d/a/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/zte/zdm/d/a/f;->o()V

    return-void
.end method

.method private b(Ljava/util/Hashtable;)V
    .locals 4

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/zte/zdm/d/a/f;->B:Lcom/zte/zdm/d/a/e;

    invoke-virtual {v3, v0, v1}, Lcom/zte/zdm/d/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b([B)[B
    .locals 4

    const-string v0, "readResponsed(byte[] data)"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/zte/zdm/d/a/f;->z:I

    :try_start_0
    iget-object v1, p0, Lcom/zte/zdm/d/a/f;->t:Lcom/zte/zdm/g/e;

    monitor-enter v1
    :try_end_0
    .catch Lcom/zte/zdm/d/a/a; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v0, Lcom/zte/zdm/d/a/h;

    invoke-direct {v0, p0}, Lcom/zte/zdm/d/a/h;-><init>(Lcom/zte/zdm/d/a/f;)V

    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    iget-object v2, p0, Lcom/zte/zdm/d/a/f;->t:Lcom/zte/zdm/g/e;

    invoke-static {v2}, Lcom/zte/zdm/g/b;->a(Lcom/zte/zdm/g/e;)V

    const-string v2, "responseLock wake up"

    invoke-static {p0, v2}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/zte/zdm/d/a/f;->C:Ljava/io/InputStream;

    if-eqz v2, :cond_0

    invoke-direct {p0, p1}, Lcom/zte/zdm/d/a/f;->c([B)[B

    move-result-object p1

    :goto_0
    monitor-exit v1

    return-object p1

    :cond_0
    invoke-direct {p0, v0}, Lcom/zte/zdm/d/a/f;->a(Lcom/zte/zdm/d/a/h;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Lcom/zte/zdm/d/a/a; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception catched "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/zte/zdm/d/a/a;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", propagating it"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/zte/zdm/d/a/a;

    const/16 v2, 0xcd

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "; Network problem: Cannot read the server response"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/zte/zdm/d/a/a;-><init>(ILjava/lang/String;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v0, Lcom/zte/zdm/d/a/a;

    const/16 v1, 0xce

    const-string v2, "Network problem: Cannot read the server response"

    invoke-direct {v0, v1, v2}, Lcom/zte/zdm/d/a/a;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method static synthetic c(Lcom/zte/zdm/d/a/f;)Lcom/zte/zdm/g/e;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/a/f;->t:Lcom/zte/zdm/g/e;

    return-object v0
.end method

.method private c(I)V
    .locals 3

    const-string v0, "setAdapterRequestDefaultProperties()-> properties are:"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/zte/zdm/d/a/f;->s()V

    iget-object v0, p0, Lcom/zte/zdm/d/a/f;->B:Lcom/zte/zdm/d/a/e;

    const-string v1, "Content-Length"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/d/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Content-Length :     "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string v0, "Content length has been set to 0 !"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/d/a/f;->q:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/zte/zdm/d/a/f;->B:Lcom/zte/zdm/d/a/e;

    const-string v2, "User-Agent"

    invoke-virtual {v1, v2, v0}, Lcom/zte/zdm/d/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User-Agent :   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/d/a/f;->u:Ljava/util/Hashtable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zte/zdm/d/a/f;->u:Ljava/util/Hashtable;

    invoke-direct {p0, v0}, Lcom/zte/zdm/d/a/f;->b(Ljava/util/Hashtable;)V

    :cond_2
    iget-object v0, p0, Lcom/zte/zdm/d/a/f;->B:Lcom/zte/zdm/d/a/e;

    const-string v1, "Connection"

    const-string v2, "Keep-Alive"

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/d/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Connection : Keep-Alive"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private c([B)[B
    .locals 4

    invoke-direct {p0}, Lcom/zte/zdm/d/a/f;->t()V

    iget-object v0, p0, Lcom/zte/zdm/d/a/f;->B:Lcom/zte/zdm/d/a/e;

    invoke-virtual {v0}, Lcom/zte/zdm/d/a/e;->h()I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lcom/zte/zdm/d/a/f;->B:Lcom/zte/zdm/d/a/e;

    invoke-virtual {v2}, Lcom/zte/zdm/d/a/e;->e()I

    move-result v2

    iput v2, p0, Lcom/zte/zdm/d/a/f;->A:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Message received, response length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";Http Response Code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/zte/zdm/d/a/f;->A:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget v2, p0, Lcom/zte/zdm/d/a/f;->A:I

    sget v3, Lcom/zte/zdm/d/a/e;->w:I

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/zte/zdm/d/a/f;->A:I

    sget v3, Lcom/zte/zdm/d/a/e;->x:I

    if-eq v2, v3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Http error: code=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/zdm/d/a/f;->A:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] msg=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/d/a/f;->B:Lcom/zte/zdm/d/a/e;

    invoke-virtual {v1}, Lcom/zte/zdm/d/a/e;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/zte/zdm/d/a/a;

    const/16 v2, 0xc9

    invoke-direct {v1, v2, v0}, Lcom/zte/zdm/d/a/a;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_0
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/zte/zdm/g/a/d;->a(I)Lcom/zte/zdm/g/a/c;

    move-result-object v2

    sget-object v3, Lcom/zte/zdm/d/a/f;->C:Ljava/io/InputStream;

    long-to-int v0, v0

    invoke-interface {v2, v3, v0}, Lcom/zte/zdm/g/a/c;->a(Ljava/io/InputStream;I)[B

    move-result-object v0

    const/4 v1, 0x3

    iput v1, p0, Lcom/zte/zdm/d/a/f;->z:I

    iget-object v1, p0, Lcom/zte/zdm/d/a/f;->N:Lcom/zte/zdm/d/a/b;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/zte/zdm/d/a/f;->N:Lcom/zte/zdm/d/a/b;

    invoke-interface {v1}, Lcom/zte/zdm/d/a/b;->c()V

    :cond_1
    const-string v1, "Stream correctly processed."

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private d(I)V
    .locals 2

    iget-object v0, p0, Lcom/zte/zdm/d/a/f;->B:Lcom/zte/zdm/d/a/e;

    invoke-virtual {v0, p1}, Lcom/zte/zdm/d/a/e;->d(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConnectTimeout :   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lcom/zte/zdm/d/a/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/zte/zdm/d/a/f;->l()V

    return-void
.end method

.method private d([B)V
    .locals 4

    invoke-static {}, Lcom/zte/zdm/d/a/c;->a()Lcom/zte/zdm/d/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/d/a/c;->b()Lcom/zte/zdm/d/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/d/a/f;->N:Lcom/zte/zdm/d/a/b;

    iget-object v0, p0, Lcom/zte/zdm/d/a/f;->N:Lcom/zte/zdm/d/a/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zte/zdm/d/a/f;->N:Lcom/zte/zdm/d/a/b;

    invoke-interface {v0}, Lcom/zte/zdm/d/a/b;->a()V

    const-string v0, "into cl notifyChosenApnCheck"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/d/a/f;->N:Lcom/zte/zdm/d/a/b;

    invoke-interface {v0}, Lcom/zte/zdm/d/a/b;->f()V

    :goto_0
    invoke-direct {p0, p1}, Lcom/zte/zdm/d/a/f;->e([B)V

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/zte/zdm/d/a/f;->z:I

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lcom/zte/zdm/d/a/f;->Q:Ljava/io/ByteArrayInputStream;

    iget-object v0, p0, Lcom/zte/zdm/d/a/f;->B:Lcom/zte/zdm/d/a/e;

    iget-object v1, p0, Lcom/zte/zdm/d/a/f;->Q:Ljava/io/ByteArrayInputStream;

    array-length v2, p1

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/zte/zdm/d/a/e;->a(Ljava/io/InputStream;J)V

    iget-object v0, p0, Lcom/zte/zdm/d/a/f;->N:Lcom/zte/zdm/d/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/d/a/f;->N:Lcom/zte/zdm/d/a/b;

    invoke-interface {v0}, Lcom/zte/zdm/d/a/b;->b()V

    :cond_0
    return-void

    :cond_1
    const-string v0, "connection listener is null!"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/zte/zdm/d/a/f;)I
    .locals 1

    iget v0, p0, Lcom/zte/zdm/d/a/f;->K:I

    return v0
.end method

.method private e(I)V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/a/f;->B:Lcom/zte/zdm/d/a/e;

    invoke-virtual {v0, p1}, Lcom/zte/zdm/d/a/e;->e(I)V

    return-void
.end method

.method private e([B)V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/zdm/d/a/f;->z:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openConnection() Url: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/d/a/f;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/d/a/f;->M:Lcom/zte/zdm/d/a/c;

    iget-object v1, p0, Lcom/zte/zdm/d/a/f;->m:Ljava/lang/String;

    iget-object v2, p0, Lcom/zte/zdm/d/a/f;->s:Lcom/zte/zdm/d/a/i;

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/d/a/c;->b(Ljava/lang/String;Lcom/zte/zdm/d/a/i;)Lcom/zte/zdm/d/a/e;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/d/a/f;->B:Lcom/zte/zdm/d/a/e;

    iget-object v0, p0, Lcom/zte/zdm/d/a/f;->B:Lcom/zte/zdm/d/a/e;

    iget v1, p0, Lcom/zte/zdm/d/a/f;->K:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/d/a/e;->a(J)V

    invoke-direct {p0}, Lcom/zte/zdm/d/a/f;->l()V

    if-eqz p1, :cond_1

    array-length v0, p1

    if-ltz v0, :cond_1

    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/zte/zdm/d/a/f;->c(I)V

    iget-object v0, p0, Lcom/zte/zdm/d/a/f;->n:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/zte/zdm/d/a/f;->g(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/d/a/f;->p:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/zte/zdm/d/a/f;->f(Ljava/lang/String;)V

    iget v0, p0, Lcom/zte/zdm/d/a/f;->L:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zte/zdm/d/a/f;->h()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/zte/zdm/d/a/f;->O:I

    iget v0, p0, Lcom/zte/zdm/d/a/f;->O:I

    invoke-direct {p0, v0}, Lcom/zte/zdm/d/a/f;->d(I)V

    :cond_0
    iget v0, p0, Lcom/zte/zdm/d/a/f;->K:I

    invoke-direct {p0, v0}, Lcom/zte/zdm/d/a/f;->e(I)V

    :cond_1
    return-void
.end method

.method static synthetic f(Lcom/zte/zdm/d/a/f;)Lcom/zte/zdm/d/a/e;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/a/f;->B:Lcom/zte/zdm/d/a/e;

    return-object v0
.end method

.method private f(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/d/a/f;->B:Lcom/zte/zdm/d/a/e;

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Lcom/zte/zdm/d/a/e;->b(Ljava/lang/String;)V

    const-string v0, "RequestMethod  :   POST"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/d/a/f;->B:Lcom/zte/zdm/d/a/e;

    invoke-virtual {v0, p1}, Lcom/zte/zdm/d/a/e;->b(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RequestMethod  :   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private f([B)V
    .locals 1

    const-string v0, "requireOpenConnection(byte[] request)"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0, p1}, Lcom/zte/zdm/d/a/f;->e([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/zte/zdm/d/a/f;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private g(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/zte/zdm/d/a/f;->B:Lcom/zte/zdm/d/a/e;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1, p1}, Lcom/zte/zdm/d/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Content-Type   :     "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized k()V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "stop Connection Alarm Timer up to delay msec"

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/d/a/f;->H:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/d/a/f;->H:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/zdm/d/a/f;->H:Ljava/util/Timer;

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/d/a/f;->I:Lcom/zte/zdm/d/a/g;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zte/zdm/d/a/f;->I:Lcom/zte/zdm/d/a/g;

    invoke-virtual {v0}, Lcom/zte/zdm/d/a/g;->cancel()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/zdm/d/a/f;->I:Lcom/zte/zdm/d/a/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized l()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zte/zdm/d/a/f;->H:Ljava/util/Timer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/d/a/f;->H:Ljava/util/Timer;

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/d/a/f;->I:Lcom/zte/zdm/d/a/g;

    if-nez v0, :cond_1

    new-instance v0, Lcom/zte/zdm/d/a/g;

    invoke-direct {v0, p0}, Lcom/zte/zdm/d/a/g;-><init>(Lcom/zte/zdm/d/a/f;)V

    iput-object v0, p0, Lcom/zte/zdm/d/a/f;->I:Lcom/zte/zdm/d/a/g;

    iget-object v0, p0, Lcom/zte/zdm/d/a/f;->I:Lcom/zte/zdm/d/a/g;

    invoke-virtual {v0}, Lcom/zte/zdm/d/a/g;->a()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start Connection Alarm Timer in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " msec"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/zte/zdm/d/a/f;->H:Ljava/util/Timer;

    iget-object v3, p0, Lcom/zte/zdm/d/a/f;->I:Lcom/zte/zdm/d/a/g;

    invoke-virtual {v2, v3, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private m()V
    .locals 1

    const-string v0, "IOTimeout clear to false"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/zdm/d/a/f;->P:Z

    return-void
.end method

.method private n()V
    .locals 6

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connect start sleep "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/zte/zdm/d/a/f;->O:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " msecs."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget v2, p0, Lcom/zte/zdm/d/a/f;->O:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Retrying after "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sub-long v0, v2, v0

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " msec"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection timer failed!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private o()V
    .locals 1

    const-string v0, "[clear Response & Request Stream] & [disconnect]"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/zte/zdm/d/a/f;->q()V

    invoke-direct {p0}, Lcom/zte/zdm/d/a/f;->p()V

    invoke-direct {p0}, Lcom/zte/zdm/d/a/f;->r()V

    return-void
.end method

.method private p()V
    .locals 3

    sget-object v0, Lcom/zte/zdm/d/a/f;->D:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/zte/zdm/d/a/f;->D:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    const/4 v0, 0x0

    sput-object v0, Lcom/zte/zdm/d/a/f;->D:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t close output stream. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private q()V
    .locals 3

    sget-object v0, Lcom/zte/zdm/d/a/f;->C:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/zte/zdm/d/a/f;->C:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x0

    sput-object v0, Lcom/zte/zdm/d/a/f;->C:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t close input stream. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private r()V
    .locals 3

    iget-object v0, p0, Lcom/zte/zdm/d/a/f;->B:Lcom/zte/zdm/d/a/e;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/zte/zdm/d/a/f;->B:Lcom/zte/zdm/d/a/e;

    invoke-virtual {v0}, Lcom/zte/zdm/d/a/e;->c()V

    iget-object v0, p0, Lcom/zte/zdm/d/a/f;->N:Lcom/zte/zdm/d/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/d/a/f;->N:Lcom/zte/zdm/d/a/b;

    invoke-interface {v0}, Lcom/zte/zdm/d/a/b;->d()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t close connection. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private s()V
    .locals 0

    return-void
.end method

.method private t()V
    .locals 7

    iget-object v0, p0, Lcom/zte/zdm/d/a/f;->B:Lcom/zte/zdm/d/a/e;

    invoke-virtual {v0}, Lcom/zte/zdm/d/a/e;->g()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, ""

    iget-object v0, p0, Lcom/zte/zdm/d/a/f;->E:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/d/a/f;->E:Ljava/util/HashMap;

    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-gt v0, v1, :cond_2

    iget-object v3, p0, Lcom/zte/zdm/d/a/f;->B:Lcom/zte/zdm/d/a/e;

    invoke-virtual {v3, v0}, Lcom/zte/zdm/d/a/e;->c(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/zte/zdm/d/a/f;->B:Lcom/zte/zdm/d/a/e;

    invoke-virtual {v4, v3}, Lcom/zte/zdm/d/a/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/zte/zdm/d/a/f;->E:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/d/a/f;->E:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_0

    :cond_1
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/d/a/f;->F:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Header: \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/d/a/f;->F:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method a()Ljava/io/ByteArrayInputStream;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/a/f;->Q:Ljava/io/ByteArrayInputStream;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/a/f;->r:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/zte/zdm/d/a/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/zte/zdm/d/a/f;->a([B)[B

    move-result-object v1

    if-nez v1, :cond_2

    const-string v0, "Response data null"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/zte/zdm/d/a/a;

    const/16 v2, 0xc8

    invoke-direct {v1, v2, v0}, Lcom/zte/zdm/d/a/a;-><init>(ILjava/lang/String;)V

    throw v1

    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Charset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported. Using default"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    :try_start_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-object v0

    :catch_1
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Charset "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " not supported. Using default"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_1
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/zte/zdm/d/a/f;->L:I

    return-void
.end method

.method public final a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/zte/zdm/d/a/f;->J:J

    return-void
.end method

.method public a(Ljava/util/Hashtable;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/d/a/f;->u:Ljava/util/Hashtable;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zte/zdm/d/a/f;->G:Z

    return-void
.end method

.method public a([B)[B
    .locals 6

    const-string v0, "execute(byte[] request)"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    sget v0, Lcom/zte/zdm/d/a/e;->M:I

    iput v0, p0, Lcom/zte/zdm/d/a/f;->A:I

    sget-object v3, Lcom/zte/zdm/d/a/f;->l:Ljava/lang/Object;

    monitor-enter v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    :try_start_0
    iget v0, p0, Lcom/zte/zdm/d/a/f;->L:I

    if-gt v2, v0, :cond_0

    iget-boolean v0, p0, Lcom/zte/zdm/d/a/f;->P:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    const-string v0, "+++++++++++++++++++    writeRequest    +++++++++++++++++++"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/zte/zdm/d/a/f;->d([B)V

    const-string v0, "-------------------    writeRequest    -------------------"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Message sent at attempt "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " time."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/zte/zdm/d/a/f;->L:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", waiting for response.IOTimeout is "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v4, p0, Lcom/zte/zdm/d/a/f;->P:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/zte/zdm/d/a/f;->k()V

    const-string v0, "+++++++++++++++++++    readResponse    +++++++++++++++++++"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/zte/zdm/d/a/f;->b([B)[B

    move-result-object v1

    const-string v0, "-------------------    readResponse    -------------------"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Message recv at attempt "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " time."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/zte/zdm/d/a/f;->L:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lcom/zte/zdm/d/a/d; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    invoke-direct {p0}, Lcom/zte/zdm/d/a/f;->k()V

    invoke-direct {p0}, Lcom/zte/zdm/d/a/f;->o()V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getResponseCode = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/zte/zdm/d/a/f;->A:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/zte/zdm/d/a/f;->P:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/zte/zdm/d/a/f;->m()V

    const-string v0, "IOException :"

    new-instance v1, Lcom/zte/zdm/d/a/a;

    const/16 v2, 0xd1

    invoke-direct {v1, v2, v0}, Lcom/zte/zdm/d/a/a;-><init>(ILjava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :try_start_3
    const-string v4, "ConnectionNotFoundException"

    invoke-static {p0, v4}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2, v1}, Lcom/zte/zdm/d/a/f;->a(ILjava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-direct {p0}, Lcom/zte/zdm/d/a/f;->k()V

    invoke-direct {p0}, Lcom/zte/zdm/d/a/f;->o()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :try_start_5
    const-string v4, "IllegalArgumentException"

    invoke-static {p0, v4}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2, v1}, Lcom/zte/zdm/d/a/f;->a(ILjava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-direct {p0}, Lcom/zte/zdm/d/a/f;->k()V

    invoke-direct {p0}, Lcom/zte/zdm/d/a/f;->o()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :try_start_7
    const-string v4, "IOException"

    invoke-static {p0, v4}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2, v1}, Lcom/zte/zdm/d/a/f;->a(ILjava/lang/Exception;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    invoke-direct {p0}, Lcom/zte/zdm/d/a/f;->k()V

    invoke-direct {p0}, Lcom/zte/zdm/d/a/f;->o()V

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-direct {p0}, Lcom/zte/zdm/d/a/f;->k()V

    invoke-direct {p0}, Lcom/zte/zdm/d/a/f;->o()V

    throw v0

    :cond_1
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    return-object v1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/a/f;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final b(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set responseCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput p1, p0, Lcom/zte/zdm/d/a/f;->A:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/d/a/f;->m:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/a/f;->p:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/d/a/f;->n:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/a/f;->n:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/d/a/f;->p:Ljava/lang/String;

    return-void
.end method

.method public e(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/a/f;->E:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zte/zdm/d/a/f;->P:Z

    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/zte/zdm/d/a/f;->L:I

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method h()J
    .locals 4

    iget-wide v0, p0, Lcom/zte/zdm/d/a/f;->J:J

    iget v2, p0, Lcom/zte/zdm/d/a/f;->L:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public i()I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getResponseCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/zdm/d/a/f;->A:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/zte/zdm/d/a/f;->A:I

    return v0
.end method

.method public final j()J
    .locals 2

    iget-wide v0, p0, Lcom/zte/zdm/d/a/f;->J:J

    return-wide v0
.end method
