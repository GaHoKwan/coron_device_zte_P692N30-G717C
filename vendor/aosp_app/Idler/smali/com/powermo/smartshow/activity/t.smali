.class Lcom/powermo/smartshow/activity/t;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/powermo/smartshow/activity/MiniLauncherActivity;


# direct methods
.method constructor <init>(Lcom/powermo/smartshow/activity/MiniLauncherActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/powermo/smartshow/activity/t;->a:Lcom/powermo/smartshow/activity/MiniLauncherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/powermo/smartshow/activity/t;->a:Lcom/powermo/smartshow/activity/MiniLauncherActivity;

    invoke-static {v0}, Lcom/powermo/smartshow/activity/MiniLauncherActivity;->a(Lcom/powermo/smartshow/activity/MiniLauncherActivity;)Lcom/powermo/smartshow/activity/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/powermo/smartshow/activity/a;->a(Z)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powermo/smartshow/activity/i;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/powermo/smartshow/activity/t;->a:Lcom/powermo/smartshow/activity/MiniLauncherActivity;

    invoke-static {v1}, Lcom/powermo/smartshow/activity/MiniLauncherActivity;->a(Lcom/powermo/smartshow/activity/MiniLauncherActivity;)Lcom/powermo/smartshow/activity/a;

    move-result-object v1

    iget-object v2, p0, Lcom/powermo/smartshow/activity/t;->a:Lcom/powermo/smartshow/activity/MiniLauncherActivity;

    const/4 v3, -0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/powermo/smartshow/activity/a;->a(Lcom/powermo/smartshow/activity/i;Landroid/content/Context;I)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
