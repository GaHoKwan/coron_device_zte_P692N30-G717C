.class Leu/chainfire/supersu/PINActivity$4;
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
.field private final synthetic ˮ͈:Leu/chainfire/supersu/Settings;

.field private final synthetic 櫯:Leu/chainfire/supersu/Settings$App;

.field final synthetic 鷭:Leu/chainfire/supersu/PINActivity;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/PINActivity;Leu/chainfire/supersu/Settings$App;Leu/chainfire/supersu/Settings;)V
    .locals 0

    .line 0
    iput-object p1, p0, Leu/chainfire/supersu/PINActivity$4;->鷭:Leu/chainfire/supersu/PINActivity;

    iput-object p2, p0, Leu/chainfire/supersu/PINActivity$4;->櫯:Leu/chainfire/supersu/Settings$App;

    iput-object p3, p0, Leu/chainfire/supersu/PINActivity$4;->ˮ͈:Leu/chainfire/supersu/Settings;

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/PINActivity$4;->櫯:Leu/chainfire/supersu/Settings$App;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Leu/chainfire/supersu/Settings$App;->ȃ:J

    .line 186
    iget-object v0, p0, Leu/chainfire/supersu/PINActivity$4;->櫯:Leu/chainfire/supersu/Settings$App;

    const/4 v1, 0x2

    iput v1, v0, Leu/chainfire/supersu/Settings$App;->庸:I

    .line 187
    iget-object v0, p0, Leu/chainfire/supersu/PINActivity$4;->櫯:Leu/chainfire/supersu/Settings$App;

    invoke-virtual {v0}, Leu/chainfire/supersu/Settings$App;->ˮ͈()V

    .line 188
    iget-object v0, p0, Leu/chainfire/supersu/PINActivity$4;->ˮ͈:Leu/chainfire/supersu/Settings;

    iget-object v1, p0, Leu/chainfire/supersu/PINActivity$4;->鷭:Leu/chainfire/supersu/PINActivity;

    invoke-virtual {v0, v1}, Leu/chainfire/supersu/Settings;->櫯(Landroid/content/Context;)V

    .line 190
    iget-object v0, p0, Leu/chainfire/supersu/PINActivity$4;->櫯:Leu/chainfire/supersu/Settings$App;

    iget-object v1, p0, Leu/chainfire/supersu/PINActivity$4;->鷭:Leu/chainfire/supersu/PINActivity;

    iget-object v2, p0, Leu/chainfire/supersu/PINActivity$4;->鷭:Leu/chainfire/supersu/PINActivity;

    invoke-static {v2}, Leu/chainfire/supersu/PINActivity;->鷭(Leu/chainfire/supersu/PINActivity;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Leu/chainfire/supersu/Settings$App;->鷭(Landroid/content/Context;II)V

    .line 192
    iget-object v0, p0, Leu/chainfire/supersu/PINActivity$4;->鷭:Leu/chainfire/supersu/PINActivity;

    invoke-virtual {v0}, Leu/chainfire/supersu/PINActivity;->finish()V

    .line 193
    iget-object v0, p0, Leu/chainfire/supersu/PINActivity$4;->鷭:Leu/chainfire/supersu/PINActivity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Leu/chainfire/supersu/PINActivity;->overridePendingTransition(II)V

    .line 194
    return-void
.end method
