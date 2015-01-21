.class final Lzte/com/cn/driverMode/service/at;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/service/DMMusicService;


# direct methods
.method constructor <init>(Lzte/com/cn/driverMode/service/DMMusicService;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/service/at;->a:Lzte/com/cn/driverMode/service/DMMusicService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 4

    const/4 v3, 0x0

    const-string v0, "DMMusicService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mediaPlayer OnErrorListener error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/at;->a:Lzte/com/cn/driverMode/service/DMMusicService;

    invoke-static {v0, v3}, Lzte/com/cn/driverMode/service/DMMusicService;->a(Lzte/com/cn/driverMode/service/DMMusicService;Z)Z

    return v3
.end method
