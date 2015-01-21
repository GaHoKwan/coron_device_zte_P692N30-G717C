.class public Lank;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/settings/receiver/ConnectReceiver;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/settings/receiver/ConnectReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lank;->a:Lcom/sohu/inputmethod/settings/receiver/ConnectReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter

    .prologue
    .line 129
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 137
    :goto_0
    return-void

    .line 131
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lank;->a:Lcom/sohu/inputmethod/settings/receiver/ConnectReceiver;

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/receiver/ConnectReceiver;->a(Lcom/sohu/inputmethod/settings/receiver/ConnectReceiver;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 132
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 133
    iget-object v1, p0, Lank;->a:Lcom/sohu/inputmethod/settings/receiver/ConnectReceiver;

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/receiver/ConnectReceiver;->a(Lcom/sohu/inputmethod/settings/receiver/ConnectReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 129
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
