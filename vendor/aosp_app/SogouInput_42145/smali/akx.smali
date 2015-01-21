.class Lakx;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field final synthetic a:Lajq;


# direct methods
.method private constructor <init>(Lajq;)V
    .locals 0
    .parameter

    .prologue
    .line 1742
    iput-object p1, p0, Lakx;->a:Lajq;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lajq;Lajr;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1742
    invoke-direct {p0, p1}, Lakx;-><init>(Lajq;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1745
    iget-object v0, p0, Lakx;->a:Lajq;

    invoke-static {v0}, Lajq;->a(Lajq;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1746
    return-void
.end method
