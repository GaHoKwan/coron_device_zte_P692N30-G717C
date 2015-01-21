.class final Lcom/adchina/android/ads/views/q;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/adchina/android/ads/views/AdSlidingDrawer;


# direct methods
.method private constructor <init>(Lcom/adchina/android/ads/views/AdSlidingDrawer;)V
    .locals 0

    iput-object p1, p0, Lcom/adchina/android/ads/views/q;->a:Lcom/adchina/android/ads/views/AdSlidingDrawer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/adchina/android/ads/views/AdSlidingDrawer;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/adchina/android/ads/views/q;-><init>(Lcom/adchina/android/ads/views/AdSlidingDrawer;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/adchina/android/ads/views/q;->a:Lcom/adchina/android/ads/views/AdSlidingDrawer;

    invoke-static {v0}, Lcom/adchina/android/ads/views/AdSlidingDrawer;->c(Lcom/adchina/android/ads/views/AdSlidingDrawer;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method
