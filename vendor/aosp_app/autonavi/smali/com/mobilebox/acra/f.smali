.class final Lcom/mobilebox/acra/f;
.super Ljava/lang/Thread;


# instance fields
.field private a:Ljava/lang/String;

.field private synthetic b:Lcom/mobilebox/acra/c;


# direct methods
.method constructor <init>(Lcom/mobilebox/acra/c;)V
    .locals 1

    iput-object p1, p0, Lcom/mobilebox/acra/f;->b:Lcom/mobilebox/acra/c;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobilebox/acra/f;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mobilebox/acra/f;->a:Ljava/lang/String;

    return-void
.end method

.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/mobilebox/acra/f;->b:Lcom/mobilebox/acra/c;

    iget-object v1, p0, Lcom/mobilebox/acra/f;->b:Lcom/mobilebox/acra/c;

    invoke-static {v1}, Lcom/mobilebox/acra/c;->a(Lcom/mobilebox/acra/c;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mobilebox/acra/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mobilebox/acra/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
