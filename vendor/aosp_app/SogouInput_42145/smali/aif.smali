.class Laif;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Laia;


# direct methods
.method constructor <init>(Laia;)V
    .locals 0
    .parameter

    .prologue
    .line 916
    iput-object p1, p0, Laif;->a:Laia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 920
    iget-object v0, p0, Laif;->a:Laia;

    invoke-static {v0}, Laia;->a(Laia;)Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 921
    invoke-static {}, Laox;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 922
    iget-object v0, p0, Laif;->a:Laia;

    invoke-static {v0}, Laia;->b(Laia;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 923
    iget-object v0, p0, Laif;->a:Laia;

    invoke-static {v0}, Laia;->a(Laia;)Laja;

    move-result-object v0

    iget-object v1, p0, Laif;->a:Laia;

    invoke-static {v1}, Laia;->a(Laia;)Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laja;->c(Ljava/lang/String;)V

    .line 951
    :cond_0
    :goto_0
    return-void

    .line 926
    :cond_1
    iget-object v0, p0, Laif;->a:Laia;

    invoke-static {v0}, Laia;->a(Laia;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 927
    const/16 v2, 0x69

    iput v2, v0, Landroid/os/Message;->what:I

    .line 928
    iget-object v2, p0, Laif;->a:Laia;

    invoke-static {v2}, Laia;->a(Laia;)Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;

    move-result-object v2

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 929
    iget-object v2, p0, Laif;->a:Laia;

    invoke-static {v2}, Laia;->a(Laia;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 930
    iget-object v0, p0, Laif;->a:Laia;

    invoke-static {v0}, Laia;->a(Laia;)Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;

    move-result-object v0

    const/4 v2, 0x1

    iput v2, v0, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;->d:I

    .line 931
    iget-object v0, p0, Laif;->a:Laia;

    invoke-static {v0}, Laia;->a(Laia;)Laja;

    move-result-object v0

    iget-object v2, p0, Laif;->a:Laia;

    invoke-static {v2}, Laia;->a(Laia;)Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Laja;->b(Ljava/lang/String;)V

    .line 932
    iget-object v0, p0, Laif;->a:Laia;

    invoke-static {v0}, Laia;->a(Laia;)I

    move-result v0

    .line 933
    iget-object v2, p0, Laif;->a:Laia;

    invoke-static {v2}, Laia;->a(Laia;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    .line 934
    iget-object v3, p0, Laif;->a:Laia;

    invoke-static {v3}, Laia;->a(Laia;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v3

    .line 936
    if-lt v0, v2, :cond_2

    if-gt v0, v3, :cond_2

    .line 937
    sub-int/2addr v0, v2

    .line 939
    :goto_1
    if-le v0, v1, :cond_0

    .line 940
    iget-object v1, p0, Laif;->a:Laia;

    invoke-static {v1}, Laia;->a(Laia;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 941
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 942
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laiu;

    .line 943
    iget-object v1, v0, Laiu;->b:Landroid/widget/ImageView;

    const v2, 0x7f0200fd

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 944
    iget-object v1, v0, Laiu;->a:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 945
    iget-object v1, v0, Laiu;->d:Landroid/widget/TextView;

    iget-object v2, p0, Laif;->a:Laia;

    invoke-static {v2}, Laia;->a(Laia;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090025

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 946
    iget-object v1, v0, Laiu;->d:Landroid/widget/TextView;

    iget-object v2, p0, Laif;->a:Laia;

    invoke-static {v2}, Laia;->a(Laia;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b03ef

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 947
    iget-object v0, v0, Laiu;->e:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method
