.class Leu/chainfire/supersu/SuperUserIntentService$1;
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
.field private final synthetic 櫯:Ljava/lang/String;

.field private final synthetic 鷭:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Leu/chainfire/supersu/SuperUserIntentService$1;->鷭:Landroid/content/Context;

    iput-object p2, p0, Leu/chainfire/supersu/SuperUserIntentService$1;->櫯:Ljava/lang/String;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/SuperUserIntentService$1;->鷭:Landroid/content/Context;

    iget-object v1, p0, Leu/chainfire/supersu/SuperUserIntentService$1;->櫯:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 48
    return-void
.end method
