.class Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity$4;
.super Ljava/lang/Object;
.source "AutoCompleteTextViewActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private temp:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity$4;->this$0:Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity$4;->temp:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 7
    .parameter "arg0"

    .prologue
    const/16 v6, 0x32

    .line 205
    iget-object v3, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity$4;->this$0:Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;

    #getter for: Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;->mAutoComplete:Landroid/widget/AutoCompleteTextView;
    invoke-static {v3}, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;->access$000(Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 206
    .local v1, start:I
    iget-object v3, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity$4;->this$0:Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;

    #getter for: Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;->mAutoComplete:Landroid/widget/AutoCompleteTextView;
    invoke-static {v3}, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;->access$000(Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 207
    .local v0, end:I
    iget-object v3, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity$4;->temp:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-le v3, v6, :cond_1

    .line 208
    const-string v3, "AutoCompleteTextViewActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " end = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    if-le v1, v6, :cond_0

    .line 210
    const/16 v1, 0x33

    .line 212
    :cond_0
    add-int/lit8 v3, v1, -0x1

    invoke-interface {p1, v3, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 213
    move v2, v1

    .line 214
    .local v2, tempIndex:I
    iget-object v3, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity$4;->this$0:Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;

    #getter for: Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;->mAutoComplete:Landroid/widget/AutoCompleteTextView;
    invoke-static {v3}, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;->access$000(Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v3, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity$4;->this$0:Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;

    #getter for: Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;->mAutoComplete:Landroid/widget/AutoCompleteTextView;
    invoke-static {v3}, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;->access$000(Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v3

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 217
    .end local v2           #tempIndex:I
    :cond_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 223
    iput-object p1, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity$4;->temp:Ljava/lang/CharSequence;

    .line 224
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 230
    return-void
.end method
