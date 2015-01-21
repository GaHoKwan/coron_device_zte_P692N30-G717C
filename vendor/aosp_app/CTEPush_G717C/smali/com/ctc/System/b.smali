.class final Lcom/ctc/System/b;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/ctc/System/Alarmreceiver;


# direct methods
.method constructor <init>(Lcom/ctc/System/Alarmreceiver;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/ctc/System/b;->a:Lcom/ctc/System/Alarmreceiver;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    return-void
.end method
