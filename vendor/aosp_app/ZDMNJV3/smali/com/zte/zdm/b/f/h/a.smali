.class public Lcom/zte/zdm/b/f/h/a;
.super Ljava/lang/Exception;


# static fields
.field private static final a:J = -0xdfd7ddbbfcaa7fL

.field public static final f:I = 0x191

.field public static final g:I = 0x194

.field public static final h:I = 0x195

.field public static final i:I = 0x196

.field public static final j:I = 0x19e

.field public static final k:I = 0x1a2

.field public static final l:I = 0x1a9

.field public static final m:I = 0x1f4

.field public static final n:I = 0x1fe

.field public static final o:I = 0x204

.field public static final p:I = 0x1

.field public static final q:I = 0x2

.field public static final r:I = 0x3

.field public static final s:I = 0x4

.field public static final t:I = 0x5

.field public static final u:I = 0x6

.field public static final v:I = 0x7


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:I

.field private final d:Ljava/lang/String;

.field private final e:[Ljava/lang/Throwable;

.field private final w:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    new-array v4, v5, [Ljava/lang/Throwable;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/zte/zdm/b/f/h/a;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    const/4 v5, 0x0

    if-nez p4, :cond_0

    new-array v4, v5, [Ljava/lang/Throwable;

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/zte/zdm/b/f/h/a;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Throwable;Z)V

    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/Throwable;

    aput-object p4, v4, v5

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Vector;Z)V
    .locals 6

    if-nez p4, :cond_0

    const/4 v0, 0x0

    new-array v4, v0, [Ljava/lang/Throwable;

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/zte/zdm/b/f/h/a;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Throwable;Z)V

    return-void

    :cond_0
    invoke-virtual {p4}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Throwable;

    invoke-virtual {p4, v0}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Throwable;

    check-cast v0, [Ljava/lang/Throwable;

    move-object v4, v0

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Throwable;Z)V
    .locals 1

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    iput-object p1, p0, Lcom/zte/zdm/b/f/h/a;->b:Ljava/lang/String;

    iput p2, p0, Lcom/zte/zdm/b/f/h/a;->c:I

    iput-object p3, p0, Lcom/zte/zdm/b/f/h/a;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/zte/zdm/b/f/h/a;->e:[Ljava/lang/Throwable;

    iput-boolean p5, p0, Lcom/zte/zdm/b/f/h/a;->w:Z

    return-void
.end method

.method private static a(I)Ljava/lang/String;
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const-string v0, "<unknown code>"

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "NODE_NOT_FOUND"

    goto :goto_0

    :sswitch_1
    const-string v0, "COMMAND_NOT_ALLOWED"

    goto :goto_0

    :sswitch_2
    const-string v0, "FEATURE_NOT_SUPPORTED"

    goto :goto_0

    :sswitch_3
    const-string v0, "URI_TOO_LONG"

    goto :goto_0

    :sswitch_4
    const-string v0, "NODE_ALREADY_EXISTS"

    goto :goto_0

    :sswitch_5
    const-string v0, "PERMISSION_DENIED"

    goto :goto_0

    :sswitch_6
    const-string v0, "COMMAND_FAILED"

    goto :goto_0

    :sswitch_7
    const-string v0, "DATA_STORE_FAILURE"

    goto :goto_0

    :sswitch_8
    const-string v0, "ROLLBACK_FAILED"

    goto :goto_0

    :sswitch_9
    const-string v0, "REMOTE_ERROR"

    goto :goto_0

    :sswitch_a
    const-string v0, "METADATA_MISMATCH"

    goto :goto_0

    :sswitch_b
    const-string v0, "INVALID_URI"

    goto :goto_0

    :sswitch_c
    const-string v0, "CONCURRENT_ACCESS"

    goto :goto_0

    :sswitch_d
    const-string v0, "ALERT_NOT_ROUTED"

    goto :goto_0

    :sswitch_e
    const-string v0, "TRANSACTION_ERROR"

    goto :goto_0

    :sswitch_f
    const-string v0, "SESSION_CREATION_TIMEOUT"

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_9
        0x2 -> :sswitch_a
        0x3 -> :sswitch_b
        0x4 -> :sswitch_c
        0x5 -> :sswitch_d
        0x6 -> :sswitch_e
        0x7 -> :sswitch_f
        0x194 -> :sswitch_0
        0x195 -> :sswitch_1
        0x196 -> :sswitch_2
        0x19e -> :sswitch_3
        0x1a2 -> :sswitch_4
        0x1a9 -> :sswitch_5
        0x1f4 -> :sswitch_6
        0x1fe -> :sswitch_7
        0x204 -> :sswitch_8
    .end sparse-switch
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/b/f/h/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/zte/zdm/b/f/h/a;->c:I

    return v0
.end method

.method public c()[Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/b/f/h/a;->e:[Ljava/lang/Throwable;

    invoke-virtual {v0}, [Ljava/lang/Throwable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Throwable;

    check-cast v0, [Ljava/lang/Throwable;

    return-object v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zte/zdm/b/f/h/a;->w:Z

    return v0
.end method

.method public getCause()Ljava/lang/Throwable;
    .locals 2

    iget-object v0, p0, Lcom/zte/zdm/b/f/h/a;->e:[Ljava/lang/Throwable;

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/b/f/h/a;->e:[Ljava/lang/Throwable;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/zte/zdm/b/f/h/a;->c:I

    invoke-static {v1}, Lcom/zte/zdm/b/f/h/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/zdm/b/f/h/a;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, ": \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zdm/b/f/h/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    iget-object v1, p0, Lcom/zte/zdm/b/f/h/a;->d:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zdm/b/f/h/a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .locals 4

    invoke-super {p0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/zte/zdm/b/f/h/a;->e:[Ljava/lang/Throwable;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caused by"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-lez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/zdm/b/f/h/a;->e:[Ljava/lang/Throwable;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v1, ""

    goto :goto_1

    :cond_1
    return-void
.end method
