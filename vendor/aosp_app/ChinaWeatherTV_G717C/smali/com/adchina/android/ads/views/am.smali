.class final Lcom/adchina/android/ads/views/am;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/adchina/android/ads/views/NomalVideoPlayActivity;


# direct methods
.method constructor <init>(Lcom/adchina/android/ads/views/NomalVideoPlayActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/adchina/android/ads/views/am;->a:Lcom/adchina/android/ads/views/NomalVideoPlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/adchina/android/ads/views/am;->a:Lcom/adchina/android/ads/views/NomalVideoPlayActivity;

    iget-object v0, v0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adchina/android/ads/views/am;->a:Lcom/adchina/android/ads/views/NomalVideoPlayActivity;

    iget-object v0, v0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adchina/android/ads/views/am;->a:Lcom/adchina/android/ads/views/NomalVideoPlayActivity;

    iget-object v0, v0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    :cond_0
    iget-object v0, p0, Lcom/adchina/android/ads/views/am;->a:Lcom/adchina/android/ads/views/NomalVideoPlayActivity;

    invoke-virtual {v0}, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->finish()V

    return-void
.end method
