.class Lty;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ltu;


# direct methods
.method constructor <init>(Ltu;)V
    .locals 0
    .parameter

    .prologue
    .line 671
    iput-object p1, p0, Lty;->a:Ltu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 674
    iget-object v0, p0, Lty;->a:Ltu;

    invoke-static {v0}, Ltu;->b(Ltu;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 675
    iget-object v0, p0, Lty;->a:Ltu;

    invoke-static {v0}, Ltu;->a(Ltu;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->bt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->bt:I

    .line 676
    invoke-static {}, Ltu;->a()Lsg;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 677
    invoke-static {}, Ltu;->a()Lsg;

    move-result-object v0

    invoke-virtual {v0}, Lsg;->a()Lsl;

    move-result-object v0

    invoke-interface {v0, v2, v2}, Lsl;->d(Lorg/apache/http/client/HttpClient;Lsg;)V

    .line 679
    :cond_0
    sput-object v2, Ltu;->a:Landroid/os/Bundle;

    .line 680
    invoke-static {v2}, Ltu;->a(Lsg;)Lsg;

    .line 681
    iget-object v0, p0, Lty;->a:Ltu;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ltu;->a(Ltu;I)I

    .line 682
    iget-object v0, p0, Lty;->a:Ltu;

    invoke-static {v0}, Ltu;->b(Ltu;)Z

    .line 689
    :cond_1
    :goto_0
    return-void

    .line 683
    :cond_2
    iget-object v0, p0, Lty;->a:Ltu;

    invoke-static {v0}, Ltu;->b(Ltu;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 684
    iget-object v0, p0, Lty;->a:Ltu;

    invoke-static {v0}, Ltu;->a(Ltu;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 685
    iget-object v0, p0, Lty;->a:Ltu;

    invoke-static {v0}, Ltu;->a(Ltu;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->a()V

    goto :goto_0

    .line 687
    :cond_3
    iget-object v0, p0, Lty;->a:Ltu;

    invoke-static {v0}, Ltu;->b(Ltu;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    goto :goto_0
.end method
