.class Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity$2;
.super Ljava/lang/Object;
.source "AutoCompleteTextViewActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity$2;->this$0:Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    .line 128
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/16 v1, 0x17

    if-ne p2, v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity$2;->this$0:Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 131
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity$2;->this$0:Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;

    #getter for: Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;->mAutoComplete:Landroid/widget/AutoCompleteTextView;
    invoke-static {v1}, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;->access$000(Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 133
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return v3
.end method
