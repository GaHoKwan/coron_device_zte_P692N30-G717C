.class Lakr;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lajq;

.field final synthetic a:Landroid/widget/ImageButton;

.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lajq;Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageButton;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 631
    iput-object p1, p0, Lakr;->a:Lajq;

    iput-object p2, p0, Lakr;->a:Ljava/lang/String;

    iput-object p3, p0, Lakr;->b:Ljava/lang/String;

    iput-object p4, p0, Lakr;->a:Landroid/widget/ImageButton;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 635
    .line 637
    iget-object v0, p0, Lakr;->a:Lajq;

    invoke-static {v0}, Lajq;->a(Lajq;)Lakz;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lakr;->a:Lajq;

    invoke-static {v0}, Lajq;->a(Lajq;)Lakz;

    move-result-object v0

    iget-object v2, p0, Lakr;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lakz;->a(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 638
    :goto_0
    iget-object v2, p0, Lakr;->a:Lajq;

    invoke-static {v2}, Lajq;->a(Lajq;)Lakz;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lakr;->a:Lajq;

    invoke-static {v1}, Lajq;->a(Lajq;)Lakz;

    move-result-object v1

    iget-object v2, p0, Lakr;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lakz;->a(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 640
    :cond_0
    if-eqz v0, :cond_1

    if-nez v1, :cond_2

    .line 642
    :cond_1
    iget-object v0, p0, Lakr;->a:Lajq;

    invoke-static {v0}, Lajq;->a(Lajq;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 643
    const/16 v1, 0x69

    iput v1, v0, Landroid/os/Message;->what:I

    .line 644
    iget-object v1, p0, Lakr;->a:Landroid/widget/ImageButton;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 645
    iget-object v1, p0, Lakr;->a:Lajq;

    invoke-static {v1}, Lajq;->a(Lajq;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 654
    :goto_1
    return-void

    .line 647
    :cond_2
    iget-object v2, p0, Lakr;->a:Lajq;

    invoke-static {v2}, Lajq;->a(Lajq;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 648
    const/16 v3, 0x68

    iput v3, v2, Landroid/os/Message;->what:I

    .line 649
    iget-object v3, p0, Lakr;->a:Landroid/widget/ImageButton;

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 650
    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 651
    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "2"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 652
    iget-object v0, p0, Lakr;->a:Lajq;

    invoke-static {v0}, Lajq;->a(Lajq;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method
