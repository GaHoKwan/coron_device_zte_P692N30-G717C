.class final Lcom/adchina/android/ads/controllers/w;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/adchina/android/ads/controllers/s;

.field private b:Ljava/lang/StringBuffer;

.field private c:Z


# direct methods
.method constructor <init>(Lcom/adchina/android/ads/controllers/s;)V
    .locals 1

    iput-object p1, p0, Lcom/adchina/android/ads/controllers/w;->a:Lcom/adchina/android/ads/controllers/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/adchina/android/ads/controllers/w;->b:Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adchina/android/ads/controllers/w;->c:Z

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/StringBuffer;
    .locals 1

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/w;->b:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method public final a(Ljava/lang/StringBuffer;)V
    .locals 0

    iput-object p1, p0, Lcom/adchina/android/ads/controllers/w;->b:Ljava/lang/StringBuffer;

    return-void
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/adchina/android/ads/controllers/w;->c:Z

    return v0
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adchina/android/ads/controllers/w;->c:Z

    return-void
.end method
