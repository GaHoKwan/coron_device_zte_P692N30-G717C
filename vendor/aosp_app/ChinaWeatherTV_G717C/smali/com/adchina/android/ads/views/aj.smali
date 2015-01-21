.class final Lcom/adchina/android/ads/views/aj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic a:Lcom/adchina/android/ads/views/FullScreenAdActivity;


# direct methods
.method constructor <init>(Lcom/adchina/android/ads/views/FullScreenAdActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/adchina/android/ads/views/aj;->a:Lcom/adchina/android/ads/views/FullScreenAdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 3

    iget-object v0, p0, Lcom/adchina/android/ads/views/aj;->a:Lcom/adchina/android/ads/views/FullScreenAdActivity;

    invoke-static {v0}, Lcom/adchina/android/ads/views/FullScreenAdActivity;->a(Lcom/adchina/android/ads/views/FullScreenAdActivity;)I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/adchina/android/ads/views/aj;->a:Lcom/adchina/android/ads/views/FullScreenAdActivity;

    invoke-static {v0}, Lcom/adchina/android/ads/views/FullScreenAdActivity;->b(Lcom/adchina/android/ads/views/FullScreenAdActivity;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/adchina/android/ads/views/aj;->a:Lcom/adchina/android/ads/views/FullScreenAdActivity;

    invoke-static {v0}, Lcom/adchina/android/ads/views/FullScreenAdActivity;->c(Lcom/adchina/android/ads/views/FullScreenAdActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adchina/android/ads/views/aj;->a:Lcom/adchina/android/ads/views/FullScreenAdActivity;

    invoke-static {v0}, Lcom/adchina/android/ads/views/FullScreenAdActivity;->c(Lcom/adchina/android/ads/views/FullScreenAdActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u5e7f\u544a\u5269\u4f59"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/aj;->a:Lcom/adchina/android/ads/views/FullScreenAdActivity;

    invoke-static {v0}, Lcom/adchina/android/ads/views/FullScreenAdActivity;->c(Lcom/adchina/android/ads/views/FullScreenAdActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/adchina/android/ads/views/aj;->a:Lcom/adchina/android/ads/views/FullScreenAdActivity;

    invoke-static {v2}, Lcom/adchina/android/ads/views/FullScreenAdActivity;->a(Lcom/adchina/android/ads/views/FullScreenAdActivity;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/aj;->a:Lcom/adchina/android/ads/views/FullScreenAdActivity;

    invoke-static {v0}, Lcom/adchina/android/ads/views/FullScreenAdActivity;->c(Lcom/adchina/android/ads/views/FullScreenAdActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u79d2"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
