.class Lcom/android/quicksearchbox/ui/WebSearchSuggestionView$1;
.super Ljava/lang/Object;
.source "WebSearchSuggestionView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quicksearchbox/ui/WebSearchSuggestionView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quicksearchbox/ui/WebSearchSuggestionView;


# direct methods
.method constructor <init>(Lcom/android/quicksearchbox/ui/WebSearchSuggestionView;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/WebSearchSuggestionView$1;->this$0:Lcom/android/quicksearchbox/ui/WebSearchSuggestionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/WebSearchSuggestionView$1;->this$0:Lcom/android/quicksearchbox/ui/WebSearchSuggestionView;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/ui/BaseSuggestionView;->onSuggestionQueryRefineClicked()V

    .line 52
    return-void
.end method