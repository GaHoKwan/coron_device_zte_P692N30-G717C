.class public Laxg;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Laxg;->a:Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter

    .prologue
    .line 124
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 126
    :pswitch_0
    iget-object v0, p0, Laxg;->a:Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;

    invoke-static {v0}, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a(Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;)Lcom/sohu/inputmethod/sogou/SogouIME;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Laxg;->a:Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;

    invoke-static {v0}, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a(Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;)Lcom/sohu/inputmethod/sogou/SogouIME;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(II)Z

    goto :goto_0

    .line 124
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
