.class public Lada;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/settings/FeedBackActivity;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/settings/FeedBackActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lada;->a:Lcom/sohu/inputmethod/settings/FeedBackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter

    .prologue
    const/4 v0, 0x7

    const/4 v7, 0x5

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 143
    iget-object v2, p0, Lada;->a:Lcom/sohu/inputmethod/settings/FeedBackActivity;

    const-string v3, "commit click"

    invoke-static {v2, v3}, Lcom/sohu/inputmethod/settings/FeedBackActivity;->a(Lcom/sohu/inputmethod/settings/FeedBackActivity;Ljava/lang/String;)V

    .line 144
    iget-object v2, p0, Lada;->a:Lcom/sohu/inputmethod/settings/FeedBackActivity;

    invoke-virtual {v2}, Lcom/sohu/inputmethod/settings/FeedBackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v2

    iget v3, v2, Lamo;->s:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lamo;->s:I

    .line 145
    iget-object v2, p0, Lada;->a:Lcom/sohu/inputmethod/settings/FeedBackActivity;

    iget-object v3, p0, Lada;->a:Lcom/sohu/inputmethod/settings/FeedBackActivity;

    invoke-static {v3}, Lcom/sohu/inputmethod/settings/FeedBackActivity;->a(Lcom/sohu/inputmethod/settings/FeedBackActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sohu/inputmethod/settings/FeedBackActivity;->a(Lcom/sohu/inputmethod/settings/FeedBackActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 146
    iget-object v2, p0, Lada;->a:Lcom/sohu/inputmethod/settings/FeedBackActivity;

    iget-object v3, p0, Lada;->a:Lcom/sohu/inputmethod/settings/FeedBackActivity;

    invoke-static {v3}, Lcom/sohu/inputmethod/settings/FeedBackActivity;->b(Lcom/sohu/inputmethod/settings/FeedBackActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sohu/inputmethod/settings/FeedBackActivity;->b(Lcom/sohu/inputmethod/settings/FeedBackActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 147
    iget-object v2, p0, Lada;->a:Lcom/sohu/inputmethod/settings/FeedBackActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Feedback:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lada;->a:Lcom/sohu/inputmethod/settings/FeedBackActivity;

    invoke-static {v4}, Lcom/sohu/inputmethod/settings/FeedBackActivity;->a(Lcom/sohu/inputmethod/settings/FeedBackActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&contact:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lada;->a:Lcom/sohu/inputmethod/settings/FeedBackActivity;

    invoke-static {v4}, Lcom/sohu/inputmethod/settings/FeedBackActivity;->b(Lcom/sohu/inputmethod/settings/FeedBackActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sohu/inputmethod/settings/FeedBackActivity;->a(Lcom/sohu/inputmethod/settings/FeedBackActivity;Ljava/lang/String;)V

    .line 148
    iget-object v2, p0, Lada;->a:Lcom/sohu/inputmethod/settings/FeedBackActivity;

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/FeedBackActivity;->a(Lcom/sohu/inputmethod/settings/FeedBackActivity;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lada;->a:Lcom/sohu/inputmethod/settings/FeedBackActivity;

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/FeedBackActivity;->a(Lcom/sohu/inputmethod/settings/FeedBackActivity;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lada;->a:Lcom/sohu/inputmethod/settings/FeedBackActivity;

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/FeedBackActivity;->a(Lcom/sohu/inputmethod/settings/FeedBackActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 149
    :cond_0
    iget-object v0, p0, Lada;->a:Lcom/sohu/inputmethod/settings/FeedBackActivity;

    const-string v1, "empty feedback"

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/settings/FeedBackActivity;->a(Lcom/sohu/inputmethod/settings/FeedBackActivity;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lada;->a:Lcom/sohu/inputmethod/settings/FeedBackActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/settings/FeedBackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b025b

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 179
    :cond_1
    :goto_0
    return-void

    .line 153
    :cond_2
    iget-object v2, p0, Lada;->a:Lcom/sohu/inputmethod/settings/FeedBackActivity;

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/FeedBackActivity;->a(Lcom/sohu/inputmethod/settings/FeedBackActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {}, Lcom/sohu/inputmethod/settings/FeedBackActivity;->a()I

    move-result v3

    if-le v2, v3, :cond_3

    .line 154
    iget-object v0, p0, Lada;->a:Lcom/sohu/inputmethod/settings/FeedBackActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/settings/FeedBackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0269

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 157
    :cond_3
    iget-object v2, p0, Lada;->a:Lcom/sohu/inputmethod/settings/FeedBackActivity;

    new-instance v3, Lals;

    iget-object v4, p0, Lada;->a:Lcom/sohu/inputmethod/settings/FeedBackActivity;

    invoke-direct {v3, v4}, Lals;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v3}, Lcom/sohu/inputmethod/settings/FeedBackActivity;->a(Lcom/sohu/inputmethod/settings/FeedBackActivity;Lals;)Lals;

    .line 158
    iget-object v2, p0, Lada;->a:Lcom/sohu/inputmethod/settings/FeedBackActivity;

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/FeedBackActivity;->a(Lcom/sohu/inputmethod/settings/FeedBackActivity;)Lals;

    move-result-object v2

    iget-object v3, p0, Lada;->a:Lcom/sohu/inputmethod/settings/FeedBackActivity;

    invoke-static {v3}, Lcom/sohu/inputmethod/settings/FeedBackActivity;->a(Lcom/sohu/inputmethod/settings/FeedBackActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lals;->a(Ljava/lang/String;)V

    .line 159
    iget-object v2, p0, Lada;->a:Lcom/sohu/inputmethod/settings/FeedBackActivity;

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/FeedBackActivity;->a(Lcom/sohu/inputmethod/settings/FeedBackActivity;)Lals;

    move-result-object v2

    iget-object v3, p0, Lada;->a:Lcom/sohu/inputmethod/settings/FeedBackActivity;

    invoke-static {v3}, Lcom/sohu/inputmethod/settings/FeedBackActivity;->b(Lcom/sohu/inputmethod/settings/FeedBackActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lals;->b(Ljava/lang/String;)V

    .line 160
    iget-object v2, p0, Lada;->a:Lcom/sohu/inputmethod/settings/FeedBackActivity;

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/FeedBackActivity;->a(Lcom/sohu/inputmethod/settings/FeedBackActivity;)Lals;

    move-result-object v2

    iget-object v3, p0, Lada;->a:Lcom/sohu/inputmethod/settings/FeedBackActivity;

    invoke-virtual {v2, v3}, Lals;->b(Lalv;)V

    .line 163
    iget-object v2, p0, Lada;->a:Lcom/sohu/inputmethod/settings/FeedBackActivity;

    invoke-virtual {v2}, Lcom/sohu/inputmethod/settings/FeedBackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v2

    invoke-virtual {v2, v0}, Lqy;->b(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_5

    .line 164
    iget-object v6, p0, Lada;->a:Lcom/sohu/inputmethod/settings/FeedBackActivity;

    iget-object v2, p0, Lada;->a:Lcom/sohu/inputmethod/settings/FeedBackActivity;

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/FeedBackActivity;->a(Lcom/sohu/inputmethod/settings/FeedBackActivity;)Lals;

    move-result-object v4

    move-object v2, v1

    move-object v3, v1

    invoke-static/range {v0 .. v5}, Lsi;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsl;Z)Lsg;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/sohu/inputmethod/settings/FeedBackActivity;->a(Lcom/sohu/inputmethod/settings/FeedBackActivity;Lsg;)Lsg;

    .line 165
    iget-object v0, p0, Lada;->a:Lcom/sohu/inputmethod/settings/FeedBackActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/FeedBackActivity;->a(Lcom/sohu/inputmethod/settings/FeedBackActivity;)Lals;

    move-result-object v0

    iget-object v1, p0, Lada;->a:Lcom/sohu/inputmethod/settings/FeedBackActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/FeedBackActivity;->a(Lcom/sohu/inputmethod/settings/FeedBackActivity;)Lsg;

    move-result-object v1

    invoke-virtual {v0, v1}, Lals;->c(Lsg;)V

    .line 166
    iget-object v0, p0, Lada;->a:Lcom/sohu/inputmethod/settings/FeedBackActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/FeedBackActivity;->a(Lcom/sohu/inputmethod/settings/FeedBackActivity;)V

    .line 167
    iget-object v0, p0, Lada;->a:Lcom/sohu/inputmethod/settings/FeedBackActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/settings/FeedBackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lada;->a:Lcom/sohu/inputmethod/settings/FeedBackActivity;

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/FeedBackActivity;->a(Lcom/sohu/inputmethod/settings/FeedBackActivity;)Lsg;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lqy;->a(ILsg;)I

    move-result v0

    .line 168
    if-lez v0, :cond_1

    .line 169
    iget-object v0, p0, Lada;->a:Lcom/sohu/inputmethod/settings/FeedBackActivity;

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    invoke-virtual {v0}, Lqy;->b()I

    move-result v0

    .line 170
    if-eq v0, v7, :cond_4

    .line 171
    iget-object v0, p0, Lada;->a:Lcom/sohu/inputmethod/settings/FeedBackActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/FeedBackActivity;->a(Lcom/sohu/inputmethod/settings/FeedBackActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 173
    :cond_4
    iget-object v0, p0, Lada;->a:Lcom/sohu/inputmethod/settings/FeedBackActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/FeedBackActivity;->a(Lcom/sohu/inputmethod/settings/FeedBackActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 177
    :cond_5
    iget-object v0, p0, Lada;->a:Lcom/sohu/inputmethod/settings/FeedBackActivity;

    const-string v1, "[[onCreate::onClick]] it\'s error for there is a feedback in background mode"

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/settings/FeedBackActivity;->a(Lcom/sohu/inputmethod/settings/FeedBackActivity;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
