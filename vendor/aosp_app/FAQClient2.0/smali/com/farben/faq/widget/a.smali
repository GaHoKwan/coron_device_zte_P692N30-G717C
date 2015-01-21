.class final Lcom/farben/faq/widget/a;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/farben/faq/widget/ChannelGallery;


# direct methods
.method constructor <init>(Lcom/farben/faq/widget/ChannelGallery;)V
    .locals 0

    iput-object p1, p0, Lcom/farben/faq/widget/a;->a:Lcom/farben/faq/widget/ChannelGallery;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/farben/faq/widget/a;->a:Lcom/farben/faq/widget/ChannelGallery;

    iget-object v1, p0, Lcom/farben/faq/widget/a;->a:Lcom/farben/faq/widget/ChannelGallery;

    invoke-static {v1}, Lcom/farben/faq/widget/ChannelGallery;->a(Lcom/farben/faq/widget/ChannelGallery;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/farben/faq/widget/ChannelGallery;->setSelection(I)V

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
