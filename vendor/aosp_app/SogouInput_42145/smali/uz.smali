.class Luz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Luv;


# direct methods
.method constructor <init>(Luv;)V
    .locals 0
    .parameter

    .prologue
    .line 655
    iput-object p1, p0, Luz;->a:Luv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 658
    iget-object v0, p0, Luz;->a:Luv;

    invoke-static {v0}, Luv;->b(Luv;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 659
    iget-object v0, p0, Luz;->a:Luv;

    invoke-static {v0}, Luv;->a(Luv;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->bt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->bt:I

    .line 660
    invoke-static {}, Luv;->a()Lsg;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 661
    invoke-static {}, Luv;->a()Lsg;

    move-result-object v0

    invoke-virtual {v0}, Lsg;->a()Lsl;

    move-result-object v0

    invoke-interface {v0, v2, v2}, Lsl;->d(Lorg/apache/http/client/HttpClient;Lsg;)V

    .line 663
    :cond_0
    sput-object v2, Luv;->a:Landroid/os/Bundle;

    .line 664
    invoke-static {v2}, Luv;->a(Lsg;)Lsg;

    .line 665
    iget-object v0, p0, Luz;->a:Luv;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Luv;->a(Luv;I)I

    .line 666
    iget-object v0, p0, Luz;->a:Luv;

    invoke-static {v0}, Luv;->b(Luv;)Z

    .line 673
    :cond_1
    :goto_0
    return-void

    .line 667
    :cond_2
    iget-object v0, p0, Luz;->a:Luv;

    invoke-static {v0}, Luv;->b(Luv;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 668
    iget-object v0, p0, Luz;->a:Luv;

    invoke-static {v0}, Luv;->a(Luv;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 669
    iget-object v0, p0, Luz;->a:Luv;

    invoke-static {v0}, Luv;->a(Luv;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->a()V

    goto :goto_0

    .line 671
    :cond_3
    iget-object v0, p0, Luz;->a:Luv;

    invoke-static {v0}, Luv;->b(Luv;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    goto :goto_0
.end method
