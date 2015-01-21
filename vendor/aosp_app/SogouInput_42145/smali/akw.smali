.class public Lakw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lalb;


# instance fields
.field final synthetic a:Lajq;


# direct methods
.method public constructor <init>(Lajq;)V
    .locals 0
    .parameter

    .prologue
    .line 1749
    iput-object p1, p0, Lakw;->a:Lajq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/sohu/inputmethod/settings/hotdict/HotdictImageView;Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1753
    iget-object v0, p0, Lakw;->a:Lajq;

    invoke-static {v0}, Lajq;->a(Lajq;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1754
    const/16 v1, 0x6b

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1755
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1756
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "3"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1759
    iget-object v1, p0, Lakw;->a:Lajq;

    invoke-static {v1}, Lajq;->a(Lajq;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1760
    return-void
.end method
