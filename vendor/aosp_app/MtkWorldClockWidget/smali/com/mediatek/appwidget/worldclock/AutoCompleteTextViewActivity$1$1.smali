.class Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity$1$1;
.super Ljava/util/TimerTask;
.source "AutoCompleteTextViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity$1;->onFocusChange(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity$1;


# direct methods
.method constructor <init>(Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity$1;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity$1$1;->this$1:Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity$1;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 115
    iget-object v1, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity$1$1;->this$1:Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity$1;

    iget-object v1, v1, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity$1;->this$0:Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 116
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity$1$1;->this$1:Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity$1;

    iget-object v1, v1, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity$1;->this$0:Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;

    #getter for: Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;->mAutoComplete:Landroid/widget/AutoCompleteTextView;
    invoke-static {v1}, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;->access$000(Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 117
    return-void
.end method
