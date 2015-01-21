.class public Lcom/zte/privacy/aD;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zte/privacy/ah;


# instance fields
.field protected gX:Lcom/zte/privacy/z;

.field mCount:I

.field private qE:Ljava/util/List;

.field private qF:Ljava/util/List;

.field qG:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/zte/privacy/z;

    invoke-direct {v0}, Lcom/zte/privacy/z;-><init>()V

    iput-object v0, p0, Lcom/zte/privacy/aD;->gX:Lcom/zte/privacy/z;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/privacy/aD;->qE:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/privacy/aD;->qF:Ljava/util/List;

    iput v4, p0, Lcom/zte/privacy/aD;->qG:I

    iput v4, p0, Lcom/zte/privacy/aD;->mCount:I

    iget-object v0, p0, Lcom/zte/privacy/aD;->gX:Lcom/zte/privacy/z;

    const-string v1, "package %s;"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/zte/privacy/z;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/zte/privacy/aD;->gX:Lcom/zte/privacy/z;

    const-string v1, "import com.googlecode.dex2jar.*;"

    invoke-virtual {v0, v1}, Lcom/zte/privacy/z;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/privacy/aD;->gX:Lcom/zte/privacy/z;

    const-string v1, "import com.googlecode.dex2jar.visitors.*;"

    invoke-virtual {v0, v1}, Lcom/zte/privacy/z;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/privacy/aD;->gX:Lcom/zte/privacy/z;

    const-string v1, "import static com.googlecode.dex2jar.OdexOpcodes.*;"

    invoke-virtual {v0, v1}, Lcom/zte/privacy/z;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/privacy/aD;->gX:Lcom/zte/privacy/z;

    const-string v1, "public class %s {"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p2, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/zte/privacy/z;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/zte/privacy/aD;->gX:Lcom/zte/privacy/z;

    invoke-virtual {v0}, Lcom/zte/privacy/z;->push()V

    iget-object v0, p0, Lcom/zte/privacy/aD;->gX:Lcom/zte/privacy/z;

    const-string v1, "public static void accept(DexFileVisitor v) {"

    invoke-virtual {v0, v1}, Lcom/zte/privacy/z;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/privacy/aD;->gX:Lcom/zte/privacy/z;

    invoke-virtual {v0}, Lcom/zte/privacy/z;->push()V

    iget-object v0, p0, Lcom/zte/privacy/aD;->gX:Lcom/zte/privacy/z;

    const-string v1, "DexClassVisitor cv=v.visit(%s,%s,%s,%s);"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p3}, Lcom/zte/privacy/g;->m(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p4}, Lcom/zte/privacy/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    invoke-static {p5}, Lcom/zte/privacy/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p6}, Lcom/zte/privacy/g;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/zte/privacy/z;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/zte/privacy/aD;->gX:Lcom/zte/privacy/z;

    const-string v1, "if(cv!=null) {"

    invoke-virtual {v0, v1}, Lcom/zte/privacy/z;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/privacy/aD;->gX:Lcom/zte/privacy/z;

    invoke-virtual {v0}, Lcom/zte/privacy/z;->push()V

    iget-object v0, p0, Lcom/zte/privacy/aD;->gX:Lcom/zte/privacy/z;

    const-string v1, "accept(cv);"

    invoke-virtual {v0, v1}, Lcom/zte/privacy/z;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/privacy/aD;->gX:Lcom/zte/privacy/z;

    invoke-virtual {v0}, Lcom/zte/privacy/z;->Q()V

    iget-object v0, p0, Lcom/zte/privacy/aD;->gX:Lcom/zte/privacy/z;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Lcom/zte/privacy/z;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/privacy/aD;->gX:Lcom/zte/privacy/z;

    invoke-virtual {v0}, Lcom/zte/privacy/z;->Q()V

    iget-object v0, p0, Lcom/zte/privacy/aD;->gX:Lcom/zte/privacy/z;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Lcom/zte/privacy/z;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/privacy/aD;->gX:Lcom/zte/privacy/z;

    const-string v1, "public static void accept(DexClassVisitor cv) {"

    invoke-virtual {v0, v1}, Lcom/zte/privacy/z;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/privacy/aD;->gX:Lcom/zte/privacy/z;

    invoke-virtual {v0}, Lcom/zte/privacy/z;->push()V

    return-void
.end method


# virtual methods
.method public a(ILcom/zte/privacy/ac;Ljava/lang/Object;)Lcom/zte/privacy/aA;
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "f%03d_%s"

    new-array v1, v6, [Ljava/lang/Object;

    iget v2, p0, Lcom/zte/privacy/aD;->qG:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/zte/privacy/aD;->qG:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p2}, Lcom/zte/privacy/ac;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/privacy/aD;->gX:Lcom/zte/privacy/z;

    const-string v2, "%s(cv);"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/zte/privacy/z;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lcom/zte/privacy/z;

    invoke-direct {v1}, Lcom/zte/privacy/z;-><init>()V

    iget-object v2, p0, Lcom/zte/privacy/aD;->qF:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "public static void %s(DexClassVisitor cv) {"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/zte/privacy/z;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/zte/privacy/z;->push()V

    const-string v0, "DexFieldVisitor fv=cv.visitField(%s, %s, %s);"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/zte/privacy/g;->o(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p2}, Lcom/zte/privacy/g;->a(Lcom/zte/privacy/ac;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p3}, Lcom/zte/privacy/g;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1, v0, v2}, Lcom/zte/privacy/z;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "if(fv != null) {"

    invoke-virtual {v1, v0}, Lcom/zte/privacy/z;->e(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/zte/privacy/z;->push()V

    new-instance v0, Lcom/zte/privacy/ax;

    invoke-direct {v0, p0, v1}, Lcom/zte/privacy/ax;-><init>(Lcom/zte/privacy/aD;Lcom/zte/privacy/z;)V

    return-object v0
.end method

.method public a(ILcom/zte/privacy/az;)Lcom/zte/privacy/y;
    .locals 8

    const/16 v7, 0x5f

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "m%03d_%s"

    new-array v1, v6, [Ljava/lang/Object;

    iget v2, p0, Lcom/zte/privacy/aD;->mCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/zte/privacy/aD;->mCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p2}, Lcom/zte/privacy/az;->getName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3c

    invoke-virtual {v2, v3, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3e

    invoke-virtual {v2, v3, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/privacy/aD;->gX:Lcom/zte/privacy/z;

    const-string v2, "%s(cv);"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/zte/privacy/z;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lcom/zte/privacy/z;

    invoke-direct {v1}, Lcom/zte/privacy/z;-><init>()V

    iget-object v2, p0, Lcom/zte/privacy/aD;->qE:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "public static void %s(DexClassVisitor cv) {"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/zte/privacy/z;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/zte/privacy/z;->push()V

    const-string v0, "DexMethodVisitor mv=cv.visitMethod(%s, %s);"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/zte/privacy/g;->n(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p2}, Lcom/zte/privacy/g;->a(Lcom/zte/privacy/az;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v0, v2}, Lcom/zte/privacy/z;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "if(mv != null) {"

    invoke-virtual {v1, v0}, Lcom/zte/privacy/z;->e(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/zte/privacy/z;->push()V

    new-instance v0, Lcom/zte/privacy/aw;

    invoke-direct {v0, p0, v1}, Lcom/zte/privacy/aw;-><init>(Lcom/zte/privacy/aD;Lcom/zte/privacy/z;)V

    return-object v0
.end method

.method public a()V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/zte/privacy/aD;->gX:Lcom/zte/privacy/z;

    const-string v1, "cv.visitEnd();"

    invoke-virtual {v0, v1}, Lcom/zte/privacy/z;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/privacy/aD;->gX:Lcom/zte/privacy/z;

    invoke-virtual {v0}, Lcom/zte/privacy/z;->Q()V

    iget-object v0, p0, Lcom/zte/privacy/aD;->gX:Lcom/zte/privacy/z;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Lcom/zte/privacy/z;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/privacy/aD;->qF:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/privacy/z;

    iget-object v2, p0, Lcom/zte/privacy/aD;->gX:Lcom/zte/privacy/z;

    iget-object v2, v2, Lcom/zte/privacy/z;->gg:Ljava/util/List;

    iget-object v3, v0, Lcom/zte/privacy/z;->gg:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, v0, Lcom/zte/privacy/z;->gh:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, p0, Lcom/zte/privacy/aD;->gX:Lcom/zte/privacy/z;

    iget-object v3, v3, Lcom/zte/privacy/z;->gh:Ljava/util/List;

    iget-object v4, p0, Lcom/zte/privacy/aD;->gX:Lcom/zte/privacy/z;

    iget v4, v4, Lcom/zte/privacy/z;->p:I

    add-int/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iput-object v5, p0, Lcom/zte/privacy/aD;->qF:Ljava/util/List;

    iget-object v0, p0, Lcom/zte/privacy/aD;->qE:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/privacy/z;

    iget-object v2, p0, Lcom/zte/privacy/aD;->gX:Lcom/zte/privacy/z;

    iget-object v2, v2, Lcom/zte/privacy/z;->gg:Ljava/util/List;

    iget-object v3, v0, Lcom/zte/privacy/z;->gg:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, v0, Lcom/zte/privacy/z;->gh:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, p0, Lcom/zte/privacy/aD;->gX:Lcom/zte/privacy/z;

    iget-object v3, v3, Lcom/zte/privacy/z;->gh:Ljava/util/List;

    iget-object v4, p0, Lcom/zte/privacy/aD;->gX:Lcom/zte/privacy/z;

    iget v4, v4, Lcom/zte/privacy/z;->p:I

    add-int/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iput-object v5, p0, Lcom/zte/privacy/aD;->qE:Ljava/util/List;

    iget-object v0, p0, Lcom/zte/privacy/aD;->gX:Lcom/zte/privacy/z;

    invoke-virtual {v0}, Lcom/zte/privacy/z;->Q()V

    iget-object v0, p0, Lcom/zte/privacy/aD;->gX:Lcom/zte/privacy/z;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Lcom/zte/privacy/z;->e(Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;Z)Lcom/zte/privacy/m;
    .locals 3

    new-instance v0, Lcom/zte/privacy/I;

    const-string v1, "cv"

    iget-object v2, p0, Lcom/zte/privacy/aD;->gX:Lcom/zte/privacy/z;

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/zte/privacy/I;-><init>(Ljava/lang/String;Lcom/zte/privacy/z;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public z(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/zte/privacy/aD;->gX:Lcom/zte/privacy/z;

    const-string v1, "cv.visitSource(\"%s\");"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/zte/privacy/x;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/zte/privacy/z;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
