.class final Lzte/com/cn/driverMode/service/as;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/service/DMMusicService;


# direct methods
.method constructor <init>(Lzte/com/cn/driverMode/service/DMMusicService;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/service/as;->a:Lzte/com/cn/driverMode/service/DMMusicService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3

    iget-object v0, p0, Lzte/com/cn/driverMode/service/as;->a:Lzte/com/cn/driverMode/service/DMMusicService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lzte/com/cn/driverMode/service/DMMusicService;->a(Lzte/com/cn/driverMode/service/DMMusicService;Z)Z

    iget-object v0, p0, Lzte/com/cn/driverMode/service/as;->a:Lzte/com/cn/driverMode/service/DMMusicService;

    iget v1, v0, Lzte/com/cn/driverMode/service/DMMusicService;->o:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lzte/com/cn/driverMode/service/DMMusicService;->o:I

    const-string v0, "DMMusicService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "autoNext -->autonextcount = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lzte/com/cn/driverMode/service/as;->a:Lzte/com/cn/driverMode/service/DMMusicService;

    iget v2, v2, Lzte/com/cn/driverMode/service/DMMusicService;->o:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/as;->a:Lzte/com/cn/driverMode/service/DMMusicService;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/DMMusicService;->d()V

    return-void
.end method
