.class Labr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Laaq;


# direct methods
.method private constructor <init>(Laaq;)V
    .locals 0
    .parameter

    .prologue
    .line 327
    iput-object p1, p0, Labr;->a:Laaq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Laaq;Laar;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 327
    invoke-direct {p0, p1}, Labr;-><init>(Laaq;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Labr;->a:Laaq;

    invoke-static {v0}, Laaq;->a(Laaq;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 332
    iget-object v0, p0, Labr;->a:Laaq;

    invoke-static {v0}, Laaq;->a(Laaq;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 333
    return-void
.end method
