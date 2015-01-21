.class Lcom/zte/retrieve/receiver/CallFowardStateReceiver$1;
.super Ljava/lang/Object;
.source "CallFowardStateReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/retrieve/receiver/CallFowardStateReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/retrieve/receiver/CallFowardStateReceiver;

.field private final synthetic val$instr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/zte/retrieve/receiver/CallFowardStateReceiver;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zte/retrieve/receiver/CallFowardStateReceiver$1;->this$0:Lcom/zte/retrieve/receiver/CallFowardStateReceiver;

    iput-object p2, p0, Lcom/zte/retrieve/receiver/CallFowardStateReceiver$1;->val$instr:Ljava/lang/String;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 41
    iget-object v0, p0, Lcom/zte/retrieve/receiver/CallFowardStateReceiver$1;->this$0:Lcom/zte/retrieve/receiver/CallFowardStateReceiver;

    invoke-static {}, Lcom/zte/retrieve/service/instruct/InstructionPreprocess;->getCfIMEI()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/retrieve/receiver/CallFowardStateReceiver$1;->val$instr:Ljava/lang/String;

    iget-object v3, p0, Lcom/zte/retrieve/receiver/CallFowardStateReceiver$1;->this$0:Lcom/zte/retrieve/receiver/CallFowardStateReceiver;

    #getter for: Lcom/zte/retrieve/receiver/CallFowardStateReceiver;->resultcode:I
    invoke-static {v3}, Lcom/zte/retrieve/receiver/CallFowardStateReceiver;->access$0(Lcom/zte/retrieve/receiver/CallFowardStateReceiver;)I

    move-result v3

    invoke-static {}, Lcom/zte/retrieve/controller/Controller;->getInstance()Lcom/zte/retrieve/controller/Controller;

    move-result-object v4

    .line 42
    invoke-virtual {v4}, Lcom/zte/retrieve/controller/Controller;->getCallForwardingNum()Ljava/lang/String;

    move-result-object v4

    .line 41
    #calls: Lcom/zte/retrieve/receiver/CallFowardStateReceiver;->sendStatusReport(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/zte/retrieve/receiver/CallFowardStateReceiver;->access$1(Lcom/zte/retrieve/receiver/CallFowardStateReceiver;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 43
    return-void
.end method
