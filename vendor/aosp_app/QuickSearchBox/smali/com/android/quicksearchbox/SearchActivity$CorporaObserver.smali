.class Lcom/android/quicksearchbox/SearchActivity$CorporaObserver;
.super Landroid/database/DataSetObserver;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CorporaObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quicksearchbox/SearchActivity;


# direct methods
.method private constructor <init>(Lcom/android/quicksearchbox/SearchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 738
    iput-object p1, p0, Lcom/android/quicksearchbox/SearchActivity$CorporaObserver;->this$0:Lcom/android/quicksearchbox/SearchActivity;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/quicksearchbox/SearchActivity;Lcom/android/quicksearchbox/SearchActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 738
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/SearchActivity$CorporaObserver;-><init>(Lcom/android/quicksearchbox/SearchActivity;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 3

    .prologue
    .line 741
    iget-object v2, p0, Lcom/android/quicksearchbox/SearchActivity$CorporaObserver;->this$0:Lcom/android/quicksearchbox/SearchActivity;

    #calls: Lcom/android/quicksearchbox/SearchActivity;->getCorpusName()Ljava/lang/String;
    invoke-static {v2}, Lcom/android/quicksearchbox/SearchActivity;->access$600(Lcom/android/quicksearchbox/SearchActivity;)Ljava/lang/String;

    move-result-object v1

    .line 742
    .local v1, currentCorpusName:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/quicksearchbox/SearchActivity$CorporaObserver;->this$0:Lcom/android/quicksearchbox/SearchActivity;

    invoke-static {v2}, Lcom/android/quicksearchbox/QsbApplication;->get(Landroid/content/Context;)Lcom/android/quicksearchbox/QsbApplication;

    move-result-object v0

    .line 747
    .local v0, app:Lcom/android/quicksearchbox/QsbApplication;
    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/android/quicksearchbox/QsbApplication;->isCorpusEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 749
    const/4 v1, 0x0

    .line 752
    :cond_0
    iget-object v2, p0, Lcom/android/quicksearchbox/SearchActivity$CorporaObserver;->this$0:Lcom/android/quicksearchbox/SearchActivity;

    #calls: Lcom/android/quicksearchbox/SearchActivity;->setCorpus(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/android/quicksearchbox/SearchActivity;->access$700(Lcom/android/quicksearchbox/SearchActivity;Ljava/lang/String;)V

    .line 753
    iget-object v2, p0, Lcom/android/quicksearchbox/SearchActivity$CorporaObserver;->this$0:Lcom/android/quicksearchbox/SearchActivity;

    invoke-virtual {v2}, Lcom/android/quicksearchbox/SearchActivity;->updateSuggestions()V

    .line 754
    return-void
.end method
