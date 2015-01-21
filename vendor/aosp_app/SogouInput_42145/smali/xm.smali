.class Lxm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/platform/PlatformAppInfo;

.field final synthetic a:Lxl;


# direct methods
.method constructor <init>(Lxl;Lcom/sohu/inputmethod/platform/PlatformAppInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 244
    iput-object p1, p0, Lxm;->a:Lxl;

    iput-object p2, p0, Lxm;->a:Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x2

    .line 246
    iget-object v0, p0, Lxm;->a:Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget v0, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 247
    iget-object v0, p0, Lxm;->a:Lxl;

    iget-object v0, v0, Lxl;->a:Lxj;

    iget-object v0, v0, Lxj;->a:Lxg;

    invoke-static {v0}, Lxg;->a(Lxg;)Lxx;

    move-result-object v0

    iget-object v1, p0, Lxm;->a:Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget-object v1, v1, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lxx;->a(Ljava/lang/String;)Lxu;

    move-result-object v0

    .line 248
    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {v0}, Lxu;->b()V

    .line 251
    :cond_0
    iget-object v0, p0, Lxm;->a:Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget-object v0, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->f:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 252
    iget-object v0, p0, Lxm;->a:Lxl;

    iget-object v0, v0, Lxl;->a:Lxj;

    iget-object v0, v0, Lxj;->a:Lxg;

    invoke-static {v0}, Lxg;->a(Lxg;)Lxx;

    move-result-object v0

    iget-object v1, p0, Lxm;->a:Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget-object v1, v1, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lxx;->d(Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lxm;->a:Lxl;

    iget-object v0, v0, Lxl;->a:Lxj;

    iget-object v0, v0, Lxj;->a:Lxg;

    invoke-static {v0}, Lxg;->a(Lxg;)Lxx;

    move-result-object v0

    iget-object v1, p0, Lxm;->a:Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget-object v1, v1, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lxx;->c(Ljava/lang/String;)V

    .line 255
    :cond_1
    iget-object v0, p0, Lxm;->a:Lxl;

    iget-object v0, v0, Lxl;->a:Lxj;

    iget-object v0, v0, Lxj;->a:Lxg;

    invoke-static {v0}, Lxg;->a(Lxg;)Lcom/sohu/inputmethod/platform/AppManagerActivity;

    move-result-object v0

    iget-object v1, p0, Lxm;->a:Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget-object v1, v1, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a(Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lxm;->a:Lxl;

    iget-object v0, v0, Lxl;->a:Lxj;

    iget-object v0, v0, Lxj;->a:Lxg;

    invoke-static {v0}, Lxg;->a(Lxg;)Lcom/sohu/inputmethod/platform/AppManagerActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 257
    iget-object v0, p0, Lxm;->a:Lxl;

    iget-object v0, v0, Lxl;->a:Lxj;

    iget-object v0, v0, Lxj;->a:Lxg;

    invoke-static {v0}, Lxg;->a(Lxg;)Lxx;

    move-result-object v0

    iget-object v1, p0, Lxm;->a:Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget-object v1, v1, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->b:Ljava/lang/String;

    iget-object v2, p0, Lxm;->a:Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget v2, v2, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->a:I

    invoke-virtual {v0, v1, v2}, Lxx;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 258
    if-eqz v0, :cond_2

    .line 259
    iget-object v1, p0, Lxm;->a:Lxl;

    iget-object v1, v1, Lxl;->a:Lxj;

    iget-object v1, v1, Lxj;->a:Lxg;

    invoke-static {v1}, Lxg;->a(Lxg;)Lyv;

    move-result-object v1

    invoke-virtual {v1, v0}, Lyv;->c(Ljava/lang/String;)Z

    .line 286
    :cond_2
    :goto_0
    return-void

    .line 263
    :cond_3
    iget-object v0, p0, Lxm;->a:Lxl;

    iget-object v0, v0, Lxl;->a:Lxj;

    iget-object v0, v0, Lxj;->a:Lxg;

    invoke-static {v0}, Lxg;->a(Lxg;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lxm;->a:Lxl;

    iget v1, v1, Lxl;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwn;

    iget v0, v0, Lwn;->b:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 265
    :pswitch_0
    iget-object v0, p0, Lxm;->a:Lxl;

    iget-object v0, v0, Lxl;->a:Lxj;

    iget-object v0, v0, Lxj;->a:Lxg;

    invoke-static {v0}, Lxg;->a(Lxg;)Lxx;

    move-result-object v0

    iget-object v1, p0, Lxm;->a:Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget-object v1, v1, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lxx;->a(Ljava/lang/String;)Lxu;

    move-result-object v0

    .line 266
    if-eqz v0, :cond_4

    .line 267
    invoke-virtual {v0}, Lxu;->d()V

    .line 272
    :cond_4
    :pswitch_1
    iget-object v0, p0, Lxm;->a:Lxl;

    iget-object v0, v0, Lxl;->a:Lxj;

    iget-object v0, v0, Lxj;->a:Lxg;

    invoke-static {v0}, Lxg;->a(Lxg;)Lxx;

    move-result-object v0

    iget-object v1, p0, Lxm;->a:Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget-object v1, v1, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->b:Ljava/lang/String;

    iget-object v2, p0, Lxm;->a:Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget v2, v2, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->a:I

    invoke-virtual {v0, v1, v2}, Lxx;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 273
    iget-object v1, p0, Lxm;->a:Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget-object v1, v1, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->f:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 274
    iget-object v1, p0, Lxm;->a:Lxl;

    iget-object v1, v1, Lxl;->a:Lxj;

    iget-object v1, v1, Lxj;->a:Lxg;

    invoke-static {v1}, Lxg;->a(Lxg;)Lxx;

    move-result-object v1

    iget-object v2, p0, Lxm;->a:Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget-object v2, v2, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lxx;->d(Ljava/lang/String;)V

    .line 276
    :cond_5
    iget-object v1, p0, Lxm;->a:Lxl;

    iget-object v1, v1, Lxl;->a:Lxj;

    iget-object v1, v1, Lxj;->a:Lxg;

    invoke-static {v1}, Lxg;->a(Lxg;)Lyv;

    move-result-object v1

    invoke-virtual {v1, v0}, Lyv;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 277
    iget-object v0, p0, Lxm;->a:Lxl;

    iget-object v0, v0, Lxl;->a:Lxj;

    iget-object v0, v0, Lxj;->a:Lxg;

    invoke-static {v0}, Lxg;->a(Lxg;)Lcom/sohu/inputmethod/platform/AppManagerActivity;

    move-result-object v0

    iget-object v1, p0, Lxm;->a:Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget-object v1, v1, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a(Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lxm;->a:Lxl;

    iget-object v0, v0, Lxl;->a:Lxj;

    iget-object v0, v0, Lxj;->a:Lxg;

    invoke-static {v0}, Lxg;->a(Lxg;)Lcom/sohu/inputmethod/platform/AppManagerActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 263
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
