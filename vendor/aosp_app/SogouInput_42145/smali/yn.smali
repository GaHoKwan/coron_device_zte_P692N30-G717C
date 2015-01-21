.class Lyn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lym;


# direct methods
.method constructor <init>(Lym;)V
    .locals 0
    .parameter

    .prologue
    .line 942
    iput-object p1, p0, Lyn;->a:Lym;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter

    .prologue
    const/16 v10, 0x69

    const/16 v9, 0x8

    const/4 v4, 0x0

    const/4 v7, -0x1

    const/4 v3, 0x1

    .line 946
    iget-object v0, p0, Lyn;->a:Lym;

    iget-object v0, v0, Lym;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "click view id is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;Ljava/lang/String;)V

    .line 947
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 948
    iget-object v0, p0, Lyn;->a:Lym;

    iget-object v0, v0, Lym;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 v0, v2, 0x1

    move v1, v0

    .line 949
    :goto_0
    iget-object v0, p0, Lyn;->a:Lym;

    iget-object v0, v0, Lym;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 950
    iget-object v5, p0, Lyn;->a:Lym;

    iget-object v5, v5, Lym;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v5}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v5

    .line 952
    if-lt v1, v0, :cond_7

    if-gt v1, v5, :cond_7

    .line 953
    sub-int v0, v1, v0

    move v6, v0

    .line 955
    :goto_1
    if-ltz v2, :cond_0

    iget-object v0, p0, Lyn;->a:Lym;

    iget-object v0, v0, Lym;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 956
    iget-object v0, p0, Lyn;->a:Lym;

    iget-object v0, v0, Lym;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget-object v8, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->b:Ljava/lang/String;

    .line 959
    const-string v5, "0%"

    .line 964
    iget-object v0, p0, Lyn;->a:Lym;

    iget-object v0, v0, Lym;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget v0, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->b:I

    packed-switch v0, :pswitch_data_0

    .line 1103
    :cond_0
    :goto_2
    :pswitch_0
    return-void

    :cond_1
    move v1, v2

    .line 948
    goto :goto_0

    .line 969
    :pswitch_1
    iget-object v0, p0, Lyn;->a:Lym;

    iget-object v0, v0, Lym;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Lyv;

    move-result-object v0

    invoke-virtual {v0, v8}, Lyv;->b(Ljava/lang/String;)V

    .line 970
    iget-object v0, p0, Lyn;->a:Lym;

    iget-object v0, v0, Lym;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 973
    :pswitch_2
    invoke-static {}, Laox;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 974
    iget-object v0, p0, Lyn;->a:Lym;

    iget-object v0, v0, Lym;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->b(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 975
    iget-object v0, p0, Lyn;->a:Lym;

    iget-object v0, v0, Lym;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Lxx;

    move-result-object v1

    iget-object v0, p0, Lyn;->a:Lym;

    iget-object v0, v0, Lym;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget-object v0, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->f:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lxx;->c(Ljava/lang/String;)V

    goto :goto_2

    .line 978
    :cond_2
    iget-object v0, p0, Lyn;->a:Lym;

    iget-object v0, v0, Lym;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 979
    iput v10, v0, Landroid/os/Message;->what:I

    .line 980
    iget-object v1, p0, Lyn;->a:Lym;

    iget-object v1, v1, Lym;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 981
    iget-object v1, p0, Lyn;->a:Lym;

    iget-object v1, v1, Lym;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 982
    iget-object v0, p0, Lyn;->a:Lym;

    iget-object v0, v0, Lym;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iput v3, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->b:I

    .line 983
    iget-object v0, p0, Lyn;->a:Lym;

    iget-object v0, v0, Lym;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Lxx;

    move-result-object v1

    iget-object v0, p0, Lyn;->a:Lym;

    iget-object v0, v0, Lym;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget-object v0, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->f:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lxx;->b(Ljava/lang/String;)V

    .line 984
    if-le v6, v7, :cond_0

    .line 985
    iget-object v0, p0, Lyn;->a:Lym;

    iget-object v0, v0, Lym;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 986
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 987
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyr;

    .line 988
    iget-object v1, v0, Lyr;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 989
    iget-object v1, v0, Lyr;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 990
    iget-object v1, p0, Lyn;->a:Lym;

    iget-object v1, v1, Lym;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Lxx;

    move-result-object v6

    iget-object v1, p0, Lyn;->a:Lym;

    iget-object v1, v1, Lym;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget-object v1, v1, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->f:Ljava/lang/String;

    invoke-virtual {v6, v1}, Lxx;->b(Ljava/lang/String;)Lxy;

    move-result-object v6

    .line 991
    iget-object v1, p0, Lyn;->a:Lym;

    iget-object v1, v1, Lym;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Lxx;

    move-result-object v7

    iget-object v1, p0, Lyn;->a:Lym;

    iget-object v1, v1, Lym;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget-object v8, v1, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->b:Ljava/lang/String;

    iget-object v1, p0, Lyn;->a:Lym;

    iget-object v1, v1, Lym;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget v1, v1, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->a:I

    invoke-virtual {v7, v8, v1}, Lxx;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 992
    iget-object v2, p0, Lyn;->a:Lym;

    iget-object v2, v2, Lym;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v2}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Lyv;

    move-result-object v2

    invoke-virtual {v2, v1}, Lyv;->b(Ljava/lang/String;)Z

    move-result v1

    .line 993
    if-eqz v6, :cond_6

    if-eqz v1, :cond_6

    .line 994
    iget v2, v6, Lxy;->a:I

    .line 995
    iget v1, v6, Lxy;->b:I

    .line 996
    iget-object v3, p0, Lyn;->a:Lym;

    iget-object v3, v3, Lym;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v3}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Lxx;

    move-result-object v3

    int-to-long v4, v1

    int-to-long v6, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Lxx;->a(JJ)Ljava/lang/String;

    move-result-object v3

    .line 998
    :goto_3
    iget-object v4, v0, Lyr;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 999
    iget-object v1, v0, Lyr;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1000
    iget-object v1, v0, Lyr;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1001
    iget-object v0, v0, Lyr;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lyn;->a:Lym;

    iget-object v1, v1, Lym;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    const v2, 0x7f0b0405

    invoke-virtual {v1, v2}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1006
    :pswitch_3
    iget-object v0, p0, Lyn;->a:Lym;

    iget-object v0, v0, Lym;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    .line 1007
    iget-object v8, p0, Lyn;->a:Lym;

    iget-object v8, v8, Lym;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v8, v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;Lcom/sohu/inputmethod/platform/PlatformAppInfo;)Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    .line 1008
    iget-object v8, p0, Lyn;->a:Lym;

    iget-object v8, v8, Lym;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v8, v1}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;I)I

    .line 1009
    iget v0, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->c:I

    if-ne v0, v3, :cond_3

    .line 1010
    iget-object v0, p0, Lyn;->a:Lym;

    iget-object v0, v0, Lym;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Ljava/lang/Thread;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1011
    iget-object v0, p0, Lyn;->a:Lym;

    iget-object v0, v0, Lym;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lyo;

    invoke-direct {v2, p0}, Lyo;-><init>(Lyn;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 1017
    iget-object v0, p0, Lyn;->a:Lym;

    iget-object v0, v0, Lym;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_2

    .line 1020
    :cond_3
    invoke-static {}, Laox;->a()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1021
    iget-object v0, p0, Lyn;->a:Lym;

    iget-object v0, v0, Lym;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->b(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1022
    iget-object v0, p0, Lyn;->a:Lym;

    iget-object v0, v0, Lym;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Lxx;

    move-result-object v1

    iget-object v0, p0, Lyn;->a:Lym;

    iget-object v0, v0, Lym;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget-object v0, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->f:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lxx;->c(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1025
    :cond_4
    iget-object v0, p0, Lyn;->a:Lym;

    iget-object v0, v0, Lym;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1026
    iput v10, v0, Landroid/os/Message;->what:I

    .line 1027
    iget-object v1, p0, Lyn;->a:Lym;

    iget-object v1, v1, Lym;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1028
    iget-object v1, p0, Lyn;->a:Lym;

    iget-object v1, v1, Lym;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1029
    iget-object v0, p0, Lyn;->a:Lym;

    iget-object v0, v0, Lym;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iput v3, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->b:I

    .line 1030
    iget-object v0, p0, Lyn;->a:Lym;

    iget-object v0, v0, Lym;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Lxx;

    move-result-object v1

    iget-object v0, p0, Lyn;->a:Lym;

    iget-object v0, v0, Lym;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget-object v0, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->f:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lxx;->b(Ljava/lang/String;)V

    .line 1031
    if-le v6, v7, :cond_0

    .line 1032
    iget-object v0, p0, Lyn;->a:Lym;

    iget-object v0, v0, Lym;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1033
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1034
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyr;

    .line 1035
    iget-object v1, v0, Lyr;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1036
    iget-object v1, v0, Lyr;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1037
    iget-object v1, p0, Lyn;->a:Lym;

    iget-object v1, v1, Lym;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Lxx;

    move-result-object v6

    iget-object v1, p0, Lyn;->a:Lym;

    iget-object v1, v1, Lym;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget-object v1, v1, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->f:Ljava/lang/String;

    invoke-virtual {v6, v1}, Lxx;->b(Ljava/lang/String;)Lxy;

    move-result-object v6

    .line 1038
    iget-object v1, p0, Lyn;->a:Lym;

    iget-object v1, v1, Lym;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Lxx;

    move-result-object v7

    iget-object v1, p0, Lyn;->a:Lym;

    iget-object v1, v1, Lym;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget-object v8, v1, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->b:Ljava/lang/String;

    iget-object v1, p0, Lyn;->a:Lym;

    iget-object v1, v1, Lym;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget v1, v1, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->a:I

    invoke-virtual {v7, v8, v1}, Lxx;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1039
    iget-object v2, p0, Lyn;->a:Lym;

    iget-object v2, v2, Lym;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v2}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Lyv;

    move-result-object v2

    invoke-virtual {v2, v1}, Lyv;->b(Ljava/lang/String;)Z

    move-result v1

    .line 1040
    if-eqz v6, :cond_5

    if-eqz v1, :cond_5

    .line 1041
    iget v4, v6, Lxy;->a:I

    .line 1042
    iget v3, v6, Lxy;->b:I

    .line 1043
    iget-object v1, p0, Lyn;->a:Lym;

    iget-object v1, v1, Lym;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Lxx;

    move-result-object v1

    int-to-long v5, v3

    int-to-long v7, v4

    invoke-virtual {v1, v5, v6, v7, v8}, Lxx;->a(JJ)Ljava/lang/String;

    move-result-object v5

    .line 1045
    :cond_5
    iget-object v1, v0, Lyr;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 1046
    iget-object v1, v0, Lyr;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1047
    iget-object v1, v0, Lyr;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1048
    iget-object v0, v0, Lyr;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lyn;->a:Lym;

    iget-object v1, v1, Lym;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    const v2, 0x7f0b0405

    invoke-virtual {v1, v2}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1054
    :pswitch_4
    iget-object v0, p0, Lyn;->a:Lym;

    iget-object v0, v0, Lym;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Lxx;

    move-result-object v1

    iget-object v0, p0, Lyn;->a:Lym;

    iget-object v0, v0, Lym;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget-object v3, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->b:Ljava/lang/String;

    iget-object v0, p0, Lyn;->a:Lym;

    iget-object v0, v0, Lym;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget v0, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->a:I

    invoke-virtual {v1, v3, v0}, Lxx;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1056
    iget-object v0, p0, Lyn;->a:Lym;

    iget-object v0, v0, Lym;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Lyv;

    move-result-object v3

    iget-object v0, p0, Lyn;->a:Lym;

    iget-object v0, v0, Lym;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget-object v0, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->f:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lyv;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1057
    iget-object v0, p0, Lyn;->a:Lym;

    iget-object v0, v0, Lym;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    const-string v1, "apk file not exist!"

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->c(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_6
    move v1, v3

    move v2, v4

    move-object v3, v5

    goto/16 :goto_3

    :cond_7
    move v6, v7

    goto/16 :goto_1

    .line 964
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
