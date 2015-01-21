.class Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane$CorpusSelectionListener;
.super Ljava/lang/Object;
.source "SearchActivityViewTwoPane.java"

# interfaces
.implements Lcom/android/quicksearchbox/CorpusSelectionDialog$OnCorpusSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CorpusSelectionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;


# direct methods
.method private constructor <init>(Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;)V
    .locals 0
    .parameter

    .prologue
    .line 259
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane$CorpusSelectionListener;->this$0:Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 259
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane$CorpusSelectionListener;-><init>(Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;)V

    return-void
.end method


# virtual methods
.method public onCorpusSelected(Ljava/lang/String;)V
    .locals 1
    .parameter "corpusName"

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane$CorpusSelectionListener;->this$0:Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;

    invoke-virtual {v0, p1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->onCorpusSelected(Ljava/lang/String;)V

    .line 262
    return-void
.end method
