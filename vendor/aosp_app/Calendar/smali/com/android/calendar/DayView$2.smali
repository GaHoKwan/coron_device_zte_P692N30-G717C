.class Lcom/android/calendar/DayView$2;
.super Ljava/lang/Object;
.source "DayView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/DayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/DayView;


# direct methods
.method constructor <init>(Lcom/android/calendar/DayView;)V
    .locals 0
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Lcom/android/calendar/DayView$2;->this$0:Lcom/android/calendar/DayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/calendar/DayView$2;->this$0:Lcom/android/calendar/DayView;

    iget-object v1, p0, Lcom/android/calendar/DayView$2;->this$0:Lcom/android/calendar/DayView;

    #getter for: Lcom/android/calendar/DayView;->mSavedClickedEvent:Lcom/android/calendar/Event;
    invoke-static {v1}, Lcom/android/calendar/DayView;->access$300(Lcom/android/calendar/DayView;)Lcom/android/calendar/Event;

    move-result-object v1

    #setter for: Lcom/android/calendar/DayView;->mClickedEvent:Lcom/android/calendar/Event;
    invoke-static {v0, v1}, Lcom/android/calendar/DayView;->access$202(Lcom/android/calendar/DayView;Lcom/android/calendar/Event;)Lcom/android/calendar/Event;

    .line 242
    iget-object v0, p0, Lcom/android/calendar/DayView$2;->this$0:Lcom/android/calendar/DayView;

    const/4 v1, 0x0

    #setter for: Lcom/android/calendar/DayView;->mSavedClickedEvent:Lcom/android/calendar/Event;
    invoke-static {v0, v1}, Lcom/android/calendar/DayView;->access$302(Lcom/android/calendar/DayView;Lcom/android/calendar/Event;)Lcom/android/calendar/Event;

    .line 243
    iget-object v0, p0, Lcom/android/calendar/DayView$2;->this$0:Lcom/android/calendar/DayView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 244
    return-void
.end method
