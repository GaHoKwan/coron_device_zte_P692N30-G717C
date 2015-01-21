.class Lcom/powermo/smartshow/activity/u;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/powermo/smartshow/activity/o;


# instance fields
.field final synthetic a:Lcom/powermo/smartshow/activity/MiniLauncherActivity;


# direct methods
.method constructor <init>(Lcom/powermo/smartshow/activity/MiniLauncherActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/powermo/smartshow/activity/u;->a:Lcom/powermo/smartshow/activity/MiniLauncherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/activity/u;->a:Lcom/powermo/smartshow/activity/MiniLauncherActivity;

    invoke-static {v0}, Lcom/powermo/smartshow/activity/MiniLauncherActivity;->a(Lcom/powermo/smartshow/activity/MiniLauncherActivity;)Lcom/powermo/smartshow/activity/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/smartshow/activity/u;->a:Lcom/powermo/smartshow/activity/MiniLauncherActivity;

    invoke-static {v0}, Lcom/powermo/smartshow/activity/MiniLauncherActivity;->a(Lcom/powermo/smartshow/activity/MiniLauncherActivity;)Lcom/powermo/smartshow/activity/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powermo/smartshow/activity/a;->d()V

    :cond_0
    return-void
.end method
