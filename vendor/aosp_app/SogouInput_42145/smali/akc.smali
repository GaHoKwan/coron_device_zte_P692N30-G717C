.class Lakc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lajq;

.field final synthetic a:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lajq;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 250
    iput-object p1, p0, Lakc;->a:Lajq;

    iput-object p2, p0, Lakc;->a:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 254
    iget-object v0, p0, Lakc;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 255
    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lakc;->a:Lajq;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lajq;->a(Lajq;Z)V

    .line 259
    :cond_0
    iget-object v0, p0, Lakc;->a:Lajq;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lajq;->b(Lajq;Z)V

    .line 260
    iget-object v0, p0, Lakc;->a:Lajq;

    invoke-static {v0}, Lajq;->a(Lajq;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Laox;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 261
    iget-object v0, p0, Lakc;->a:Lajq;

    invoke-static {v0}, Lajq;->a(Lajq;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x66

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 266
    :goto_0
    return-void

    .line 264
    :cond_1
    iget-object v0, p0, Lakc;->a:Lajq;

    invoke-static {v0}, Lajq;->a(Lajq;)V

    goto :goto_0
.end method
