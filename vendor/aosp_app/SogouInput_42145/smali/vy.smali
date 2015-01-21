.class public Lvy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/platform/AppDetailActivity;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/platform/AppDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 710
    iput-object p1, p0, Lvy;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 714
    iget-object v0, p0, Lvy;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    move-result-object v0

    iget v0, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->b:I

    packed-switch v0, :pswitch_data_0

    .line 746
    :goto_0
    :pswitch_0
    return-void

    .line 727
    :pswitch_1
    iget-object v0, p0, Lvy;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Lxx;

    move-result-object v0

    iget-object v1, p0, Lvy;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->b:Ljava/lang/String;

    iget-object v2, p0, Lvy;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v2}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    move-result-object v2

    iget v2, v2, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->a:I

    invoke-virtual {v0, v1, v2}, Lxx;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 728
    iget-object v1, p0, Lvy;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->f:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 729
    iget-object v1, p0, Lvy;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Lxx;

    move-result-object v1

    iget-object v2, p0, Lvy;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v2}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lxx;->d(Ljava/lang/String;)V

    .line 731
    :cond_0
    iget-object v1, p0, Lvy;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Lyv;

    move-result-object v1

    invoke-virtual {v1, v0}, Lyv;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 732
    iget-object v0, p0, Lvy;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 734
    :cond_1
    iget-object v0, p0, Lvy;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    const-string v1, "delete cache file fail!"

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->b(Lcom/sohu/inputmethod/platform/AppDetailActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 714
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
