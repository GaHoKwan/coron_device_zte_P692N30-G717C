.class final Lcom/adchina/android/ads/views/s;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/adchina/android/ads/views/AdVideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/adchina/android/ads/views/AdVideoPlayerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/adchina/android/ads/views/s;->a:Lcom/adchina/android/ads/views/AdVideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    invoke-static {}, Lcom/adchina/android/ads/controllers/s;->a()Lcom/adchina/android/ads/controllers/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adchina/android/ads/controllers/s;->u()V

    return-void
.end method