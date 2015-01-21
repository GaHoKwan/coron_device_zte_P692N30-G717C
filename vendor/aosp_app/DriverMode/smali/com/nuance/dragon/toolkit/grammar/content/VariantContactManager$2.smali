.class final Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$PlatformFullIterator;


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Ljava/util/HashSet;

.field final synthetic c:Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;Ljava/util/ArrayList;Ljava/util/HashSet;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager$2;->c:Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager$2;->a:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager$2;->b:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/database/Cursor;)Lcom/nuance/dragon/toolkit/grammar/WordAction;
    .locals 11

    const/4 v5, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager$2;->a()Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager$a;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/nuance/dragon/toolkit/grammar/WordAction;

    new-instance v1, Lcom/nuance/dragon/toolkit/grammar/Word;

    invoke-virtual {v2}, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager$a;->a()I

    move-result v3

    iget-object v4, v2, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager$a;->a:Ljava/lang/String;

    iget-object v2, v2, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager$a;->b:Ljava/lang/String;

    invoke-direct {v1, v3, v4, v2}, Lcom/nuance/dragon/toolkit/grammar/Word;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, v5}, Lcom/nuance/dragon/toolkit/grammar/WordAction;-><init>(Lcom/nuance/dragon/toolkit/grammar/Word;Z)V

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager$2;->c:Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;->b(Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;)Landroid/database/Cursor;

    move-result-object v0

    const-string v2, "in_visible_group"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager$2;->c:Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;->b(Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;)Landroid/database/Cursor;

    move-result-object v0

    const-string v2, "lookup"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "display_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v0, "data2"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v0, "data3"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v0, "data7"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "data8"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v0, "data9"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_1

    move-object v3, v0

    :cond_1
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_4

    move-object v3, v1

    :cond_4
    iget-object v7, p0, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager$2;->a:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_5

    iget-object v7, p0, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager$2;->b:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, p0, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager$2;->b:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager$2;->a:Ljava/util/ArrayList;

    new-instance v8, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager$a;

    iget-object v9, p0, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager$2;->c:Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_9

    :goto_1
    const/high16 v10, 0x4000

    invoke-direct {v8, v9, v4, v3, v10}, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager$a;-><init>(Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager$2;->b:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager$2;->b:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager$2;->a:Ljava/util/ArrayList;

    new-instance v4, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager$a;

    iget-object v7, p0, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager$2;->c:Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_a

    :goto_2
    const/high16 v8, -0x8000

    invoke-direct {v4, v7, v5, v2, v8}, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager$a;-><init>(Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    if-eqz v6, :cond_7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager$2;->b:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager$2;->b:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager$2;->a:Ljava/util/ArrayList;

    new-instance v3, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager$a;

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager$2;->c:Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_b

    :goto_3
    const/high16 v5, -0x4000

    invoke-direct {v3, v4, v6, v0, v5}, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager$a;-><init>(Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager$2;->a()Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager$a;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/nuance/dragon/toolkit/grammar/WordAction;

    new-instance v3, Lcom/nuance/dragon/toolkit/grammar/Word;

    invoke-virtual {v2}, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager$a;->a()I

    move-result v4

    iget-object v5, v2, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager$a;->a:Ljava/lang/String;

    iget-object v2, v2, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager$a;->b:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v2}, Lcom/nuance/dragon/toolkit/grammar/Word;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-direct {v0, v3, v2}, Lcom/nuance/dragon/toolkit/grammar/WordAction;-><init>(Lcom/nuance/dragon/toolkit/grammar/Word;Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :cond_8
    move-object v0, v1

    goto/16 :goto_0

    :cond_9
    move-object v3, v1

    goto/16 :goto_1

    :cond_a
    move-object v2, v1

    goto :goto_2

    :cond_b
    move-object v0, v1

    goto :goto_3
.end method

.method private a()Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager$a;
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager$2;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager$2;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager$a;

    goto :goto_0
.end method


# virtual methods
.method public final getSize()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public final hasNext()Z
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager$2;->c:Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;->a(Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;)Lcom/nuance/dragon/toolkit/grammar/WordAction;

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager$2;->c:Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager$2;->c:Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;->b(Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-static {v2, v0}, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;->a(Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;Lcom/nuance/dragon/toolkit/grammar/WordAction;)Lcom/nuance/dragon/toolkit/grammar/WordAction;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager$2;->c:Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;->a(Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;)Lcom/nuance/dragon/toolkit/grammar/WordAction;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager$2;->c:Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;->b(Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager$2;->c:Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;->b(Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager$2;->c:Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;->c(Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;)Landroid/database/Cursor;

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager$2;->c:Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;->a(Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;)Lcom/nuance/dragon/toolkit/grammar/WordAction;

    move-result-object v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager$2;->c:Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;->b(Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;)Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager$2;->a(Landroid/database/Cursor;)Lcom/nuance/dragon/toolkit/grammar/WordAction;

    move-result-object v0

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager$2;->c:Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;->a(Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;)Lcom/nuance/dragon/toolkit/grammar/WordAction;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager$2;->c:Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;->a(Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;)Lcom/nuance/dragon/toolkit/grammar/WordAction;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager$2;->c:Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;

    invoke-static {v2, v0}, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;->a(Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;Lcom/nuance/dragon/toolkit/grammar/WordAction;)Lcom/nuance/dragon/toolkit/grammar/WordAction;

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager$2;->c:Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;->b(Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_2

    :goto_1
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager$2;->c:Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;->a(Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;)Lcom/nuance/dragon/toolkit/grammar/WordAction;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager$2;->c:Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;->b(Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager$2;->c:Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;->b(Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager$2;->c:Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;->c(Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;)Landroid/database/Cursor;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager$2;->c:Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;->b(Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;)Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager$2;->a(Landroid/database/Cursor;)Lcom/nuance/dragon/toolkit/grammar/WordAction;

    move-result-object v0

    goto :goto_1
.end method

.method public final remove()V
    .locals 0

    return-void
.end method
