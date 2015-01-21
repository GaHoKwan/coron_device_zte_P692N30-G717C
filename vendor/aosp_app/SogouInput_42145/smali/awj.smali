.class public Lawj;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/ui/EditViewContainer;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/ui/EditViewContainer;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lawj;->a:Lcom/sohu/inputmethod/ui/EditViewContainer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter

    .prologue
    .line 123
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 132
    :goto_0
    return-void

    .line 125
    :pswitch_0
    iget-object v0, p0, Lawj;->a:Lcom/sohu/inputmethod/ui/EditViewContainer;

    invoke-static {v0}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a(Lcom/sohu/inputmethod/ui/EditViewContainer;)V

    .line 126
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 127
    const-wide/16 v1, 0x32

    invoke-virtual {p0, v0, v1, v2}, Lawj;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
