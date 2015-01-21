.class public final Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;
.super Lorg/xml/sax/helpers/DefaultHandler;

# interfaces
.implements Lcom/nuance/dragon/toolkit/recognition/dictation/b/f$a;


# instance fields
.field private a:Ljava/util/Stack;

.field private b:Ljava/util/ArrayList;

.field private c:Ljava/util/Map;

.field private d:Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;

.field private e:Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;

.field private f:Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;

.field private g:D

.field private h:Ljava/util/HashMap;

.field private i:Ljava/util/List;

.field private j:Lcom/nuance/dragon/toolkit/recognition/a/b;

.field private k:Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:D


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->a:Ljava/util/Stack;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->c:Ljava/util/Map;

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->d:Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->e:Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->f:Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;

    iput-wide v2, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->g:D

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->h:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->i:Ljava/util/List;

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->j:Lcom/nuance/dragon/toolkit/recognition/a/b;

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->k:Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->l:Ljava/lang/String;

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->m:Ljava/lang/String;

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->n:Ljava/lang/String;

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->o:Ljava/lang/String;

    iput-wide v2, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->p:D

    return-void
.end method

.method private static a(Lcom/nuance/dragon/toolkit/recognition/dictation/Sentence;Ljava/lang/String;)V
    .locals 2

    invoke-interface {p0}, Lcom/nuance/dragon/toolkit/recognition/dictation/Sentence;->size()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "sentence is empty in setWord!"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-interface {p0}, Lcom/nuance/dragon/toolkit/recognition/dictation/Sentence;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Lcom/nuance/dragon/toolkit/recognition/dictation/Sentence;->tokenAt(I)Lcom/nuance/dragon/toolkit/recognition/dictation/Token;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;

    invoke-virtual {v0, p1}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;->a(Ljava/lang/String;)V

    return-void
.end method

.method private static a(Lcom/nuance/dragon/toolkit/recognition/dictation/Sentence;Lorg/xml/sax/Attributes;)V
    .locals 8

    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "sentences is empty or attributes is missing in createWord!"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "start"

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v0, "end"

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string v0, "confidence"

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    new-instance v0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;

    const-string v1, ""

    invoke-direct/range {v0 .. v7}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;-><init>(Ljava/lang/String;JJD)V

    check-cast p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;

    invoke-virtual {p0, v0}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;->a(Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;)V

    return-void
.end method

.method private c()V
    .locals 13

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->m:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->j:Lcom/nuance/dragon/toolkit/recognition/a/b;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/recognition/a/b;->d()Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;

    move-result-object v7

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    :goto_0
    invoke-interface {v7}, Lcom/nuance/dragon/toolkit/recognition/dictation/Sentence;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-interface {v7, v0}, Lcom/nuance/dragon/toolkit/recognition/dictation/Sentence;->tokenAt(I)Lcom/nuance/dragon/toolkit/recognition/dictation/Token;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v9, v2

    move v5, v1

    move v2, v6

    :goto_1
    if-ge v5, v9, :cond_1

    new-instance v10, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c$a;

    if-eqz v2, :cond_0

    move-object v2, v3

    :goto_2
    invoke-direct {v10, p0, v2}, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c$a;-><init>(Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;Lcom/nuance/dragon/toolkit/recognition/dictation/Token;)V

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move v2, v1

    goto :goto_1

    :cond_0
    move-object v2, v4

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->m:Ljava/lang/String;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v7, v5

    move v3, v1

    move-object v2, v4

    :goto_3
    if-ge v3, v7, :cond_7

    aget-object v0, v5, v3

    const-string v9, "["

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v9, "]"

    invoke-virtual {v0, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v9, "[/"

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move v12, v1

    move-object v1, v0

    move v0, v12

    :goto_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move-object v2, v1

    move v1, v0

    goto :goto_3

    :cond_3
    const-string v9, "[/"

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    const-string v9, "]"

    invoke-virtual {v0, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    new-instance v9, Lcom/nuance/dragon/toolkit/recognition/dictation/a/f;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->h:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-direct {v9, v0, v4}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/f;-><init>(Ljava/util/ArrayList;Ljava/util/Map;)V

    new-instance v0, Lcom/nuance/dragon/toolkit/recognition/a/a$a;

    sget-object v10, Lcom/nuance/dragon/toolkit/recognition/a/a$a$a;->b:Lcom/nuance/dragon/toolkit/recognition/a/a$a$a;

    invoke-direct {v0, v10, v2, v9}, Lcom/nuance/dragon/toolkit/recognition/a/a$a;-><init>(Lcom/nuance/dragon/toolkit/recognition/a/a$a$a;Ljava/lang/String;Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResult;)V

    iget-object v10, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->j:Lcom/nuance/dragon/toolkit/recognition/a/b;

    invoke-virtual {v10, v0}, Lcom/nuance/dragon/toolkit/recognition/a/b;->a(Lcom/nuance/dragon/toolkit/recognition/a/a$a;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->j:Lcom/nuance/dragon/toolkit/recognition/a/b;

    invoke-virtual {v0, v2, v9}, Lcom/nuance/dragon/toolkit/recognition/a/b;->a(Ljava/lang/String;Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResult;)V

    move v0, v1

    move-object v1, v4

    goto :goto_4

    :cond_4
    const-string v9, "*"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_9

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c$a;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c$a;->a:Lcom/nuance/dragon/toolkit/recognition/dictation/Token;

    :goto_5
    if-eqz v0, :cond_5

    new-instance v9, Lcom/nuance/dragon/toolkit/recognition/a/a$a;

    sget-object v10, Lcom/nuance/dragon/toolkit/recognition/a/a$a$a;->a:Lcom/nuance/dragon/toolkit/recognition/a/a$a$a;

    const-string v11, ""

    invoke-direct {v9, v10, v11, v0}, Lcom/nuance/dragon/toolkit/recognition/a/a$a;-><init>(Lcom/nuance/dragon/toolkit/recognition/a/a$a$a;Ljava/lang/String;Lcom/nuance/dragon/toolkit/recognition/dictation/Token;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->j:Lcom/nuance/dragon/toolkit/recognition/a/b;

    invoke-virtual {v0, v9}, Lcom/nuance/dragon/toolkit/recognition/a/b;->a(Lcom/nuance/dragon/toolkit/recognition/a/a$a;)V

    :cond_5
    add-int/lit8 v0, v1, 0x1

    move-object v1, v2

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->j:Lcom/nuance/dragon/toolkit/recognition/a/b;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/recognition/a/b;->d()Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;

    move-result-object v0

    if-eqz v0, :cond_7

    :goto_6
    invoke-interface {v0}, Lcom/nuance/dragon/toolkit/recognition/dictation/Sentence;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    invoke-interface {v0, v1}, Lcom/nuance/dragon/toolkit/recognition/dictation/Sentence;->tokenAt(I)Lcom/nuance/dragon/toolkit/recognition/dictation/Token;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->j:Lcom/nuance/dragon/toolkit/recognition/a/b;

    new-instance v5, Lcom/nuance/dragon/toolkit/recognition/a/a$a;

    sget-object v6, Lcom/nuance/dragon/toolkit/recognition/a/a$a$a;->a:Lcom/nuance/dragon/toolkit/recognition/a/a$a$a;

    const-string v7, ""

    invoke-direct {v5, v6, v7, v2}, Lcom/nuance/dragon/toolkit/recognition/a/a$a;-><init>(Lcom/nuance/dragon/toolkit/recognition/a/a$a$a;Ljava/lang/String;Lcom/nuance/dragon/toolkit/recognition/dictation/Token;)V

    invoke-virtual {v3, v5}, Lcom/nuance/dragon/toolkit/recognition/a/b;->a(Lcom/nuance/dragon/toolkit/recognition/a/a$a;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_7
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->j:Lcom/nuance/dragon/toolkit/recognition/a/b;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/recognition/a/b;->d()Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->i:Ljava/util/List;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->j:Lcom/nuance/dragon/toolkit/recognition/a/b;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    iput-object v4, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->j:Lcom/nuance/dragon/toolkit/recognition/a/b;

    return-void

    :cond_9
    move-object v0, v4

    goto :goto_5
.end method

.method private d()I
    .locals 8

    const/4 v0, 0x0

    const/4 v3, 0x1

    const/16 v6, 0x10

    const/4 v5, 0x4

    const/4 v4, 0x3

    move v1, v0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->a:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v7, "result"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v3

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    if-ne v2, v3, :cond_3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->a:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v7, "NSS_Audio_Statistics"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    if-ne v1, v0, :cond_0

    const/4 v2, 0x2

    :cond_2
    return v2

    :cond_3
    if-ne v2, v3, :cond_4

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->a:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v7, "interpretation"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v2, v4

    goto :goto_1

    :cond_4
    if-ne v2, v4, :cond_5

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->a:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v7, "SWI_literalTimings"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v2, v5

    goto :goto_1

    :cond_5
    if-ne v2, v4, :cond_6

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->a:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v7, "alternatives"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v2, v5

    goto :goto_1

    :cond_6
    if-ne v2, v4, :cond_7

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->a:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v7, "SWI_meaning_fillers"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v2, v6

    goto :goto_1

    :cond_7
    if-ne v2, v6, :cond_8

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->a:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v7, "slot"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v2, 0x11

    goto/16 :goto_1

    :cond_8
    if-ne v2, v5, :cond_9

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->a:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v7, "word"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v2, 0x7

    goto/16 :goto_1

    :cond_9
    if-eq v2, v5, :cond_a

    if-ne v2, v6, :cond_b

    :cond_a
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->a:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v7, "input_postItn"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v2, 0x5

    goto/16 :goto_1

    :cond_b
    const/4 v0, 0x5

    if-ne v2, v0, :cond_c

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->a:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v7, "word"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v2, 0x8

    goto/16 :goto_1

    :cond_c
    if-eq v2, v5, :cond_d

    if-ne v2, v6, :cond_e

    :cond_d
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->a:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v7, "input_preItn"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v2, 0x6

    goto/16 :goto_1

    :cond_e
    const/4 v0, 0x6

    if-ne v2, v0, :cond_f

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->a:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v7, "word"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v2, 0x9

    goto/16 :goto_1

    :cond_f
    const/16 v0, 0x11

    if-ne v2, v0, :cond_10

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->a:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v7, "word"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 v2, 0x12

    goto/16 :goto_1

    :cond_10
    if-ne v2, v4, :cond_11

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->a:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v7, "SLOT_TYPE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/16 v2, 0x13

    goto/16 :goto_1

    :cond_11
    if-ne v2, v4, :cond_12

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->a:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v7, "details"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v2, 0x14

    goto/16 :goto_1

    :cond_12
    const/16 v0, 0x14

    if-ne v2, v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->a:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v7, "fill"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v2, 0x15

    goto/16 :goto_1
.end method


# virtual methods
.method public final a()Lcom/nuance/dragon/toolkit/recognition/dictation/a/f;
    .locals 3

    new-instance v0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/f;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->b:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->c:Ljava/util/Map;

    invoke-direct {v0, v1, v2}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/f;-><init>(Ljava/util/ArrayList;Ljava/util/Map;)V

    return-object v0
.end method

.method public final b()Lcom/nuance/dragon/toolkit/recognition/a/c;
    .locals 3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->i:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Lcom/nuance/dragon/toolkit/recognition/a/c;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->i:Ljava/util/List;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->c:Ljava/util/Map;

    invoke-direct {v0, v1, v2}, Lcom/nuance/dragon/toolkit/recognition/a/c;-><init>(Ljava/util/List;Ljava/util/Map;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final characters([CII)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Received characters: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p3}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {v1, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->d()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "InputAudioLength"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->c:Ljava/util/Map;

    const-string v3, "IAL"

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->c:Ljava/util/Map;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v2, 0x7

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->d:Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    invoke-static {v0, v2}, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->a(Lcom/nuance/dragon/toolkit/recognition/dictation/Sentence;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/16 v2, 0x8

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->e:Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    invoke-static {v0, v2}, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->a(Lcom/nuance/dragon/toolkit/recognition/dictation/Sentence;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/16 v2, 0x9

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->f:Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    invoke-static {v0, v2}, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->a(Lcom/nuance/dragon/toolkit/recognition/dictation/Sentence;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const/16 v2, 0x12

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->k:Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->k:Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    invoke-static {v0, v2}, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->a(Lcom/nuance/dragon/toolkit/recognition/dictation/Sentence;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const/16 v2, 0x13

    if-ne v0, v2, :cond_7

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->j:Lcom/nuance/dragon/toolkit/recognition/a/b;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    invoke-virtual {v0, v2}, Lcom/nuance/dragon/toolkit/recognition/a/b;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    const/16 v2, 0x15

    if-ne v0, v2, :cond_8

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->m:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->o:Ljava/lang/String;

    goto :goto_0

    :cond_8
    const/16 v2, 0x14

    if-ne v0, v2, :cond_1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->o:Ljava/lang/String;

    goto :goto_0
.end method

.method public final endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Received endElement "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "input_postItn"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "input"

    :cond_0
    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->b:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->c:Ljava/util/Map;

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string v2, "input_preItn"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "input"

    goto :goto_0

    :cond_3
    const-string v0, "slot"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->l:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->k:Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->h:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->l:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->h:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->l:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->k:Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    iput-object v1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->l:Ljava/lang/String;

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->k:Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;

    iput-wide v4, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->g:D

    :cond_5
    const-string v0, "interpretation"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->c()V

    :cond_6
    const-string v0, "alternatives"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->e:Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->e:Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;

    :goto_3
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->j:Lcom/nuance/dragon/toolkit/recognition/a/b;

    invoke-virtual {v2, v0}, Lcom/nuance/dragon/toolkit/recognition/a/b;->a(Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;)V

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->d:Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->e:Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->f:Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;

    iput-wide v4, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->g:D

    :cond_7
    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->d()I

    move-result v0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->j:Lcom/nuance/dragon/toolkit/recognition/a/b;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->n:Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->o:Ljava/lang/String;

    iget-wide v3, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->p:D

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/nuance/dragon/toolkit/recognition/a/b;->a(Ljava/lang/String;Ljava/lang/String;D)V

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->h:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->l:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->d:Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->d:Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;

    goto :goto_3

    :cond_a
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->f:Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->f:Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;

    goto :goto_3

    :cond_b
    move-object v0, v1

    goto :goto_3
.end method

.method public final startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Received startElement "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "result"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "StartElement> Found result but it is not the first token."

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-object v0, p2

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->d()I

    move-result v1

    const/16 v2, 0x14

    if-ne v1, v2, :cond_2

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->n:Ljava/lang/String;

    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-lez v1, :cond_2

    const-string v1, "confidence"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, "confidence"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->p:D

    :cond_2
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->a:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_3
    const-string v0, "interpretation"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    if-lez v0, :cond_4

    const-string v0, "confidence"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v0, "confidence"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->g:D

    :cond_4
    new-instance v0, Lcom/nuance/dragon/toolkit/recognition/a/b;

    iget-wide v1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->g:D

    invoke-direct {v0, v1, v2}, Lcom/nuance/dragon/toolkit/recognition/a/b;-><init>(D)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->j:Lcom/nuance/dragon/toolkit/recognition/a/b;

    move-object v0, p2

    goto :goto_0

    :cond_5
    const-string v0, "SWI_literalTimings"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;

    invoke-direct {v0}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->d:Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->d:Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;

    iget-wide v1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->g:D

    invoke-virtual {v0, v1, v2}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;->a(D)V

    move-object v0, p2

    goto :goto_0

    :cond_6
    const-string v0, "input"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    if-lez v0, :cond_e

    const-string v0, "type"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    const-string v0, "type"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "post-itn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "input_postItn"

    new-instance v1, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;

    invoke-direct {v1}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;-><init>()V

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->e:Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->e:Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;

    iget-wide v2, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->g:D

    invoke-virtual {v1, v2, v3}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;->a(D)V

    :goto_1
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->k:Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;

    if-eqz v1, :cond_1

    const-string v1, "confidence"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->k:Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;

    invoke-virtual {v3, v1, v2}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;->a(D)V

    goto/16 :goto_0

    :cond_7
    const-string v0, "type"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "post-itn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "input_postItn"

    new-instance v1, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;

    invoke-direct {v1}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;-><init>()V

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->f:Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->f:Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;

    iget-wide v2, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->g:D

    invoke-virtual {v1, v2, v3}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;->a(D)V

    goto :goto_1

    :cond_8
    const-string v0, "slot"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    const-string v1, "name"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-lez v0, :cond_9

    if-eqz v1, :cond_9

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->l:Ljava/lang/String;

    new-instance v0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;

    invoke-direct {v0}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->k:Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;

    :cond_9
    move-object v0, p2

    goto/16 :goto_0

    :cond_a
    const-string v0, "word"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->d()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->d:Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;

    invoke-static {v0, p4}, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->a(Lcom/nuance/dragon/toolkit/recognition/dictation/Sentence;Lorg/xml/sax/Attributes;)V

    move-object v0, p2

    goto/16 :goto_0

    :cond_b
    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->d()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_c

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->e:Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;

    invoke-static {v0, p4}, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->a(Lcom/nuance/dragon/toolkit/recognition/dictation/Sentence;Lorg/xml/sax/Attributes;)V

    move-object v0, p2

    goto/16 :goto_0

    :cond_c
    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->d()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_d

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->f:Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;

    invoke-static {v0, p4}, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->a(Lcom/nuance/dragon/toolkit/recognition/dictation/Sentence;Lorg/xml/sax/Attributes;)V

    move-object v0, p2

    goto/16 :goto_0

    :cond_d
    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->d()I

    move-result v0

    const/16 v1, 0x11

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->k:Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;

    invoke-static {v0, p4}, Lcom/nuance/dragon/toolkit/recognition/dictation/b/c;->a(Lcom/nuance/dragon/toolkit/recognition/dictation/Sentence;Lorg/xml/sax/Attributes;)V

    :cond_e
    move-object v0, p2

    goto/16 :goto_0

    :cond_f
    move-object v0, p2

    goto/16 :goto_1
.end method
