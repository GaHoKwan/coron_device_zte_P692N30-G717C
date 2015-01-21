.class final Lcom/zte/feedback/FeedbackActivity$GenericTextWatcher;
.super Ljava/lang/Object;
.source "FeedbackActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/feedback/FeedbackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GenericTextWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/feedback/FeedbackActivity;

.field private view:Landroid/view/View;


# direct methods
.method private constructor <init>(Lcom/zte/feedback/FeedbackActivity;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter "view"

    .prologue
    .line 189
    iput-object p1, p0, Lcom/zte/feedback/FeedbackActivity$GenericTextWatcher;->this$0:Lcom/zte/feedback/FeedbackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    iput-object p2, p0, Lcom/zte/feedback/FeedbackActivity$GenericTextWatcher;->view:Landroid/view/View;

    .line 191
    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/feedback/FeedbackActivity;Landroid/view/View;Lcom/zte/feedback/FeedbackActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 185
    invoke-direct {p0, p1, p2}, Lcom/zte/feedback/FeedbackActivity$GenericTextWatcher;-><init>(Lcom/zte/feedback/FeedbackActivity;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6
    .parameter "editable"

    .prologue
    .line 195
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 196
    .local v2, text:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 198
    .local v1, length:I
    iget-object v3, p0, Lcom/zte/feedback/FeedbackActivity$GenericTextWatcher;->view:Landroid/view/View;

    iget-object v4, p0, Lcom/zte/feedback/FeedbackActivity$GenericTextWatcher;->this$0:Lcom/zte/feedback/FeedbackActivity;

    #getter for: Lcom/zte/feedback/FeedbackActivity;->feedbackText:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/zte/feedback/FeedbackActivity;->access$000(Lcom/zte/feedback/FeedbackActivity;)Landroid/widget/EditText;

    move-result-object v4

    if-ne v3, v4, :cond_0

    const/16 v3, 0x1f4

    if-gt v1, v3, :cond_0

    .line 199
    iget-object v3, p0, Lcom/zte/feedback/FeedbackActivity$GenericTextWatcher;->this$0:Lcom/zte/feedback/FeedbackActivity;

    #getter for: Lcom/zte/feedback/FeedbackActivity;->spareView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/zte/feedback/FeedbackActivity;->access$900(Lcom/zte/feedback/FeedbackActivity;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "500/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    :cond_0
    iget-object v3, p0, Lcom/zte/feedback/FeedbackActivity$GenericTextWatcher;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v0

    .line 203
    .local v0, id:I
    const v3, 0x7f0e00d3

    if-ne v0, v3, :cond_2

    .line 204
    iget-object v3, p0, Lcom/zte/feedback/FeedbackActivity$GenericTextWatcher;->this$0:Lcom/zte/feedback/FeedbackActivity;

    #getter for: Lcom/zte/feedback/FeedbackActivity;->feedback:Lcom/zte/feedback/FeedbackPayload;
    invoke-static {v3}, Lcom/zte/feedback/FeedbackActivity;->access$600(Lcom/zte/feedback/FeedbackActivity;)Lcom/zte/feedback/FeedbackPayload;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/zte/feedback/FeedbackPayload;->setEmail(Ljava/lang/String;)V

    .line 205
    invoke-static {}, Lcom/zte/feedback/FeedbackActivity;->access$400()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "emText"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 215
    :cond_1
    :goto_0
    return-void

    .line 206
    :cond_2
    const v3, 0x7f0e00d5

    if-ne v0, v3, :cond_1

    .line 207
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 208
    iget-object v3, p0, Lcom/zte/feedback/FeedbackActivity$GenericTextWatcher;->this$0:Lcom/zte/feedback/FeedbackActivity;

    #getter for: Lcom/zte/feedback/FeedbackActivity;->zte_button_send:Landroid/widget/Button;
    invoke-static {v3}, Lcom/zte/feedback/FeedbackActivity;->access$1000(Lcom/zte/feedback/FeedbackActivity;)Landroid/widget/Button;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 213
    :goto_1
    invoke-static {}, Lcom/zte/feedback/FeedbackActivity;->access$400()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "fdText"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 210
    :cond_3
    iget-object v3, p0, Lcom/zte/feedback/FeedbackActivity$GenericTextWatcher;->this$0:Lcom/zte/feedback/FeedbackActivity;

    #getter for: Lcom/zte/feedback/FeedbackActivity;->zte_button_send:Landroid/widget/Button;
    invoke-static {v3}, Lcom/zte/feedback/FeedbackActivity;->access$1000(Lcom/zte/feedback/FeedbackActivity;)Landroid/widget/Button;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 211
    iget-object v3, p0, Lcom/zte/feedback/FeedbackActivity$GenericTextWatcher;->this$0:Lcom/zte/feedback/FeedbackActivity;

    #getter for: Lcom/zte/feedback/FeedbackActivity;->feedback:Lcom/zte/feedback/FeedbackPayload;
    invoke-static {v3}, Lcom/zte/feedback/FeedbackActivity;->access$600(Lcom/zte/feedback/FeedbackActivity;)Lcom/zte/feedback/FeedbackPayload;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/zte/feedback/FeedbackPayload;->setFeedback(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 220
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 225
    return-void
.end method
