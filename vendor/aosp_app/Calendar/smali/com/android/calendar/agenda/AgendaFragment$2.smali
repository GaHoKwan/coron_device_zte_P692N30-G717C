.class Lcom/android/calendar/agenda/AgendaFragment$2;
.super Ljava/lang/Object;
.source "AgendaFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/agenda/AgendaFragment;->onScroll(Landroid/widget/AbsListView;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/agenda/AgendaFragment;


# direct methods
.method constructor <init>(Lcom/android/calendar/agenda/AgendaFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 523
    iput-object p1, p0, Lcom/android/calendar/agenda/AgendaFragment$2;->this$0:Lcom/android/calendar/agenda/AgendaFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v6, 0x0

    .line 526
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment$2;->this$0:Lcom/android/calendar/agenda/AgendaFragment;

    #calls: Lcom/android/calendar/agenda/AgendaFragment;->getTimeOnTopEvent()Landroid/text/format/Time;
    invoke-static {v0}, Lcom/android/calendar/agenda/AgendaFragment;->access$200(Lcom/android/calendar/agenda/AgendaFragment;)Landroid/text/format/Time;

    move-result-object v4

    .line 527
    .local v4, t:Landroid/text/format/Time;
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment$2;->this$0:Lcom/android/calendar/agenda/AgendaFragment;

    #getter for: Lcom/android/calendar/agenda/AgendaFragment;->mController:Lcom/android/calendar/CalendarController;
    invoke-static {v0}, Lcom/android/calendar/agenda/AgendaFragment;->access$300(Lcom/android/calendar/agenda/AgendaFragment;)Lcom/android/calendar/CalendarController;

    move-result-object v0

    const-wide/16 v2, 0x400

    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    move-object v1, p0

    move-object v5, v4

    move-object v12, v6

    move-object v13, v6

    invoke-virtual/range {v0 .. v13}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;Landroid/text/format/Time;JIJLjava/lang/String;Landroid/content/ComponentName;)V

    .line 529
    return-void
.end method
