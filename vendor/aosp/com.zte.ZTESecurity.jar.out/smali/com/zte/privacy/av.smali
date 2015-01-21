.class public Lcom/zte/privacy/av;
.super Lcom/zte/privacy/ao;


# instance fields
.field private pn:I

.field private po:Ljava/io/PrintWriter;

.field private pp:Lcom/zte/privacy/Y;

.field pq:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Lcom/zte/privacy/Y;)V
    .locals 1

    invoke-direct {p0}, Lcom/zte/privacy/ao;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/privacy/av;->pn:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/zte/privacy/av;->pq:Ljava/lang/StringBuilder;

    iput-object p1, p0, Lcom/zte/privacy/av;->pp:Lcom/zte/privacy/Y;

    return-void
.end method

.method static synthetic a(Lcom/zte/privacy/av;)Ljava/io/PrintWriter;
    .locals 1

    iget-object v0, p0, Lcom/zte/privacy/av;->po:Ljava/io/PrintWriter;

    return-object v0
.end method

.method static synthetic a(Lcom/zte/privacy/av;Ljava/io/PrintWriter;)Ljava/io/PrintWriter;
    .locals 0

    iput-object p1, p0, Lcom/zte/privacy/av;->po:Ljava/io/PrintWriter;

    return-object p1
.end method

.method public static a(Lcom/zte/privacy/B;Ljava/io/File;)V
    .locals 3

    new-instance v0, Ljava/util/zip/ZipOutputStream;

    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v1, Lcom/zte/privacy/av;

    new-instance v2, Lcom/zte/privacy/E;

    invoke-direct {v2, v0}, Lcom/zte/privacy/E;-><init>(Ljava/util/zip/ZipOutputStream;)V

    invoke-direct {v1, v2}, Lcom/zte/privacy/av;-><init>(Lcom/zte/privacy/Y;)V

    invoke-virtual {p0, v1}, Lcom/zte/privacy/B;->a(Lcom/zte/privacy/a;)V

    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->finish()V

    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->close()V

    return-void
.end method

.method public static a([BLjava/io/File;)V
    .locals 1

    new-instance v0, Lcom/zte/privacy/B;

    invoke-direct {v0, p0}, Lcom/zte/privacy/B;-><init>([B)V

    invoke-static {v0, p1}, Lcom/zte/privacy/av;->a(Lcom/zte/privacy/B;Ljava/io/File;)V

    return-void
.end method

.method public static ab(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    const-string v1, "public "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_1

    const-string v1, "protected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_2

    const-string v1, "private "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_3

    const-string v1, "static "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    and-int/lit16 v1, p0, 0x400

    if-eqz v1, :cond_4

    and-int/lit16 v1, p0, 0x200

    if-nez v1, :cond_4

    const-string v1, "abstract "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    and-int/lit16 v1, p0, 0x2000

    if-eqz v1, :cond_5

    const-string v1, "annotation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    and-int/lit8 v1, p0, 0x40

    if-eqz v1, :cond_6

    const-string v1, "bridge "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    and-int/lit16 v1, p0, 0x4000

    if-eqz v1, :cond_7

    const-string v1, "enum "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_8

    const-string v1, "final "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    and-int/lit16 v1, p0, 0x200

    if-eqz v1, :cond_9

    const-string v1, "interace "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    and-int/lit16 v1, p0, 0x100

    if-eqz v1, :cond_a

    const-string v1, "native "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    and-int/lit16 v1, p0, 0x800

    if-eqz v1, :cond_b

    const-string v1, "strict "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_c

    const-string v1, "synchronized "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    and-int/lit16 v1, p0, 0x80

    if-eqz v1, :cond_d

    const-string v1, "transient "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    and-int/lit16 v1, p0, 0x80

    if-eqz v1, :cond_e

    const-string v1, "varargs "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    and-int/lit8 v1, p0, 0x40

    if-eqz v1, :cond_f

    const-string v1, "volatile "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/io/File;Ljava/io/File;)V
    .locals 1

    invoke-static {p0}, Lcom/zte/privacy/B;->c(Ljava/io/File;)[B

    move-result-object v0

    invoke-static {v0, p1}, Lcom/zte/privacy/av;->a([BLjava/io/File;)V

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

    const-string v3, "_dump.jar"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/zte/privacy/av;->b(Ljava/io/File;Ljava/io/File;)V

    return-void
.end method

.method public static varargs main([Ljava/lang/String;)V
    .locals 3

    array-length v0, p0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Dump in.dexORapk out.dump.jar"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const/4 v2, 0x1

    aget-object v2, p0, v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/zte/privacy/av;->b(Ljava/io/File;Ljava/io/File;)V

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-object p0

    :sswitch_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :sswitch_1
    const-string p0, "byte"

    goto :goto_0

    :sswitch_2
    const-string p0, "short"

    goto :goto_0

    :sswitch_3
    const-string p0, "char"

    goto :goto_0

    :sswitch_4
    const-string p0, "int"

    goto :goto_0

    :sswitch_5
    const-string p0, "long"

    goto :goto_0

    :sswitch_6
    const-string p0, "float"

    goto :goto_0

    :sswitch_7
    const-string p0, "double"

    goto :goto_0

    :sswitch_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/privacy/av;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_1
        0x43 -> :sswitch_3
        0x44 -> :sswitch_7
        0x46 -> :sswitch_6
        0x49 -> :sswitch_4
        0x4a -> :sswitch_5
        0x4c -> :sswitch_0
        0x53 -> :sswitch_2
        0x5b -> :sswitch_8
    .end sparse-switch
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/zte/privacy/ah;
    .locals 8

    const/4 v0, 0x1

    const/4 v7, 0x0

    invoke-static {p2}, Lcom/zte/privacy/av;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/privacy/av;->pp:Lcom/zte/privacy/Y;

    invoke-interface {v2, v1}, Lcom/zte/privacy/Y;->r(Ljava/lang/String;)Ljava/io/PrintWriter;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/privacy/av;->po:Ljava/io/PrintWriter;

    iget-object v2, p0, Lcom/zte/privacy/av;->po:Ljava/io/PrintWriter;

    const-string v3, "//class:%04d  access:0x%04x\n"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/zte/privacy/av;->pn:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/zte/privacy/av;->pn:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    iget-object v2, p0, Lcom/zte/privacy/av;->po:Ljava/io/PrintWriter;

    invoke-static {p1}, Lcom/zte/privacy/av;->ab(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    and-int/lit16 v2, p1, 0x200

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/zte/privacy/av;->po:Ljava/io/PrintWriter;

    const-string v3, "class "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/zte/privacy/av;->po:Ljava/io/PrintWriter;

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz p3, :cond_1

    const-string v1, "Ljava/lang/Object;"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/zte/privacy/av;->po:Ljava/io/PrintWriter;

    const-string v2, " extends "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/privacy/av;->po:Ljava/io/PrintWriter;

    invoke-static {p3}, Lcom/zte/privacy/av;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1
    if-eqz p4, :cond_2

    array-length v1, p4

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/zte/privacy/av;->po:Ljava/io/PrintWriter;

    const-string v2, " implements "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/privacy/av;->po:Ljava/io/PrintWriter;

    aget-object v2, p4, v7

    invoke-static {v2}, Lcom/zte/privacy/av;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_0
    array-length v1, p4

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/zte/privacy/av;->po:Ljava/io/PrintWriter;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(C)V

    iget-object v1, p0, Lcom/zte/privacy/av;->po:Ljava/io/PrintWriter;

    aget-object v2, p4, v0

    invoke-static {v2}, Lcom/zte/privacy/av;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/zte/privacy/av;->po:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    new-instance v0, Lcom/zte/privacy/F;

    invoke-direct {v0, p0}, Lcom/zte/privacy/F;-><init>(Lcom/zte/privacy/av;)V

    return-object v0
.end method

.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/zte/privacy/av;->pq:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/zte/privacy/av;->pp:Lcom/zte/privacy/Y;

    const-string v1, "depedence"

    invoke-interface {v0, v1}, Lcom/zte/privacy/Y;->r(Ljava/lang/String;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/privacy/av;->pq:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;[B)V
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/zte/privacy/av;->pq:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dep: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", checksum: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p2

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-byte v3, p2, v0

    iget-object v4, p0, Lcom/zte/privacy/av;->pq:Ljava/lang/StringBuilder;

    const-string v5, "%02x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zte/privacy/av;->pq:Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method
