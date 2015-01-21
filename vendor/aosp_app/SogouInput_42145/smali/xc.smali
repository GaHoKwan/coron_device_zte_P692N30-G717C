.class Lxc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic a:Lxb;


# direct methods
.method constructor <init>(Lxb;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lxc;->a:Lxb;

    iput p2, p0, Lxc;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0x6a

    .line 196
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 197
    iget v0, p0, Lxc;->a:I

    packed-switch v0, :pswitch_data_0

    .line 219
    :goto_0
    :pswitch_0
    return-void

    .line 199
    :pswitch_1
    iget-object v0, p0, Lxc;->a:Lxb;

    iget-object v0, v0, Lxb;->a:Lwy;

    invoke-static {v0}, Lwy;->a(Lwy;)Lxx;

    move-result-object v2

    iget-object v0, p0, Lxc;->a:Lxb;

    iget-object v0, v0, Lxb;->a:Lwy;

    invoke-static {v0}, Lwy;->a(Lwy;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget-object v3, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->b:Ljava/lang/String;

    iget-object v0, p0, Lxc;->a:Lxb;

    iget-object v0, v0, Lxb;->a:Lwy;

    invoke-static {v0}, Lwy;->a(Lwy;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget v0, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->a:I

    invoke-virtual {v2, v3, v0}, Lxx;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 201
    iget-object v0, p0, Lxc;->a:Lxb;

    iget-object v0, v0, Lxb;->a:Lwy;

    invoke-static {v0}, Lwy;->a(Lwy;)Lyv;

    move-result-object v3

    iget-object v0, p0, Lxc;->a:Lxb;

    iget-object v0, v0, Lxb;->a:Lwy;

    invoke-static {v0}, Lwy;->a(Lwy;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget-object v0, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->f:Ljava/lang/String;

    invoke-virtual {v3, v0, v2}, Lyv;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    iget-object v0, p0, Lxc;->a:Lxb;

    iget-object v0, v0, Lxb;->a:Lwy;

    const-string v1, "apk file not exist!"

    invoke-static {v0, v1}, Lwy;->a(Lwy;Ljava/lang/String;)V

    goto :goto_0

    .line 204
    :cond_0
    iget-object v0, p0, Lxc;->a:Lxb;

    iget-object v0, v0, Lxb;->a:Lwy;

    invoke-static {v0}, Lwy;->a(Lwy;)Lcom/sohu/inputmethod/platform/AppManagerActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 209
    :pswitch_2
    iget-object v0, p0, Lxc;->a:Lxb;

    iget-object v0, v0, Lxb;->a:Lwy;

    invoke-static {v0}, Lwy;->a(Lwy;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget-object v0, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->b:Ljava/lang/String;

    .line 210
    iget-object v1, p0, Lxc;->a:Lxb;

    iget-object v1, v1, Lxb;->a:Lwy;

    invoke-static {v1}, Lwy;->a(Lwy;)Lyv;

    move-result-object v1

    invoke-virtual {v1, v0}, Lyv;->b(Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lxc;->a:Lxb;

    iget-object v0, v0, Lxb;->a:Lwy;

    invoke-static {v0}, Lwy;->a(Lwy;)Lcom/sohu/inputmethod/platform/AppManagerActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 197
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
