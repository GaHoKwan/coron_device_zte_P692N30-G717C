.class final Lcom/farben/faq/widget/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic a:Lcom/farben/faq/widget/ChannelGallery;


# direct methods
.method constructor <init>(Lcom/farben/faq/widget/ChannelGallery;)V
    .locals 0

    iput-object p1, p0, Lcom/farben/faq/widget/b;->a:Lcom/farben/faq/widget/ChannelGallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/farben/faq/widget/b;->a:Lcom/farben/faq/widget/ChannelGallery;

    invoke-static {v0}, Lcom/farben/faq/widget/ChannelGallery;->b(Lcom/farben/faq/widget/ChannelGallery;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method
