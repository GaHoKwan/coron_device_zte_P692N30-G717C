.class public final Lcom/nuance/dragon/toolkit/recognition/dictation/b/h;
.super Lorg/xml/sax/helpers/DefaultHandler;

# interfaces
.implements Lcom/nuance/dragon/toolkit/recognition/dictation/b/f$a;


# instance fields
.field private a:Ljava/util/Stack;

.field private b:Ljava/lang/StringBuffer;

.field private c:Ljava/lang/StringBuffer;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:D

.field private g:Ljava/util/ArrayList;

.field private h:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/h;->a:Ljava/util/Stack;

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/h;->b:Ljava/lang/StringBuffer;

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/h;->c:Ljava/lang/StringBuffer;

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/h;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/h;->e:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/h;->f:D

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/h;->g:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/h;->h:Ljava/util/Map;

    return-void
.end method

.method private a(Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;)V
    .locals 6

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/h;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/h;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/h;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;->getConfidenceScore()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;->getConfidenceScore()D

    move-result-wide v4

    cmpg-double v0, v2, v4

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/h;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_1
    return-void

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/h;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private c()V
    .locals 12

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/h;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/h;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    const-string v2, "input"

    if-eq v0, v2, :cond_1

    :cond_0
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "End Element> The top of the stack does not contain the token interpretation"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/h;->d:Ljava/lang/String;

    if-nez v0, :cond_2

    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "Did not get any timings from input"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/h;->b:Ljava/lang/StringBuffer;

    if-nez v0, :cond_3

    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "Did not get any character from input"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/h;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v9, Ljava/util/StringTokenizer;

    const-string v2, " "

    invoke-direct {v9, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v10, Ljava/util/StringTokenizer;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/h;->d:Ljava/lang/String;

    const-string v2, ","

    invoke-direct {v10, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/h;->e:Ljava/lang/String;

    if-eqz v0, :cond_7

    new-instance v0, Ljava/util/StringTokenizer;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/h;->e:Ljava/lang/String;

    const-string v3, ","

    invoke-direct {v0, v2, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v0

    :goto_0
    iput-object v1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/h;->b:Ljava/lang/StringBuffer;

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/h;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/h;->e:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v0

    invoke-virtual {v10}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v1

    if-eq v0, v1, :cond_4

    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "timing("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") and inputs("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") information does not have the same number of items"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v11, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;

    invoke-direct {v11}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;-><init>()V

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/h;->f:D

    invoke-virtual {v11, v0, v1}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;->a(D)V

    :goto_1
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v6, 0x0

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    :cond_5
    const/4 v2, 0x0

    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v4, "-"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    new-instance v0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;

    invoke-direct/range {v0 .. v7}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;-><init>(Ljava/lang/String;JJD)V

    invoke-virtual {v11, v0}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;->a(Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;)V

    goto :goto_1

    :cond_6
    invoke-direct {p0, v11}, Lcom/nuance/dragon/toolkit/recognition/dictation/b/h;->a(Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;)V

    return-void

    :cond_7
    move-object v8, v1

    goto/16 :goto_0
.end method


# virtual methods
.method public final a()Lcom/nuance/dragon/toolkit/recognition/dictation/a/f;
    .locals 3

    new-instance v0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/f;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/h;->g:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/h;->h:Ljava/util/Map;

    invoke-direct {v0, v1, v2}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/f;-><init>(Ljava/util/ArrayList;Ljava/util/Map;)V

    return-object v0
.end method

.method public final b()Lcom/nuance/dragon/toolkit/recognition/a/c;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final characters([CII)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Received characters: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/h;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/h;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "input"

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/h;->b:Ljava/lang/StringBuffer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p3}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/h;->b:Ljava/lang/StringBuffer;

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/h;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/h;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/h;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "NSS_Audio_Statistics"

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/h;->c:Ljava/lang/StringBuffer;

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p3}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/h;->c:Ljava/lang/StringBuffer;

    :cond_3
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/h;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public final endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Received endElement "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "result"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/h;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/h;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "result"

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "End Element> The top of the stack does not contain the token result"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/h;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string v0, "interpretation"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/h;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/h;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "interpretation"

    if-eq v0, v1, :cond_5

    :cond_4
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "End Element> The top of the stack does not contain the token interpretation"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/h;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_0

    :cond_6
    const-string v0, "input"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/recognition/dictation/b/h;->c()V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/h;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_0

    :cond_7
    const-string v0, "NSS_Audio_Statistics"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/h;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/h;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "NSS_Audio_Statistics"

    if-eq v0, v1, :cond_9

    :cond_8
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "End Element> The top of the stack does not contain the token NSS_Audio_Statistics"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/h;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_0

    :cond_a
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/h;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/h;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "NSS_Audio_Statistics"

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/h;->c:Ljava/lang/StringBuffer;

    if-nez v0, :cond_c

    const-string v0, ""

    :goto_1
    const-string v1, "InputAudioLength"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/h;->h:Ljava/util/Map;

    const-string v2, "IAL"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/h;->h:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/h;->c:Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/h;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public final startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Received startElement "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "result"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/h;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "StartElement> Found result but it is not the first token."

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/h;->a:Ljava/util/Stack;

    const-string v1, "result"

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v0, "interpretation"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/h;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/h;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "result"

    if-eq v0, v1, :cond_4

    :cond_3
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "StartElement> The interpretation token was found without a result being opened before."

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/h;->a:Ljava/util/Stack;

    const-string v1, "interpretation"

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "timing"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "confidence"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "word_confidence"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v0, :cond_5

    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "StartElement> There are no timings associated with this interpretation."

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    if-nez v1, :cond_6

    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "StartElement> There is no confidence associated with this interpretation."

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iput-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/h;->d:Ljava/lang/String;

    iput-object v2, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/h;->e:Ljava/lang/String;

    :try_start_0
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/h;->f:D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Lorg/xml/sax/SAXException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "StartElement> Could not parse the confidence: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :cond_7
    const-string v0, "input"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/h;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/h;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "interpretation"

    if-eq v0, v1, :cond_9

    :cond_8
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "StartElement> The input token was found without a interpretation being opened before."

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/h;->a:Ljava/util/Stack;

    const-string v1, "input"

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_a
    const-string v0, "NSS_Audio_Statistics"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/h;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/h;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "result"

    if-eq v0, v1, :cond_c

    :cond_b
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "StartElement> The NSS_Audio_Statistics token was found without a result being opened before."

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/h;->a:Ljava/util/Stack;

    const-string v1, "NSS_Audio_Statistics"

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method
