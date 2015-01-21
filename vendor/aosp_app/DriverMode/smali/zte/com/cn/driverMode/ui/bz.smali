.class final Lzte/com/cn/driverMode/ui/bz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:I

.field final synthetic b:Lzte/com/cn/driverMode/ui/by;


# direct methods
.method public constructor <init>(Lzte/com/cn/driverMode/ui/by;I)V
    .locals 1

    iput-object p1, p0, Lzte/com/cn/driverMode/ui/bz;->b:Lzte/com/cn/driverMode/ui/by;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lzte/com/cn/driverMode/ui/bz;->a:I

    iput p2, p0, Lzte/com/cn/driverMode/ui/bz;->a:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/bz;->b:Lzte/com/cn/driverMode/ui/by;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/by;->a:Lzte/com/cn/driverMode/ui/DMNewFeedbackActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMNewFeedbackActivity;->b(Lzte/com/cn/driverMode/ui/DMNewFeedbackActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u60a8\u6709\u65b0\u56de\u590d\u6761\u6570\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lzte/com/cn/driverMode/ui/bz;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
