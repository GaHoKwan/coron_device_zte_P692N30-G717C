.class Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity$1;
.super Ljava/lang/Object;
.source "AutoCompleteTextViewActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    .line 109
    iput-object p1, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity$1;->this$0:Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 111
    iget-object v1, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity$1;->this$0:Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;

    #getter for: Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;->mAutoComplete:Landroid/widget/AutoCompleteTextView;
    invoke-static {v1}, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;->access$000(Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 113
    .local v0, timer:Ljava/util/Timer;
    new-instance v1, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity$1$1;

    invoke-direct {v1, p0}, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity$1$1;-><init>(Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity$1;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 120
    .end local v0           #timer:Ljava/util/Timer;
    :cond_0
    return-void
.end method
