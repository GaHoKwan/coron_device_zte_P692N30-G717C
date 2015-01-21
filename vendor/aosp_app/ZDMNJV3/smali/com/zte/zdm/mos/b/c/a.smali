.class public Lcom/zte/zdm/mos/b/c/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zte/zdm/mos/a;
.implements Ljava/io/Serializable;


# static fields
.field public static final a:Ljava/lang/String; = "/AppAddr/SrvAddr/Addr"

.field public static final b:Ljava/lang/String; = "/AppAddr/SrvAddr/AddrType"

.field public static final c:Ljava/lang/String; = "/AppAddr/SrvAddr/Port/Port/PortNbr"

.field public static final d:Ljava/lang/String; = "/ToConRef/SrvAddr/ConRef"

.field public static final e:Ljava/lang/String; = "/ServerID"

.field public static final f:Ljava/lang/String; = "/AppAuth/Server/AAuthSecret"

.field public static final g:Ljava/lang/String; = "/AppAuth/Server/AAuthData"

.field public static final h:Ljava/lang/String; = "/AppAuth/Server/AAuthName"

.field public static final i:Ljava/lang/String; = "/AppAuth/Client/AAuthName"

.field public static final j:Ljava/lang/String; = "/AppAuth/Client/AAuthSecret"

.field public static final k:Ljava/lang/String; = "/AppAuth/Client/AAuthData"

.field public static final l:Ljava/lang/String; = "/AAuthPref"

.field public static final m:Ljava/lang/String; = "/Name"

.field public static final n:Ljava/lang/String; = "/AppAuth/Server/AAuthType"

.field public static final o:Ljava/lang/String; = "/AppAuth/Client/AAuthType"

.field private static final p:Ljava/lang/String; = "ServerID"

.field private static final q:J = 0x1L


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private H:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:Ljava/lang/String;

.field private L:I

.field private M:Ljava/lang/String;

.field private N:Ljava/lang/String;

.field private O:Ljava/lang/String;

.field private P:[B

.field private Q:Ljava/lang/String;

.field private R:Ljava/lang/String;

.field private S:Ljava/lang/String;

.field private T:[B

.field private U:Ljava/lang/String;

.field private V:Ljava/lang/String;

.field private W:Ljava/lang/String;

.field private X:Ljava/lang/String;

.field private Y:[Ljava/lang/String;

.field private Z:Lcom/zte/zdm/b/f/h/b;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/zte/zdm/mos/b/c/a;->L:I

    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/AppAddr/SrvAddr/Addr"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "/AppAddr/SrvAddr/AddrType"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "/AppAddr/SrvAddr/Port/Port/PortNbr"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "/ToConRef/SrvAddr/ConRef"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "/ServerID"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "/AppAuth/Server/AAuthSecret"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "/AppAuth/Server/AAuthData"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "/AppAuth/Server/AAuthName"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "/AppAuth/Client/AAuthName"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "/AppAuth/Client/AAuthSecret"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "/AppAuth/Client/AAuthData"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "/AAuthPref"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "/Name"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "/AppAuth/Client/AAuthType"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "/AppAuth/Server/AAuthType"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/zte/zdm/mos/b/c/a;->Y:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/zte/zdm/mos/b/c/a;->a()V

    return-void
.end method

.method public constructor <init>(Lcom/zte/zdm/b/a;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/zte/zdm/mos/b/c/a;->L:I

    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/AppAddr/SrvAddr/Addr"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "/AppAddr/SrvAddr/AddrType"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "/AppAddr/SrvAddr/Port/Port/PortNbr"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "/ToConRef/SrvAddr/ConRef"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "/ServerID"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "/AppAuth/Server/AAuthSecret"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "/AppAuth/Server/AAuthData"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "/AppAuth/Server/AAuthName"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "/AppAuth/Client/AAuthName"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "/AppAuth/Client/AAuthSecret"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "/AppAuth/Client/AAuthData"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "/AAuthPref"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "/Name"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "/AppAuth/Client/AAuthType"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "/AppAuth/Server/AAuthType"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/zte/zdm/mos/b/c/a;->Y:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    iput v1, p0, Lcom/zte/zdm/mos/b/c/a;->L:I

    const/16 v1, 0xf

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "/AppAddr/SrvAddr/Addr"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "/AppAddr/SrvAddr/AddrType"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "/AppAddr/SrvAddr/Port/Port/PortNbr"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "/ToConRef/SrvAddr/ConRef"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "/ServerID"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "/AppAuth/Server/AAuthSecret"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "/AppAuth/Server/AAuthData"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "/AppAuth/Server/AAuthName"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "/AppAuth/Client/AAuthName"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "/AppAuth/Client/AAuthSecret"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "/AppAuth/Client/AAuthData"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "/AAuthPref"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "/Name"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "/AppAuth/Client/AAuthType"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "/AppAuth/Server/AAuthType"

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/zte/zdm/mos/b/c/a;->Y:[Ljava/lang/String;

    iput-object p1, p0, Lcom/zte/zdm/mos/b/c/a;->J:Ljava/lang/String;

    iput-object p2, p0, Lcom/zte/zdm/mos/b/c/a;->K:Ljava/lang/String;

    iput p3, p0, Lcom/zte/zdm/mos/b/c/a;->L:I

    iput-object p4, p0, Lcom/zte/zdm/mos/b/c/a;->M:Ljava/lang/String;

    iput-object p5, p0, Lcom/zte/zdm/mos/b/c/a;->N:Ljava/lang/String;

    iput-object p6, p0, Lcom/zte/zdm/mos/b/c/a;->O:Ljava/lang/String;

    iput-object p7, p0, Lcom/zte/zdm/mos/b/c/a;->P:[B

    iput-object p8, p0, Lcom/zte/zdm/mos/b/c/a;->R:Ljava/lang/String;

    iput-object p9, p0, Lcom/zte/zdm/mos/b/c/a;->S:Ljava/lang/String;

    iput-object p10, p0, Lcom/zte/zdm/mos/b/c/a;->T:[B

    iput-object p11, p0, Lcom/zte/zdm/mos/b/c/a;->U:Ljava/lang/String;

    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/zte/zdm/mos/b/c/a;->V:Ljava/lang/String;

    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/zte/zdm/mos/b/c/a;->W:Ljava/lang/String;

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/zte/zdm/mos/b/c/a;->X:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/zte/zdm/mos/b/c/a;->a()V

    return-void
.end method

.method private J(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "HMAC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "syncml:auth-MAC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "syncml:auth-MAC"

    :goto_0
    return-object v0

    :cond_1
    const-string v0, "DIGEST"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "syncml:auth-md5"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string v0, "syncml:auth-md5"

    goto :goto_0

    :cond_3
    const-string v0, "BASIC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "syncml:auth-basic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const-string v0, "syncml:auth-basic"

    goto :goto_0

    :cond_5
    const-string v0, "none"

    goto :goto_0
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/mos/b/c/a;->D:Ljava/lang/String;

    return-object v0
.end method

.method public A(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/mos/b/c/a;->E:Ljava/lang/String;

    return-void
.end method

.method public B()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/mos/b/c/a;->E:Ljava/lang/String;

    return-object v0
.end method

.method public B(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/mos/b/c/a;->F:Ljava/lang/String;

    return-void
.end method

.method public C()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/mos/b/c/a;->F:Ljava/lang/String;

    return-object v0
.end method

.method public C(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/mos/b/c/a;->G:Ljava/lang/String;

    return-void
.end method

.method public D()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/mos/b/c/a;->G:Ljava/lang/String;

    return-object v0
.end method

.method public D(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/mos/b/c/a;->H:Ljava/lang/String;

    return-void
.end method

.method public E()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/mos/b/c/a;->H:Ljava/lang/String;

    return-object v0
.end method

.method public E(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/mos/b/c/a;->I:Ljava/lang/String;

    return-void
.end method

.method public F()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/mos/b/c/a;->I:Ljava/lang/String;

    return-object v0
.end method

.method public F(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/mos/b/c/a;->r:Ljava/lang/String;

    return-void
.end method

.method public G(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/mos/b/c/a;->s:Ljava/lang/String;

    return-void
.end method

.method public H(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/mos/b/c/a;->t:Ljava/lang/String;

    return-void
.end method

.method public I(Ljava/lang/String;)V
    .locals 3

    const-string v0, "/data/data/com.zte.zdm/files/tree.xml"

    invoke-static {v0}, Lcom/zte/zdm/b/f/f/d;->a(Ljava/lang/String;)Lcom/zte/zdm/b/f/f/c;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Lcom/zte/zdm/b/f/f/c;->a()Lcom/zte/zdm/b/f/c;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/zte/zdm/mos/b/c/a;->a(Ljava/lang/String;Lcom/zte/zdm/b/f/c;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currentAccount ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/zte/zdm/mos/b/c/a;->F(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zte/zdm/mos/b/c/a;->b()V
    :try_end_0
    .catch Lcom/zte/zdm/b/f/h/a; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "==============reloadDMAcc exception============="

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/zte/zdm/b/f/h/a;->printStackTrace()V

    goto :goto_0
.end method

.method a(Lcom/zte/zdm/b/f/d;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p1}, Lcom/zte/zdm/b/f/d;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/b/f/d;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/zte/zdm/b/f/d;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/zdm/b/f/d/f;

    invoke-virtual {v1}, Lcom/zte/zdm/b/f/d/f;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/zte/zdm/b/f/d;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/zdm/b/f/d/f;

    invoke-virtual {v1}, Lcom/zte/zdm/b/f/d/f;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v3, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/zte/zdm/b/f/d;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/zdm/b/f/d/e;

    invoke-virtual {v1}, Lcom/zte/zdm/b/f/d/e;->a()[B

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/zte/zdm/b/f/d;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/b/f/d/f;

    invoke-virtual {v0}, Lcom/zte/zdm/b/f/d/f;->g()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, v0, p2, p3}, Lcom/zte/zdm/mos/b/c/a;->a(Lcom/zte/zdm/b/f/d;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;Lcom/zte/zdm/b/f/c;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p2}, Lcom/zte/zdm/b/f/c;->f()Lcom/zte/zdm/b/f/d;

    move-result-object v0

    const-string v1, "ServerID"

    invoke-virtual {p0, v0, v1, p1}, Lcom/zte/zdm/mos/b/c/a;->a(Lcom/zte/zdm/b/f/d;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 1

    const-string v0, "DMACC accountInit"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/zte/zdm/b/a;->b()Lcom/zte/zdm/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/b/a;->d()Lcom/zte/zdm/g/d/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/zte/zdm/g/d/c;->b()Lcom/zte/zdm/g/d/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/zte/zdm/g/d/d;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/mos/b/c/a;->r:Ljava/lang/String;

    invoke-static {}, Lcom/zte/zdm/b/a;->b()Lcom/zte/zdm/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/b/a;->d()Lcom/zte/zdm/g/d/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/zte/zdm/g/d/c;->b()Lcom/zte/zdm/g/d/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/zte/zdm/g/d/d;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/mos/b/c/a;->s:Ljava/lang/String;

    invoke-static {}, Lcom/zte/zdm/b/a;->b()Lcom/zte/zdm/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/b/a;->d()Lcom/zte/zdm/g/d/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/zte/zdm/g/d/c;->b()Lcom/zte/zdm/g/d/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/zte/zdm/g/d/d;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/mos/b/c/a;->t:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/zte/zdm/mos/b/c/a;->b()V

    return-void
.end method

.method public a(I)V
    .locals 2

    iput p1, p0, Lcom/zte/zdm/mos/b/c/a;->L:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DMACC portNumber"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/zte/zdm/b/f/h/b;)V
    .locals 3

    iget-object v0, p0, Lcom/zte/zdm/mos/b/c/a;->A:Ljava/lang/String;

    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/zte/zdm/mos/b/c/a;->n()[B

    move-result-object v2

    invoke-static {v2}, Lcom/zte/zdm/b/g/b;->a([B)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-interface {p1, v0, v1}, Lcom/zte/zdm/b/f/h/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/mos/b/c/a;->E:Ljava/lang/String;

    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/zte/zdm/mos/b/c/a;->d()[B

    move-result-object v2

    invoke-static {v2}, Lcom/zte/zdm/b/g/b;->a([B)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-interface {p1, v0, v1}, Lcom/zte/zdm/b/f/h/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/mos/b/c/a;->R:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {p2}, Lcom/zte/zdm/b/f/f/d;->a(Ljava/lang/String;)Lcom/zte/zdm/b/f/f/c;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Lcom/zte/zdm/b/f/f/c;->a()Lcom/zte/zdm/b/f/c;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/zte/zdm/mos/b/c/a;->a(Ljava/lang/String;Lcom/zte/zdm/b/f/c;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currentAccount ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/zte/zdm/mos/b/c/a;->F(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zte/zdm/mos/b/c/a;->b()V
    :try_end_0
    .catch Lcom/zte/zdm/b/f/h/a; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "==============reloadDMAcc exception============="

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/zte/zdm/b/f/h/a;->printStackTrace()V

    goto :goto_0
.end method

.method public a([B)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/mos/b/c/a;->T:[B

    return-void
.end method

.method public b()V
    .locals 4

    iget-object v0, p0, Lcom/zte/zdm/mos/b/c/a;->Y:[Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/zte/zdm/mos/b/c/a;->r:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/AppAddr/SrvAddr/Addr"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/zdm/mos/b/c/a;->u:Ljava/lang/String;

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/zte/zdm/mos/b/c/a;->Y:[Ljava/lang/String;

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/zte/zdm/mos/b/c/a;->r:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/AppAddr/SrvAddr/AddrType"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/zdm/mos/b/c/a;->v:Ljava/lang/String;

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/zte/zdm/mos/b/c/a;->Y:[Ljava/lang/String;

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/zte/zdm/mos/b/c/a;->r:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/AppAddr/SrvAddr/Port/Port/PortNbr"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/zdm/mos/b/c/a;->w:Ljava/lang/String;

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/zte/zdm/mos/b/c/a;->Y:[Ljava/lang/String;

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/zte/zdm/mos/b/c/a;->r:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/ToConRef/SrvAddr/ConRef"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/zdm/mos/b/c/a;->x:Ljava/lang/String;

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/zte/zdm/mos/b/c/a;->Y:[Ljava/lang/String;

    const/4 v1, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/zte/zdm/mos/b/c/a;->r:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/ServerID"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/zdm/mos/b/c/a;->y:Ljava/lang/String;

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/zte/zdm/mos/b/c/a;->Y:[Ljava/lang/String;

    const/4 v1, 0x5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/zte/zdm/mos/b/c/a;->r:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/AppAuth/Server/AAuthSecret"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/zdm/mos/b/c/a;->z:Ljava/lang/String;

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/zte/zdm/mos/b/c/a;->Y:[Ljava/lang/String;

    const/4 v1, 0x6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/zte/zdm/mos/b/c/a;->r:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/AppAuth/Server/AAuthData"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/zdm/mos/b/c/a;->A:Ljava/lang/String;

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/zte/zdm/mos/b/c/a;->Y:[Ljava/lang/String;

    const/4 v1, 0x7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/zte/zdm/mos/b/c/a;->r:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/AppAuth/Server/AAuthName"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/zdm/mos/b/c/a;->B:Ljava/lang/String;

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/zte/zdm/mos/b/c/a;->Y:[Ljava/lang/String;

    const/16 v1, 0x8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/zte/zdm/mos/b/c/a;->r:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/AppAuth/Client/AAuthName"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/zdm/mos/b/c/a;->C:Ljava/lang/String;

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/zte/zdm/mos/b/c/a;->Y:[Ljava/lang/String;

    const/16 v1, 0x9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/zte/zdm/mos/b/c/a;->r:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/AppAuth/Client/AAuthSecret"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/zdm/mos/b/c/a;->D:Ljava/lang/String;

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/zte/zdm/mos/b/c/a;->Y:[Ljava/lang/String;

    const/16 v1, 0xa

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/zte/zdm/mos/b/c/a;->r:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/AppAuth/Client/AAuthData"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/zdm/mos/b/c/a;->E:Ljava/lang/String;

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/zte/zdm/mos/b/c/a;->Y:[Ljava/lang/String;

    const/16 v1, 0xb

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/zte/zdm/mos/b/c/a;->r:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/AAuthPref"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/zdm/mos/b/c/a;->F:Ljava/lang/String;

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/zte/zdm/mos/b/c/a;->Y:[Ljava/lang/String;

    const/16 v1, 0xc

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/zte/zdm/mos/b/c/a;->r:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/Name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/zdm/mos/b/c/a;->G:Ljava/lang/String;

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/zte/zdm/mos/b/c/a;->Y:[Ljava/lang/String;

    const/16 v1, 0xd

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/zte/zdm/mos/b/c/a;->r:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/AppAuth/Client/AAuthType"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/zdm/mos/b/c/a;->H:Ljava/lang/String;

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/zte/zdm/mos/b/c/a;->Y:[Ljava/lang/String;

    const/16 v1, 0xe

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/zte/zdm/mos/b/c/a;->r:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/AppAuth/Server/AAuthType"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/zdm/mos/b/c/a;->I:Ljava/lang/String;

    aput-object v2, v0, v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DMACC PATHS updated,current account is"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/mos/b/c/a;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/zte/zdm/b/f/h/b;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "accUserNamePath = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/mos/b/c/a;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/mos/b/c/a;->C:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/zte/zdm/b/f/h/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/zdm/mos/b/c/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/mos/b/c/a;->E:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/zte/zdm/b/f/h/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/zdm/mos/b/c/a;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/mos/b/c/a;->u:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/zte/zdm/b/f/h/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/zdm/mos/b/c/a;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/mos/b/c/a;->y:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/zte/zdm/b/f/h/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/zdm/mos/b/c/a;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/mos/b/c/a;->v:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/zte/zdm/b/f/h/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/zdm/mos/b/c/a;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/mos/b/c/a;->z:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/zte/zdm/b/f/h/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/zdm/mos/b/c/a;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/mos/b/c/a;->w:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/zte/zdm/b/f/h/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zte/zdm/mos/b/c/a;->a(I)V

    iget-object v0, p0, Lcom/zte/zdm/mos/b/c/a;->x:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/zte/zdm/b/f/h/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/zdm/mos/b/c/a;->g(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/mos/b/c/a;->G:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/zte/zdm/b/f/h/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/zdm/mos/b/c/a;->h(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/mos/b/c/a;->I:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/zte/zdm/b/f/h/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/zdm/mos/b/c/a;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/mos/b/c/a;->H:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/zte/zdm/b/f/h/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/zdm/mos/b/c/a;->j(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/mos/b/c/a;->A:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/zte/zdm/b/f/h/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/zdm/mos/b/c/a;->k(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/mos/b/c/a;->B:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/zte/zdm/b/f/h/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/zdm/mos/b/c/a;->l(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/mos/b/c/a;->D:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/zte/zdm/b/f/h/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/zdm/mos/b/c/a;->m(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/mos/b/c/a;->F:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/zte/zdm/b/f/h/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/zdm/mos/b/c/a;->n(Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/zte/zdm/b/g/b;->a(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/mos/b/c/a;->T:[B

    return-void
.end method

.method public b([B)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/mos/b/c/a;->P:[B

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/mos/b/c/a;->R:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/zte/zdm/mos/b/c/a;->J:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DMACC setAddress"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/zte/zdm/mos/b/c/a;->N:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DMACC serverId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public d()[B
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/mos/b/c/a;->T:[B

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/mos/b/c/a;->J:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/mos/b/c/a;->K:Ljava/lang/String;

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/mos/b/c/a;->N:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/mos/b/c/a;->O:Ljava/lang/String;

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/mos/b/c/a;->K:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/mos/b/c/a;->M:Ljava/lang/String;

    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/mos/b/c/a;->O:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/mos/b/c/a;->V:Ljava/lang/String;

    return-void
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lcom/zte/zdm/mos/b/c/a;->L:I

    return v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/mos/b/c/a;->X:Ljava/lang/String;

    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/mos/b/c/a;->M:Ljava/lang/String;

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/mos/b/c/a;->W:Ljava/lang/String;

    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/mos/b/c/a;->V:Ljava/lang/String;

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/zte/zdm/b/g/b;->a(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/mos/b/c/a;->P:[B

    return-void
.end method

.method public l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/mos/b/c/a;->X:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/zte/zdm/mos/b/c/a;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/mos/b/c/a;->Q:Ljava/lang/String;

    return-void
.end method

.method public m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/mos/b/c/a;->W:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/zte/zdm/mos/b/c/a;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/mos/b/c/a;->S:Ljava/lang/String;

    return-void
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/mos/b/c/a;->U:Ljava/lang/String;

    return-void
.end method

.method public n()[B
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/mos/b/c/a;->P:[B

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/mos/b/c/a;->Q:Ljava/lang/String;

    return-object v0
.end method

.method public o(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DMACC to save current account:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/zte/zdm/b/a;->b()Lcom/zte/zdm/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/b/a;->d()Lcom/zte/zdm/g/d/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/zte/zdm/g/d/c;->b()Lcom/zte/zdm/g/d/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/zte/zdm/g/d/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/mos/b/c/a;->S:Ljava/lang/String;

    return-object v0
.end method

.method public p(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DMACC to save account root:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/zte/zdm/b/a;->b()Lcom/zte/zdm/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/b/a;->d()Lcom/zte/zdm/g/d/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/zte/zdm/g/d/c;->b()Lcom/zte/zdm/g/d/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/zte/zdm/g/d/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/mos/b/c/a;->U:Ljava/lang/String;

    return-object v0
.end method

.method public q(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/mos/b/c/a;->u:Ljava/lang/String;

    return-void
.end method

.method public r()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/mos/b/c/a;->u:Ljava/lang/String;

    return-object v0
.end method

.method public r(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/mos/b/c/a;->v:Ljava/lang/String;

    return-void
.end method

.method public s()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/mos/b/c/a;->v:Ljava/lang/String;

    return-object v0
.end method

.method public s(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/mos/b/c/a;->w:Ljava/lang/String;

    return-void
.end method

.method public t()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/mos/b/c/a;->w:Ljava/lang/String;

    return-object v0
.end method

.method public t(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/mos/b/c/a;->x:Ljava/lang/String;

    return-void
.end method

.method public u()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/mos/b/c/a;->x:Ljava/lang/String;

    return-object v0
.end method

.method public u(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/mos/b/c/a;->y:Ljava/lang/String;

    return-void
.end method

.method public v()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/mos/b/c/a;->y:Ljava/lang/String;

    return-object v0
.end method

.method public v(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/mos/b/c/a;->z:Ljava/lang/String;

    return-void
.end method

.method public w()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/mos/b/c/a;->z:Ljava/lang/String;

    return-object v0
.end method

.method public w(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/mos/b/c/a;->A:Ljava/lang/String;

    return-void
.end method

.method public x()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/mos/b/c/a;->A:Ljava/lang/String;

    return-object v0
.end method

.method public x(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/mos/b/c/a;->B:Ljava/lang/String;

    return-void
.end method

.method public y()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/mos/b/c/a;->B:Ljava/lang/String;

    return-object v0
.end method

.method public y(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/mos/b/c/a;->C:Ljava/lang/String;

    return-void
.end method

.method public z()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/mos/b/c/a;->C:Ljava/lang/String;

    return-object v0
.end method

.method public z(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/mos/b/c/a;->D:Ljava/lang/String;

    return-void
.end method
