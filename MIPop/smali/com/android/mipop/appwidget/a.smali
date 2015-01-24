.class Lcom/android/mipop/appwidget/a;
.super Landroid/database/ContentObserver;


# instance fields
.field final synthetic gM:Lcom/android/mipop/appwidget/AppWidget;


# direct methods
.method constructor <init>(Lcom/android/mipop/appwidget/AppWidget;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mipop/appwidget/a;->gM:Lcom/android/mipop/appwidget/AppWidget;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/mipop/appwidget/a;->gM:Lcom/android/mipop/appwidget/AppWidget;

    const-string v1, "mMipopObserver ContentObserver onChange()"

    invoke-static {v0, v1}, Lcom/android/mipop/appwidget/AppWidget;->a(Lcom/android/mipop/appwidget/AppWidget;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mipop/appwidget/a;->gM:Lcom/android/mipop/appwidget/AppWidget;

    invoke-static {v1}, Lcom/android/mipop/appwidget/AppWidget;->a(Lcom/android/mipop/appwidget/AppWidget;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/mipop/appwidget/AppWidget;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mipop/appwidget/a;->gM:Lcom/android/mipop/appwidget/AppWidget;

    invoke-static {v1}, Lcom/android/mipop/appwidget/AppWidget;->a(Lcom/android/mipop/appwidget/AppWidget;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
