.class Lcom/android/mms/widget/MmsWidgetService$MmsFactory$1;
.super Ljava/lang/Object;
.source "MmsWidgetService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/widget/MmsWidgetService$MmsFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/widget/MmsWidgetService$MmsFactory;


# direct methods
.method constructor <init>(Lcom/android/mms/widget/MmsWidgetService$MmsFactory;)V
    .locals 0
    .parameter

    .prologue
    .line 427
    iput-object p1, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory$1;->this$0:Lcom/android/mms/widget/MmsWidgetService$MmsFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 430
    const-string v0, "MmsWidgetService"

    const-string v1, "mUpdateFromContactRunnable is called "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    iget-object v0, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory$1;->this$0:Lcom/android/mms/widget/MmsWidgetService$MmsFactory;

    #getter for: Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;
    invoke-static {v0}, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->access$200(Lcom/android/mms/widget/MmsWidgetService$MmsFactory;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory$1;->this$0:Lcom/android/mms/widget/MmsWidgetService$MmsFactory;

    #getter for: Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mAppWidgetId:I
    invoke-static {v1}, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->access$100(Lcom/android/mms/widget/MmsWidgetService$MmsFactory;)I

    move-result v1

    const v2, 0x7f0f01ac

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged(II)V

    .line 432
    return-void
.end method
