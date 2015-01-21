.class Lcom/zte/zdm/application/activities/bh;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/zte/zdm/application/activities/FeedbackActivity;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/activities/FeedbackActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/activities/bh;->a:Lcom/zte/zdm/application/activities/FeedbackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const v3, 0x7f090174

    const/4 v4, 0x0

    invoke-static {}, Lcom/zte/zdm/c/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/application/activities/bh;->a:Lcom/zte/zdm/application/activities/FeedbackActivity;

    invoke-static {v0}, Lcom/zte/zdm/application/activities/FeedbackActivity;->a(Lcom/zte/zdm/application/activities/FeedbackActivity;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090178

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/application/activities/bh;->a:Lcom/zte/zdm/application/activities/FeedbackActivity;

    invoke-static {v0}, Lcom/zte/zdm/application/activities/FeedbackActivity;->b(Lcom/zte/zdm/application/activities/FeedbackActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/activities/bh;->a:Lcom/zte/zdm/application/activities/FeedbackActivity;

    invoke-static {v1}, Lcom/zte/zdm/application/activities/FeedbackActivity;->c(Lcom/zte/zdm/application/activities/FeedbackActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/zte/zdm/application/activities/bh;->a:Lcom/zte/zdm/application/activities/FeedbackActivity;

    invoke-static {v0}, Lcom/zte/zdm/application/activities/FeedbackActivity;->a(Lcom/zte/zdm/application/activities/FeedbackActivity;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090175

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    iget-object v0, p0, Lcom/zte/zdm/application/activities/bh;->a:Lcom/zte/zdm/application/activities/FeedbackActivity;

    invoke-static {v0}, Lcom/zte/zdm/application/activities/FeedbackActivity;->a(Lcom/zte/zdm/application/activities/FeedbackActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/zte/zdm/application/activities/bh;->a:Lcom/zte/zdm/application/activities/FeedbackActivity;

    invoke-static {v2, v1}, Lcom/zte/zdm/application/activities/FeedbackActivity;->a(Lcom/zte/zdm/application/activities/FeedbackActivity;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v0, p0, Lcom/zte/zdm/application/activities/bh;->a:Lcom/zte/zdm/application/activities/FeedbackActivity;

    invoke-static {v0}, Lcom/zte/zdm/application/activities/FeedbackActivity;->a(Lcom/zte/zdm/application/activities/FeedbackActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/zte/zdm/application/activities/bh;->a:Lcom/zte/zdm/application/activities/FeedbackActivity;

    invoke-static {v2}, Lcom/zte/zdm/application/activities/FeedbackActivity;->a(Lcom/zte/zdm/application/activities/FeedbackActivity;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/zte/zdm/c/a;->a(Landroid/content/Context;)Lcom/zte/zdm/c/a;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v0, v3, v1}, Lcom/zte/zdm/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/activities/bh;->a:Lcom/zte/zdm/application/activities/FeedbackActivity;

    invoke-static {v0}, Lcom/zte/zdm/application/activities/FeedbackActivity;->a(Lcom/zte/zdm/application/activities/FeedbackActivity;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090173

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/zte/zdm/application/activities/bh;->a:Lcom/zte/zdm/application/activities/FeedbackActivity;

    invoke-static {v0}, Lcom/zte/zdm/application/activities/FeedbackActivity;->a(Lcom/zte/zdm/application/activities/FeedbackActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    iget-object v0, p0, Lcom/zte/zdm/application/activities/bh;->a:Lcom/zte/zdm/application/activities/FeedbackActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/zte/zdm/application/activities/FeedbackActivity;->a(Lcom/zte/zdm/application/activities/FeedbackActivity;Landroid/app/Activity;)Landroid/app/Activity;

    goto/16 :goto_0
.end method
