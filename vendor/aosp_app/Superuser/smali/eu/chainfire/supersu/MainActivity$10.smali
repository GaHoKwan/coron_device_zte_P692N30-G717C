.class Leu/chainfire/supersu/MainActivity$10;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic 鷭:Leu/chainfire/supersu/MainActivity;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/MainActivity;)V
    .locals 0

    .line 0
    iput-object p1, p0, Leu/chainfire/supersu/MainActivity$10;->鷭:Leu/chainfire/supersu/MainActivity;

    .line 680
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic 鷭(Leu/chainfire/supersu/MainActivity$10;)Leu/chainfire/supersu/MainActivity;
    .locals 1

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$10;->鷭:Leu/chainfire/supersu/MainActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 0
    new-instance v0, Leu/chainfire/supersu/MainActivity$10$1;

    invoke-direct {v0, p0}, Leu/chainfire/supersu/MainActivity$10$1;-><init>(Leu/chainfire/supersu/MainActivity$10;)V

    .line 719
    sget-object v1, Leu/chainfire/supersu/AsyncTask;->ˮ͈:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Leu/chainfire/supersu/MainActivity$10$1;->鷭(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Leu/chainfire/supersu/AsyncTask;

    .line 720
    return-void
.end method
