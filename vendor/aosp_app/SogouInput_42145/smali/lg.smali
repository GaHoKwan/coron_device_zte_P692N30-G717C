.class Llg;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Llf;


# direct methods
.method constructor <init>(Llf;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Llg;->a:Llf;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 119
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 120
    const-string v0, "com.sohu.inputmethod.install.dimcode.theme"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 123
    iget-object v0, p0, Llg;->a:Llf;

    invoke-static {v0}, Llf;->a(Llf;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    sget-object v0, Lage;->j:Ljava/lang/String;

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Llg;->a:Llf;

    iget-object v1, p0, Llg;->a:Llf;

    invoke-static {v1}, Llf;->a(Llf;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0252

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Llf;->a(Ljava/lang/String;)V

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    const-string v0, "install_theme_fail"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 132
    packed-switch v0, :pswitch_data_0

    .line 150
    iget-object v0, p0, Llg;->a:Llf;

    iget-object v1, p0, Llg;->a:Llf;

    invoke-static {v1}, Llf;->a(Llf;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0253

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Llf;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :pswitch_0
    iget-object v0, p0, Llg;->a:Llf;

    iget-object v1, p0, Llg;->a:Llf;

    invoke-static {v1}, Llf;->a(Llf;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b02f2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Llf;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 138
    :pswitch_1
    iget-object v0, p0, Llg;->a:Llf;

    iget-object v1, p0, Llg;->a:Llf;

    invoke-static {v1}, Llf;->a(Llf;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b02f3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Llf;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 142
    :pswitch_2
    iget-object v0, p0, Llg;->a:Llf;

    iget-object v1, p0, Llg;->a:Llf;

    invoke-static {v1}, Llf;->a(Llf;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b02f4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Llf;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 146
    :pswitch_3
    iget-object v0, p0, Llg;->a:Llf;

    iget-object v1, p0, Llg;->a:Llf;

    invoke-static {v1}, Llf;->a(Llf;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b02f5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Llf;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
