.class Lcom/android/launcher2/AppsCustomizePagedView$8;
.super Ljava/lang/Object;
.source "AppsCustomizePagedView.java"

# interfaces
.implements Lcom/android/launcher2/OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/AppsCustomizePagedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/AppsCustomizePagedView;


# direct methods
.method constructor <init>(Lcom/android/launcher2/AppsCustomizePagedView;)V
    .locals 0
    .parameter

    .prologue
    .line 4652
    iput-object p1, p0, Lcom/android/launcher2/AppsCustomizePagedView$8;->this$0:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm(Lcom/android/launcher2/Alarm;)V
    .locals 4
    .parameter "alarm"

    .prologue
    .line 4654
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView$8;->this$0:Lcom/android/launcher2/AppsCustomizePagedView;

    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView$8;->this$0:Lcom/android/launcher2/AppsCustomizePagedView;

    #getter for: Lcom/android/launcher2/AppsCustomizePagedView;->mEmptyCell:[I
    invoke-static {v1}, Lcom/android/launcher2/AppsCustomizePagedView;->access$700(Lcom/android/launcher2/AppsCustomizePagedView;)[I

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView$8;->this$0:Lcom/android/launcher2/AppsCustomizePagedView;

    #getter for: Lcom/android/launcher2/AppsCustomizePagedView;->mTargetCell:[I
    invoke-static {v2}, Lcom/android/launcher2/AppsCustomizePagedView;->access$800(Lcom/android/launcher2/AppsCustomizePagedView;)[I

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/AppsCustomizePagedView$8;->this$0:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v3}, Lcom/android/launcher2/AppsCustomizePagedView;->getCurrentDropLayout()Lcom/android/launcher2/PagedViewCellLayout;

    move-result-object v3

    #calls: Lcom/android/launcher2/AppsCustomizePagedView;->realTimeReorder([I[ILcom/android/launcher2/PagedViewCellLayout;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher2/AppsCustomizePagedView;->access$900(Lcom/android/launcher2/AppsCustomizePagedView;[I[ILcom/android/launcher2/PagedViewCellLayout;)V

    .line 4655
    return-void
.end method
