.class public Lcom/android/quicksearchbox/WebCorpus$WebResult;
.super Lcom/android/quicksearchbox/MultiSourceCorpus$Result;
.source "WebCorpus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/WebCorpus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "WebResult"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quicksearchbox/WebCorpus;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/WebCorpus;Ljava/lang/String;Ljava/util/ArrayList;I)V
    .locals 0
    .parameter
    .parameter "query"
    .parameter
    .parameter "latency"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/quicksearchbox/SourceResult;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 170
    .local p3, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/quicksearchbox/SourceResult;>;"
    iput-object p1, p0, Lcom/android/quicksearchbox/WebCorpus$WebResult;->this$0:Lcom/android/quicksearchbox/WebCorpus;

    .line 171
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/quicksearchbox/MultiSourceCorpus$Result;-><init>(Lcom/android/quicksearchbox/MultiSourceCorpus;Ljava/lang/String;Ljava/util/ArrayList;I)V

    .line 172
    return-void
.end method


# virtual methods
.method public fill()V
    .locals 9

    .prologue
    .line 176
    const/4 v6, 0x0

    .line 177
    .local v6, webSearchResult:Lcom/android/quicksearchbox/SourceResult;
    const/4 v0, 0x0

    .line 178
    .local v0, browserResult:Lcom/android/quicksearchbox/SourceResult;
    invoke-virtual {p0}, Lcom/android/quicksearchbox/MultiSourceCorpus$Result;->getResults()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/quicksearchbox/SourceResult;

    .line 179
    .local v5, result:Lcom/android/quicksearchbox/SourceResult;
    invoke-interface {v5}, Lcom/android/quicksearchbox/SourceResult;->getSource()Lcom/android/quicksearchbox/Source;

    move-result-object v7

    iget-object v8, p0, Lcom/android/quicksearchbox/WebCorpus$WebResult;->this$0:Lcom/android/quicksearchbox/WebCorpus;

    #getter for: Lcom/android/quicksearchbox/WebCorpus;->mWebSearchSource:Lcom/android/quicksearchbox/Source;
    invoke-static {v8}, Lcom/android/quicksearchbox/WebCorpus;->access$000(Lcom/android/quicksearchbox/WebCorpus;)Lcom/android/quicksearchbox/Source;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 180
    move-object v6, v5

    goto :goto_0

    .line 182
    :cond_0
    move-object v0, v5

    goto :goto_0

    .line 186
    .end local v5           #result:Lcom/android/quicksearchbox/SourceResult;
    :cond_1
    if-eqz v0, :cond_2

    .line 187
    invoke-interface {v0}, Lcom/android/quicksearchbox/SourceResult;->getCount()I

    move-result v1

    .line 188
    .local v1, c:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v1, :cond_2

    .line 189
    new-instance v7, Lcom/android/quicksearchbox/SuggestionPosition;

    invoke-direct {v7, v0, v3}, Lcom/android/quicksearchbox/SuggestionPosition;-><init>(Lcom/android/quicksearchbox/SuggestionCursor;I)V

    invoke-virtual {p0, v7}, Lcom/android/quicksearchbox/ListSuggestionCursor;->add(Lcom/android/quicksearchbox/Suggestion;)Z

    .line 188
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 193
    .end local v1           #c:I
    .end local v3           #i:I
    :cond_2
    if-eqz v6, :cond_3

    .line 194
    invoke-interface {v6}, Lcom/android/quicksearchbox/SourceResult;->getCount()I

    move-result v2

    .line 195
    .local v2, count:I
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_2
    if-ge v3, v2, :cond_3

    .line 196
    new-instance v7, Lcom/android/quicksearchbox/SuggestionPosition;

    invoke-direct {v7, v6, v3}, Lcom/android/quicksearchbox/SuggestionPosition;-><init>(Lcom/android/quicksearchbox/SuggestionCursor;I)V

    invoke-virtual {p0, v7}, Lcom/android/quicksearchbox/ListSuggestionCursor;->add(Lcom/android/quicksearchbox/Suggestion;)Z

    .line 195
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 199
    .end local v2           #count:I
    .end local v3           #i:I
    :cond_3
    return-void
.end method
