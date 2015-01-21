.class Lcom/zte/heartyservice/main/HeartyServiceApp$1$1;
.super Ljava/lang/Object;
.source "HeartyServiceApp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/main/HeartyServiceApp$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/main/HeartyServiceApp$1;

.field final synthetic val$bluetooth:I

.field final synthetic val$gps:I

.field final synthetic val$netdata:I

.field final synthetic val$sync:I

.field final synthetic val$wifi:I


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/main/HeartyServiceApp$1;IIIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 229
    iput-object p1, p0, Lcom/zte/heartyservice/main/HeartyServiceApp$1$1;->this$0:Lcom/zte/heartyservice/main/HeartyServiceApp$1;

    iput p2, p0, Lcom/zte/heartyservice/main/HeartyServiceApp$1$1;->val$netdata:I

    iput p3, p0, Lcom/zte/heartyservice/main/HeartyServiceApp$1$1;->val$wifi:I

    iput p4, p0, Lcom/zte/heartyservice/main/HeartyServiceApp$1$1;->val$gps:I

    iput p5, p0, Lcom/zte/heartyservice/main/HeartyServiceApp$1$1;->val$bluetooth:I

    iput p6, p0, Lcom/zte/heartyservice/main/HeartyServiceApp$1$1;->val$sync:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 233
    new-instance v0, Lcom/zte/heartyservice/power/SwitchTools;

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->access$000()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zte/heartyservice/power/SwitchTools;-><init>(Landroid/content/Context;)V

    iget v1, p0, Lcom/zte/heartyservice/main/HeartyServiceApp$1$1;->val$netdata:I

    iget v2, p0, Lcom/zte/heartyservice/main/HeartyServiceApp$1$1;->val$wifi:I

    iget v3, p0, Lcom/zte/heartyservice/main/HeartyServiceApp$1$1;->val$gps:I

    iget v4, p0, Lcom/zte/heartyservice/main/HeartyServiceApp$1$1;->val$bluetooth:I

    iget v5, p0, Lcom/zte/heartyservice/main/HeartyServiceApp$1$1;->val$sync:I

    invoke-virtual/range {v0 .. v5}, Lcom/zte/heartyservice/power/SwitchTools;->forceSwithingAboutWireless(IIIII)V

    .line 234
    return-void
.end method
