.class Lcom/nuance/dragon/toolkit/elvis/NbestEntryJni;
.super Ljava/lang/Object;


# instance fields
.field final a:Ljava/lang/String;

.field final b:I

.field private final c:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/elvis/NbestEntryJni;->a:Ljava/lang/String;

    iput p2, p0, Lcom/nuance/dragon/toolkit/elvis/NbestEntryJni;->b:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/NbestEntryJni;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method addWord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[II)V
    .locals 9

    iget-object v8, p0, Lcom/nuance/dragon/toolkit/elvis/NbestEntryJni;->c:Ljava/util/ArrayList;

    new-instance v0, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry$Word;

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry$Word;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[IIZ)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method createRealEntry(Lcom/nuance/dragon/toolkit/elvis/Grammar;)Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry;
    .locals 8

    new-instance v6, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/NbestEntryJni;->a:Ljava/lang/String;

    iget v1, p0, Lcom/nuance/dragon/toolkit/elvis/NbestEntryJni;->b:I

    invoke-direct {v6, v0, v1}, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry;-><init>(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/NbestEntryJni;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry$Word;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v0, v5, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry$Word;->wordSlot:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/nuance/dragon/toolkit/elvis/Grammar;->getWordSlotByName(Ljava/lang/String;)Lcom/nuance/dragon/toolkit/elvis/WordSlot;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->isGeneric()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    invoke-virtual {v6, v5}, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry;->a(Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry$Word;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry$Word;

    iget-object v1, v5, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry$Word;->wordSlot:Ljava/lang/String;

    iget-object v2, v5, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry$Word;->surfaceForm:Ljava/lang/String;

    iget-object v3, v5, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry$Word;->spokenForm:Ljava/lang/String;

    iget-object v4, v5, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry$Word;->fullPhrase:Ljava/lang/String;

    iget-object v5, v5, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry$Word;->wordIds:[I

    invoke-direct/range {v0 .. v5}, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry$Word;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    invoke-virtual {v6, v0}, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry;->a(Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry$Word;)V

    goto :goto_0

    :cond_3
    return-object v6
.end method

.method getWords()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/NbestEntryJni;->c:Ljava/util/ArrayList;

    return-object v0
.end method
