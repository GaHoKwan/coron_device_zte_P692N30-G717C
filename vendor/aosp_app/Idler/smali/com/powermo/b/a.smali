.class public Lcom/powermo/b/a;
.super Landroid/app/Activity;


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Z

.field private c:Lcom/powermo/b/b;

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "CoverStubActivity"

    invoke-static {v0}, Lcom/powermo/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/powermo/b/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-boolean v0, p0, Lcom/powermo/b/a;->b:Z

    iput v0, p0, Lcom/powermo/b/a;->d:I

    return-void
.end method

.method private a()V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/powermo/b/a;->b:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/powermo/b/a;->d:I

    if-ge v0, v3, :cond_0

    iget-object v0, p0, Lcom/powermo/b/a;->c:Lcom/powermo/b/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powermo/b/b;->a(I)I

    move-result v0

    if-le v0, v2, :cond_1

    :cond_0
    iget v0, p0, Lcom/powermo/b/a;->d:I

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/powermo/b/a;->c:Lcom/powermo/b/b;

    invoke-virtual {v0, v2}, Lcom/powermo/b/b;->a(I)I

    move-result v0

    if-gtz v0, :cond_2

    :cond_1
    sget-object v0, Lcom/powermo/b/a;->a:Ljava/lang/String;

    const-string v1, "should not reach here! cover activity is in incorrect state!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p0}, Lcom/powermo/b/a;->finish()V

    :cond_3
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/powermo/b/a;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v0, "thumbnail"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    const-string v0, "needUncover"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/powermo/b/a;->b:Z

    const-string v0, "screen"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/powermo/b/a;->d:I

    invoke-static {}, Lcom/powermo/b/b;->a()Lcom/powermo/b/b;

    move-result-object v0

    iput-object v0, p0, Lcom/powermo/b/a;->c:Lcom/powermo/b/b;

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-direct {p0}, Lcom/powermo/b/a;->a()V

    return-void
.end method
