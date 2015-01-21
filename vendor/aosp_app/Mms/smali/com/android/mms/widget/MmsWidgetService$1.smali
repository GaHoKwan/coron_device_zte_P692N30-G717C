.class Lcom/android/mms/widget/MmsWidgetService$1;
.super Landroid/database/ContentObserver;
.source "MmsWidgetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/widget/MmsWidgetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/widget/MmsWidgetService;


# direct methods
.method constructor <init>(Lcom/android/mms/widget/MmsWidgetService;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 463
    iput-object p1, p0, Lcom/android/mms/widget/MmsWidgetService$1;->this$0:Lcom/android/mms/widget/MmsWidgetService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfUpdate"

    .prologue
    .line 465
    iget-object v0, p0, Lcom/android/mms/widget/MmsWidgetService$1;->this$0:Lcom/android/mms/widget/MmsWidgetService;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    .line 466
    return-void
.end method
