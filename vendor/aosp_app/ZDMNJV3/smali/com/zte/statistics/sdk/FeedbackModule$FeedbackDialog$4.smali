.class Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog$4;
.super Ljava/lang/Object;
.source "FeedbackModule.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->show(Lcom/zte/statistics/sdk/FeedbackModule$Trigger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;


# direct methods
.method constructor <init>(Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog$4;->this$1:Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/4 v4, 0x0

    .line 197
    iget-object v0, p0, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog$4;->this$1:Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;

    #getter for: Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->this$0:Lcom/zte/statistics/sdk/FeedbackModule;
    invoke-static {v0}, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->access$2(Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;)Lcom/zte/statistics/sdk/FeedbackModule;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog$4;->this$1:Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;

    #getter for: Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->this$0:Lcom/zte/statistics/sdk/FeedbackModule;
    invoke-static {v1}, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->access$2(Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;)Lcom/zte/statistics/sdk/FeedbackModule;

    move-result-object v1

    #getter for: Lcom/zte/statistics/sdk/FeedbackModule;->emailText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/zte/statistics/sdk/FeedbackModule;->access$10(Lcom/zte/statistics/sdk/FeedbackModule;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/zte/statistics/sdk/FeedbackModule;->isSutibleForEmai(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/zte/statistics/sdk/FeedbackModule;->access$12(Lcom/zte/statistics/sdk/FeedbackModule;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog$4;->this$1:Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;

    #getter for: Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->this$0:Lcom/zte/statistics/sdk/FeedbackModule;
    invoke-static {v0}, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->access$2(Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;)Lcom/zte/statistics/sdk/FeedbackModule;

    move-result-object v0

    #calls: Lcom/zte/statistics/sdk/FeedbackModule;->submit()V
    invoke-static {v0}, Lcom/zte/statistics/sdk/FeedbackModule;->access$13(Lcom/zte/statistics/sdk/FeedbackModule;)V

    .line 199
    iget-object v0, p0, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog$4;->this$1:Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;

    invoke-virtual {v0}, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->dismiss()V

    .line 200
    iget-object v0, p0, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog$4;->this$1:Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;

    #getter for: Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->access$0(Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog$4;->this$1:Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;

    #getter for: Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->access$0(Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog$4;->this$1:Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;

    #getter for: Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->context:Landroid/content/Context;
    invoke-static {v2}, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->access$0(Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "sentSuccess"

    invoke-static {v2, v3}, Lcom/zte/statistics/sdk/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 201
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 207
    :goto_0
    return-void

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog$4;->this$1:Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;

    #getter for: Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->access$0(Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog$4;->this$1:Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;

    #getter for: Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->access$0(Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog$4;->this$1:Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;

    #getter for: Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->context:Landroid/content/Context;
    invoke-static {v2}, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->access$0(Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "email_error"

    invoke-static {v2, v3}, Lcom/zte/statistics/sdk/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 205
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
