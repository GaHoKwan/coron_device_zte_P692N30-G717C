.class Laip;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Laia;


# direct methods
.method constructor <init>(Laia;)V
    .locals 0
    .parameter

    .prologue
    .line 817
    iput-object p1, p0, Laip;->a:Laia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 821
    iget-object v0, p0, Laip;->a:Laia;

    invoke-static {v0}, Laia;->a(Laia;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Laip;->a:Laia;

    invoke-static {v0}, Laia;->b(Laia;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 822
    iget-object v0, p0, Laip;->a:Laia;

    invoke-static {v0}, Laia;->b(Laia;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laiw;

    iget-object v1, v0, Laiw;->b:Ljava/lang/String;

    .line 823
    iget-object v0, p0, Laip;->a:Laia;

    invoke-static {v0}, Laia;->b(Laia;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laiw;

    iget-object v2, v0, Laiw;->d:Ljava/lang/String;

    .line 824
    iget-object v0, p0, Laip;->a:Laia;

    invoke-static {v0}, Laia;->b(Laia;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laiw;

    iget-object v3, v0, Laiw;->c:Ljava/lang/String;

    .line 825
    iget-object v0, p0, Laip;->a:Laia;

    invoke-static {v0}, Laia;->b(Laia;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laiw;

    iget-object v0, v0, Laiw;->a:Ljava/lang/String;

    .line 826
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    const-string v4, ""

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, ""

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 828
    :cond_0
    invoke-static {v1}, Layu;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 830
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 831
    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 832
    iget-object v0, p0, Laip;->a:Laia;

    invoke-static {v0}, Laia;->a(Laia;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 847
    :cond_1
    :goto_0
    return-void

    .line 837
    :cond_2
    new-instance v4, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;

    invoke-direct {v4}, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;-><init>()V

    .line 838
    iput-object v0, v4, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;->a:Ljava/lang/String;

    .line 839
    iput v5, v4, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;->c:I

    .line 840
    iput-object v1, v4, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;->g:Ljava/lang/String;

    .line 841
    const-string v0, "com.sogou.apprecommend.advertisement"

    iput-object v0, v4, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;->b:Ljava/lang/String;

    .line 842
    iget-object v0, p0, Laip;->a:Laia;

    invoke-static {v0, v4}, Laia;->a(Laia;Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;)Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;

    .line 843
    iget-object v0, p0, Laip;->a:Laia;

    invoke-static {v0}, Laia;->a(Laia;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 844
    iget-object v0, p0, Laip;->a:Laia;

    invoke-static {v0}, Laia;->a(Laia;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 845
    iget-object v0, p0, Laip;->a:Laia;

    invoke-static {v0}, Laia;->a(Laia;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 833
    :catch_0
    move-exception v0

    goto :goto_0
.end method
