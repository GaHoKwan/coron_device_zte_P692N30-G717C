.class public Lcom/nuance/a/a/a/b/c/b/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/a/a/a/a/b/a/c$b;
.implements Lcom/nuance/a/a/a/b/a/a$a;


# static fields
.field private static final a:Lcom/nuance/a/a/a/a/b/a/b$a;

.field private static m:[B

.field private static p:I

.field private static x:[Ljava/lang/String;


# instance fields
.field private b:Ljava/util/Hashtable;

.field private c:Ljava/util/Hashtable;

.field private d:Ljava/util/Hashtable;

.field private e:Lcom/nuance/a/a/a/b/a/a;

.field private f:Ljava/lang/String;

.field private g:S

.field private h:Ljava/util/Vector;

.field private i:Lcom/nuance/a/a/a/a/b/a/c;

.field private j:Lcom/nuance/a/a/a/b/c/a/c;

.field private k:Ljava/util/Vector;

.field private l:[B

.field private n:Lcom/nuance/a/a/a/a/a/a$a;

.field private o:Lcom/nuance/a/a/a/a/a/a$a;

.field private q:J

.field private r:Z

.field private s:Lcom/nuance/a/a/a/b/c/a/d;

.field private t:J

.field private u:B

.field private v:Lcom/nuance/a/a/a/b/a/a/b;

.field private w:Lcom/nuance/a/a/a/b/a/b/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v1, 0x10

    const/4 v3, 0x1

    const-class v0, Lcom/nuance/a/a/a/b/c/b/a/b;

    invoke-static {v0}, Lcom/nuance/a/a/a/a/b/a/b;->a(Ljava/lang/Class;)Lcom/nuance/a/a/a/a/b/a/b$a;

    move-result-object v0

    sput-object v0, Lcom/nuance/a/a/a/b/c/b/a/b;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    new-array v0, v1, [B

    sput-object v0, Lcom/nuance/a/a/a/b/c/b/a/b;->m:[B

    sput v3, Lcom/nuance/a/a/a/b/c/b/a/b;->p:I

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "0"

    aput-object v2, v0, v1

    const-string v1, "1"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "3"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "4"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "5"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "6"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "7"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "8"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "9"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "A"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "B"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "C"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "D"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "E"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "F"

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/a/a/a/b/c/b/a/b;->x:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;SLjava/lang/String;[BLjava/lang/String;Ljava/util/Vector;Lcom/nuance/a/a/a/a/b/a/c;Lcom/nuance/a/a/a/b/c/a/c;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->l:[B

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->r:Z

    const-wide/16 v1, 0x1

    iput-wide v1, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->t:J

    const/4 v1, 0x1

    iput-byte v1, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->u:B

    iput-object p1, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->f:Ljava/lang/String;

    iput-short p2, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->g:S

    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->i:Lcom/nuance/a/a/a/a/b/a/c;

    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->j:Lcom/nuance/a/a/a/b/c/a/c;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->s:Lcom/nuance/a/a/a/b/c/a/d;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->k:Ljava/util/Vector;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->b:Ljava/util/Hashtable;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->c:Ljava/util/Hashtable;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->d:Ljava/util/Hashtable;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->h:Ljava/util/Vector;

    new-instance v1, Lcom/nuance/a/a/a/b/a/a;

    iget-object v2, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->f:Ljava/lang/String;

    iget-short v3, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->g:S

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p0

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/nuance/a/a/a/b/a/a;-><init>(Ljava/lang/String;SLjava/lang/String;[BLjava/lang/String;Lcom/nuance/a/a/a/b/a/a$a;Ljava/util/Vector;Lcom/nuance/a/a/a/a/b/a/c;)V

    iput-object v1, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->e:Lcom/nuance/a/a/a/b/a/a;

    return-void
.end method

.method public static a([B)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_1
    const/16 v2, 0x10

    if-ge v0, v2, :cond_3

    aget-byte v2, p0, v0

    and-int/lit16 v3, v2, 0xf0

    int-to-byte v3, v3

    ushr-int/lit8 v3, v3, 0x4

    int-to-byte v3, v3

    and-int/lit8 v3, v3, 0xf

    int-to-byte v3, v3

    and-int/lit8 v2, v2, 0xf

    int-to-byte v2, v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/nuance/a/a/a/b/c/b/a/b;->x:[Ljava/lang/String;

    aget-object v3, v5, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/nuance/a/a/a/b/c/b/a/b;->x:[Ljava/lang/String;

    aget-object v2, v4, v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    const/4 v2, 0x7

    if-eq v0, v2, :cond_1

    const/16 v2, 0x9

    if-ne v0, v2, :cond_2

    :cond_1
    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(BLjava/lang/Object;)V
    .locals 5

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->i:Lcom/nuance/a/a/a/a/b/a/c;

    new-instance v1, Lcom/nuance/a/a/a/a/b/a/c$a;

    invoke-direct {v1, p1, p2}, Lcom/nuance/a/a/a/a/b/a/c$a;-><init>(BLjava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->i:Lcom/nuance/a/a/a/a/b/a/c;

    invoke-interface {v3}, Lcom/nuance/a/a/a/a/b/a/c;->a()[Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-interface {v0, v1, p0, v2, v3}, Lcom/nuance/a/a/a/a/b/a/c;->a(Ljava/lang/Object;Lcom/nuance/a/a/a/a/b/a/c$b;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private b([B)V
    .locals 4

    const/16 v0, 0x10

    aget-byte v2, p1, v0

    const/16 v0, 0x11

    invoke-static {p1, v0}, Lcom/nuance/a/a/a/a/d/b;->a([BI)S

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->h:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->h:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/a/a/a/b/c/b/a/c;

    invoke-interface {v0, v2, v3}, Lcom/nuance/a/a/a/b/c/b/a/c;->a(BS)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->v:Lcom/nuance/a/a/a/b/a/a/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->v:Lcom/nuance/a/a/a/b/a/a/b;

    invoke-interface {v0, p1}, Lcom/nuance/a/a/a/b/a/a/b;->a(Ljava/lang/String;)Lcom/nuance/a/a/a/b/a/a/d;

    move-result-object v0

    const-string v1, "ConnectionEstablished"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    const-string v1, "SessionID"

    iget-object v2, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->l:[B

    invoke-static {v2}, Lcom/nuance/a/a/a/b/c/b/a/b;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/a/a/a/b/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/nuance/a/a/a/b/a/a/d;
    :try_end_0
    .catch Lcom/nuance/a/a/a/b/a/a/c; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-interface {v0}, Lcom/nuance/a/a/a/b/a/a/d;->a()Lcom/nuance/a/a/a/b/a/a/b;

    :cond_1
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private c([B)V
    .locals 5

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/nuance/a/a/a/a/d/b;->b([BI)I

    move-result v3

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->c:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->c:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/a/a/a/b/b/a;

    if-nez v0, :cond_2

    sget-object v0, Lcom/nuance/a/a/a/b/c/b/a/b;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not find the audio sink associated with AID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/a/a/a/a/b/a/b$a;->e(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    invoke-static {p1, v1}, Lcom/nuance/a/a/a/a/d/b;->b([BI)I

    move-result v2

    const/16 v1, 0x8

    iget-object v4, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->o:Lcom/nuance/a/a/a/a/a/a$a;

    invoke-static {v4}, Lcom/nuance/a/a/a/a/d/e;->a(Lcom/nuance/a/a/a/a/a/a$a;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->o:Lcom/nuance/a/a/a/a/a/a$a;

    invoke-static {v4}, Lcom/nuance/a/a/a/a/d/e;->b(Lcom/nuance/a/a/a/a/a/a$a;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_3
    :goto_1
    aget-byte v4, p1, v1

    and-int/lit16 v4, v4, 0x80

    if-lez v4, :cond_4

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, -0x1

    :cond_5
    if-lez v2, :cond_6

    array-length v4, p1

    sub-int/2addr v4, v1

    if-gt v2, v4, :cond_6

    const/4 v4, 0x0

    :try_start_0
    invoke-interface {v0, p1, v1, v2, v4}, Lcom/nuance/a/a/a/b/b/a;->a([BIIZ)V
    :try_end_0
    .catch Lcom/nuance/a/a/a/b/b/g; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->d:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->d:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/a/a/a/b/c/b/a/c;

    if-nez v0, :cond_7

    sget-object v0, Lcom/nuance/a/a/a/b/c/b/a/b;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "parseXModeMsgVapPlay:: Could not find the session listener associated with AID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/a/a/a/a/b/a/b$a;->e(Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/nuance/a/a/a/b/c/b/a/b;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    invoke-virtual {v0}, Lcom/nuance/a/a/a/b/b/g;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/nuance/a/a/a/a/b/a/b$a;->e(Ljava/lang/Object;)V

    goto :goto_2

    :cond_7
    invoke-interface {v0}, Lcom/nuance/a/a/a/b/c/b/a/c;->e()V

    goto/16 :goto_0
.end method

.method private k()V
    .locals 3

    :goto_0
    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->k:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->k:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/a/a/a/a/b/a/c$a;

    iget-object v1, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->k:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->removeElementAt(I)V

    iget-byte v1, v0, Lcom/nuance/a/a/a/a/b/a/c$a;->a:B

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const/4 v1, 0x1

    iget-object v0, v0, Lcom/nuance/a/a/a/a/b/a/c$a;->b:Ljava/lang/Object;

    invoke-direct {p0, v1, v0}, Lcom/nuance/a/a/a/b/c/b/a/b;->a(BLjava/lang/Object;)V

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x2

    iget-object v0, v0, Lcom/nuance/a/a/a/a/b/a/c$a;->b:Ljava/lang/Object;

    invoke-direct {p0, v1, v0}, Lcom/nuance/a/a/a/b/c/b/a/b;->a(BLjava/lang/Object;)V

    goto :goto_0

    :pswitch_3
    const/4 v1, 0x4

    iget-object v0, v0, Lcom/nuance/a/a/a/a/b/a/c$a;->b:Ljava/lang/Object;

    invoke-direct {p0, v1, v0}, Lcom/nuance/a/a/a/b/c/b/a/b;->a(BLjava/lang/Object;)V

    goto :goto_0

    :pswitch_4
    const/4 v1, 0x5

    iget-object v0, v0, Lcom/nuance/a/a/a/a/b/a/c$a;->b:Ljava/lang/Object;

    invoke-direct {p0, v1, v0}, Lcom/nuance/a/a/a/b/c/b/a/b;->a(BLjava/lang/Object;)V

    goto :goto_0

    :pswitch_5
    const/4 v1, 0x6

    iget-object v0, v0, Lcom/nuance/a/a/a/a/b/a/c$a;->b:Ljava/lang/Object;

    invoke-direct {p0, v1, v0}, Lcom/nuance/a/a/a/b/c/b/a/b;->a(BLjava/lang/Object;)V

    goto :goto_0

    :pswitch_6
    const/4 v1, 0x7

    iget-object v0, v0, Lcom/nuance/a/a/a/a/b/a/c$a;->b:Ljava/lang/Object;

    invoke-direct {p0, v1, v0}, Lcom/nuance/a/a/a/b/c/b/a/b;->a(BLjava/lang/Object;)V

    goto :goto_0

    :pswitch_7
    const/16 v1, 0x8

    iget-object v0, v0, Lcom/nuance/a/a/a/a/b/a/c$a;->b:Ljava/lang/Object;

    invoke-direct {p0, v1, v0}, Lcom/nuance/a/a/a/b/c/b/a/b;->a(BLjava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(BILcom/nuance/a/a/a/b/c/b/a/c;)V
    .locals 4

    const/4 v3, 0x4

    sget-object v0, Lcom/nuance/a/a/a/b/c/b/a/b;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "freeResource, TID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", disconnect timeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/a/a/a/a/b/a/b$a;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->h:Ljava/util/Vector;

    invoke-virtual {v0, p3}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, p1}, Ljava/lang/Byte;-><init>(B)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->l:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->k:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v3, v0}, Lcom/nuance/a/a/a/b/c/b/a/b;->a(BLjava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->k:Ljava/util/Vector;

    new-instance v2, Lcom/nuance/a/a/a/a/b/a/c$a;

    invoke-direct {v2, v3, v0}, Lcom/nuance/a/a/a/a/b/a/c$a;-><init>(BLjava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(I)V
    .locals 4

    const/4 v3, 0x5

    sget-object v0, Lcom/nuance/a/a/a/b/c/b/a/b;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    invoke-virtual {v0}, Lcom/nuance/a/a/a/a/b/a/b$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/a/a/a/b/c/b/a/b;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "vapRecordBegin, AID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/a/a/a/a/b/a/b$a;->b(Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    iget-object v1, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->l:[B

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->k:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v3, v0}, Lcom/nuance/a/a/a/b/c/b/a/b;->a(BLjava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->k:Ljava/util/Vector;

    new-instance v2, Lcom/nuance/a/a/a/a/b/a/c$a;

    invoke-direct {v2, v3, v0}, Lcom/nuance/a/a/a/a/b/a/c$a;-><init>(BLjava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(ILcom/nuance/a/a/a/b/b/a;Lcom/nuance/a/a/a/b/c/b/a/c;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->c:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->d:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Lcom/nuance/a/a/a/a/a/a$a;Lcom/nuance/a/a/a/a/a/a$a;)V
    .locals 2

    sget-object v0, Lcom/nuance/a/a/a/b/c/b/a/b;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    invoke-virtual {v0}, Lcom/nuance/a/a/a/a/b/a/b$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/a/a/a/b/c/b/a/b;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    const-string v1, "connect()"

    invoke-virtual {v0, v1}, Lcom/nuance/a/a/a/a/b/a/b$a;->b(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->w:Lcom/nuance/a/a/a/b/a/b/a/a;

    sget-object v0, Lcom/nuance/a/a/a/b/c/b/a/b;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    const-string v1, "Creating new SDK calllog tree"

    invoke-virtual {v0, v1}, Lcom/nuance/a/a/a/a/b/a/b$a;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->w:Lcom/nuance/a/a/a/b/a/b/a/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->w:Lcom/nuance/a/a/a/b/a/b/a/a;

    invoke-virtual {v0}, Lcom/nuance/a/a/a/b/a/b/a/a;->a()Lcom/nuance/a/a/a/b/a/a/b;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "NMSPSession"

    invoke-interface {v0, v1}, Lcom/nuance/a/a/a/b/a/a/b;->a(Ljava/lang/String;)Lcom/nuance/a/a/a/b/a/a/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/a/a/a/b/a/a/d;->a()Lcom/nuance/a/a/a/b/a/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->v:Lcom/nuance/a/a/a/b/a/a/b;

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->e:Lcom/nuance/a/a/a/b/a/a;

    iget-object v1, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->v:Lcom/nuance/a/a/a/b/a/a/b;

    invoke-virtual {v0, v1}, Lcom/nuance/a/a/a/b/a/a;->a(Lcom/nuance/a/a/a/b/a/a/b;)V

    :cond_1
    const-string v0, "Connect"

    invoke-direct {p0, v0}, Lcom/nuance/a/a/a/b/c/b/a/b;->c(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->n:Lcom/nuance/a/a/a/a/a/a$a;

    iput-object p2, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->o:Lcom/nuance/a/a/a/a/a/a$a;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/nuance/a/a/a/b/c/b/a/b;->a(BLjava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/nuance/a/a/a/a/c/b;[B)V
    .locals 10

    const/16 v7, 0x10

    const/16 v8, 0x17

    const/16 v6, 0x11

    const/16 v4, 0x15

    const/4 v0, 0x0

    sget-object v1, Lcom/nuance/a/a/a/b/c/b/a/b;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    invoke-virtual {v1}, Lcom/nuance/a/a/a/a/b/a/b$a;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/nuance/a/a/a/b/c/b/a/b;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "xmodeMsgCallback, protocol: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v3, p1, Lcom/nuance/a/a/a/a/c/b;->a:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-short v3, p1, Lcom/nuance/a/a/a/a/c/b;->c:S

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/a/a/a/a/b/a/b$a;->b(Ljava/lang/Object;)V

    :cond_0
    iget-byte v1, p1, Lcom/nuance/a/a/a/a/c/b;->a:B

    packed-switch v1, :pswitch_data_0

    sget-object v0, Lcom/nuance/a/a/a/b/c/b/a/b;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    const-string v1, "Unknown Xmode protocol"

    invoke-virtual {v0, v1}, Lcom/nuance/a/a/a/a/b/a/b$a;->e(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    :sswitch_0
    return-void

    :pswitch_0
    iget-short v1, p1, Lcom/nuance/a/a/a/a/c/b;->c:S

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->e:Lcom/nuance/a/a/a/b/a/a;

    iget-object v1, v1, Lcom/nuance/a/a/a/b/a/a;->d:[B

    iput-object v1, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->l:[B

    sget-object v1, Lcom/nuance/a/a/a/b/c/b/a/b;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    invoke-virtual {v1}, Lcom/nuance/a/a/a/a/b/a/b$a;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/nuance/a/a/a/b/c/b/a/b;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "connected("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->l:[B

    invoke-static {v3}, Lcom/nuance/a/a/a/b/c/b/a/b;->a([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") called on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->j:Lcom/nuance/a/a/a/b/c/a/c;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/a/a/a/a/b/a/b$a;->b(Ljava/lang/Object;)V

    :cond_2
    const-string v1, "ConnectionEstablished"

    invoke-direct {p0, v1}, Lcom/nuance/a/a/a/b/c/b/a/b;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->j:Lcom/nuance/a/a/a/b/c/a/c;

    iget-object v2, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->l:[B

    invoke-static {v2}, Lcom/nuance/a/a/a/b/c/b/a/b;->a([B)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->s:Lcom/nuance/a/a/a/b/c/a/d;

    invoke-interface {v1, v2}, Lcom/nuance/a/a/a/b/c/a/c;->a(Ljava/lang/String;)V

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->h:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->h:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/a/a/a/b/c/b/a/c;

    iget-object v2, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->l:[B

    invoke-interface {v0, v2}, Lcom/nuance/a/a/a/b/c/b/a/c;->a([B)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/nuance/a/a/a/b/c/b/a/b;->k()V

    goto :goto_0

    :pswitch_1
    iget-short v1, p1, Lcom/nuance/a/a/a/a/c/b;->c:S

    sparse-switch v1, :sswitch_data_1

    sget-object v0, Lcom/nuance/a/a/a/b/c/b/a/b;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    const-string v1, "Unknown BCP command"

    invoke-virtual {v0, v1}, Lcom/nuance/a/a/a/a/b/a/b$a;->e(Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_2
    invoke-static {p2, v6}, Lcom/nuance/a/a/a/a/d/b;->b([BI)I

    move-result v1

    int-to-long v1, v1

    invoke-static {p2, v4}, Lcom/nuance/a/a/a/a/d/b;->a([BI)S

    invoke-static {p2, v8}, Lcom/nuance/a/a/a/a/d/b;->b([BI)I

    move-result v3

    if-lez v3, :cond_4

    array-length v4, p2

    add-int/lit8 v4, v4, -0x1b

    if-gt v3, v4, :cond_4

    new-array v4, v3, [B

    const/16 v5, 0x1b

    invoke-static {p2, v5, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->b:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, v1, v2}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_3
    invoke-static {p2, v6}, Lcom/nuance/a/a/a/a/d/b;->b([BI)I

    move-result v1

    int-to-long v1, v1

    invoke-static {p2, v4}, Lcom/nuance/a/a/a/a/d/b;->a([BI)S

    invoke-static {p2, v8}, Lcom/nuance/a/a/a/a/d/b;->b([BI)I

    move-result v3

    if-lez v3, :cond_5

    array-length v4, p2

    add-int/lit8 v4, v4, -0x1b

    if-gt v3, v4, :cond_5

    new-array v4, v3, [B

    const/16 v5, 0x1b

    invoke-static {p2, v5, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->b:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, v1, v2}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_4
    const/4 v5, 0x0

    aget-byte v1, p2, v7

    invoke-static {p2, v6}, Lcom/nuance/a/a/a/a/d/b;->b([BI)I

    move-result v2

    invoke-static {p2, v4}, Lcom/nuance/a/a/a/a/d/b;->a([BI)S

    move-result v4

    invoke-static {p2, v8}, Lcom/nuance/a/a/a/a/d/b;->b([BI)I

    move-result v3

    if-lez v3, :cond_6

    array-length v6, p2

    add-int/lit8 v6, v6, -0x1b

    if-gt v3, v6, :cond_6

    new-array v5, v3, [B

    const/16 v6, 0x1b

    invoke-static {p2, v6, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6
    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->b:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Long;

    int-to-long v6, v2

    invoke-direct {v3, v6, v7}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/a/a/a/b/c/b/a/c;

    if-eqz v0, :cond_1

    int-to-long v2, v2

    invoke-interface/range {v0 .. v5}, Lcom/nuance/a/a/a/b/c/b/a/c;->b(BJS[B)V

    goto/16 :goto_0

    :sswitch_5
    const/4 v5, 0x0

    aget-byte v1, p2, v7

    invoke-static {p2, v6}, Lcom/nuance/a/a/a/a/d/b;->b([BI)I

    move-result v2

    invoke-static {p2, v4}, Lcom/nuance/a/a/a/a/d/b;->a([BI)S

    move-result v4

    invoke-static {p2, v8}, Lcom/nuance/a/a/a/a/d/b;->b([BI)I

    move-result v3

    if-lez v3, :cond_7

    array-length v6, p2

    add-int/lit8 v6, v6, -0x1b

    if-gt v3, v6, :cond_7

    new-array v5, v3, [B

    const/16 v6, 0x1b

    invoke-static {p2, v6, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->b:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Long;

    int-to-long v6, v2

    invoke-direct {v3, v6, v7}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/a/a/a/b/c/b/a/c;

    if-eqz v0, :cond_1

    int-to-long v2, v2

    invoke-interface/range {v0 .. v5}, Lcom/nuance/a/a/a/b/c/b/a/c;->a(BJS[B)V

    goto/16 :goto_0

    :sswitch_6
    invoke-static {p2, v6}, Lcom/nuance/a/a/a/a/d/b;->b([BI)I

    move-result v0

    int-to-long v0, v0

    invoke-static {p2, v4}, Lcom/nuance/a/a/a/a/d/b;->b([BI)I

    const/16 v2, 0x19

    invoke-static {p2, v2}, Lcom/nuance/a/a/a/a/d/b;->a([BI)S

    iget-object v2, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->b:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, v0, v1}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_7
    invoke-direct {p0, p2}, Lcom/nuance/a/a/a/b/c/b/a/b;->b([B)V

    goto/16 :goto_0

    :sswitch_8
    aget-byte v1, p2, v7

    invoke-static {p2, v6}, Lcom/nuance/a/a/a/a/d/b;->b([BI)I

    move-result v7

    invoke-static {p2, v4}, Lcom/nuance/a/a/a/a/d/b;->a([BI)S

    move-result v4

    invoke-static {p2, v8}, Lcom/nuance/a/a/a/a/d/b;->a([BI)S

    move-result v5

    const/16 v0, 0x19

    invoke-static {p2, v0}, Lcom/nuance/a/a/a/a/d/b;->a([BI)S

    move-result v6

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->b:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Long;

    int-to-long v8, v7

    invoke-direct {v2, v8, v9}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/a/a/a/b/c/b/a/c;

    if-eqz v0, :cond_1

    int-to-long v2, v7

    invoke-interface/range {v0 .. v6}, Lcom/nuance/a/a/a/b/c/b/a/c;->a(BJSSS)V

    const/16 v0, 0xc8

    if-eq v4, v0, :cond_1

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->b:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    int-to-long v2, v7

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_9
    aget-byte v1, p2, v7

    invoke-static {p2, v4}, Lcom/nuance/a/a/a/a/d/b;->b([BI)I

    move-result v2

    if-lez v2, :cond_1

    array-length v3, p2

    add-int/lit8 v3, v3, -0x19

    if-gt v2, v3, :cond_1

    new-array v3, v2, [B

    const/16 v4, 0x19

    invoke-static {p2, v4, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->b:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Long;

    iget-wide v4, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->q:J

    invoke-direct {v2, v4, v5}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/a/a/a/b/c/b/a/c;

    if-eqz v0, :cond_1

    iget-wide v4, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->q:J

    invoke-interface {v0, v1, v3}, Lcom/nuance/a/a/a/b/c/b/a/c;->a(B[B)V

    goto/16 :goto_0

    :pswitch_2
    iget-short v1, p1, Lcom/nuance/a/a/a/a/c/b;->c:S

    sparse-switch v1, :sswitch_data_2

    goto/16 :goto_0

    :sswitch_a
    invoke-direct {p0, p2}, Lcom/nuance/a/a/a/b/c/b/a/b;->c([B)V

    goto/16 :goto_0

    :sswitch_b
    invoke-static {p2, v0}, Lcom/nuance/a/a/a/a/d/b;->b([BI)I

    move-result v1

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->d:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->d:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/a/a/a/b/c/b/a/c;

    if-nez v0, :cond_8

    sget-object v0, Lcom/nuance/a/a/a/b/c/b/a/b;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "parseVapPlayBegin:: Could not find the session listener associated with AID: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/a/a/a/a/b/a/b$a;->e(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_8
    invoke-interface {v0}, Lcom/nuance/a/a/a/b/c/b/a/c;->d()V

    goto/16 :goto_0

    :sswitch_c
    invoke-static {p2, v0}, Lcom/nuance/a/a/a/a/d/b;->b([BI)I

    move-result v1

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->c:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->c:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/a/a/a/b/b/a;

    if-nez v0, :cond_9

    sget-object v0, Lcom/nuance/a/a/a/b/c/b/a/b;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not find the audio sink associated with AID: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/a/a/a/a/b/a/b$a;->e(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_9
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    :try_start_0
    invoke-interface {v0, v2, v3, v4, v5}, Lcom/nuance/a/a/a/b/b/a;->a([BIIZ)V
    :try_end_0
    .catch Lcom/nuance/a/a/a/b/b/g; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->d:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/a/a/a/b/c/b/a/c;

    if-nez v0, :cond_a

    sget-object v0, Lcom/nuance/a/a/a/b/c/b/a/b;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "parseXModeMsgVapPlayEnd:: Could not find the session listener associated with AID: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/a/a/a/a/b/a/b$a;->e(Ljava/lang/Object;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/nuance/a/a/a/b/c/b/a/b;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    invoke-virtual {v0}, Lcom/nuance/a/a/a/b/b/g;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/nuance/a/a/a/a/b/a/b$a;->e(Ljava/lang/Object;)V

    goto :goto_2

    :cond_a
    invoke-interface {v0}, Lcom/nuance/a/a/a/b/c/b/a/c;->f()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x101 -> :sswitch_1
        0x200 -> :sswitch_0
        0x300 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0xa10 -> :sswitch_8
        0xa11 -> :sswitch_6
        0xa12 -> :sswitch_0
        0xa13 -> :sswitch_2
        0xa14 -> :sswitch_3
        0xa16 -> :sswitch_5
        0xa18 -> :sswitch_4
        0xa19 -> :sswitch_9
        0xa28 -> :sswitch_7
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x200 -> :sswitch_a
        0x210 -> :sswitch_b
        0x400 -> :sswitch_c
    .end sparse-switch
.end method

.method final a(Lcom/nuance/a/a/a/b/a/b/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->w:Lcom/nuance/a/a/a/b/a/b/a/a;

    return-void
.end method

.method public final a(Lcom/nuance/a/a/a/b/c/a/d;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->s:Lcom/nuance/a/a/a/b/c/a/d;

    return-void
.end method

.method public final a(Lcom/nuance/a/a/a/b/c/b/a/c;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->h:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->h:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 13

    check-cast p1, Lcom/nuance/a/a/a/a/b/a/c$a;

    iget-byte v0, p1, Lcom/nuance/a/a/a/a/b/a/c$a;->a:B

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/nuance/a/a/a/b/c/b/a/b;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    const-string v1, "Unknown command"

    invoke-virtual {v0, v1}, Lcom/nuance/a/a/a/a/b/a/b$a;->e(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->e:Lcom/nuance/a/a/a/b/a/a;

    iget-object v1, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->n:Lcom/nuance/a/a/a/a/a/a$a;

    invoke-virtual {v1}, Lcom/nuance/a/a/a/a/a/a$a;->a()S

    move-result v1

    iget-object v2, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->o:Lcom/nuance/a/a/a/a/a/a$a;

    invoke-virtual {v2}, Lcom/nuance/a/a/a/a/a/a$a;->a()S

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/a/a/a/b/a/a;->a(SS)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->e:Lcom/nuance/a/a/a/b/a/a;

    invoke-virtual {v0}, Lcom/nuance/a/a/a/b/a/a;->b()V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->r:Z

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->e:Lcom/nuance/a/a/a/b/a/a;

    invoke-virtual {v0}, Lcom/nuance/a/a/a/b/a/a;->b()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->l:[B

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/nuance/a/a/a/a/b/a/c$a;->b:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x5

    new-array v2, v2, [B

    const/4 v3, 0x0

    aput-byte v1, v2, v3

    const/4 v1, 0x1

    invoke-static {v0, v2, v1}, Lcom/nuance/a/a/a/a/d/b;->a(I[BI)V

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->l:[B

    invoke-static {v2, v0}, Lcom/nuance/a/a/a/a/c/a;->a([B[B)[B

    move-result-object v0

    const/4 v1, 0x2

    const/16 v2, 0x22

    const/16 v3, 0xa29

    invoke-static {v1, v2, v3, v0}, Lcom/nuance/a/a/a/a/c/a;->a(BBS[B)[B

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->e:Lcom/nuance/a/a/a/b/a/a;

    const/4 v2, 0x3

    const-string v3, "SEND_BCP_FREE_RESOURCE"

    invoke-virtual {v1, v0, v2, v3}, Lcom/nuance/a/a/a/b/a/a;->a([BILjava/lang/Object;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->l:[B

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/nuance/a/a/a/a/b/a/c$a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->e:Lcom/nuance/a/a/a/b/a/a;

    invoke-virtual {v1, v0}, Lcom/nuance/a/a/a/b/a/a;->a(I)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->l:[B

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/nuance/a/a/a/a/b/a/c$a;->b:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, [B

    const/4 v2, 0x1

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->h:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->h:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/a/a/a/b/c/b/a/c;

    invoke-interface {v0}, Lcom/nuance/a/a/a/b/c/b/a/c;->c()V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->e:Lcom/nuance/a/a/a/b/a/a;

    invoke-virtual {v0, v1, v3}, Lcom/nuance/a/a/a/b/a/a;->a([BI)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->l:[B

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/nuance/a/a/a/a/b/a/c$a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->e:Lcom/nuance/a/a/a/b/a/a;

    invoke-virtual {v1, v0}, Lcom/nuance/a/a/a/b/a/a;->b(I)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->l:[B

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/nuance/a/a/a/a/b/a/c$a;->b:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, [Ljava/lang/Object;

    const/4 v0, 0x0

    aget-object v0, v4, v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v8

    const/4 v0, 0x1

    aget-object v0, v4, v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v4, v0

    move-object v6, v0

    check-cast v6, [B

    const/4 v0, 0x3

    aget-object v0, v4, v0

    move-object v7, v0

    check-cast v7, [B

    const/4 v0, 0x4

    aget-object v0, v4, v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    const/4 v0, 0x5

    aget-object v0, v4, v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 v0, 0x6

    aget-object v0, v4, v0

    check-cast v0, Lcom/nuance/a/a/a/b/c/b/a/c;

    const/4 v9, 0x7

    aget-object v4, v4, v9

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    iget-object v4, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->b:Ljava/util/Hashtable;

    new-instance v10, Ljava/lang/Long;

    invoke-direct {v10, v2, v3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v4, v10, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    array-length v4, v6

    add-int/lit8 v4, v4, 0x5

    const/16 v10, 0xa19

    if-ne v8, v10, :cond_2

    add-int/lit8 v4, v4, 0x4

    :cond_2
    new-array v10, v4, [B

    const/4 v4, 0x0

    aput-byte v1, v10, v4

    const/4 v4, 0x1

    const/16 v11, 0xa19

    if-ne v8, v11, :cond_3

    long-to-int v4, v2

    const/4 v11, 0x1

    invoke-static {v4, v10, v11}, Lcom/nuance/a/a/a/a/d/b;->a(I[BI)V

    const/4 v4, 0x5

    :cond_3
    array-length v11, v6

    invoke-static {v11, v10, v4}, Lcom/nuance/a/a/a/a/d/b;->a(I[BI)V

    add-int/lit8 v4, v4, 0x4

    const/4 v11, 0x0

    array-length v12, v6

    invoke-static {v6, v11, v10, v4, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->l:[B

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->l:[B

    :goto_2
    invoke-static {v10, v4}, Lcom/nuance/a/a/a/a/c/a;->a([B[B)[B

    move-result-object v4

    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v10, 0x0

    array-length v11, v4

    invoke-virtual {v6, v4, v10, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    if-eqz v7, :cond_4

    const/4 v4, 0x0

    array-length v10, v7

    invoke-virtual {v6, v7, v4, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_4
    const/4 v4, 0x2

    const/16 v7, 0x22

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-static {v4, v7, v8, v6}, Lcom/nuance/a/a/a/a/c/a;->a(BBS[B)[B

    move-result-object v4

    iget-object v6, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->e:Lcom/nuance/a/a/a/b/a/a;

    const/4 v7, 0x3

    invoke-virtual {v6, v4, v7, v5}, Lcom/nuance/a/a/a/b/a/a;->a([BILjava/lang/Object;)V

    if-eqz v9, :cond_0

    const/16 v4, 0xa15

    if-ne v8, v4, :cond_6

    if-eqz v0, :cond_0

    const/16 v4, 0xc8

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/nuance/a/a/a/b/c/b/a/c;->a(BJS[B)V

    goto/16 :goto_0

    :cond_5
    sget-object v4, Lcom/nuance/a/a/a/b/c/b/a/b;->m:[B

    goto :goto_2

    :cond_6
    const/16 v1, 0xa30

    if-ne v8, v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->h:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    invoke-interface {v0}, Lcom/nuance/a/a/a/b/c/b/a/c;->b()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final a(SLjava/lang/String;[B[BBJLcom/nuance/a/a/a/b/c/b/a/c;Z)V
    .locals 4

    const/16 v3, 0x8

    sget-object v0, Lcom/nuance/a/a/a/b/c/b/a/b;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    invoke-virtual {v0}, Lcom/nuance/a/a/a/a/b/a/b$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/a/a/a/b/c/b/a/b;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "postBcpMessage, BCP: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", TID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", RID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6, p7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/a/a/a/a/b/a/b$a;->b(Ljava/lang/Object;)V

    :cond_0
    new-array v0, v3, [Ljava/lang/Object;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/Short;

    invoke-direct {v2, p1}, Ljava/lang/Short;-><init>(S)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    const/4 v1, 0x4

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, p5}, Ljava/lang/Byte;-><init>(B)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, p6, p7}, Ljava/lang/Long;-><init>(J)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    aput-object p8, v0, v1

    const/4 v1, 0x7

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, p9}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->l:[B

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->k:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v3, v0}, Lcom/nuance/a/a/a/b/c/b/a/b;->a(BLjava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->k:Ljava/util/Vector;

    new-instance v2, Lcom/nuance/a/a/a/a/b/a/c$a;

    invoke-direct {v2, v3, v0}, Lcom/nuance/a/a/a/a/b/a/c$a;-><init>(BLjava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(SS)V
    .locals 4

    const/16 v3, 0x9

    sget-object v0, Lcom/nuance/a/a/a/b/c/b/a/b;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    invoke-virtual {v0}, Lcom/nuance/a/a/a/a/b/a/b$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/a/a/a/b/c/b/a/b;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "socketClosed, reason: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/a/a/a/a/b/a/b$a;->b(Ljava/lang/Object;)V

    :cond_0
    sget-object v0, Lcom/nuance/a/a/a/b/c/b/a/b;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    invoke-virtual {v0}, Lcom/nuance/a/a/a/a/b/a/b$a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/nuance/a/a/a/b/c/b/a/b;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "socketClosed() sessionListeners.size():"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->h:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/a/a/a/a/b/a/b$a;->b(Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->h:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->h:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/a/a/a/b/c/b/a/c;

    invoke-interface {v0, p1}, Lcom/nuance/a/a/a/b/c/b/a/c;->a(S)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->k:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->k:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    :cond_3
    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->h:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    const/4 v0, 0x4

    if-eq p1, v0, :cond_4

    const/4 v0, 0x5

    if-ne p1, v0, :cond_7

    :cond_4
    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->j:Lcom/nuance/a/a/a/b/c/a/c;

    iget-object v1, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->s:Lcom/nuance/a/a/a/b/c/a/d;

    invoke-interface {v0, v3}, Lcom/nuance/a/a/a/b/c/a/c;->a(S)V

    :cond_5
    :goto_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    iget-boolean v0, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->r:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->i:Lcom/nuance/a/a/a/a/b/a/c;

    invoke-interface {v0}, Lcom/nuance/a/a/a/a/b/a/c;->c()V

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->j:Lcom/nuance/a/a/a/b/c/a/c;

    invoke-interface {v0}, Lcom/nuance/a/a/a/b/c/a/c;->a()V

    :cond_6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->l:[B

    return-void

    :cond_7
    const/4 v0, 0x7

    if-ne p1, v0, :cond_8

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->j:Lcom/nuance/a/a/a/b/c/a/c;

    iget-object v1, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->s:Lcom/nuance/a/a/a/b/c/a/d;

    invoke-interface {v0, p2}, Lcom/nuance/a/a/a/b/c/a/c;->a(S)V

    goto :goto_1

    :cond_8
    const/16 v0, 0x8

    if-ne p1, v0, :cond_9

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->l:[B

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->j:Lcom/nuance/a/a/a/b/c/a/c;

    iget-object v1, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->s:Lcom/nuance/a/a/a/b/c/a/d;

    invoke-interface {v0, v3}, Lcom/nuance/a/a/a/b/c/a/c;->a(S)V

    goto :goto_1

    :cond_9
    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->l:[B

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->j:Lcom/nuance/a/a/a/b/c/a/c;

    iget-object v1, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->s:Lcom/nuance/a/a/a/b/c/a/d;

    invoke-interface {v0, p2}, Lcom/nuance/a/a/a/b/c/a/c;->b(S)V

    goto :goto_1
.end method

.method public final a([BI)V
    .locals 4

    const/4 v3, 0x6

    sget-object v0, Lcom/nuance/a/a/a/b/c/b/a/b;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    invoke-virtual {v0}, Lcom/nuance/a/a/a/a/b/a/b$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/a/a/a/b/c/b/a/b;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "vapRecord, AID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/a/a/a/a/b/a/b$a;->b(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->l:[B

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->k:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v3, v0}, Lcom/nuance/a/a/a/b/c/b/a/b;->a(BLjava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->k:Ljava/util/Vector;

    new-instance v2, Lcom/nuance/a/a/a/a/b/a/c$a;

    invoke-direct {v2, v3, v0}, Lcom/nuance/a/a/a/a/b/a/c$a;-><init>(BLjava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final b(I)V
    .locals 4

    const/4 v3, 0x7

    sget-object v0, Lcom/nuance/a/a/a/b/c/b/a/b;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    invoke-virtual {v0}, Lcom/nuance/a/a/a/a/b/a/b$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/a/a/a/b/c/b/a/b;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "vapRecordEnd, AID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/a/a/a/a/b/a/b$a;->b(Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    iget-object v1, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->l:[B

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->k:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v3, v0}, Lcom/nuance/a/a/a/b/c/b/a/b;->a(BLjava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->k:Ljava/util/Vector;

    new-instance v2, Lcom/nuance/a/a/a/a/b/a/c$a;

    invoke-direct {v2, v3, v0}, Lcom/nuance/a/a/a/a/b/a/c$a;-><init>(BLjava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final b(Lcom/nuance/a/a/a/b/c/b/a/c;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->h:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized c()I
    .locals 3

    monitor-enter p0

    :try_start_0
    sget v0, Lcom/nuance/a/a/a/b/c/b/a/b;->p:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/nuance/a/a/a/b/c/b/a/b;->p:I

    sget v1, Lcom/nuance/a/a/a/b/c/b/a/b;->p:I

    const/high16 v2, -0x8000

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    sput v1, Lcom/nuance/a/a/a/b/c/b/a/b;->p:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->q:J

    return-void
.end method

.method public final e()V
    .locals 2

    sget-object v0, Lcom/nuance/a/a/a/b/c/b/a/b;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    invoke-virtual {v0}, Lcom/nuance/a/a/a/a/b/a/b$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/a/a/a/b/c/b/a/b;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    const-string v1, "disconnectAndShutdown"

    invoke-virtual {v0, v1}, Lcom/nuance/a/a/a/a/b/a/b$a;->b(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/nuance/a/a/a/b/c/b/a/b;->a(BLjava/lang/Object;)V

    return-void
.end method

.method public final f()[B
    .locals 1

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->l:[B

    return-object v0
.end method

.method public final g()J
    .locals 8

    const-wide/16 v6, 0x1

    iget-wide v0, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->t:J

    add-long v2, v0, v6

    iput-wide v2, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->t:J

    iget-wide v2, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->t:J

    const-wide/high16 v4, -0x8000

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iput-wide v6, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->t:J

    :cond_0
    return-wide v0
.end method

.method public final h()B
    .locals 3

    iget-byte v0, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->u:B

    add-int/lit8 v1, v0, 0x1

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->u:B

    iget-byte v1, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->u:B

    const/16 v2, -0x80

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    iput-byte v1, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->u:B

    :cond_0
    return v0
.end method

.method public final i()Lcom/nuance/a/a/a/a/a/a$a;
    .locals 1

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->n:Lcom/nuance/a/a/a/a/a/a$a;

    return-object v0
.end method

.method public final j()Lcom/nuance/a/a/a/b/a/a/b;
    .locals 1

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/b;->v:Lcom/nuance/a/a/a/b/a/a/b;

    return-object v0
.end method
