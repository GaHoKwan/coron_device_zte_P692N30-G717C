.class public Lyf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 331
    iput-object p1, p0, Lyf;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 378
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x68

    .line 334
    .line 336
    packed-switch p2, :pswitch_data_0

    .line 372
    :cond_0
    :goto_0
    return-void

    .line 340
    :pswitch_0
    iget-object v0, p0, Lyf;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 341
    iget-object v1, p0, Lyf;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    .line 342
    iget-object v2, p0, Lyf;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v2}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Lym;

    move-result-object v2

    invoke-virtual {v2}, Lym;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_1

    .line 343
    iget-object v2, p0, Lyf;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v2}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Lwo;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lwo;->a(II)V

    .line 344
    iget-object v0, p0, Lyf;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Lwo;

    move-result-object v0

    invoke-virtual {v0}, Lwo;->b()V

    goto :goto_0

    .line 346
    :cond_1
    if-nez v0, :cond_2

    .line 347
    iget-object v2, p0, Lyf;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v2}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Lwo;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lwo;->a(II)V

    .line 348
    iget-object v0, p0, Lyf;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Lwo;

    move-result-object v0

    invoke-virtual {v0}, Lwo;->b()V

    goto :goto_0

    .line 352
    :cond_2
    iget-object v0, p0, Lyf;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 353
    iget-object v0, p0, Lyf;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 354
    :cond_3
    iget-object v0, p0, Lyf;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Lwo;

    move-result-object v0

    invoke-virtual {v0}, Lwo;->a()V

    goto :goto_0

    .line 358
    :pswitch_1
    iget-object v0, p0, Lyf;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Lwo;

    move-result-object v0

    invoke-virtual {v0}, Lwo;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 360
    iget-object v0, p0, Lyf;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 364
    :pswitch_2
    iget-object v0, p0, Lyf;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 365
    iget-object v0, p0, Lyf;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 366
    :cond_4
    iget-object v0, p0, Lyf;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Lwo;

    move-result-object v0

    invoke-virtual {v0}, Lwo;->a()V

    goto/16 :goto_0

    .line 336
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
