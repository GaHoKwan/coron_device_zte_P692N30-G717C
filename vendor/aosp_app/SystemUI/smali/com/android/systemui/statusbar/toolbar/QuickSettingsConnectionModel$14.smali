.class Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$14;
.super Ljava/lang/Object;
.source "QuickSettingsConnectionModel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->buildIconViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;)V
    .locals 0
    .parameter

    .prologue
    .line 750
    iput-object p1, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$14;->this$0:Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 753
    iget-object v0, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$14;->this$0:Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;

    #calls: Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->wasItTheMonkey()Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->access$3000(Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 754
    iget-object v0, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$14;->this$0:Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;

    #getter for: Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->mSimConnStateTracker:Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;
    invoke-static {v0}, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->access$300(Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;)Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$14;->this$0:Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;

    #getter for: Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->access$000(Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->toggleState(Landroid/content/Context;)V

    .line 756
    :cond_0
    return-void
.end method