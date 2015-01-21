.class final Lcom/adchina/android/ads/aa;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adchina/android/ads/f;


# instance fields
.field final synthetic a:Lcom/adchina/android/ads/y;

.field private final synthetic b:Landroid/content/Context;

.field private final synthetic c:Lcom/adchina/android/ads/n;


# direct methods
.method constructor <init>(Lcom/adchina/android/ads/y;Landroid/content/Context;Lcom/adchina/android/ads/n;)V
    .locals 0

    iput-object p1, p0, Lcom/adchina/android/ads/aa;->a:Lcom/adchina/android/ads/y;

    iput-object p2, p0, Lcom/adchina/android/ads/aa;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/adchina/android/ads/aa;->c:Lcom/adchina/android/ads/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 6

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    new-instance v0, Lcom/adchina/android/ads/ab;

    iget-object v2, p0, Lcom/adchina/android/ads/aa;->b:Landroid/content/Context;

    iget-object v5, p0, Lcom/adchina/android/ads/aa;->c:Lcom/adchina/android/ads/n;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/adchina/android/ads/ab;-><init>(Lcom/adchina/android/ads/aa;Landroid/content/Context;JLcom/adchina/android/ads/n;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adchina/android/ads/c;->a(Lcom/adchina/android/ads/e;Lcom/adchina/android/ads/f;)V

    :cond_0
    return-void
.end method
