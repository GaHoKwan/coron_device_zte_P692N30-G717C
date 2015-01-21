.class Laar;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Laaq;


# direct methods
.method constructor <init>(Laaq;)V
    .locals 0
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Laar;->a:Laaq;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 157
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 159
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current selected item = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laaq;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 165
    :pswitch_1
    iget-object v0, p0, Laar;->a:Laaq;

    invoke-static {v0}, Laaq;->a(Laaq;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 168
    iget-object v0, p0, Laar;->a:Laaq;

    invoke-static {v0}, Laaq;->a(Laaq;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Laar;->a:Laaq;

    invoke-static {v1}, Laaq;->a(Laaq;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0077

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 171
    iget-object v0, p0, Laar;->a:Laaq;

    invoke-static {v0}, Laaq;->a(Laaq;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 172
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laox;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "sgim_cell.bin"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-ne v1, v3, :cond_1

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete the cell bin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laaq;->a(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 177
    iget-object v0, p0, Laar;->a:Laaq;

    invoke-static {v0}, Laaq;->b(Laaq;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sohu/inputmethod/engine/IMEInterface;->getInstance(Landroid/content/Context;)Lcom/sohu/inputmethod/engine/IMEInterface;

    move-result-object v0

    .line 179
    invoke-virtual {v0, v4}, Lcom/sohu/inputmethod/engine/IMEInterface;->release(Z)V

    .line 180
    invoke-virtual {v0}, Lcom/sohu/inputmethod/engine/IMEInterface;->init()V

    .line 181
    iget-object v0, p0, Laar;->a:Laaq;

    invoke-static {v0}, Laaq;->b(Laaq;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    const v1, 0x7f0b0076

    invoke-virtual {v0, v1, v3}, Lafp;->a(IZ)V

    .line 183
    :cond_1
    iget-object v0, p0, Laar;->a:Laaq;

    invoke-static {v0}, Laaq;->a(Laaq;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 185
    :cond_2
    iget-object v0, p0, Laar;->a:Laaq;

    invoke-static {v0}, Laaq;->a(Laaq;)V

    goto/16 :goto_0

    .line 189
    :pswitch_2
    iget-object v0, p0, Laar;->a:Laaq;

    invoke-static {v0}, Laaq;->a(Laaq;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v3}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    goto/16 :goto_0

    .line 193
    :pswitch_3
    iget-object v0, p0, Laar;->a:Laaq;

    invoke-static {v0}, Laaq;->a(Laaq;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v4}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    goto/16 :goto_0

    .line 197
    :pswitch_4
    iget-object v0, p0, Laar;->a:Laaq;

    invoke-static {v0}, Laaq;->b(Laaq;)V

    .line 198
    iget-object v0, p0, Laar;->a:Laaq;

    invoke-static {v0}, Laaq;->a(Laaq;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v4}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 200
    iget-object v0, p0, Laar;->a:Laaq;

    invoke-static {v0}, Laaq;->b(Laaq;)Z

    move-result v0

    if-ne v0, v3, :cond_0

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Auto build the scel file = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Laar;->a:Laaq;

    invoke-static {v1}, Laaq;->a(Laaq;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laaq;->a(Ljava/lang/String;)V

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Auto build the scel file in SET_NEW_VIEW = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Laar;->a:Laaq;

    invoke-static {v1}, Laaq;->a(Laaq;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laaq;->b(Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Laar;->a:Laaq;

    invoke-static {v0}, Laaq;->c(Laaq;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 206
    iget-object v0, p0, Laar;->a:Laaq;

    invoke-static {v0, v4}, Laaq;->a(Laaq;Z)Z

    goto/16 :goto_0

    .line 208
    :cond_3
    iget-object v0, p0, Laar;->a:Laaq;

    invoke-static {v0}, Laaq;->a(Laaq;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 214
    :pswitch_5
    iget-object v0, p0, Laar;->a:Laaq;

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Labr;

    iget-object v3, p0, Laar;->a:Laaq;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Labr;-><init>(Laaq;Laar;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v0, v1}, Laaq;->a(Laaq;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 215
    iget-object v0, p0, Laar;->a:Laaq;

    invoke-static {v0}, Laaq;->a(Laaq;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 216
    iget-object v0, p0, Laar;->a:Laaq;

    invoke-static {v0}, Laaq;->a(Laaq;)V

    goto/16 :goto_0

    .line 219
    :pswitch_6
    iget-object v0, p0, Laar;->a:Laaq;

    invoke-static {v0}, Laaq;->a(Laaq;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Laar;->a:Laaq;

    invoke-static {v0}, Laaq;->a(Laaq;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto/16 :goto_0

    .line 223
    :pswitch_7
    iget-object v0, p0, Laar;->a:Laaq;

    invoke-static {v0}, Laaq;->a(Laaq;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Laar;->a:Laaq;

    invoke-static {v0}, Laaq;->a(Laaq;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto/16 :goto_0

    .line 157
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
