.class Lxk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic a:Lcom/sohu/inputmethod/platform/PlatformAppInfo;

.field final synthetic a:Lxi;

.field final synthetic a:Lxj;

.field final synthetic a:Lxu;


# direct methods
.method constructor <init>(Lxj;ILxi;Lxu;Lcom/sohu/inputmethod/platform/PlatformAppInfo;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lxk;->a:Lxj;

    iput p2, p0, Lxk;->a:I

    iput-object p3, p0, Lxk;->a:Lxi;

    iput-object p4, p0, Lxk;->a:Lxu;

    iput-object p5, p0, Lxk;->a:Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 180
    iget-object v0, p0, Lxk;->a:Lxj;

    iget-object v0, v0, Lxj;->a:Lxg;

    invoke-static {v0}, Lxg;->a(Lxg;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lxk;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwn;

    iget v0, v0, Lwn;->b:I

    packed-switch v0, :pswitch_data_0

    .line 201
    :goto_0
    return-void

    .line 182
    :pswitch_0
    iget-object v0, p0, Lxk;->a:Lxj;

    iget-object v0, v0, Lxj;->a:Lxg;

    const-string v1, "click pause button"

    invoke-static {v0, v1}, Lxg;->a(Lxg;Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lxk;->a:Lxi;

    iget-object v0, v0, Lxi;->b:Landroid/widget/ImageView;

    const v1, 0x7f020005

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 184
    iget-object v0, p0, Lxk;->a:Lxi;

    iget-object v0, v0, Lxi;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 185
    iget-object v0, p0, Lxk;->a:Lxu;

    invoke-virtual {v0}, Lxu;->c()V

    goto :goto_0

    .line 189
    :pswitch_1
    iget-object v0, p0, Lxk;->a:Lxj;

    iget-object v0, v0, Lxj;->a:Lxg;

    const-string v1, "click resume button"

    invoke-static {v0, v1}, Lxg;->a(Lxg;Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lxk;->a:Lxi;

    iget-object v0, v0, Lxi;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 191
    iget-object v0, p0, Lxk;->a:Lxi;

    iget-object v0, v0, Lxi;->b:Landroid/widget/ImageView;

    const v1, 0x7f020008

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 192
    iget-object v0, p0, Lxk;->a:Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iput v2, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->b:I

    .line 193
    iget-object v0, p0, Lxk;->a:Lxj;

    iget-object v0, v0, Lxj;->a:Lxg;

    invoke-static {v0}, Lxg;->a(Lxg;)Lxx;

    move-result-object v1

    iget-object v0, p0, Lxk;->a:Lxj;

    iget-object v0, v0, Lxj;->a:Lxg;

    invoke-static {v0}, Lxg;->a(Lxg;)Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lxk;->a:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwn;

    iget-object v0, v0, Lwn;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lxx;->b(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lxk;->a:Lxj;

    iget-object v0, v0, Lxj;->a:Lxg;

    invoke-static {v0}, Lxg;->a(Lxg;)Lxx;

    move-result-object v0

    iget-object v1, p0, Lxk;->a:Lxj;

    iget-object v1, v1, Lxj;->a:Lxg;

    invoke-static {v1}, Lxg;->a(Lxg;)Lcom/sohu/inputmethod/platform/AppManagerActivity;

    move-result-object v1

    iget-object v2, p0, Lxk;->a:Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    invoke-virtual {v0, v1, v2}, Lxx;->a(Lxw;Lcom/sohu/inputmethod/platform/PlatformAppInfo;)V

    goto :goto_0

    .line 180
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
