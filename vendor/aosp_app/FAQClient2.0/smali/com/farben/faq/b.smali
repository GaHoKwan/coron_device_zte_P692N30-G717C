.class final Lcom/farben/faq/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/farben/faq/ChannelDetailActivity;

.field private final synthetic b:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/farben/faq/ChannelDetailActivity;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/farben/faq/b;->a:Lcom/farben/faq/ChannelDetailActivity;

    iput-object p2, p0, Lcom/farben/faq/b;->b:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/farben/faq/b;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/farben/faq/b;->a:Lcom/farben/faq/ChannelDetailActivity;

    invoke-virtual {v0}, Lcom/farben/faq/ChannelDetailActivity;->onBackPressed()V

    return-void
.end method
