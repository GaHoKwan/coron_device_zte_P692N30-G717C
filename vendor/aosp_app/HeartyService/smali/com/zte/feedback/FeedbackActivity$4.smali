.class Lcom/zte/feedback/FeedbackActivity$4;
.super Ljava/lang/Object;
.source "FeedbackActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/feedback/FeedbackActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/feedback/FeedbackActivity;


# direct methods
.method constructor <init>(Lcom/zte/feedback/FeedbackActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/zte/feedback/FeedbackActivity$4;->this$0:Lcom/zte/feedback/FeedbackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    const/4 v5, 0x0

    .line 102
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v2

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 103
    .local v0, connManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 104
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 105
    iget-object v2, p0, Lcom/zte/feedback/FeedbackActivity$4;->this$0:Lcom/zte/feedback/FeedbackActivity;

    iget-object v3, p0, Lcom/zte/feedback/FeedbackActivity$4;->this$0:Lcom/zte/feedback/FeedbackActivity;

    #getter for: Lcom/zte/feedback/FeedbackActivity;->emailText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/zte/feedback/FeedbackActivity;->access$200(Lcom/zte/feedback/FeedbackActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/zte/feedback/FeedbackActivity;->isSutibleForEmai(Ljava/lang/String;)Z
    invoke-static {v2, v3}, Lcom/zte/feedback/FeedbackActivity;->access$300(Lcom/zte/feedback/FeedbackActivity;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 106
    invoke-static {}, Lcom/zte/feedback/FeedbackActivity;->access$400()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "lastSent"

    iget-object v4, p0, Lcom/zte/feedback/FeedbackActivity$4;->this$0:Lcom/zte/feedback/FeedbackActivity;

    #getter for: Lcom/zte/feedback/FeedbackActivity;->feedbackText:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/zte/feedback/FeedbackActivity;->access$000(Lcom/zte/feedback/FeedbackActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 107
    iget-object v2, p0, Lcom/zte/feedback/FeedbackActivity$4;->this$0:Lcom/zte/feedback/FeedbackActivity;

    #calls: Lcom/zte/feedback/FeedbackActivity;->submit()V
    invoke-static {v2}, Lcom/zte/feedback/FeedbackActivity;->access$500(Lcom/zte/feedback/FeedbackActivity;)V

    .line 108
    iget-object v2, p0, Lcom/zte/feedback/FeedbackActivity$4;->this$0:Lcom/zte/feedback/FeedbackActivity;

    iget-object v3, p0, Lcom/zte/feedback/FeedbackActivity$4;->this$0:Lcom/zte/feedback/FeedbackActivity;

    const v4, 0x7f0a0448

    invoke-virtual {v3, v4}, Lcom/zte/feedback/FeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 109
    iget-object v2, p0, Lcom/zte/feedback/FeedbackActivity$4;->this$0:Lcom/zte/feedback/FeedbackActivity;

    invoke-virtual {v2}, Lcom/zte/feedback/FeedbackActivity;->finish()V

    .line 117
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v2, p0, Lcom/zte/feedback/FeedbackActivity$4;->this$0:Lcom/zte/feedback/FeedbackActivity;

    iget-object v3, p0, Lcom/zte/feedback/FeedbackActivity$4;->this$0:Lcom/zte/feedback/FeedbackActivity;

    const v4, 0x7f0a0451

    invoke-virtual {v3, v4}, Lcom/zte/feedback/FeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 114
    :cond_1
    iget-object v2, p0, Lcom/zte/feedback/FeedbackActivity$4;->this$0:Lcom/zte/feedback/FeedbackActivity;

    iget-object v3, p0, Lcom/zte/feedback/FeedbackActivity$4;->this$0:Lcom/zte/feedback/FeedbackActivity;

    const v4, 0x7f0a044b

    invoke-virtual {v3, v4}, Lcom/zte/feedback/FeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
