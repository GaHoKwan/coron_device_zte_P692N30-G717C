.class public Lvp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/platform/AppDetailActivity;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/platform/AppDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1179
    iput-object p1, p0, Lvp;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x66

    .line 1183
    iget-object v0, p0, Lvp;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    move-result-object v0

    iget v0, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->b:I

    packed-switch v0, :pswitch_data_0

    .line 1207
    :goto_0
    return-void

    .line 1185
    :pswitch_0
    iget-object v0, p0, Lvp;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Lxx;

    move-result-object v0

    iget-object v1, p0, Lvp;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lxx;->a(Ljava/lang/String;)Lxu;

    move-result-object v0

    .line 1186
    if-eqz v0, :cond_0

    .line 1187
    invoke-virtual {v0}, Lxu;->d()V

    .line 1189
    :cond_0
    iget-object v0, p0, Lvp;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1192
    :pswitch_1
    iget-object v0, p0, Lvp;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Lxx;

    move-result-object v0

    iget-object v1, p0, Lvp;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->b:Ljava/lang/String;

    iget-object v2, p0, Lvp;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v2}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    move-result-object v2

    iget v2, v2, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->a:I

    invoke-virtual {v0, v1, v2}, Lxx;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1193
    iget-object v1, p0, Lvp;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->f:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1194
    iget-object v1, p0, Lvp;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Lxx;

    move-result-object v1

    iget-object v2, p0, Lvp;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v2}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lxx;->d(Ljava/lang/String;)V

    .line 1196
    :cond_1
    iget-object v1, p0, Lvp;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Lyv;

    move-result-object v1

    invoke-virtual {v1, v0}, Lyv;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1197
    iget-object v0, p0, Lvp;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1201
    :goto_1
    iget-object v0, p0, Lvp;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1199
    :cond_2
    iget-object v0, p0, Lvp;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    const-string v1, "delete cache file fail!"

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->b(Lcom/sohu/inputmethod/platform/AppDetailActivity;Ljava/lang/String;)V

    goto :goto_1

    .line 1183
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
