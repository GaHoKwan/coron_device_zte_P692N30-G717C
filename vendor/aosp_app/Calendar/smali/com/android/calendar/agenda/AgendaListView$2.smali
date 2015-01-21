.class Lcom/android/calendar/agenda/AgendaListView$2;
.super Ljava/lang/Object;
.source "AgendaListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/agenda/AgendaListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/agenda/AgendaListView;


# direct methods
.method constructor <init>(Lcom/android/calendar/agenda/AgendaListView;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/calendar/agenda/AgendaListView$2;->this$0:Lcom/android/calendar/agenda/AgendaListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaListView$2;->this$0:Lcom/android/calendar/agenda/AgendaListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/calendar/agenda/AgendaListView;->refresh(Z)V

    .line 69
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaListView$2;->this$0:Lcom/android/calendar/agenda/AgendaListView;

    #getter for: Lcom/android/calendar/agenda/AgendaListView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/calendar/agenda/AgendaListView;->access$300(Lcom/android/calendar/agenda/AgendaListView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaListView$2;->this$0:Lcom/android/calendar/agenda/AgendaListView;

    #getter for: Lcom/android/calendar/agenda/AgendaListView;->mMidnightUpdater:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/calendar/agenda/AgendaListView;->access$400(Lcom/android/calendar/agenda/AgendaListView;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaListView$2;->this$0:Lcom/android/calendar/agenda/AgendaListView;

    #getter for: Lcom/android/calendar/agenda/AgendaListView;->mTimeZone:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/calendar/agenda/AgendaListView;->access$000(Lcom/android/calendar/agenda/AgendaListView;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/calendar/Utils;->setMidnightUpdater(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 70
    return-void
.end method
