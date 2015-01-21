.class public Lcom/zte/zdm/b/f/e/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zte/zdm/b/f/h/b;
.implements Lcom/zte/zdm/b/f/h/e;


# static fields
.field static final b:I = 0xc8

.field private static final c:I

.field private static e:Lcom/zte/zdm/b/f/e/b;


# instance fields
.field protected a:Lcom/zte/zdm/mos/c;

.field private d:Z

.field private f:Lcom/zte/zdm/b/f/h/c;

.field private g:Lcom/zte/zdm/b/f/h/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zte/zdm/b/f/e/b;

    invoke-direct {v0}, Lcom/zte/zdm/b/f/e/b;-><init>()V

    sput-object v0, Lcom/zte/zdm/b/f/e/b;->e:Lcom/zte/zdm/b/f/e/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/zte/zdm/b/a;->b()Lcom/zte/zdm/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/b/a;->i()Lcom/zte/zdm/mos/c;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/b/f/e/b;->a:Lcom/zte/zdm/mos/c;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/zdm/b/f/e/b;->d:Z

    new-instance v0, Lcom/zte/zdm/b/f/b;

    invoke-direct {v0}, Lcom/zte/zdm/b/f/b;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/b/f/e/b;->f:Lcom/zte/zdm/b/f/h/c;

    new-instance v0, Lcom/zte/zdm/b/f/e/a;

    iget-object v1, p0, Lcom/zte/zdm/b/f/e/b;->f:Lcom/zte/zdm/b/f/h/c;

    invoke-direct {v0, v1}, Lcom/zte/zdm/b/f/e/a;-><init>(Lcom/zte/zdm/b/f/h/c;)V

    iput-object v0, p0, Lcom/zte/zdm/b/f/e/b;->g:Lcom/zte/zdm/b/f/h/d;

    return-void
.end method

.method constructor <init>(Lcom/zte/zdm/b/f/h/c;Lcom/zte/zdm/b/f/h/d;Lcom/zte/zdm/mos/c;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/zte/zdm/b/a;->b()Lcom/zte/zdm/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/b/a;->i()Lcom/zte/zdm/mos/c;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/b/f/e/b;->a:Lcom/zte/zdm/mos/c;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/zdm/b/f/e/b;->d:Z

    new-instance v0, Lcom/zte/zdm/b/f/b;

    invoke-direct {v0}, Lcom/zte/zdm/b/f/b;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/b/f/e/b;->f:Lcom/zte/zdm/b/f/h/c;

    new-instance v0, Lcom/zte/zdm/b/f/e/a;

    iget-object v1, p0, Lcom/zte/zdm/b/f/e/b;->f:Lcom/zte/zdm/b/f/h/c;

    invoke-direct {v0, v1}, Lcom/zte/zdm/b/f/e/a;-><init>(Lcom/zte/zdm/b/f/h/c;)V

    iput-object v0, p0, Lcom/zte/zdm/b/f/e/b;->g:Lcom/zte/zdm/b/f/h/d;

    iput-object p1, p0, Lcom/zte/zdm/b/f/e/b;->f:Lcom/zte/zdm/b/f/h/c;

    iput-object p2, p0, Lcom/zte/zdm/b/f/e/b;->g:Lcom/zte/zdm/b/f/h/d;

    iput-object p3, p0, Lcom/zte/zdm/b/f/e/b;->a:Lcom/zte/zdm/mos/c;

    return-void
.end method

.method public static a()Lcom/zte/zdm/b/f/e/b;
    .locals 1

    sget-object v0, Lcom/zte/zdm/b/f/e/b;->e:Lcom/zte/zdm/b/f/e/b;

    return-object v0
.end method

.method private a(Ljava/lang/String;Lcom/zte/zdm/d/c/c/a;)Lcom/zte/zdm/d/c/ai;
    .locals 3

    new-instance v0, Lcom/zte/zdm/d/c/ai;

    invoke-direct {v0}, Lcom/zte/zdm/d/c/ai;-><init>()V

    new-instance v1, Lcom/zte/zdm/d/c/bb;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/zte/zdm/d/c/bb;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/zte/zdm/d/c/ai;->a(Lcom/zte/zdm/d/c/bb;)V

    new-instance v1, Lcom/zte/zdm/d/c/ap;

    invoke-direct {v1}, Lcom/zte/zdm/d/c/ap;-><init>()V

    const-string v2, "xml"

    invoke-virtual {v1, v2}, Lcom/zte/zdm/d/c/ap;->a(Ljava/lang/String;)V

    const-string v2, "application/vnd.syncml.dmtnds+xml"

    invoke-virtual {v1, v2}, Lcom/zte/zdm/d/c/ap;->b(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/zte/zdm/d/c/ai;->a(Lcom/zte/zdm/d/c/ap;)V

    new-instance v1, Lcom/zte/zdm/d/c/n;

    invoke-direct {v1}, Lcom/zte/zdm/d/c/n;-><init>()V

    invoke-virtual {v1, p2}, Lcom/zte/zdm/d/c/n;->a(Lcom/zte/zdm/d/c/c/a;)V

    invoke-virtual {v0, v1}, Lcom/zte/zdm/d/c/ai;->a(Lcom/zte/zdm/d/c/n;)V

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/zte/zdm/b/f/c/a;)V
    .locals 4

    const/16 v0, 0xc8

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/zte/zdm/b/f/e/b;->g:Lcom/zte/zdm/b/f/h/d;

    invoke-interface {v1, p1}, Lcom/zte/zdm/b/f/h/d;->a(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/zte/zdm/b/f/e/b;->f:Lcom/zte/zdm/b/f/h/c;

    invoke-interface {v1, p2}, Lcom/zte/zdm/b/f/h/c;->c(Ljava/lang/String;)Lcom/zte/zdm/d/c/c/a;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/zte/zdm/b/f/e/b;->a(Ljava/lang/String;Lcom/zte/zdm/d/c/c/a;)Lcom/zte/zdm/d/c/ai;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/zte/zdm/b/f/h/a; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-interface {p3, p2, v0, v2}, Lcom/zte/zdm/b/f/c/a;->a(Ljava/lang/String;ILjava/util/List;)I

    return-void

    :catch_0
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/zte/zdm/b/f/h/a;->b()I

    move-result v0

    const-string v3, "performGetPropteryValue:TreeException"

    invoke-static {p0, v3, v1}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/zte/zdm/b/f/c/a;Z)V
    .locals 4

    const/16 v0, 0xc8

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/zte/zdm/b/f/e/b;->g:Lcom/zte/zdm/b/f/h/d;

    invoke-interface {v1, p1}, Lcom/zte/zdm/b/f/h/d;->a(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/zte/zdm/b/f/e/b;->f:Lcom/zte/zdm/b/f/h/c;

    new-instance v3, Lcom/zte/zdm/b/f/e/c;

    invoke-direct {v3, p0, v2, p4}, Lcom/zte/zdm/b/f/e/c;-><init>(Lcom/zte/zdm/b/f/e/b;Ljava/util/List;Z)V

    invoke-interface {v1, p2, v3}, Lcom/zte/zdm/b/f/h/c;->a(Ljava/lang/String;Lcom/zte/zdm/b/f/c/b;)V
    :try_end_0
    .catch Lcom/zte/zdm/b/f/h/a; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-interface {p3, p2, v0, v2}, Lcom/zte/zdm/b/f/c/a;->a(Ljava/lang/String;ILjava/util/List;)I

    return-void

    :catch_0
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/zte/zdm/b/f/h/a;->b()I

    move-result v0

    const-string v3, "performGetPropteryValue:TreeException"

    invoke-static {p0, v3, v1}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Lcom/zte/zdm/b/f/d;Lcom/zte/zdm/d/c/ai;)Z
    .locals 8

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/zte/zdm/b/f/d;->c()Lcom/zte/zdm/b/f/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zte/zdm/b/f/d;->b()Ljava/util/List;

    move-result-object v5

    invoke-virtual {p2}, Lcom/zte/zdm/d/c/ai;->e()Lcom/zte/zdm/d/c/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/n;->d()Ljava/lang/String;

    move-result-object v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "find node name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    move v2, v3

    :goto_0
    invoke-virtual {v4}, Lcom/zte/zdm/b/f/d;->d()I

    move-result v0

    if-ge v2, v0, :cond_0

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/zte/zdm/b/f/d;

    invoke-virtual {v1}, Lcom/zte/zdm/b/f/d;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/b/f/d/f;

    invoke-virtual {v0}, Lcom/zte/zdm/b/f/d/f;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    :cond_0
    return v3

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "child name:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/zte/zdm/b/f/d;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/b/f/d/f;

    invoke-virtual {v0}, Lcom/zte/zdm/b/f/d/f;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method private a(Lcom/zte/zdm/d/c/ai;)Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-nez p1, :cond_0

    const-string v0, "Item element is missing."

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/String;)V

    move v0, v1

    :cond_0
    invoke-virtual {p1}, Lcom/zte/zdm/d/c/ai;->b()Lcom/zte/zdm/d/c/bb;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v0, "Item->Source element is not allowed. DM Representation protocol (6.6.1) The Target MUST be used to add a item."

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/String;)V

    move v0, v1

    :cond_1
    invoke-virtual {p1}, Lcom/zte/zdm/d/c/ai;->a()Lcom/zte/zdm/d/c/bm;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v0, "Item->Target->LocURI element is missing. DM Representation protocol (6.6.1) : Target specified in the Item MUST be full device URI."

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Lcom/zte/zdm/b/f/c/a;)V
    .locals 5

    const/16 v0, 0xc8

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/zte/zdm/b/f/e/b;->g:Lcom/zte/zdm/b/f/h/d;

    invoke-interface {v1, p1}, Lcom/zte/zdm/b/f/h/d;->a(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/zte/zdm/b/f/d/h;->a(Ljava/lang/String;)I

    move-result v1

    :try_start_0
    iget-object v3, p0, Lcom/zte/zdm/b/f/e/b;->f:Lcom/zte/zdm/b/f/h/c;

    invoke-interface {v3, p2}, Lcom/zte/zdm/b/f/h/c;->b(Ljava/lang/String;)Lcom/zte/zdm/b/f/d/f;

    move-result-object v3

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    iget-object v4, p0, Lcom/zte/zdm/b/f/e/b;->f:Lcom/zte/zdm/b/f/h/c;

    invoke-interface {v4, p2}, Lcom/zte/zdm/b/f/h/c;->d(Ljava/lang/String;)Lcom/zte/zdm/b/f/d/b;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/zte/zdm/b/f/d/f;->a(Lcom/zte/zdm/b/f/d/b;)V

    :cond_0
    invoke-virtual {v3, v1}, Lcom/zte/zdm/b/f/d/f;->d(I)Lcom/zte/zdm/d/c/ai;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/zte/zdm/b/f/h/a; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-interface {p3, p2, v0, v2}, Lcom/zte/zdm/b/f/c/a;->a(Ljava/lang/String;ILjava/util/List;)I

    return-void

    :catch_0
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/zte/zdm/b/f/h/a;->b()I

    move-result v0

    const-string v3, "performGetPropteryValue:TreeException"

    invoke-static {p0, v3, v1}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private b(Lcom/zte/zdm/d/c/ai;)Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-nez p1, :cond_0

    const-string v0, "Item element is missing."

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/String;)V

    move v0, v1

    :cond_0
    invoke-virtual {p1}, Lcom/zte/zdm/d/c/ai;->e()Lcom/zte/zdm/d/c/n;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v0, "Item->Data element is not allowed. SyncML DM protocol (8.3) : The Data element inside Item is used to include the data itself if the operation is not a deletion."

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/String;)V

    move v0, v1

    :cond_1
    invoke-virtual {p1}, Lcom/zte/zdm/d/c/ai;->b()Lcom/zte/zdm/d/c/bb;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v0, "Item->Source element is not allowed. DM Representation protocol (6.6.5) The Target MUST be used to add a item."

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/String;)V

    move v0, v1

    :cond_2
    invoke-virtual {p1}, Lcom/zte/zdm/d/c/ai;->a()Lcom/zte/zdm/d/c/bm;

    move-result-object v2

    if-nez v2, :cond_3

    const-string v0, "Item->Target->LocURI element is missing. DM Representation protocol (6.6.5) : Target specified in the Item MUST be full device URI."

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_3
    move v1, v0

    goto :goto_0
.end method

.method private c(Lcom/zte/zdm/d/c/ai;)Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-nez p1, :cond_0

    const-string v0, "Item element is missing."

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/String;)V

    move v0, v1

    :cond_0
    invoke-virtual {p1}, Lcom/zte/zdm/d/c/ai;->a()Lcom/zte/zdm/d/c/bm;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v0, "Item->Target->LocURI element is missing. DM Representation protocol (6.6.6) : Target specified in the Item MUST be full device URI."

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method private d(Lcom/zte/zdm/d/c/ai;)Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-nez p1, :cond_0

    const-string v0, "Item element is missing."

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/String;)V

    move v0, v1

    :cond_0
    invoke-virtual {p1}, Lcom/zte/zdm/d/c/ai;->b()Lcom/zte/zdm/d/c/bb;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/zte/zdm/d/c/ai;->b()Lcom/zte/zdm/d/c/bb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/zdm/d/c/bb;->a()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_1
    const-string v0, "Item->Source->LocURI element is missing. DM Representation protocol (6.6.4) :The Source specified within the Item element type MUST be a full device URI."

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/String;)V

    move v0, v1

    :cond_2
    invoke-virtual {p1}, Lcom/zte/zdm/d/c/ai;->a()Lcom/zte/zdm/d/c/bm;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/zte/zdm/d/c/ai;->a()Lcom/zte/zdm/d/c/bm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/zdm/d/c/bm;->a()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    :cond_3
    const-string v0, "Item->Target->LocURI element is missing. DM Representation protocol (6.6.4) :The Target specified within the Item element type MUST be a full device URI."

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/String;)V

    move v0, v1

    :cond_4
    return v0
.end method

.method private e(Lcom/zte/zdm/d/c/ai;)Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-nez p1, :cond_0

    const-string v0, "Item element is missing."

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/String;)V

    move v0, v1

    :cond_0
    invoke-virtual {p1}, Lcom/zte/zdm/d/c/ai;->e()Lcom/zte/zdm/d/c/n;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v0, "Item->Data element is not allowed. SyncML DM protocol (8.3) : The Data element inside Item is used to include the data itself if the operation is not a deletion."

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/String;)V

    move v0, v1

    :cond_1
    invoke-virtual {p1}, Lcom/zte/zdm/d/c/ai;->b()Lcom/zte/zdm/d/c/bb;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v0, "Item->Source element is not allowed."

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/String;)V

    move v0, v1

    :cond_2
    invoke-virtual {p1}, Lcom/zte/zdm/d/c/ai;->a()Lcom/zte/zdm/d/c/bm;

    move-result-object v2

    if-nez v2, :cond_3

    const-string v0, "Item->Target->LocURI element is missing. DM Representation protocol (6.6.7) : Target specified in the Item MUST be full device URI."

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_3
    move v1, v0

    goto :goto_0
.end method

.method private f(Ljava/lang/String;Lcom/zte/zdm/d/c/ai;Lcom/zte/zdm/b/f/c/a;)V
    .locals 6

    const/4 v5, 0x4

    const/16 v1, 0xc8

    invoke-virtual {p2}, Lcom/zte/zdm/d/c/ai;->a()Lcom/zte/zdm/d/c/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/bm;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zte/zdm/b/f/d/h;->a(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/zte/zdm/b/f/e/b;->f:Lcom/zte/zdm/b/f/h/c;

    invoke-interface {v0, v2}, Lcom/zte/zdm/b/f/h/c;->f(Ljava/lang/String;)Lcom/zte/zdm/b/f/d;

    move-result-object v4

    if-ne v3, v5, :cond_1

    invoke-virtual {v4}, Lcom/zte/zdm/b/f/d;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/b/f/d/f;

    invoke-virtual {v0}, Lcom/zte/zdm/b/f/d/f;->h()I

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/zte/zdm/b/f/h/a;

    const/16 v1, 0x195

    const-string v3, "comand not allowed"

    invoke-direct {v0, v2, v1, v3}, Lcom/zte/zdm/b/f/h/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/zte/zdm/b/f/h/a; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/zte/zdm/b/f/h/a;->b()I

    move-result v0

    const-string v2, "performGetPropteryValue:TreeException"

    invoke-static {p0, v2, v1}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    invoke-virtual {p2}, Lcom/zte/zdm/d/c/ai;->a()Lcom/zte/zdm/d/c/bm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/d/c/bm;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p3, v1, v0, v2}, Lcom/zte/zdm/b/f/c/a;->a(Ljava/lang/String;ILjava/util/List;)I

    goto :goto_0

    :cond_1
    if-ne v3, v5, :cond_2

    :try_start_1
    invoke-direct {p0, v4, p2}, Lcom/zte/zdm/b/f/e/b;->a(Lcom/zte/zdm/b/f/d;Lcom/zte/zdm/d/c/ai;)Z

    move-result v0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_2

    new-instance v0, Lcom/zte/zdm/b/f/h/a;

    const/16 v1, 0x1a2

    const-string v3, "node already exists"

    invoke-direct {v0, v2, v1, v3}, Lcom/zte/zdm/b/f/h/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {v4}, Lcom/zte/zdm/b/f/d;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/b/f/d/f;

    invoke-virtual {v0, v3, p2}, Lcom/zte/zdm/b/f/d/f;->a(ILcom/zte/zdm/d/c/ai;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lcom/zte/zdm/b/f/h/a;

    const/16 v1, 0x1a9

    const-string v3, "permission denied"

    invoke-direct {v0, v2, v1, v3}, Lcom/zte/zdm/b/f/h/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lcom/zte/zdm/b/f/h/a; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private f(Lcom/zte/zdm/d/c/ai;)Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-nez p1, :cond_0

    const-string v0, "Item element is missing."

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/String;)V

    move v0, v1

    :cond_0
    invoke-virtual {p1}, Lcom/zte/zdm/d/c/ai;->e()Lcom/zte/zdm/d/c/n;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v0, "Item->Data element is missing. SyncML DM protocol (8.3) : The Data element inside Item is used to include the data itself if the operation is not a deletion."

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/String;)V

    move v0, v1

    :cond_1
    invoke-virtual {p1}, Lcom/zte/zdm/d/c/ai;->b()Lcom/zte/zdm/d/c/bb;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v0, "Item->Source element is not allowed."

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/String;)V

    move v0, v1

    :cond_2
    invoke-virtual {p1}, Lcom/zte/zdm/d/c/ai;->a()Lcom/zte/zdm/d/c/bm;

    move-result-object v2

    if-nez v2, :cond_3

    const-string v0, "Item->Target->LocURI element is missing. DM Representation protocol (6.6.11) : Target specified in the Item MUST be full device URI."

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_3
    move v1, v0

    goto :goto_0
.end method

.method private g(Ljava/lang/String;Lcom/zte/zdm/d/c/ai;Lcom/zte/zdm/b/f/c/a;)V
    .locals 5

    const/16 v2, 0xc8

    const/4 v1, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/zte/zdm/b/f/e/b;->g:Lcom/zte/zdm/b/f/h/d;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Lcom/zte/zdm/b/f/h/d;->a(I)V

    iget-object v0, p0, Lcom/zte/zdm/b/f/e/b;->g:Lcom/zte/zdm/b/f/h/d;

    invoke-interface {v0, p1}, Lcom/zte/zdm/b/f/h/d;->a(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/zte/zdm/b/f/e/b;->f:Lcom/zte/zdm/b/f/h/c;

    invoke-virtual {p2}, Lcom/zte/zdm/d/c/ai;->h()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/zte/zdm/b/f/h/c;->b(Ljava/lang/String;)Lcom/zte/zdm/b/f/d/f;
    :try_end_0
    .catch Lcom/zte/zdm/b/f/h/a; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move v1, v2

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zte/zdm/b/f/d/f;->b()Lcom/zte/zdm/d/c/ai;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p2}, Lcom/zte/zdm/d/c/ai;->h()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0, v1, v3}, Lcom/zte/zdm/b/f/c/a;->a(Ljava/lang/String;ILjava/util/List;)I

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/zte/zdm/b/f/h/a;->b()I

    move-result v2

    const-string v4, "performGetValue:TreeException"

    invoke-static {p0, v4, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    move v1, v2

    goto :goto_0
.end method

.method private h(Ljava/lang/String;Lcom/zte/zdm/d/c/ai;Lcom/zte/zdm/b/f/c/a;)V
    .locals 4

    invoke-virtual {p2}, Lcom/zte/zdm/d/c/ai;->a()Lcom/zte/zdm/d/c/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/bm;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/b/f/d/h;->a(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "required property is :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;)V

    sparse-switch v1, :sswitch_data_0

    invoke-direct {p0, p1, v0, p3}, Lcom/zte/zdm/b/f/e/b;->b(Ljava/lang/String;Ljava/lang/String;Lcom/zte/zdm/b/f/c/a;)V

    goto :goto_0

    :sswitch_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p3, v1}, Lcom/zte/zdm/b/f/e/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/zte/zdm/b/f/c/a;Z)V

    goto :goto_0

    :sswitch_1
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, p3, v1}, Lcom/zte/zdm/b/f/e/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/zte/zdm/b/f/c/a;Z)V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0, p1, v0, p3}, Lcom/zte/zdm/b/f/e/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/zte/zdm/b/f/c/a;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_0
        0x200 -> :sswitch_1
        0x400 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/zte/zdm/d/c/ai;Lcom/zte/zdm/b/f/c/a;Ljava/lang/String;)I
    .locals 5

    const/4 v2, 0x0

    const/16 v0, 0xca

    invoke-static {p3}, Lcom/zte/zdm/g/a;->a(Ljava/lang/Object;)V

    invoke-direct {p0, p2}, Lcom/zte/zdm/b/f/e/b;->c(Lcom/zte/zdm/d/c/ai;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Lcom/zte/zdm/d/c/ai;->h()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1f4

    invoke-interface {p3, v0, v1, v2}, Lcom/zte/zdm/b/f/c/a;->a(Ljava/lang/String;ILjava/util/List;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/zte/zdm/b/f/e/b;->g:Lcom/zte/zdm/b/f/h/d;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Lcom/zte/zdm/b/f/h/d;->a(I)V

    iget-object v1, p0, Lcom/zte/zdm/b/f/e/b;->g:Lcom/zte/zdm/b/f/h/d;

    invoke-interface {v1, p1}, Lcom/zte/zdm/b/f/h/d;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/zdm/b/f/e/b;->a:Lcom/zte/zdm/mos/c;

    invoke-virtual {p2}, Lcom/zte/zdm/d/c/ai;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, p4}, Lcom/zte/zdm/mos/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    :try_start_0
    const-string v0, "the node url is not mo"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "item->target->locURI is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/zte/zdm/d/c/ai;->a()Lcom/zte/zdm/d/c/bm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/d/c/bm;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", item data is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/zte/zdm/d/c/ai;->e()Lcom/zte/zdm/d/c/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xc8

    invoke-virtual {p2}, Lcom/zte/zdm/d/c/ai;->e()Lcom/zte/zdm/d/c/n;

    move-result-object v1

    iget-object v3, p0, Lcom/zte/zdm/b/f/e/b;->f:Lcom/zte/zdm/b/f/h/c;

    invoke-virtual {p2}, Lcom/zte/zdm/d/c/ai;->h()Ljava/lang/String;

    move-result-object v4

    if-nez v1, :cond_2

    move-object v1, v2

    :goto_1
    invoke-interface {v3, v4, v1, p4}, Lcom/zte/zdm/b/f/h/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/zte/zdm/b/f/h/a; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_2
    invoke-virtual {p2}, Lcom/zte/zdm/d/c/ai;->h()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1, v0, v2}, Lcom/zte/zdm/b/f/c/a;->a(Ljava/lang/String;ILjava/util/List;)I

    move-result v0

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {v1}, Lcom/zte/zdm/d/c/n;->d()Ljava/lang/String;
    :try_end_1
    .catch Lcom/zte/zdm/b/f/h/a; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/zte/zdm/b/f/h/a;->b()I

    move-result v0

    const-string v3, "performExec:TreeException"

    invoke-static {p0, v3, v1}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Lcom/zte/zdm/g/a;->a(Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/zte/zdm/b/f/e/b;->f:Lcom/zte/zdm/b/f/h/c;

    invoke-interface {v0, p1}, Lcom/zte/zdm/b/f/h/c;->f(Ljava/lang/String;)Lcom/zte/zdm/b/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/b/f/d;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/b/f/d/f;

    invoke-virtual {v0}, Lcom/zte/zdm/b/f/d/f;->e()Ljava/lang/String;
    :try_end_0
    .catch Lcom/zte/zdm/b/f/h/a; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "getValuefromTree:TreeException"

    invoke-static {p0, v1, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lcom/zte/zdm/d/c/ai;Lcom/zte/zdm/b/f/c/a;)V
    .locals 5

    const/4 v4, 0x0

    const/16 v0, 0xc8

    invoke-static {p3}, Lcom/zte/zdm/g/a;->a(Ljava/lang/Object;)V

    invoke-direct {p0, p2}, Lcom/zte/zdm/b/f/e/b;->a(Lcom/zte/zdm/d/c/ai;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Lcom/zte/zdm/d/c/ai;->a()Lcom/zte/zdm/d/c/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/bm;->a()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1f4

    invoke-interface {p3, v0, v1, v4}, Lcom/zte/zdm/b/f/c/a;->a(Ljava/lang/String;ILjava/util/List;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/zte/zdm/b/f/e/b;->g:Lcom/zte/zdm/b/f/h/d;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/zte/zdm/b/f/h/d;->a(I)V

    iget-object v1, p0, Lcom/zte/zdm/b/f/e/b;->g:Lcom/zte/zdm/b/f/h/d;

    invoke-interface {v1, p1}, Lcom/zte/zdm/b/f/h/d;->a(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p2}, Lcom/zte/zdm/d/c/ai;->c()Lcom/zte/zdm/d/c/ap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/d/c/ap;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "xml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/zte/zdm/b/f/e/b;->f:Lcom/zte/zdm/b/f/h/c;

    invoke-virtual {p2}, Lcom/zte/zdm/d/c/ai;->a()Lcom/zte/zdm/d/c/bm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/zdm/d/c/bm;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/zte/zdm/d/c/ai;->e()Lcom/zte/zdm/d/c/n;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zte/zdm/d/c/n;->c()Lcom/zte/zdm/d/c/c/a;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/zte/zdm/b/f/h/c;->a(Ljava/lang/String;Lcom/zte/zdm/d/c/c/a;)V
    :try_end_0
    .catch Lcom/zte/zdm/b/f/d/g; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/zte/zdm/b/f/h/a; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    invoke-virtual {p2}, Lcom/zte/zdm/d/c/ai;->a()Lcom/zte/zdm/d/c/bm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/d/c/bm;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1, v0, v4}, Lcom/zte/zdm/b/f/c/a;->a(Ljava/lang/String;ILjava/util/List;)I

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-static {p2}, Lcom/zte/zdm/b/f/d/f;->a(Lcom/zte/zdm/d/c/ai;)Lcom/zte/zdm/b/f/d/f;

    move-result-object v1

    new-instance v2, Lcom/zte/zdm/b/f/d/a;

    const/16 v3, 0x3f

    invoke-direct {v2, v3}, Lcom/zte/zdm/b/f/d/a;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/zte/zdm/b/f/d/f;->a(Lcom/zte/zdm/b/f/d/a;)V

    iget-object v2, p0, Lcom/zte/zdm/b/f/e/b;->f:Lcom/zte/zdm/b/f/h/c;

    invoke-virtual {v1}, Lcom/zte/zdm/b/f/d/f;->g()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/zte/zdm/b/f/h/c;->a(Ljava/lang/String;Lcom/zte/zdm/b/f/d/f;)V
    :try_end_1
    .catch Lcom/zte/zdm/b/f/d/g; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/zte/zdm/b/f/h/a; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "performAdd:NodeException:"

    invoke-static {p0, v2, v1}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/zte/zdm/b/f/h/a;->b()I

    move-result v0

    const-string v2, "performAdd:TreeException"

    invoke-static {p0, v2, v1}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    invoke-static {p1}, Lcom/zte/zdm/g/a;->a(Ljava/lang/Object;)V

    :try_start_0
    iget-object v1, p0, Lcom/zte/zdm/b/f/e/b;->f:Lcom/zte/zdm/b/f/h/c;

    invoke-interface {v1, p1}, Lcom/zte/zdm/b/f/h/c;->f(Ljava/lang/String;)Lcom/zte/zdm/b/f/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zte/zdm/b/f/d;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/zdm/b/f/d/f;

    invoke-virtual {v1}, Lcom/zte/zdm/b/f/d/f;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/zte/zdm/b/f/d/e;

    move-object v2, v0

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/zte/zdm/b/f/d/e;->a([B)V

    :cond_0
    invoke-virtual {v3, v1}, Lcom/zte/zdm/b/f/d;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/zte/zdm/b/f/h/a; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/zte/zdm/b/f/d/g; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v2, "replaceValuetoTree:TreeException"

    invoke-static {p0, v2, v1}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "replaceValuetoTree:NodeException"

    invoke-static {p0, v2, v1}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Lcom/zte/zdm/d/c/ai;Lcom/zte/zdm/b/f/c/a;)V
    .locals 4

    const/4 v3, 0x0

    const/16 v0, 0xc8

    invoke-static {p3}, Lcom/zte/zdm/g/a;->a(Ljava/lang/Object;)V

    invoke-direct {p0, p2}, Lcom/zte/zdm/b/f/e/b;->b(Lcom/zte/zdm/d/c/ai;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Lcom/zte/zdm/d/c/ai;->a()Lcom/zte/zdm/d/c/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/bm;->a()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1f4

    invoke-interface {p3, v0, v1, v3}, Lcom/zte/zdm/b/f/c/a;->a(Ljava/lang/String;ILjava/util/List;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/zte/zdm/b/f/e/b;->g:Lcom/zte/zdm/b/f/h/d;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/zte/zdm/b/f/h/d;->a(I)V

    iget-object v1, p0, Lcom/zte/zdm/b/f/e/b;->g:Lcom/zte/zdm/b/f/h/d;

    invoke-interface {v1, p1}, Lcom/zte/zdm/b/f/h/d;->a(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/zte/zdm/b/f/e/b;->f:Lcom/zte/zdm/b/f/h/c;

    invoke-virtual {p2}, Lcom/zte/zdm/d/c/ai;->a()Lcom/zte/zdm/d/c/bm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/zdm/d/c/bm;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/zte/zdm/b/f/h/c;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/zte/zdm/b/f/h/a; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {p2}, Lcom/zte/zdm/d/c/ai;->a()Lcom/zte/zdm/d/c/bm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/d/c/bm;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1, v0, v3}, Lcom/zte/zdm/b/f/c/a;->a(Ljava/lang/String;ILjava/util/List;)I

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/zte/zdm/b/f/h/a;->b()I

    move-result v0

    const-string v2, "performDelete:TreeException"

    invoke-static {p0, v2, v1}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zte/zdm/b/f/e/b;->d:Z

    return v0
.end method

.method public c()V
    .locals 2

    const-string v0, "zcc_tree treePerformer_open"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/zte/zdm/b/f/e/b;->f:Lcom/zte/zdm/b/f/h/c;

    invoke-interface {v0}, Lcom/zte/zdm/b/f/h/c;->a()V

    iget-object v0, p0, Lcom/zte/zdm/b/f/e/b;->f:Lcom/zte/zdm/b/f/h/c;

    iget-object v1, p0, Lcom/zte/zdm/b/f/e/b;->g:Lcom/zte/zdm/b/f/h/d;

    invoke-interface {v0, v1}, Lcom/zte/zdm/b/f/h/c;->a(Lcom/zte/zdm/b/f/h/d;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/zdm/b/f/e/b;->d:Z
    :try_end_0
    .catch Lcom/zte/zdm/b/f/h/a; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "can not load the tree from file"

    invoke-static {p0, v1, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public c(Ljava/lang/String;Lcom/zte/zdm/d/c/ai;Lcom/zte/zdm/b/f/c/a;)V
    .locals 3

    invoke-static {p3}, Lcom/zte/zdm/g/a;->a(Ljava/lang/Object;)V

    invoke-direct {p0, p2}, Lcom/zte/zdm/b/f/e/b;->e(Lcom/zte/zdm/d/c/ai;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/zte/zdm/d/c/ai;->a()Lcom/zte/zdm/d/c/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/bm;->a()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1f4

    const/4 v2, 0x0

    invoke-interface {p3, v0, v1, v2}, Lcom/zte/zdm/b/f/c/a;->a(Ljava/lang/String;ILjava/util/List;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/zte/zdm/d/c/ai;->a()Lcom/zte/zdm/d/c/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/bm;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/b/f/d/h;->a(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1, p2, p3}, Lcom/zte/zdm/b/f/e/b;->g(Ljava/lang/String;Lcom/zte/zdm/d/c/ai;Lcom/zte/zdm/b/f/c/a;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/zte/zdm/b/f/e/b;->g:Lcom/zte/zdm/b/f/h/d;

    invoke-interface {v1, v0}, Lcom/zte/zdm/b/f/h/d;->a(I)V

    invoke-direct {p0, p1, p2, p3}, Lcom/zte/zdm/b/f/e/b;->h(Ljava/lang/String;Lcom/zte/zdm/d/c/ai;Lcom/zte/zdm/b/f/c/a;)V

    goto :goto_0
.end method

.method public d()V
    .locals 2

    const-string v0, "zcc_tree treeperformer_closing"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/b/f/e/b;->f:Lcom/zte/zdm/b/f/h/c;

    invoke-static {v0}, Lcom/zte/zdm/g/a;->a(Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/zte/zdm/b/f/e/b;->f:Lcom/zte/zdm/b/f/h/c;

    invoke-interface {v0}, Lcom/zte/zdm/b/f/h/c;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/zdm/b/f/e/b;->d:Z
    :try_end_0
    .catch Lcom/zte/zdm/b/f/h/a; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "can not save the tree to file"

    invoke-static {p0, v1, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public d(Ljava/lang/String;Lcom/zte/zdm/d/c/ai;Lcom/zte/zdm/b/f/c/a;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/16 v0, 0xc8

    invoke-static {p3}, Lcom/zte/zdm/g/a;->a(Ljava/lang/Object;)V

    invoke-direct {p0, p2}, Lcom/zte/zdm/b/f/e/b;->d(Lcom/zte/zdm/d/c/ai;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Lcom/zte/zdm/d/c/ai;->a()Lcom/zte/zdm/d/c/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/bm;->a()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1f4

    invoke-interface {p3, v0, v1, v5}, Lcom/zte/zdm/b/f/c/a;->a(Ljava/lang/String;ILjava/util/List;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/zte/zdm/b/f/e/b;->g:Lcom/zte/zdm/b/f/h/d;

    invoke-interface {v1, v2}, Lcom/zte/zdm/b/f/h/d;->a(I)V

    iget-object v1, p0, Lcom/zte/zdm/b/f/e/b;->g:Lcom/zte/zdm/b/f/h/d;

    invoke-interface {v1, p1}, Lcom/zte/zdm/b/f/h/d;->a(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/zte/zdm/b/f/e/b;->f:Lcom/zte/zdm/b/f/h/c;

    invoke-virtual {p2}, Lcom/zte/zdm/d/c/ai;->b()Lcom/zte/zdm/d/c/bb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/zdm/d/c/bb;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/zte/zdm/d/c/ai;->a()Lcom/zte/zdm/d/c/bm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zte/zdm/d/c/bm;->a()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/zte/zdm/b/f/h/c;->a(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Lcom/zte/zdm/b/f/h/a; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/zte/zdm/b/f/d/g; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    invoke-virtual {p2}, Lcom/zte/zdm/d/c/ai;->a()Lcom/zte/zdm/d/c/bm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/d/c/bm;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1, v0, v5}, Lcom/zte/zdm/b/f/c/a;->a(Ljava/lang/String;ILjava/util/List;)I

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/zte/zdm/b/f/h/a;->b()I

    move-result v0

    const-string v2, "performCopy:TreeException"

    invoke-static {p0, v2, v1}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v2, "performCopy:NodeException"

    invoke-static {p0, v2, v1}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public e()V
    .locals 2

    const-string v0, "zcc_trcommiting"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "zcc_tree rootelement = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/zte/zdm/b/f/e/b;->f:Lcom/zte/zdm/b/f/h/c;

    check-cast v0, Lcom/zte/zdm/b/f/b;

    invoke-virtual {v0}, Lcom/zte/zdm/b/f/b;->f()Lcom/zte/zdm/b/f/d;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/zte/zdm/b/f/e/b;->f:Lcom/zte/zdm/b/f/h/c;

    invoke-interface {v0}, Lcom/zte/zdm/b/f/h/c;->c()V
    :try_end_0
    .catch Lcom/zte/zdm/b/f/h/a; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "can not commit the tree to file"

    invoke-static {p0, v1, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public e(Ljava/lang/String;Lcom/zte/zdm/d/c/ai;Lcom/zte/zdm/b/f/c/a;)V
    .locals 5

    const/4 v4, 0x0

    const/16 v0, 0xc8

    invoke-static {p3}, Lcom/zte/zdm/g/a;->a(Ljava/lang/Object;)V

    invoke-direct {p0, p2}, Lcom/zte/zdm/b/f/e/b;->f(Lcom/zte/zdm/d/c/ai;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Lcom/zte/zdm/d/c/ai;->a()Lcom/zte/zdm/d/c/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/bm;->a()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1f4

    invoke-interface {p3, v0, v1, v4}, Lcom/zte/zdm/b/f/c/a;->a(Ljava/lang/String;ILjava/util/List;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/zte/zdm/b/f/e/b;->g:Lcom/zte/zdm/b/f/h/d;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/zte/zdm/b/f/h/d;->a(I)V

    iget-object v1, p0, Lcom/zte/zdm/b/f/e/b;->g:Lcom/zte/zdm/b/f/h/d;

    invoke-interface {v1, p1}, Lcom/zte/zdm/b/f/h/d;->a(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/zte/zdm/d/c/ai;->a()Lcom/zte/zdm/d/c/bm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/d/c/bm;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/zdm/b/f/d/h;->a(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    :try_start_0
    invoke-static {p2}, Lcom/zte/zdm/b/f/d/f;->a(Lcom/zte/zdm/d/c/ai;)Lcom/zte/zdm/b/f/d/f;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zdm/b/f/e/b;->f:Lcom/zte/zdm/b/f/h/c;

    invoke-virtual {v1}, Lcom/zte/zdm/b/f/d/f;->g()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/zte/zdm/b/f/h/c;->b(Ljava/lang/String;Lcom/zte/zdm/b/f/d/f;)V
    :try_end_0
    .catch Lcom/zte/zdm/b/f/d/g; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/zte/zdm/b/f/h/a; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    invoke-virtual {p2}, Lcom/zte/zdm/d/c/ai;->a()Lcom/zte/zdm/d/c/bm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/d/c/bm;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1, v0, v4}, Lcom/zte/zdm/b/f/c/a;->a(Ljava/lang/String;ILjava/util/List;)I

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "performReplace:NodeException"

    invoke-static {p0, v2, v1}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/zte/zdm/b/f/h/a;->b()I

    move-result v0

    const-string v2, "performReplace:TreeException"

    invoke-static {p0, v2, v1}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/zte/zdm/b/f/e/b;->g:Lcom/zte/zdm/b/f/h/d;

    invoke-interface {v0, v1}, Lcom/zte/zdm/b/f/h/d;->a(I)V

    invoke-direct {p0, p1, p2, p3}, Lcom/zte/zdm/b/f/e/b;->f(Ljava/lang/String;Lcom/zte/zdm/d/c/ai;Lcom/zte/zdm/b/f/c/a;)V

    goto :goto_0
.end method

.method public f()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/zte/zdm/b/f/e/b;->f:Lcom/zte/zdm/b/f/h/c;

    invoke-interface {v0}, Lcom/zte/zdm/b/f/h/c;->d()V
    :try_end_0
    .catch Lcom/zte/zdm/b/f/h/a; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "can not rollback the tree to file"

    invoke-static {p0, v1, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, Lcom/zte/zdm/b/f/e/b;->f:Lcom/zte/zdm/b/f/h/c;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/zte/zdm/b/f/h/c;->a(I)V

    return-void
.end method

.method public h()V
    .locals 2

    iget-object v0, p0, Lcom/zte/zdm/b/f/e/b;->f:Lcom/zte/zdm/b/f/h/c;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/zte/zdm/b/f/h/c;->a(I)V

    return-void
.end method

.method public i()Lcom/zte/zdm/b/f/h/b;
    .locals 1

    sget-object v0, Lcom/zte/zdm/b/f/e/b;->e:Lcom/zte/zdm/b/f/e/b;

    return-object v0
.end method
