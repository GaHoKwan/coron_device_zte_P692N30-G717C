.class final Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager$a;
.super Ljava/lang/Object;


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final c:I

.field final synthetic d:Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager$a;->d:Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager$a;->b:Ljava/lang/String;

    iput p4, p0, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager$a;->c:I

    return-void
.end method


# virtual methods
.method final a()I
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager$a;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    move v0, v1

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager$a;->b:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    add-int/lit8 v3, v0, 0x1

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager$a;->b:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    int-to-short v2, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager$a;->a:Ljava/lang/String;

    if-eqz v0, :cond_2

    :goto_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager$a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v1, v0, :cond_2

    add-int/lit8 v0, v1, 0x1

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager$a;->a:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    mul-int/2addr v0, v3

    add-int/2addr v0, v2

    int-to-short v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager$a;->c:I

    or-int/2addr v0, v2

    return v0
.end method
