.class Lcom/zte/feedback/FeedbackActivity$5;
.super Ljava/lang/Thread;
.source "FeedbackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/feedback/FeedbackActivity;->submit()V
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
    .line 165
    iput-object p1, p0, Lcom/zte/feedback/FeedbackActivity$5;->this$0:Lcom/zte/feedback/FeedbackActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 169
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/zte/feedback/FeedbackActivity$5;->this$0:Lcom/zte/feedback/FeedbackActivity;

    #getter for: Lcom/zte/feedback/FeedbackActivity;->feedback:Lcom/zte/feedback/FeedbackPayload;
    invoke-static {v1}, Lcom/zte/feedback/FeedbackActivity;->access$600(Lcom/zte/feedback/FeedbackActivity;)Lcom/zte/feedback/FeedbackPayload;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/feedback/FeedbackPayload;->sendFeedBack()Z

    move-result v1

    if-ne v0, v1, :cond_1

    .line 170
    invoke-static {}, Lcom/zte/feedback/FeedbackActivity;->access$700()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "fdText"

    const-string v2, "1234567890"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/zte/feedback/FeedbackActivity;->access$700()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "lastSent"

    const-string v3, "9876543210"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    #calls: Lcom/zte/feedback/FeedbackActivity;->clearFeedbackText()V
    invoke-static {}, Lcom/zte/feedback/FeedbackActivity;->access$800()V

    .line 172
    invoke-static {}, Lcom/zte/feedback/FeedbackActivity;->access$400()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "fdText"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 173
    invoke-static {}, Lcom/zte/feedback/FeedbackActivity;->access$400()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lastSent"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 174
    invoke-static {}, Lcom/zte/feedback/FeedbackActivity;->access$400()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 176
    :cond_0
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->showFeedbackSucess()V

    .line 180
    :goto_0
    return-void

    .line 178
    :cond_1
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->showFeedbackFail()V

    goto :goto_0
.end method
