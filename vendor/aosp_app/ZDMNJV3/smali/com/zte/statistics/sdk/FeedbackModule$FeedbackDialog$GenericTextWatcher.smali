.class final Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog$GenericTextWatcher;
.super Ljava/lang/Object;
.source "FeedbackModule.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GenericTextWatcher"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;

.field private view:Landroid/view/View;


# direct methods
.method private constructor <init>(Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter "view"

    .prologue
    .line 224
    iput-object p1, p0, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog$GenericTextWatcher;->this$1:Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    iput-object p2, p0, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog$GenericTextWatcher;->view:Landroid/view/View;

    .line 226
    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;Landroid/view/View;Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog$GenericTextWatcher;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 224
    invoke-direct {p0, p1, p2}, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog$GenericTextWatcher;-><init>(Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6
    .parameter "editable"

    .prologue
    .line 233
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 234
    .local v2, text:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 236
    .local v1, length:I
    iget-object v3, p0, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog$GenericTextWatcher;->view:Landroid/view/View;

    iget-object v4, p0, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog$GenericTextWatcher;->this$1:Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;

    #getter for: Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->this$0:Lcom/zte/statistics/sdk/FeedbackModule;
    invoke-static {v4}, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->access$2(Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;)Lcom/zte/statistics/sdk/FeedbackModule;

    move-result-object v4

    #getter for: Lcom/zte/statistics/sdk/FeedbackModule;->feedbackText:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/zte/statistics/sdk/FeedbackModule;->access$0(Lcom/zte/statistics/sdk/FeedbackModule;)Landroid/widget/EditText;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 237
    const/16 v3, 0x64

    if-gt v1, v3, :cond_0

    .line 243
    iget-object v3, p0, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog$GenericTextWatcher;->this$1:Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;

    #getter for: Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->this$0:Lcom/zte/statistics/sdk/FeedbackModule;
    invoke-static {v3}, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->access$2(Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;)Lcom/zte/statistics/sdk/FeedbackModule;

    move-result-object v3

    #getter for: Lcom/zte/statistics/sdk/FeedbackModule;->spareView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/zte/statistics/sdk/FeedbackModule;->access$1(Lcom/zte/statistics/sdk/FeedbackModule;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "100/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    :cond_0
    iget-object v3, p0, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog$GenericTextWatcher;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v0

    .line 250
    .local v0, id:I
    iget-object v3, p0, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog$GenericTextWatcher;->this$1:Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;

    #getter for: Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->context:Landroid/content/Context;
    invoke-static {v3}, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->access$0(Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "zte_feedback_user_email"

    invoke-static {v3, v4}, Lcom/zte/statistics/sdk/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-ne v0, v3, :cond_2

    .line 251
    iget-object v3, p0, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog$GenericTextWatcher;->this$1:Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;

    #getter for: Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->this$0:Lcom/zte/statistics/sdk/FeedbackModule;
    invoke-static {v3}, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->access$2(Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;)Lcom/zte/statistics/sdk/FeedbackModule;

    move-result-object v3

    #getter for: Lcom/zte/statistics/sdk/FeedbackModule;->feedback:Lcom/zte/statistics/sdk/offline/FeedbackPayload;
    invoke-static {v3}, Lcom/zte/statistics/sdk/FeedbackModule;->access$2(Lcom/zte/statistics/sdk/FeedbackModule;)Lcom/zte/statistics/sdk/offline/FeedbackPayload;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/zte/statistics/sdk/offline/FeedbackPayload;->setEmail(Ljava/lang/String;)V

    .line 260
    :cond_1
    :goto_0
    return-void

    .line 252
    :cond_2
    iget-object v3, p0, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog$GenericTextWatcher;->this$1:Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;

    #getter for: Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->context:Landroid/content/Context;
    invoke-static {v3}, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->access$0(Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "zte_feedback_text"

    invoke-static {v3, v4}, Lcom/zte/statistics/sdk/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-ne v0, v3, :cond_1

    .line 253
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 254
    iget-object v3, p0, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog$GenericTextWatcher;->this$1:Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;

    iget-object v4, p0, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog$GenericTextWatcher;->this$1:Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;

    #getter for: Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->context:Landroid/content/Context;
    invoke-static {v4}, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->access$0(Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "zte_button_send"

    invoke-static {v4, v5}, Lcom/zte/statistics/sdk/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 256
    :cond_3
    iget-object v3, p0, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog$GenericTextWatcher;->this$1:Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;

    iget-object v4, p0, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog$GenericTextWatcher;->this$1:Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;

    #getter for: Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->context:Landroid/content/Context;
    invoke-static {v4}, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->access$0(Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "zte_button_send"

    invoke-static {v4, v5}, Lcom/zte/statistics/sdk/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 257
    iget-object v3, p0, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog$GenericTextWatcher;->this$1:Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;

    #getter for: Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->this$0:Lcom/zte/statistics/sdk/FeedbackModule;
    invoke-static {v3}, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->access$2(Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;)Lcom/zte/statistics/sdk/FeedbackModule;

    move-result-object v3

    #getter for: Lcom/zte/statistics/sdk/FeedbackModule;->feedback:Lcom/zte/statistics/sdk/offline/FeedbackPayload;
    invoke-static {v3}, Lcom/zte/statistics/sdk/FeedbackModule;->access$2(Lcom/zte/statistics/sdk/FeedbackModule;)Lcom/zte/statistics/sdk/offline/FeedbackPayload;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/zte/statistics/sdk/offline/FeedbackPayload;->setFeedback(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "charSequence"
    .parameter "i"
    .parameter "i1"
    .parameter "i2"

    .prologue
    .line 228
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "charSequence"
    .parameter "i"
    .parameter "i1"
    .parameter "i2"

    .prologue
    .line 230
    return-void
.end method
