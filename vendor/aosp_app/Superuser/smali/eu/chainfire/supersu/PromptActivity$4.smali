.class Leu/chainfire/supersu/PromptActivity$4;
.super Ljava/util/TimerTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic 鷭:Leu/chainfire/supersu/PromptActivity;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/PromptActivity;)V
    .locals 0

    .line 0
    iput-object p1, p0, Leu/chainfire/supersu/PromptActivity$4;->鷭:Leu/chainfire/supersu/PromptActivity;

    .line 303
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method static synthetic 鷭(Leu/chainfire/supersu/PromptActivity$4;)Leu/chainfire/supersu/PromptActivity;
    .locals 1

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity$4;->鷭:Leu/chainfire/supersu/PromptActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity$4;->鷭:Leu/chainfire/supersu/PromptActivity;

    invoke-static {v0}, Leu/chainfire/supersu/PromptActivity;->櫯(Leu/chainfire/supersu/PromptActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Leu/chainfire/supersu/PromptActivity$4$1;

    invoke-direct {v1, p0}, Leu/chainfire/supersu/PromptActivity$4$1;-><init>(Leu/chainfire/supersu/PromptActivity$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 337
    return-void
.end method
