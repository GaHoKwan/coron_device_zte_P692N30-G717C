.class Lcom/mediatek/email/plugin/SendNotificationPlugin$1;
.super Ljava/lang/Object;
.source "SendNotificationPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/email/plugin/SendNotificationPlugin;->showSendingNotification(Landroid/content/Context;JII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/email/plugin/SendNotificationPlugin;


# direct methods
.method constructor <init>(Lcom/mediatek/email/plugin/SendNotificationPlugin;)V
    .locals 0
    .parameter

    .prologue
    .line 239
    iput-object p1, p0, Lcom/mediatek/email/plugin/SendNotificationPlugin$1;->this$0:Lcom/mediatek/email/plugin/SendNotificationPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/mediatek/email/plugin/SendNotificationPlugin$1;->this$0:Lcom/mediatek/email/plugin/SendNotificationPlugin;

    #getter for: Lcom/mediatek/email/plugin/SendNotificationPlugin;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v0}, Lcom/mediatek/email/plugin/SendNotificationPlugin;->access$000(Lcom/mediatek/email/plugin/SendNotificationPlugin;)Landroid/app/NotificationManager;

    move-result-object v0

    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 243
    return-void
.end method
