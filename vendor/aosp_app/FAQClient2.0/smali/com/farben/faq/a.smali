.class final Lcom/farben/faq/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/farben/faq/ChannelDetailActivity;


# direct methods
.method constructor <init>(Lcom/farben/faq/ChannelDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/farben/faq/a;->a:Lcom/farben/faq/ChannelDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/farben/faq/a;->a:Lcom/farben/faq/ChannelDetailActivity;

    invoke-virtual {v0}, Lcom/farben/faq/ChannelDetailActivity;->onBackPressed()V

    return-void
.end method
