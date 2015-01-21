.class Lcom/zte/zdm/application/mmi/aj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/zte/zdm/application/mmi/DownloadActivity;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/mmi/DownloadActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/mmi/aj;->a:Lcom/zte/zdm/application/mmi/DownloadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/zte/zdm/application/c/a;->c:Z

    invoke-static {}, Lcom/zte/zdm/application/mmi/DownloadActivity;->c()V

    return-void
.end method
