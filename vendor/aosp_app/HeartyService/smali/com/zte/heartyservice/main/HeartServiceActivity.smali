.class public Lcom/zte/heartyservice/main/HeartServiceActivity;
.super Landroid/app/Activity;
.source "HeartServiceActivity.java"


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 16
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/main/HeartServiceActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/main/HeartServiceActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/zte/heartyservice/main/HeartServiceActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 20
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->cancelStopHeartyService()V

    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    new-instance v1, Lcom/zte/heartyservice/main/HeartServiceActivity$1;

    invoke-direct {v1, p0}, Lcom/zte/heartyservice/main/HeartServiceActivity$1;-><init>(Lcom/zte/heartyservice/main/HeartServiceActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 50
    return-void
.end method
