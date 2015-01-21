.class Lcom/android/quicksearchbox/ui/WebSearchSuggestionView$KeyListener;
.super Ljava/lang/Object;
.source "WebSearchSuggestionView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/ui/WebSearchSuggestionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quicksearchbox/ui/WebSearchSuggestionView;


# direct methods
.method private constructor <init>(Lcom/android/quicksearchbox/ui/WebSearchSuggestionView;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/WebSearchSuggestionView$KeyListener;->this$0:Lcom/android/quicksearchbox/ui/WebSearchSuggestionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/quicksearchbox/ui/WebSearchSuggestionView;Lcom/android/quicksearchbox/ui/WebSearchSuggestionView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/ui/WebSearchSuggestionView$KeyListener;-><init>(Lcom/android/quicksearchbox/ui/WebSearchSuggestionView;)V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 77
    const/4 v0, 0x0

    .line 78
    .local v0, consumed:Z
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 79
    const/16 v1, 0x16

    if-ne p2, v1, :cond_1

    iget-object v1, p0, Lcom/android/quicksearchbox/ui/WebSearchSuggestionView$KeyListener;->this$0:Lcom/android/quicksearchbox/ui/WebSearchSuggestionView;

    iget-object v1, v1, Lcom/android/quicksearchbox/ui/BaseSuggestionView;->mIcon2:Landroid/widget/ImageView;

    if-eq p1, v1, :cond_1

    .line 80
    iget-object v1, p0, Lcom/android/quicksearchbox/ui/WebSearchSuggestionView$KeyListener;->this$0:Lcom/android/quicksearchbox/ui/WebSearchSuggestionView;

    iget-object v1, v1, Lcom/android/quicksearchbox/ui/BaseSuggestionView;->mIcon2:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    move-result v0

    .line 85
    :cond_0
    :goto_0
    return v0

    .line 81
    :cond_1
    const/16 v1, 0x15

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lcom/android/quicksearchbox/ui/WebSearchSuggestionView$KeyListener;->this$0:Lcom/android/quicksearchbox/ui/WebSearchSuggestionView;

    iget-object v1, v1, Lcom/android/quicksearchbox/ui/BaseSuggestionView;->mIcon2:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/android/quicksearchbox/ui/WebSearchSuggestionView$KeyListener;->this$0:Lcom/android/quicksearchbox/ui/WebSearchSuggestionView;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    move-result v0

    goto :goto_0
.end method
