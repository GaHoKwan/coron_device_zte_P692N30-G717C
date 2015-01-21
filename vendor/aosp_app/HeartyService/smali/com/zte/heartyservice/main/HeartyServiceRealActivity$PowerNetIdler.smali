.class final Lcom/zte/heartyservice/main/HeartyServiceRealActivity$PowerNetIdler;
.super Ljava/lang/Object;
.source "HeartyServiceRealActivity.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/main/HeartyServiceRealActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PowerNetIdler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/main/HeartyServiceRealActivity;


# direct methods
.method private constructor <init>(Lcom/zte/heartyservice/main/HeartyServiceRealActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 545
    iput-object p1, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$PowerNetIdler;->this$0:Lcom/zte/heartyservice/main/HeartyServiceRealActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/main/HeartyServiceRealActivity;Lcom/zte/heartyservice/main/HeartyServiceRealActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 545
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$PowerNetIdler;-><init>(Lcom/zte/heartyservice/main/HeartyServiceRealActivity;)V

    return-void
.end method


# virtual methods
.method public final queueIdle()Z
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$PowerNetIdler;->this$0:Lcom/zte/heartyservice/main/HeartyServiceRealActivity;

    #calls: Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->checkNewVersion()V
    invoke-static {v0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->access$800(Lcom/zte/heartyservice/main/HeartyServiceRealActivity;)V

    .line 550
    const/4 v0, 0x0

    return v0
.end method
