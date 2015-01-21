.class final Lcom/nuance/dragon/toolkit/recognition/dictation/a/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    sget-object v0, Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;->WORD:Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;

    if-ne p2, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Text cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p2, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/j;->b:Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/j;->b:Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;

    sget-object v1, Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;->WHITE_SPACE:Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;

    if-ne v0, v1, :cond_1

    const-string v0, " "

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/j;->a:Ljava/lang/String;

    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/j;->a:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final getType()Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/j;->b:Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;

    return-object v0
.end method

.method public final length()I
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/j;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/j;->a:Ljava/lang/String;

    return-object v0
.end method
