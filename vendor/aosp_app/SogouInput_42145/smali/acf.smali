.class Lacf;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lace;


# direct methods
.method constructor <init>(Lace;)V
    .locals 0
    .parameter

    .prologue
    .line 310
    iput-object p1, p0, Lacf;->a:Lace;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter

    .prologue
    .line 312
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 323
    :goto_0
    return-void

    .line 314
    :pswitch_0
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lacf;->removeMessages(I)V

    .line 315
    iget-object v0, p0, Lacf;->a:Lace;

    iget-object v1, p0, Lacf;->a:Lace;

    invoke-static {v1}, Lace;->a(Lace;)Landroid/content/Context;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, v2}, Lace;->a(Lace;Landroid/content/Context;I)V

    goto :goto_0

    .line 318
    :pswitch_1
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lacf;->removeMessages(I)V

    .line 319
    iget-object v0, p0, Lacf;->a:Lace;

    iget-object v1, p0, Lacf;->a:Lace;

    invoke-static {v1}, Lace;->a(Lace;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lace;->a(Lace;Landroid/content/Context;)V

    goto :goto_0

    .line 312
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
