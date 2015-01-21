.class Lcom/autonavi/xmgd/navigator/ig;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/SearchResultActivity;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/SearchResultActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/ig;->a:Lcom/autonavi/xmgd/navigator/SearchResultActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ig;->a:Lcom/autonavi/xmgd/navigator/SearchResultActivity;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->r(Lcom/autonavi/xmgd/navigator/SearchResultActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/ig;->a:Lcom/autonavi/xmgd/navigator/SearchResultActivity;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->s(Lcom/autonavi/xmgd/navigator/SearchResultActivity;)I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ig;->a:Lcom/autonavi/xmgd/navigator/SearchResultActivity;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/ig;->a:Lcom/autonavi/xmgd/navigator/SearchResultActivity;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->t(Lcom/autonavi/xmgd/navigator/SearchResultActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->c(Lcom/autonavi/xmgd/navigator/SearchResultActivity;I)I

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ig;->a:Lcom/autonavi/xmgd/navigator/SearchResultActivity;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->u(Lcom/autonavi/xmgd/navigator/SearchResultActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f07007f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/ig;->a:Lcom/autonavi/xmgd/navigator/SearchResultActivity;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->v(Lcom/autonavi/xmgd/navigator/SearchResultActivity;)[Lcom/autonavi/xmgd/e/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/naviservice/q;->a([Lcom/autonavi/xmgd/e/k;)I

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ig;->a:Lcom/autonavi/xmgd/navigator/SearchResultActivity;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->w(Lcom/autonavi/xmgd/navigator/SearchResultActivity;)Lcom/autonavi/xmgd/controls/x;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/ig;->a:Lcom/autonavi/xmgd/navigator/SearchResultActivity;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->v(Lcom/autonavi/xmgd/navigator/SearchResultActivity;)[Lcom/autonavi/xmgd/e/k;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/ig;->a:Lcom/autonavi/xmgd/navigator/SearchResultActivity;

    invoke-static {v2}, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->h(Lcom/autonavi/xmgd/navigator/SearchResultActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xmgd/controls/x;->a([Lcom/autonavi/xmgd/e/k;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ig;->a:Lcom/autonavi/xmgd/navigator/SearchResultActivity;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->w(Lcom/autonavi/xmgd/navigator/SearchResultActivity;)Lcom/autonavi/xmgd/controls/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/controls/x;->notifyDataSetChanged()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ig;->a:Lcom/autonavi/xmgd/navigator/SearchResultActivity;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->r(Lcom/autonavi/xmgd/navigator/SearchResultActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/ig;->a:Lcom/autonavi/xmgd/navigator/SearchResultActivity;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->t(Lcom/autonavi/xmgd/navigator/SearchResultActivity;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ig;->a:Lcom/autonavi/xmgd/navigator/SearchResultActivity;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/ig;->a:Lcom/autonavi/xmgd/navigator/SearchResultActivity;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->s(Lcom/autonavi/xmgd/navigator/SearchResultActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->c(Lcom/autonavi/xmgd/navigator/SearchResultActivity;I)I

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ig;->a:Lcom/autonavi/xmgd/navigator/SearchResultActivity;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->u(Lcom/autonavi/xmgd/navigator/SearchResultActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f070080

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/ig;->a:Lcom/autonavi/xmgd/navigator/SearchResultActivity;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->v(Lcom/autonavi/xmgd/navigator/SearchResultActivity;)[Lcom/autonavi/xmgd/e/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/naviservice/q;->b([Lcom/autonavi/xmgd/e/k;)I

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ig;->a:Lcom/autonavi/xmgd/navigator/SearchResultActivity;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->w(Lcom/autonavi/xmgd/navigator/SearchResultActivity;)Lcom/autonavi/xmgd/controls/x;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/ig;->a:Lcom/autonavi/xmgd/navigator/SearchResultActivity;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->v(Lcom/autonavi/xmgd/navigator/SearchResultActivity;)[Lcom/autonavi/xmgd/e/k;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/ig;->a:Lcom/autonavi/xmgd/navigator/SearchResultActivity;

    invoke-static {v2}, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->h(Lcom/autonavi/xmgd/navigator/SearchResultActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xmgd/controls/x;->a([Lcom/autonavi/xmgd/e/k;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ig;->a:Lcom/autonavi/xmgd/navigator/SearchResultActivity;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->w(Lcom/autonavi/xmgd/navigator/SearchResultActivity;)Lcom/autonavi/xmgd/controls/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/controls/x;->notifyDataSetChanged()V

    goto :goto_0
.end method
