.class public Lcom/zte/zdm/d/c/a/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lorg/xmlpull/v1/XmlSerializer; = null

.field private static b:Z = false

.field private static final c:Ljava/lang/String; = "syncml:metinf"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/zte/zdm/d/c/a/a;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()V
    .locals 0

    return-void
.end method

.method private static a(Lcom/zte/zdm/d/c/ai;)V
    .locals 2

    const-string v0, "Item"

    invoke-static {v0}, Lcom/zte/zdm/d/c/a/a;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ai;->b()Lcom/zte/zdm/d/c/bb;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/d/c/a/a;->a(Lcom/zte/zdm/d/c/bb;)V

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ai;->a()Lcom/zte/zdm/d/c/bm;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/d/c/a/a;->a(Lcom/zte/zdm/d/c/bm;)V

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ai;->c()Lcom/zte/zdm/d/c/ap;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/d/c/a/a;->a(Lcom/zte/zdm/d/c/ap;)V

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ai;->e()Lcom/zte/zdm/d/c/n;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/zte/zdm/d/c/a/a;->a(Lcom/zte/zdm/d/c/n;Lcom/zte/zdm/d/c/ap;)V

    const-string v0, "MoreData"

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ai;->f()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/zdm/d/c/a/a;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v0, "Item"

    invoke-static {v0}, Lcom/zte/zdm/d/c/a/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method private static a(Lcom/zte/zdm/d/c/aj;)V
    .locals 3

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/aj;->a()Lcom/zte/zdm/d/c/m;

    move-result-object v0

    const-string v2, "CmdID"

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/m;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/zte/zdm/d/c/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "NoResp"

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/aj;->c()Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/zte/zdm/d/c/a/a;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/aj;->d()Lcom/zte/zdm/d/c/s;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/d/c/a/a;->a(Lcom/zte/zdm/d/c/s;)V

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/aj;->e()Lcom/zte/zdm/d/c/ap;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/d/c/a/a;->a(Lcom/zte/zdm/d/c/ap;)V

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/aj;->k()Ljava/util/ArrayList;

    move-result-object v0

    new-array v2, v1, [Lcom/zte/zdm/d/c/ai;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/zdm/d/c/ai;

    check-cast v0, [Lcom/zte/zdm/d/c/ai;

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    aget-object v2, v0, v1

    invoke-static {v2}, Lcom/zte/zdm/d/c/a/a;->a(Lcom/zte/zdm/d/c/ai;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static a(Lcom/zte/zdm/d/c/ap;)V
    .locals 7

    const/4 v6, 0x0

    if-eqz p0, :cond_3

    const-string v0, "Meta"

    invoke-static {v0}, Lcom/zte/zdm/d/c/a/a;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ap;->c()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "Size"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/zte/zdm/d/c/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ap;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ap;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ap;->f()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Format"

    const-string v4, "syncml:metinf"

    const/4 v5, 0x1

    invoke-static {v3, v0, v4, v5}, Lcom/zte/zdm/d/c/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "Type"

    const-string v3, "syncml:metinf"

    invoke-static {v0, v1, v3, v6}, Lcom/zte/zdm/d/c/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "Mark"

    const-string v1, "syncml:metinf"

    invoke-static {v0, v2, v1, v6}, Lcom/zte/zdm/d/c/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ap;->i()Lcom/zte/zdm/d/c/ar;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/d/c/a/a;->a(Lcom/zte/zdm/d/c/ar;)V

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ap;->j()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "MaxMsgSize"

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v2, "syncml:metinf"

    invoke-static {v1, v0, v2, v6}, Lcom/zte/zdm/d/c/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ap;->k()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "MaxObjSize"

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v2, "syncml:metinf"

    invoke-static {v1, v0, v2, v6}, Lcom/zte/zdm/d/c/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_2
    const-string v0, "Meta"

    invoke-static {v0}, Lcom/zte/zdm/d/c/a/a;->b(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private static a(Lcom/zte/zdm/d/c/ar;)V
    .locals 4

    if-eqz p0, :cond_0

    const-string v0, "NextNonce"

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ar;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "syncml:metinf"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/zte/zdm/d/c/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "formatNextNonce"

    const-string v1, "nextNonce is null"

    invoke-static {v0, v1}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Lcom/zte/zdm/d/c/bb;)V
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bb;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Source"

    invoke-static {v1}, Lcom/zte/zdm/d/c/a/a;->a(Ljava/lang/String;)V

    const-string v1, "LocURI"

    invoke-static {v1, v0}, Lcom/zte/zdm/d/c/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "LocName"

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bb;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/zdm/d/c/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Source"

    invoke-static {v0}, Lcom/zte/zdm/d/c/a/a;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static a(Lcom/zte/zdm/d/c/bc;)V
    .locals 2

    if-eqz p0, :cond_0

    const-string v0, "SourceRef"

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bc;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/zdm/d/c/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bc;->b()Lcom/zte/zdm/d/c/bb;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/d/c/a/a;->a(Lcom/zte/zdm/d/c/bb;)V

    :cond_0
    return-void
.end method

.method private static a(Lcom/zte/zdm/d/c/bh;)V
    .locals 2

    const-string v0, "SyncBody"

    invoke-static {v0}, Lcom/zte/zdm/d/c/a/a;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bh;->a()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/zte/zdm/d/c/a;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/zdm/d/c/a;

    invoke-static {v0}, Lcom/zte/zdm/d/c/a/a;->a([Lcom/zte/zdm/d/c/a;)V

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bh;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bh;->c()Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "Final"

    invoke-static {v1, v0}, Lcom/zte/zdm/d/c/a/a;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_0
    const-string v0, "SyncBody"

    invoke-static {v0}, Lcom/zte/zdm/d/c/a/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method private static a(Lcom/zte/zdm/d/c/bj;)V
    .locals 2

    const-string v0, "SyncHdr"

    invoke-static {v0}, Lcom/zte/zdm/d/c/a/a;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bj;->a()Lcom/zte/zdm/d/c/bo;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "VerDTD"

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/bo;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/zte/zdm/d/c/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bj;->b()Lcom/zte/zdm/d/c/bp;

    move-result-object v0

    const-string v1, "VerProto"

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/bp;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/zte/zdm/d/c/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bj;->c()Lcom/zte/zdm/d/c/az;

    move-result-object v0

    const-string v1, "SessionID"

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/az;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/zte/zdm/d/c/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bj;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MsgID"

    invoke-static {v1, v0}, Lcom/zte/zdm/d/c/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bj;->e()Lcom/zte/zdm/d/c/bm;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/d/c/a/a;->a(Lcom/zte/zdm/d/c/bm;)V

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bj;->f()Lcom/zte/zdm/d/c/bb;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/d/c/a/a;->a(Lcom/zte/zdm/d/c/bb;)V

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bj;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RespURI"

    invoke-static {v1, v0}, Lcom/zte/zdm/d/c/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bj;->i()Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "NoResp"

    invoke-static {v1, v0}, Lcom/zte/zdm/d/c/a/a;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bj;->k()Lcom/zte/zdm/d/c/ap;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/d/c/a/a;->a(Lcom/zte/zdm/d/c/ap;)V

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bj;->j()Lcom/zte/zdm/d/c/s;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/d/c/a/a;->a(Lcom/zte/zdm/d/c/s;)V

    const-string v0, "SyncHdr"

    invoke-static {v0}, Lcom/zte/zdm/d/c/a/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Lcom/zte/zdm/d/c/bk;Ljava/io/OutputStream;Ljava/lang/String;Z)V
    .locals 2

    const/4 v1, 0x1

    invoke-static {p3}, Lcom/zte/zdm/d/d/a;->a(Z)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    sput-object v0, Lcom/zte/zdm/d/c/a/a;->a:Lorg/xmlpull/v1/XmlSerializer;

    sget-object v0, Lcom/zte/zdm/d/c/a/a;->a:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    if-nez p3, :cond_0

    sput-boolean v1, Lcom/zte/zdm/d/c/a/a;->b:Z

    :cond_0
    sget-object v0, Lcom/zte/zdm/d/c/a/a;->a:Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-static {}, Lcom/zte/zdm/d/c/a/a;->b()V

    const-string v0, "SyncML"

    const-string v1, "SYNCML:SYNCML1.2"

    invoke-static {v0, v1}, Lcom/zte/zdm/d/c/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bk;->a()Lcom/zte/zdm/d/c/bj;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bk;->b()Lcom/zte/zdm/d/c/bh;

    move-result-object v1

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/zte/zdm/d/c/a/a;->a(Lcom/zte/zdm/d/c/bj;)V

    :cond_1
    if-eqz v1, :cond_2

    invoke-static {v1}, Lcom/zte/zdm/d/c/a/a;->a(Lcom/zte/zdm/d/c/bh;)V

    :cond_2
    const-string v0, "SyncML"

    invoke-static {v0}, Lcom/zte/zdm/d/c/a/a;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/zte/zdm/d/c/a/a;->a:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    return-void
.end method

.method private static a(Lcom/zte/zdm/d/c/bm;)V
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bm;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Target"

    invoke-static {v1}, Lcom/zte/zdm/d/c/a/a;->a(Ljava/lang/String;)V

    const-string v1, "LocURI"

    invoke-static {v1, v0}, Lcom/zte/zdm/d/c/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "LocName"

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bm;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/zdm/d/c/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Target"

    invoke-static {v0}, Lcom/zte/zdm/d/c/a/a;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static a(Lcom/zte/zdm/d/c/bn;)V
    .locals 2

    if-eqz p0, :cond_0

    const-string v0, "TargetRef"

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bn;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/zdm/d/c/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bn;->b()Lcom/zte/zdm/d/c/bm;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/d/c/a/a;->a(Lcom/zte/zdm/d/c/bm;)V

    :cond_0
    return-void
.end method

.method private static a(Lcom/zte/zdm/d/c/c/a;)V
    .locals 1

    sget-object v0, Lcom/zte/zdm/d/c/a/a;->a:Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {v0, p0}, Lcom/zte/zdm/d/c/c/a/d;->a(Lorg/xmlpull/v1/XmlSerializer;Lcom/zte/zdm/d/c/c/a;)V

    return-void
.end method

.method private static a(Lcom/zte/zdm/d/c/l;)V
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "Chal"

    invoke-static {v0}, Lcom/zte/zdm/d/c/a/a;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/l;->a()Lcom/zte/zdm/d/c/ap;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/d/c/a/a;->a(Lcom/zte/zdm/d/c/ap;)V

    const-string v0, "Chal"

    invoke-static {v0}, Lcom/zte/zdm/d/c/a/a;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static a(Lcom/zte/zdm/d/c/n;Lcom/zte/zdm/d/c/ap;)V
    .locals 4

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/n;->c()Lcom/zte/zdm/d/c/c/a;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/zte/zdm/d/c/c/a/d;->a(Lcom/zte/zdm/d/c/c/a;)[B

    move-result-object v0

    const-string v1, "Data"

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/zte/zdm/d/c/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/zte/zdm/d/c/n;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Data"

    invoke-static {v1, v0}, Lcom/zte/zdm/d/c/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Lcom/zte/zdm/d/c/s;)V
    .locals 2

    if-eqz p0, :cond_0

    const-string v0, "Cred"

    invoke-static {v0}, Lcom/zte/zdm/d/c/a/a;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/s;->f()Lcom/zte/zdm/d/c/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/g;->g()Lcom/zte/zdm/d/c/ap;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/d/c/a/a;->a(Lcom/zte/zdm/d/c/ap;)V

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/s;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Data"

    invoke-static {v1, v0}, Lcom/zte/zdm/d/c/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Cred"

    invoke-static {v0}, Lcom/zte/zdm/d/c/a/a;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static a(Lcom/zte/zdm/d/c/u;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/zte/zdm/d/c/a/a;->a(Lcom/zte/zdm/d/c/u;Lcom/zte/zdm/d/c/ap;)V

    return-void
.end method

.method private static a(Lcom/zte/zdm/d/c/u;Lcom/zte/zdm/d/c/ap;)V
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/u;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "Data"

    invoke-static {v1, v0}, Lcom/zte/zdm/d/c/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/zte/zdm/d/c/a/a;->a:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {}, Lcom/zte/zdm/d/c/a/a;->b()V

    return-void
.end method

.method private static a(Ljava/lang/String;J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lcom/zte/zdm/d/c/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    invoke-static {p0, v0}, Lcom/zte/zdm/d/c/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/zte/zdm/d/c/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    sget-object v0, Lcom/zte/zdm/d/c/a/a;->a:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, v2, p0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    if-eqz p2, :cond_0

    sget-object v0, Lcom/zte/zdm/d/c/a/a;->a:Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "xmlns"

    invoke-interface {v0, v2, v1, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_3

    sget-object v0, Lcom/zte/zdm/d/c/a/a;->a:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->cdsect(Ljava/lang/String;)V

    :cond_1
    :goto_0
    sget-object v0, Lcom/zte/zdm/d/c/a/a;->a:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, v2, p0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {}, Lcom/zte/zdm/d/c/a/a;->b()V

    :cond_2
    return-void

    :cond_3
    sget-object v0, Lcom/zte/zdm/d/c/a/a;->a:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0
.end method

.method private static a([Lcom/zte/zdm/d/c/a;)V
    .locals 3

    const/4 v2, 0x0

    const-class v0, Lcom/zte/zdm/d/c/c;

    invoke-static {p0, v0}, Lcom/zte/zdm/b/c/e;->a([Lcom/zte/zdm/d/c/a;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    new-array v1, v2, [Lcom/zte/zdm/d/c/c;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/zdm/d/c/c;

    invoke-static {v0}, Lcom/zte/zdm/d/c/a/a;->a([Lcom/zte/zdm/d/c/c;)V

    const-class v0, Lcom/zte/zdm/d/c/bd;

    invoke-static {p0, v0}, Lcom/zte/zdm/b/c/e;->a([Lcom/zte/zdm/d/c/a;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    new-array v1, v2, [Lcom/zte/zdm/d/c/bd;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/zdm/d/c/bd;

    invoke-static {v0}, Lcom/zte/zdm/d/c/a/a;->a([Lcom/zte/zdm/d/c/bd;)V

    const-class v0, Lcom/zte/zdm/d/c/at;

    invoke-static {p0, v0}, Lcom/zte/zdm/b/c/e;->a([Lcom/zte/zdm/d/c/a;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    new-array v1, v2, [Lcom/zte/zdm/d/c/at;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/zdm/d/c/at;

    invoke-static {v0}, Lcom/zte/zdm/d/c/a/a;->a([Lcom/zte/zdm/d/c/at;)V

    const-class v0, Lcom/zte/zdm/d/c/aw;

    invoke-static {p0, v0}, Lcom/zte/zdm/b/c/e;->a([Lcom/zte/zdm/d/c/a;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    new-array v1, v2, [Lcom/zte/zdm/d/c/aw;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/zdm/d/c/aw;

    invoke-static {v0}, Lcom/zte/zdm/d/c/a/a;->a([Lcom/zte/zdm/d/c/aw;)V

    return-void
.end method

.method private static a([Lcom/zte/zdm/d/c/at;)V
    .locals 3

    array-length v1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p0, v0

    if-eqz v2, :cond_0

    const-string v2, "Replace"

    invoke-static {v2}, Lcom/zte/zdm/d/c/a/a;->a(Ljava/lang/String;)V

    aget-object v2, p0, v0

    invoke-static {v2}, Lcom/zte/zdm/d/c/a/a;->a(Lcom/zte/zdm/d/c/aj;)V

    const-string v2, "Replace"

    invoke-static {v2}, Lcom/zte/zdm/d/c/a/a;->b(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static a([Lcom/zte/zdm/d/c/aw;)V
    .locals 6

    const/4 v2, 0x0

    array-length v4, p0

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v0, p0, v3

    if-eqz v0, :cond_1

    const-string v0, "Results"

    invoke-static {v0}, Lcom/zte/zdm/d/c/a/a;->a(Ljava/lang/String;)V

    const-string v0, "CmdID"

    aget-object v1, p0, v3

    invoke-virtual {v1}, Lcom/zte/zdm/d/c/aw;->a()Lcom/zte/zdm/d/c/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/d/c/m;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/zdm/d/c/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MsgRef"

    aget-object v1, p0, v3

    invoke-virtual {v1}, Lcom/zte/zdm/d/c/aw;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/zdm/d/c/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CmdRef"

    aget-object v1, p0, v3

    invoke-virtual {v1}, Lcom/zte/zdm/d/c/aw;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/zdm/d/c/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v0, p0, v3

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/aw;->e()Lcom/zte/zdm/d/c/ap;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/d/c/a/a;->a(Lcom/zte/zdm/d/c/ap;)V

    aget-object v0, p0, v3

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/aw;->k()Ljava/util/ArrayList;

    move-result-object v5

    move v1, v2

    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/ai;

    invoke-static {v0}, Lcom/zte/zdm/d/c/a/a;->a(Lcom/zte/zdm/d/c/ai;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_0
    const-string v0, "Results"

    invoke-static {v0}, Lcom/zte/zdm/d/c/a/a;->b(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static a([Lcom/zte/zdm/d/c/bd;)V
    .locals 6

    const/4 v2, 0x0

    array-length v4, p0

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_3

    const-string v0, "Status"

    invoke-static {v0}, Lcom/zte/zdm/d/c/a/a;->a(Ljava/lang/String;)V

    aget-object v0, p0, v3

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/bd;->a()Lcom/zte/zdm/d/c/m;

    move-result-object v0

    const-string v1, "CmdID"

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/m;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/zte/zdm/d/c/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v0, p0, v3

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/bd;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MsgRef"

    invoke-static {v1, v0}, Lcom/zte/zdm/d/c/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v0, p0, v3

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/bd;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CmdRef"

    invoke-static {v1, v0}, Lcom/zte/zdm/d/c/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v0, p0, v3

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/bd;->n()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cmd"

    invoke-static {v1, v0}, Lcom/zte/zdm/d/c/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v0, p0, v3

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/bd;->i()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    aget-object v0, p0, v3

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/bd;->i()Ljava/util/ArrayList;

    move-result-object v0

    new-array v1, v2, [Lcom/zte/zdm/d/c/bn;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/zdm/d/c/bn;

    move v1, v2

    :goto_1
    array-length v5, v0

    if-ge v1, v5, :cond_0

    aget-object v5, v0, v1

    invoke-static {v5}, Lcom/zte/zdm/d/c/a/a;->a(Lcom/zte/zdm/d/c/bn;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    aget-object v0, p0, v3

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/bd;->j()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    aget-object v0, p0, v3

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/bd;->j()Ljava/util/ArrayList;

    move-result-object v0

    new-array v1, v2, [Lcom/zte/zdm/d/c/bc;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/zdm/d/c/bc;

    move v1, v2

    :goto_2
    array-length v5, v0

    if-ge v1, v5, :cond_1

    aget-object v5, v0, v1

    invoke-static {v5}, Lcom/zte/zdm/d/c/a/a;->a(Lcom/zte/zdm/d/c/bc;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    aget-object v0, p0, v3

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/bd;->d()Lcom/zte/zdm/d/c/s;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/d/c/a/a;->a(Lcom/zte/zdm/d/c/s;)V

    aget-object v0, p0, v3

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/bd;->l()Lcom/zte/zdm/d/c/l;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/d/c/a/a;->a(Lcom/zte/zdm/d/c/l;)V

    aget-object v0, p0, v3

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/bd;->m()Lcom/zte/zdm/d/c/u;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/d/c/a/a;->a(Lcom/zte/zdm/d/c/u;)V

    aget-object v0, p0, v3

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/bd;->k()Ljava/util/ArrayList;

    move-result-object v0

    new-array v1, v2, [Lcom/zte/zdm/d/c/ai;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/zdm/d/c/ai;

    if-eqz v0, :cond_2

    move v1, v2

    :goto_3
    array-length v5, v0

    if-ge v1, v5, :cond_2

    aget-object v5, v0, v1

    invoke-static {v5}, Lcom/zte/zdm/d/c/a/a;->a(Lcom/zte/zdm/d/c/ai;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2
    const-string v0, "Status"

    invoke-static {v0}, Lcom/zte/zdm/d/c/a/a;->b(Ljava/lang/String;)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method private static a([Lcom/zte/zdm/d/c/c;)V
    .locals 5

    array-length v1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p0, v0

    if-eqz v2, :cond_0

    const-string v2, "Alert"

    invoke-static {v2}, Lcom/zte/zdm/d/c/a/a;->a(Ljava/lang/String;)V

    aget-object v2, p0, v0

    invoke-static {v2}, Lcom/zte/zdm/d/c/a/a;->a(Lcom/zte/zdm/d/c/aj;)V

    const-string v2, "Data"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p0, v0

    invoke-virtual {v4}, Lcom/zte/zdm/d/c/c;->g()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zte/zdm/d/c/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Correlator"

    aget-object v3, p0, v0

    invoke-virtual {v3}, Lcom/zte/zdm/d/c/c;->h()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zte/zdm/d/c/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Alert"

    invoke-static {v2}, Lcom/zte/zdm/d/c/a/a;->b(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static a(Lcom/zte/zdm/d/c/bk;Z)[B
    .locals 2

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const-string v1, "UTF-8"

    invoke-static {p0, v0, v1, p1}, Lcom/zte/zdm/d/c/a/a;->a(Lcom/zte/zdm/d/c/bk;Ljava/io/OutputStream;Ljava/lang/String;Z)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method private static b()V
    .locals 2

    sget-boolean v0, Lcom/zte/zdm/d/c/a/a;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/zte/zdm/d/c/a/a;->a:Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "\n"

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    return-void
.end method

.method private static b(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/zte/zdm/d/c/a/a;->a:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {}, Lcom/zte/zdm/d/c/a/a;->b()V

    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/zte/zdm/d/c/a/a;->a:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, v2, p0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v0, Lcom/zte/zdm/d/c/a/a;->a:Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "xmlns"

    invoke-interface {v0, v2, v1, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {}, Lcom/zte/zdm/d/c/a/a;->b()V

    return-void
.end method
