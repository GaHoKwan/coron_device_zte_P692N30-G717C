.class public Lcom/zte/privacy/R;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zte/privacy/ay;


# instance fields
.field jA:Lcom/zte/privacy/z;

.field jz:Ljava/io/File;

.field p:I

.field y:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "dex2jar.gen"

    iput-object v0, p0, Lcom/zte/privacy/R;->y:Ljava/lang/String;

    new-instance v0, Lcom/zte/privacy/z;

    invoke-direct {v0}, Lcom/zte/privacy/z;-><init>()V

    iput-object v0, p0, Lcom/zte/privacy/R;->jA:Lcom/zte/privacy/z;

    iput v4, p0, Lcom/zte/privacy/R;->p:I

    if-nez p1, :cond_1

    new-instance v0, Ljava/io/File;

    const-string v1, "."

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zte/privacy/R;->jz:Ljava/io/File;

    :goto_0
    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/zte/privacy/R;->y:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/zte/privacy/R;->jA:Lcom/zte/privacy/z;

    const-string v1, "package %s;"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/zte/privacy/R;->y:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/zte/privacy/z;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/zte/privacy/R;->jA:Lcom/zte/privacy/z;

    const-string v1, "import com.googlecode.dex2jar.*;"

    invoke-virtual {v0, v1}, Lcom/zte/privacy/z;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/privacy/R;->jA:Lcom/zte/privacy/z;

    const-string v1, "import com.googlecode.dex2jar.visitors.*;"

    invoke-virtual {v0, v1}, Lcom/zte/privacy/z;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/privacy/R;->jA:Lcom/zte/privacy/z;

    const-string v1, "import static org.apache.commons.codec.binary.Hex.*;"

    invoke-virtual {v0, v1}, Lcom/zte/privacy/z;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/privacy/R;->jA:Lcom/zte/privacy/z;

    const-string v1, "public class Main {"

    invoke-virtual {v0, v1}, Lcom/zte/privacy/z;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/privacy/R;->jA:Lcom/zte/privacy/z;

    invoke-virtual {v0}, Lcom/zte/privacy/z;->push()V

    iget-object v0, p0, Lcom/zte/privacy/R;->jA:Lcom/zte/privacy/z;

    const-string v1, "public static void accept(DexFileVisitor v) {"

    invoke-virtual {v0, v1}, Lcom/zte/privacy/z;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/privacy/R;->jA:Lcom/zte/privacy/z;

    invoke-virtual {v0}, Lcom/zte/privacy/z;->push()V

    return-void

    :cond_1
    iput-object p1, p0, Lcom/zte/privacy/R;->jz:Ljava/io/File;

    goto :goto_0
.end method

.method static a(Lcom/zte/privacy/z;Ljava/io/File;)V
    .locals 7

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/zte/privacy/z;->gg:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/zte/privacy/z;->gg:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v0, p0, Lcom/zte/privacy/z;->gh:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move v0, v2

    :goto_1
    if-ge v0, v5, :cond_0

    const-string v6, "    "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/zte/privacy/z;->gg:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p1, v0, v4}, Lcom/zte/ZTESecurity/j;->a(Ljava/io/File;Ljava/lang/String;Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public static a([BLjava/io/File;)V
    .locals 3

    new-instance v0, Lcom/zte/privacy/B;

    invoke-direct {v0, p0}, Lcom/zte/privacy/B;-><init>([B)V

    new-instance v1, Lcom/zte/privacy/R;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/zte/privacy/R;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/zte/privacy/B;->a(Lcom/zte/privacy/a;)V

    return-void
.end method

.method public static b(Ljava/io/File;Ljava/io/File;)V
    .locals 1

    invoke-static {p0}, Lcom/zte/privacy/B;->c(Ljava/io/File;)[B

    move-result-object v0

    invoke-static {v0, p1}, Lcom/zte/privacy/R;->a([BLjava/io/File;)V

    return-void
.end method

.method public static d(Ljava/io/File;)V
    .locals 4

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_asmifier"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/zte/privacy/R;->b(Ljava/io/File;Ljava/io/File;)V

    return-void
.end method

.method public static varargs main([Ljava/lang/String;)V
    .locals 6

    array-length v0, p0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "ASMifier 1.dex 2.dex ... n.dex"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    array-length v1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p0, v0

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "asmifier "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/zte/privacy/R;->d(Ljava/io/File;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/zte/privacy/ah;
    .locals 9

    const/16 v7, 0x5f

    const/4 v6, 0x0

    const/4 v5, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "C%04d_"

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/zte/privacy/R;->p:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/zte/privacy/R;->p:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p2, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v1, v2, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x24

    invoke-virtual {v1, v2, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/zte/privacy/R;->jA:Lcom/zte/privacy/z;

    const-string v1, "%s.accept(v);"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/zte/privacy/z;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/zte/privacy/ap;

    iget-object v2, p0, Lcom/zte/privacy/R;->y:Ljava/lang/String;

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, v3

    invoke-direct/range {v0 .. v8}, Lcom/zte/privacy/ap;-><init>(Lcom/zte/privacy/R;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public a()V
    .locals 7

    iget-object v0, p0, Lcom/zte/privacy/R;->jA:Lcom/zte/privacy/z;

    invoke-virtual {v0}, Lcom/zte/privacy/z;->Q()V

    iget-object v0, p0, Lcom/zte/privacy/R;->jA:Lcom/zte/privacy/z;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Lcom/zte/privacy/z;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/privacy/R;->jA:Lcom/zte/privacy/z;

    invoke-virtual {v0}, Lcom/zte/privacy/z;->Q()V

    iget-object v0, p0, Lcom/zte/privacy/R;->jA:Lcom/zte/privacy/z;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Lcom/zte/privacy/z;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/privacy/R;->jA:Lcom/zte/privacy/z;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/zte/privacy/R;->jz:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/zte/privacy/R;->y:Ljava/lang/String;

    const/16 v5, 0x2e

    const/16 v6, 0x2f

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/Main.java"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/zte/privacy/R;->a(Lcom/zte/privacy/z;Ljava/io/File;)V

    return-void
.end method

.method public b(Ljava/lang/String;[B)V
    .locals 6

    iget-object v0, p0, Lcom/zte/privacy/R;->jA:Lcom/zte/privacy/z;

    const-string v1, "((OdexFileVisitor)v).visitDepedence(%s,decodeHex(%s.toCharArray()));"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/zte/privacy/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/String;

    invoke-static {p2}, Lcom/zte/ZTESecurity/g;->encodeHex([B)[C

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([C)V

    invoke-static {v4}, Lcom/zte/privacy/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/zte/privacy/z;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
