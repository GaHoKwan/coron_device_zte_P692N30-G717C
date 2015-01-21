.class Lcom/android/mipop/appwidget/c;
.super Landroid/database/ContentObserver;


# instance fields
.field final synthetic hq:Lcom/android/mipop/appwidget/SingleGridAppWidget;


# direct methods
.method constructor <init>(Lcom/android/mipop/appwidget/SingleGridAppWidget;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mipop/appwidget/c;->hq:Lcom/android/mipop/appwidget/SingleGridAppWidget;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/mipop/appwidget/c;->hq:Lcom/android/mipop/appwidget/SingleGridAppWidget;

    invoke-static {v0}, Lcom/android/mipop/appwidget/SingleGridAppWidget;->a(Lcom/android/mipop/appwidget/SingleGridAppWidget;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mipop/appwidget/c;->hq:Lcom/android/mipop/appwidget/SingleGridAppWidget;

    invoke-static {v0}, Lcom/android/mipop/appwidget/SingleGridAppWidget;->b(Lcom/android/mipop/appwidget/SingleGridAppWidget;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContentObserver onChange()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mipop/appwidget/c;->hq:Lcom/android/mipop/appwidget/SingleGridAppWidget;

    invoke-static {v1}, Lcom/android/mipop/appwidget/SingleGridAppWidget;->c(Lcom/android/mipop/appwidget/SingleGridAppWidget;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/mipop/appwidget/SingleGridAppWidget;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mipop/appwidget/c;->hq:Lcom/android/mipop/appwidget/SingleGridAppWidget;

    invoke-static {v1}, Lcom/android/mipop/appwidget/SingleGridAppWidget;->c(Lcom/android/mipop/appwidget/SingleGridAppWidget;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
