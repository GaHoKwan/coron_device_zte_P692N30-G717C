.class public Lafm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/settings/RegisterActivity;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/settings/RegisterActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 252
    iput-object p1, p0, Lafm;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter

    .prologue
    const/16 v6, 0xb

    const/4 v8, 0x5

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 255
    iget-object v0, p0, Lafm;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    iget-object v2, p0, Lafm;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/RegisterActivity;->a(Lcom/sohu/inputmethod/settings/RegisterActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sohu/inputmethod/settings/RegisterActivity;->a(Lcom/sohu/inputmethod/settings/RegisterActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 256
    iget-object v0, p0, Lafm;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    iget-object v2, p0, Lafm;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/RegisterActivity;->b(Lcom/sohu/inputmethod/settings/RegisterActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sohu/inputmethod/settings/RegisterActivity;->b(Lcom/sohu/inputmethod/settings/RegisterActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 257
    iget-object v0, p0, Lafm;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    iget-object v2, p0, Lafm;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/RegisterActivity;->c(Lcom/sohu/inputmethod/settings/RegisterActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sohu/inputmethod/settings/RegisterActivity;->c(Lcom/sohu/inputmethod/settings/RegisterActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 258
    iget-object v0, p0, Lafm;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    iget-object v2, p0, Lafm;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/RegisterActivity;->d(Lcom/sohu/inputmethod/settings/RegisterActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sohu/inputmethod/settings/RegisterActivity;->d(Lcom/sohu/inputmethod/settings/RegisterActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 259
    iget-object v0, p0, Lafm;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    iget-object v2, p0, Lafm;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-virtual {v2}, Lcom/sohu/inputmethod/settings/RegisterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f06

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lafm;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-static {v3}, Lcom/sohu/inputmethod/settings/RegisterActivity;->a(Lcom/sohu/inputmethod/settings/RegisterActivity;)Landroid/widget/Spinner;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    aget-object v2, v2, v3

    invoke-static {v0, v2}, Lcom/sohu/inputmethod/settings/RegisterActivity;->e(Lcom/sohu/inputmethod/settings/RegisterActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 260
    iget-object v0, p0, Lafm;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    iget-object v2, p0, Lafm;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/RegisterActivity;->a(Lcom/sohu/inputmethod/settings/RegisterActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lafm;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-static {v3}, Lcom/sohu/inputmethod/settings/RegisterActivity;->c(Lcom/sohu/inputmethod/settings/RegisterActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lafm;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-static {v4}, Lcom/sohu/inputmethod/settings/RegisterActivity;->d(Lcom/sohu/inputmethod/settings/RegisterActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/sohu/inputmethod/settings/RegisterActivity;->a(Lcom/sohu/inputmethod/settings/RegisterActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 261
    if-ne v0, v8, :cond_2

    .line 262
    invoke-static {}, Lazh;->a()I

    move-result v0

    if-ge v0, v6, :cond_0

    .line 263
    iget-object v0, p0, Lafm;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/RegisterActivity;->a(Lcom/sohu/inputmethod/settings/RegisterActivity;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 264
    :cond_0
    iget-object v0, p0, Lafm;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/RegisterActivity;->a(Lcom/sohu/inputmethod/settings/RegisterActivity;)Landroid/widget/Toast;

    move-result-object v0

    const v1, 0x7f0b0268

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    .line 265
    iget-object v0, p0, Lafm;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/RegisterActivity;->a(Lcom/sohu/inputmethod/settings/RegisterActivity;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 290
    :cond_1
    :goto_0
    return-void

    .line 267
    :cond_2
    const/4 v2, 0x4

    if-ne v0, v2, :cond_4

    .line 268
    invoke-static {}, Lazh;->a()I

    move-result v0

    if-ge v0, v6, :cond_3

    .line 269
    iget-object v0, p0, Lafm;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/RegisterActivity;->a(Lcom/sohu/inputmethod/settings/RegisterActivity;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 270
    :cond_3
    iget-object v0, p0, Lafm;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/RegisterActivity;->a(Lcom/sohu/inputmethod/settings/RegisterActivity;)Landroid/widget/Toast;

    move-result-object v0

    const v1, 0x7f0b0265

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    .line 271
    iget-object v0, p0, Lafm;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/RegisterActivity;->a(Lcom/sohu/inputmethod/settings/RegisterActivity;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 274
    :cond_4
    iget-object v0, p0, Lafm;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    new-instance v2, Lamh;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lafm;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-static {v4}, Lcom/sohu/inputmethod/settings/RegisterActivity;->a(Lcom/sohu/inputmethod/settings/RegisterActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lafm;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-static {v4}, Lcom/sohu/inputmethod/settings/RegisterActivity;->b(Lcom/sohu/inputmethod/settings/RegisterActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lafm;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-static {v4}, Lcom/sohu/inputmethod/settings/RegisterActivity;->c(Lcom/sohu/inputmethod/settings/RegisterActivity;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lafm;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-static {v6}, Lcom/sohu/inputmethod/settings/RegisterActivity;->e(Lcom/sohu/inputmethod/settings/RegisterActivity;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lafm;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-direct {v2, v3, v4, v6, v7}, Lamh;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {v0, v2}, Lcom/sohu/inputmethod/settings/RegisterActivity;->a(Lcom/sohu/inputmethod/settings/RegisterActivity;Lamh;)Lamh;

    .line 275
    iget-object v0, p0, Lafm;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/RegisterActivity;->a(Lcom/sohu/inputmethod/settings/RegisterActivity;)Lamh;

    move-result-object v0

    iget-object v2, p0, Lafm;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-virtual {v0, v2}, Lamh;->b(Lalv;)V

    .line 278
    iget-object v6, p0, Lafm;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    const/16 v0, 0x66

    iget-object v2, p0, Lafm;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/RegisterActivity;->a(Lcom/sohu/inputmethod/settings/RegisterActivity;)Lamh;

    move-result-object v4

    move-object v2, v1

    move-object v3, v1

    invoke-static/range {v0 .. v5}, Lsi;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsl;Z)Lsg;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/sohu/inputmethod/settings/RegisterActivity;->a(Lcom/sohu/inputmethod/settings/RegisterActivity;Lsg;)Lsg;

    .line 279
    iget-object v0, p0, Lafm;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/RegisterActivity;->a(Lcom/sohu/inputmethod/settings/RegisterActivity;)Lamh;

    move-result-object v0

    iget-object v1, p0, Lafm;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/RegisterActivity;->a(Lcom/sohu/inputmethod/settings/RegisterActivity;)Lsg;

    move-result-object v1

    invoke-virtual {v0, v1}, Lamh;->c(Lsg;)V

    .line 280
    iget-object v0, p0, Lafm;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/settings/RegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lafm;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/RegisterActivity;->a(Lcom/sohu/inputmethod/settings/RegisterActivity;)Lsg;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lqy;->a(ILsg;)I

    move-result v0

    .line 281
    if-lez v0, :cond_1

    .line 282
    iget-object v0, p0, Lafm;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    invoke-virtual {v0}, Lqy;->b()I

    move-result v0

    .line 283
    if-eq v0, v8, :cond_5

    .line 284
    iget-object v0, p0, Lafm;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/RegisterActivity;->a(Lcom/sohu/inputmethod/settings/RegisterActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 285
    iget-object v0, p0, Lafm;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/RegisterActivity;->a(Lcom/sohu/inputmethod/settings/RegisterActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 287
    :cond_5
    iget-object v0, p0, Lafm;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/RegisterActivity;->a(Lcom/sohu/inputmethod/settings/RegisterActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method
