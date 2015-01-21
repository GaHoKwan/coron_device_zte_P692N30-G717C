.class Lcom/powermo/ui/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/powermo/ui/b;


# instance fields
.field final synthetic a:Lcom/powermo/ui/SmartShowThumbnailView;


# direct methods
.method private constructor <init>(Lcom/powermo/ui/SmartShowThumbnailView;)V
    .locals 0

    iput-object p1, p0, Lcom/powermo/ui/o;->a:Lcom/powermo/ui/SmartShowThumbnailView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/powermo/ui/SmartShowThumbnailView;Lcom/powermo/ui/m;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/powermo/ui/o;-><init>(Lcom/powermo/ui/SmartShowThumbnailView;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/powermo/ui/o;->a:Lcom/powermo/ui/SmartShowThumbnailView;

    invoke-static {v0}, Lcom/powermo/ui/SmartShowThumbnailView;->b(Lcom/powermo/ui/SmartShowThumbnailView;)Lcom/powermo/ui/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/powermo/ui/n;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/ui/o;->a:Lcom/powermo/ui/SmartShowThumbnailView;

    invoke-static {v0}, Lcom/powermo/ui/SmartShowThumbnailView;->b(Lcom/powermo/ui/SmartShowThumbnailView;)Lcom/powermo/ui/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powermo/ui/n;->d()V

    iget-object v0, p0, Lcom/powermo/ui/o;->a:Lcom/powermo/ui/SmartShowThumbnailView;

    invoke-static {v0}, Lcom/powermo/ui/SmartShowThumbnailView;->d(Lcom/powermo/ui/SmartShowThumbnailView;)V

    :cond_0
    return-void
.end method

.method public a(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/powermo/ui/o;->a:Lcom/powermo/ui/SmartShowThumbnailView;

    invoke-static {v0}, Lcom/powermo/ui/SmartShowThumbnailView;->b(Lcom/powermo/ui/SmartShowThumbnailView;)Lcom/powermo/ui/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powermo/ui/n;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powermo/ui/o;->a:Lcom/powermo/ui/SmartShowThumbnailView;

    invoke-static {v0}, Lcom/powermo/ui/SmartShowThumbnailView;->b(Lcom/powermo/ui/SmartShowThumbnailView;)Lcom/powermo/ui/n;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/powermo/ui/n;->a(IIII)V

    iget-object v0, p0, Lcom/powermo/ui/o;->a:Lcom/powermo/ui/SmartShowThumbnailView;

    invoke-static {v0}, Lcom/powermo/ui/SmartShowThumbnailView;->d(Lcom/powermo/ui/SmartShowThumbnailView;)V

    :cond_0
    return-void
.end method

.method public b(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/powermo/ui/o;->a:Lcom/powermo/ui/SmartShowThumbnailView;

    invoke-static {v0}, Lcom/powermo/ui/SmartShowThumbnailView;->b(Lcom/powermo/ui/SmartShowThumbnailView;)Lcom/powermo/ui/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powermo/ui/n;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/ui/o;->a:Lcom/powermo/ui/SmartShowThumbnailView;

    invoke-static {v0}, Lcom/powermo/ui/SmartShowThumbnailView;->b(Lcom/powermo/ui/SmartShowThumbnailView;)Lcom/powermo/ui/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/powermo/ui/n;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/powermo/ui/o;->a:Lcom/powermo/ui/SmartShowThumbnailView;

    invoke-static {v0}, Lcom/powermo/ui/SmartShowThumbnailView;->b(Lcom/powermo/ui/SmartShowThumbnailView;)Lcom/powermo/ui/n;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/powermo/ui/n;->a(IIII)V

    iget-object v0, p0, Lcom/powermo/ui/o;->a:Lcom/powermo/ui/SmartShowThumbnailView;

    invoke-static {v0}, Lcom/powermo/ui/SmartShowThumbnailView;->d(Lcom/powermo/ui/SmartShowThumbnailView;)V

    :cond_1
    return-void
.end method
