.class Laib;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Laia;


# direct methods
.method constructor <init>(Laia;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Laib;->a:Laia;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter

    .prologue
    .line 126
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 159
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 160
    return-void

    .line 128
    :pswitch_1
    iget-object v0, p0, Laib;->a:Laia;

    invoke-static {v0}, Laia;->a(Laia;)V

    goto :goto_0

    .line 131
    :pswitch_2
    iget-object v0, p0, Laib;->a:Laia;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Laia;->a(Laia;I)V

    goto :goto_0

    .line 134
    :pswitch_3
    iget-object v0, p0, Laib;->a:Laia;

    invoke-static {v0}, Laia;->a(Laia;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 135
    iget-object v1, p0, Laib;->a:Laia;

    invoke-static {v1}, Laia;->a(Laia;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    .line 136
    iget-object v2, p0, Laib;->a:Laia;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " end is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Laia;->a(Laia;Ljava/lang/String;)V

    .line 137
    iget-object v2, p0, Laib;->a:Laia;

    invoke-static {v2}, Laia;->a(Laia;)Lahr;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lahr;->a(II)V

    .line 138
    iget-object v0, p0, Laib;->a:Laia;

    invoke-static {v0}, Laia;->a(Laia;)Lahr;

    move-result-object v0

    invoke-virtual {v0}, Lahr;->b()V

    goto :goto_0

    .line 141
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;

    .line 143
    iget-object v1, p0, Laib;->a:Laia;

    invoke-static {v1}, Laia;->a(Laia;)Laja;

    move-result-object v1

    iget-object v2, p0, Laib;->a:Laia;

    invoke-virtual {v1, v2, v0}, Laja;->a(Laiz;Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;)V

    goto :goto_0

    .line 147
    :pswitch_5
    iget-object v0, p0, Laib;->a:Laia;

    invoke-static {v0}, Laia;->b(Laia;)V

    .line 150
    iget-object v0, p0, Laib;->a:Laia;

    invoke-static {v0}, Laia;->a(Laia;)Laiq;

    move-result-object v0

    invoke-virtual {v0}, Laiq;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 153
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 154
    iget-object v1, p0, Laib;->a:Laia;

    invoke-static {v1, v0}, Laia;->b(Laia;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
