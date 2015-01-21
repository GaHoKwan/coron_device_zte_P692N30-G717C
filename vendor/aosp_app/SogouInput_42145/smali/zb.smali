.class public Lzb;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/platform/PlatformView;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/platform/PlatformView;)V
    .locals 0
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lzb;->a:Lcom/sohu/inputmethod/platform/PlatformView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 130
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 132
    :pswitch_0
    iget-object v0, p0, Lzb;->a:Lcom/sohu/inputmethod/platform/PlatformView;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/platform/PlatformView;->a(Lcom/sohu/inputmethod/platform/PlatformView;I)V

    goto :goto_0

    .line 135
    :pswitch_1
    iget-object v0, p0, Lzb;->a:Lcom/sohu/inputmethod/platform/PlatformView;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformView;->a(Lcom/sohu/inputmethod/platform/PlatformView;)V

    goto :goto_0

    .line 138
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-lez v0, :cond_0

    .line 139
    iget-object v0, p0, Lzb;->a:Lcom/sohu/inputmethod/platform/PlatformView;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/platform/PlatformView;->b(Lcom/sohu/inputmethod/platform/PlatformView;I)V

    goto :goto_0

    .line 130
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
