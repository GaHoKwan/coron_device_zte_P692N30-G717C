.class public Lcom/nuance/dragon/toolkit/grammar/WordAction;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final ADD:B = 0x1t

.field public static final REMOVE:B = 0x2t

.field public static final UPDATE:B = 0x3t


# instance fields
.field private final a:Lcom/nuance/dragon/toolkit/grammar/Word;

.field private final b:B


# direct methods
.method public constructor <init>(Lcom/nuance/dragon/toolkit/grammar/Word;B)V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eq p2, v0, :cond_0

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    const/4 v1, 0x3

    if-ne p2, v1, :cond_1

    :cond_0
    :goto_0
    const-string v1, "Invalid action"

    invoke-static {p0, v0, v1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;ZLjava/lang/String;)V

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/grammar/WordAction;->a:Lcom/nuance/dragon/toolkit/grammar/Word;

    iput-byte p2, p0, Lcom/nuance/dragon/toolkit/grammar/WordAction;->b:B

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/nuance/dragon/toolkit/grammar/Word;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/grammar/WordAction;->a:Lcom/nuance/dragon/toolkit/grammar/Word;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/nuance/dragon/toolkit/grammar/WordAction;->b:B

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/nuance/dragon/toolkit/grammar/WordAction;->b:B

    goto :goto_0
.end method

.method private constructor <init>(Ljava/io/ObjectInputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/nuance/dragon/toolkit/grammar/WordAction;->b:B

    new-instance v0, Lcom/nuance/dragon/toolkit/grammar/Word;

    invoke-direct {v0, p1}, Lcom/nuance/dragon/toolkit/grammar/Word;-><init>(Ljava/io/ObjectInputStream;)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/WordAction;->a:Lcom/nuance/dragon/toolkit/grammar/Word;

    return-void
.end method

.method public static readListFrom(Ljava/io/ObjectInputStream;)Ljava/util/List;
    .locals 3

    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    new-instance v0, Lcom/nuance/dragon/toolkit/grammar/WordAction;

    invoke-direct {v0, p0}, Lcom/nuance/dragon/toolkit/grammar/WordAction;-><init>(Ljava/io/ObjectInputStream;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public static readPersistentListFrom(Ljava/io/ObjectInputStream;)La/a/m;
    .locals 3

    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    invoke-static {}, La/a/m;->a()La/a/m;

    move-result-object v0

    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_0

    new-instance v1, Lcom/nuance/dragon/toolkit/grammar/WordAction;

    invoke-direct {v1, p0}, Lcom/nuance/dragon/toolkit/grammar/WordAction;-><init>(Ljava/io/ObjectInputStream;)V

    invoke-virtual {v0, v1}, La/a/m;->a(Ljava/lang/Object;)La/a/m;

    move-result-object v0

    move v1, v2

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static writeListTo(Ljava/util/List;Ljava/io/ObjectOutputStream;)V
    .locals 3

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/grammar/WordAction;

    iget-byte v2, v0, Lcom/nuance/dragon/toolkit/grammar/WordAction;->b:B

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeByte(I)V

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/grammar/WordAction;->a:Lcom/nuance/dragon/toolkit/grammar/Word;

    invoke-virtual {v0, p1}, Lcom/nuance/dragon/toolkit/grammar/Word;->a(Ljava/io/ObjectOutputStream;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, Lcom/nuance/dragon/toolkit/grammar/WordAction;

    iget-byte v0, p0, Lcom/nuance/dragon/toolkit/grammar/WordAction;->b:B

    iget-byte v1, p1, Lcom/nuance/dragon/toolkit/grammar/WordAction;->b:B

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/WordAction;->a:Lcom/nuance/dragon/toolkit/grammar/Word;

    iget-object v1, p1, Lcom/nuance/dragon/toolkit/grammar/WordAction;->a:Lcom/nuance/dragon/toolkit/grammar/Word;

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/grammar/Word;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAction()I
    .locals 1

    iget-byte v0, p0, Lcom/nuance/dragon/toolkit/grammar/WordAction;->b:B

    return v0
.end method

.method public getActionString()Ljava/lang/String;
    .locals 2

    iget-byte v0, p0, Lcom/nuance/dragon/toolkit/grammar/WordAction;->b:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "add"

    :goto_0
    return-object v0

    :cond_0
    iget-byte v0, p0, Lcom/nuance/dragon/toolkit/grammar/WordAction;->b:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const-string v0, "remove"

    goto :goto_0

    :cond_1
    iget-byte v0, p0, Lcom/nuance/dragon/toolkit/grammar/WordAction;->b:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    const-string v0, "update"

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    const-string v1, "invalid action"

    invoke-static {p0, v0, v1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;ZLjava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWord()Lcom/nuance/dragon/toolkit/grammar/Word;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/WordAction;->a:Lcom/nuance/dragon/toolkit/grammar/Word;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/WordAction;->a:Lcom/nuance/dragon/toolkit/grammar/Word;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/grammar/Word;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-byte v1, p0, Lcom/nuance/dragon/toolkit/grammar/WordAction;->b:B

    add-int/2addr v0, v1

    return v0
.end method

.method public isAdded()Z
    .locals 2

    const/4 v0, 0x1

    iget-byte v1, p0, Lcom/nuance/dragon/toolkit/grammar/WordAction;->b:B

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[Word:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/grammar/WordAction;->a:Lcom/nuance/dragon/toolkit/grammar/Word;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Action:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/nuance/dragon/toolkit/grammar/WordAction;->b:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
