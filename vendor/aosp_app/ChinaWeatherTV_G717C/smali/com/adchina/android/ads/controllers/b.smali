.class final Lcom/adchina/android/ads/controllers/b;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/adchina/android/ads/controllers/BaseController;

.field private final synthetic b:Lcom/adchina/android/ads/s;


# direct methods
.method constructor <init>(Lcom/adchina/android/ads/controllers/BaseController;Lcom/adchina/android/ads/s;)V
    .locals 0

    iput-object p1, p0, Lcom/adchina/android/ads/controllers/b;->a:Lcom/adchina/android/ads/controllers/BaseController;

    iput-object p2, p0, Lcom/adchina/android/ads/controllers/b;->b:Lcom/adchina/android/ads/s;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/adchina/android/ads/controllers/b;)Lcom/adchina/android/ads/controllers/BaseController;
    .locals 1

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/b;->a:Lcom/adchina/android/ads/controllers/BaseController;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/b;->b:Lcom/adchina/android/ads/s;

    new-instance v1, Lcom/adchina/android/ads/controllers/c;

    invoke-direct {v1, p0}, Lcom/adchina/android/ads/controllers/c;-><init>(Lcom/adchina/android/ads/controllers/b;)V

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/s;->a(Lcom/adchina/android/ads/u;)V

    return-void
.end method
