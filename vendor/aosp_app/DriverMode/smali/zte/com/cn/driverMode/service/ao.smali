.class final Lzte/com/cn/driverMode/service/ao;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/service/DMDownloadPoiService;


# direct methods
.method private constructor <init>(Lzte/com/cn/driverMode/service/DMDownloadPoiService;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/service/ao;->a:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lzte/com/cn/driverMode/service/DMDownloadPoiService;B)V
    .locals 0

    invoke-direct {p0, p1}, Lzte/com/cn/driverMode/service/ao;-><init>(Lzte/com/cn/driverMode/service/DMDownloadPoiService;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lzte/com/cn/driverMode/service/ao;->a:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    iget-object v1, p0, Lzte/com/cn/driverMode/service/ao;->a:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    invoke-static {v1}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->l(Lzte/com/cn/driverMode/service/DMDownloadPoiService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->a(Lzte/com/cn/driverMode/service/DMDownloadPoiService;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lzte/com/cn/driverMode/service/ao;->a:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    invoke-static {v0}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->a(Lzte/com/cn/driverMode/service/DMDownloadPoiService;)Lzte/com/cn/driverMode/service/ad;

    move-result-object v0

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/ad;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lzte/com/cn/driverMode/service/ao;->a:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    invoke-static {v1}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->a(Lzte/com/cn/driverMode/service/DMDownloadPoiService;)Lzte/com/cn/driverMode/service/ad;

    move-result-object v1

    invoke-virtual {v1, v0}, Lzte/com/cn/driverMode/service/ad;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
