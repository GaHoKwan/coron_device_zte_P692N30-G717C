.class final Lcom/adchina/android/ads/controllers/u;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adchina/android/ads/f;


# instance fields
.field final synthetic a:Lcom/adchina/android/ads/controllers/s;

.field private final synthetic b:Landroid/content/Context;

.field private final synthetic c:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/adchina/android/ads/controllers/s;Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/adchina/android/ads/controllers/u;->a:Lcom/adchina/android/ads/controllers/s;

    iput-object p2, p0, Lcom/adchina/android/ads/controllers/u;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/adchina/android/ads/controllers/u;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/u;->a:Lcom/adchina/android/ads/controllers/s;

    invoke-static {v0}, Lcom/adchina/android/ads/controllers/s;->a(Lcom/adchina/android/ads/controllers/s;)Lcom/adchina/android/ads/AdVideoFinishListener;

    move-result-object v0

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/u;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/u;->c:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/adchina/android/ads/AdVideoFinishListener;->finished(Landroid/content/Context;Ljava/lang/Object;)V

    return-void
.end method
